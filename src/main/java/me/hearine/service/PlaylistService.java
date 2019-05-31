package me.hearine.service;

import me.hearine.controller.ControllerUtils;
import me.hearine.domain.Album;
import me.hearine.domain.Playlist;
import me.hearine.domain.Song;
import me.hearine.domain.User;
import me.hearine.repos.AlbumRepo;
import me.hearine.repos.PlaylistRepo;
import me.hearine.repos.SongRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.*;

@Service
public class PlaylistService {

    @Autowired
    private PlaylistRepo playlistRepo;

    @Autowired
    private SongRepo songRepo;

    @Autowired
    private AlbumRepo albumRepo;

    @Value("${upload.path}")
    private String uploadPath;

    public boolean addPlaylist(Playlist playlist) {
        Playlist playlistFromDb = playlistRepo.findByName(playlist.getName());

        if (playlistFromDb != null) {
            return false;
        }

        // other stuff if needed

        playlistRepo.save(playlist);

        return true;
    }

    public boolean compare(String authorName, String username) {
        return authorName.equals(username);
    }

    public void save(User author, Playlist playlist, String playlistName,
                     String list_type, MultipartFile file
                     ) throws IOException {

        playlist.setAuthor(author);
        playlist.setCreate_date(new java.sql.Date(System.currentTimeMillis()));
        playlist.setName(playlistName);
        playlist.setList_type(list_type);
        if(file != null) {
            playlist.setAvatar(ControllerUtils.saveFile(file, uploadPath));
        }
        playlistRepo.save(playlist);
    }

    public void addSongs(Playlist playlist, Map<String, String> form) {

        playlist.setCreate_date(new java.sql.Date(System.currentTimeMillis()));
        for (String key : form.keySet()) {
            Song nextSong = songRepo.findByPrivateName(key);
            if (nextSong != null) {
                playlist.addSongs(Collections.singleton(nextSong));
            }
        }

        playlistRepo.save(playlist);
    }

    public void addSongsFromAlbums(Playlist playlist, Map<String, String> form) {

        playlist.setCreate_date(new java.sql.Date(System.currentTimeMillis()));
        for (String key : form.keySet()) {
            Album nextAlbum = albumRepo.findByName(key);
            if(nextAlbum != null) {
                for (Song nextSong : nextAlbum.getSongs()) // fix
                    if (nextSong != null) {
                        playlist.addSongs(Collections.singleton(nextSong));
                    }
            }
      //      else break;
        }
        playlistRepo.save(playlist);
    }



    public List<Playlist> findAll() {
        return playlistRepo.findAll();
    }

    public Playlist findByName(String name) {
        return playlistRepo.findByName(name);
    }

}
