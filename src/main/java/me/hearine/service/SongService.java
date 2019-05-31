package me.hearine.service;

import me.hearine.controller.ControllerUtils;
import me.hearine.domain.Genre;
import me.hearine.domain.Playlist;
import me.hearine.domain.Song;
import me.hearine.domain.Tag;
import me.hearine.repos.AlbumRepo;
import me.hearine.repos.PlaylistRepo;
import me.hearine.repos.SongRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class SongService {

    @Autowired
    private SongRepo songRepo;
    @Autowired
    private PlaylistRepo playlistRepo;
    @Autowired
    private AlbumRepo albumRepo;

    public Set<Song> findByPublicName(String name) {
        return songRepo.findByPublicName(name);
    }

    public Set<Song> findSongsByAddedToPlaylists(Playlist playlist) {
        return songRepo.findSongsByAddedToPlaylists(playlist);
    }

    public Set<Song> findSongsByAddedToPlaylistsIsNotContaining(Long playlistId) {
        return songRepo.findSongsByAddedToPlaylistsIsNotContaining(playlistRepo.findById(playlistId));
    }

    public Set<Song> findSongsByAddedToAlbumsIsNotContaining(Long albumId) {
        return songRepo.findSongsByAddedToAlbumsIsNotContaining(albumRepo.findById(albumId));
    }

    public Optional<Song> findById(Long id) {
        return songRepo.findById(id);
    }

    public  Song findByPrivateName(String privateName) {
        return songRepo.findByPrivateName(privateName);
    }

    public Set<Song> findSongsByTags(Tag tag) {
        return songRepo.findByTags(tag);
    }

    public Set<Song> findSongsByGenres(Genre genre) {
        return songRepo.findByGenres(genre);
    }

    public Set<Song> findByPublicNameContaining(String publicName) {
        return songRepo.findByPublicNameContaining(publicName);
    }


    public List<Song> findAll() {
        return songRepo.findAll();
    }


    public void save(Song song, String songName,
                     MultipartFile file, String songPath) throws IOException {
        song.setSongPath(ControllerUtils.saveFile(file, songPath));
        song.setPublicName(songName);

        songRepo.save(song);
    }

    public void update(Song song, Playlist playlist) {
        // set length ???
        song.addToPlaylist(playlist);
        songRepo.save(song);
    }

}
