package me.hearine.repos;

import me.hearine.domain.Playlist;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlaylistRepo extends JpaRepository<Playlist, Long> {
    Playlist findByName(String name);

}
