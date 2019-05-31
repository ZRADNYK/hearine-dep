package me.hearine.controller;

import me.hearine.domain.Song;
import me.hearine.service.PlaylistService;
import me.hearine.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.util.Map;

@Controller
public class SongController {


    @Autowired
    private SongService songService;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/song")
    public String songList(@RequestParam(required = false, defaultValue = "") String songFilter, Model model) {
        Iterable<Song> songs;

        if (songFilter != null && !songFilter.isEmpty()) {
            songs = songService.findByPublicNameContaining(songFilter);
        } else {
            songs = songService.findAll();
        }

        model.addAttribute("songs", songs);
        model.addAttribute("songFilter", songFilter);

        return "mainSong";
    }

    @PostMapping("/song")
    public String add(
            @Valid Song song,
            BindingResult bindingResult,
            @RequestParam String name,
            @RequestParam("file") MultipartFile file,
            Model model
    ) throws IOException {

        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errorsMap);
            model.addAttribute("song", song);
        } else {
            model.addAttribute("song", null);
            songService.save(song, name, file, uploadPath);
        }

        Iterable<Song> songs = songService.findAll();

        model.addAttribute("songs", songs);

        return "mainSong";
    }






 /*   @GetMapping("/playlist/addsong/{playlist}")
    public String addSongToPlaylist(
            @Valid Song song,
            BindingResult bindingResult,
            @RequestParam Playlist playlist,
            Model model
    ) throws IOException {
        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("song", song);
        } else {
            song.addToPlaylist(playlist);
            model.addAttribute("song", song);
            songService.update(song, playlist);
        }
        return "songList";
    }*/
}

