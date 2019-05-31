package me.hearine.domain;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name = "playlist")
public class Playlist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private Date create_date;
    private String list_type;
    private String avatar; // ref
    private String dsc;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    @ManyToMany(cascade=CascadeType.ALL)
    @JoinTable(
            name = "song_playlist",
            joinColumns = { @JoinColumn(name = "playlist_id") },
            inverseJoinColumns = { @JoinColumn(name = "song_id") }
    )
    private Set<Song> songs;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public String getList_type() {
        return list_type;
    }

    public void setList_type(String list_type) {
        this.list_type = list_type;
    }

    public String getDsc() {
        return dsc;
    }

    public void setDsc(String dsc) {
        this.dsc = dsc;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Set<Song> getSongs() {
        return songs;
    }

    public void setSongs(Set<Song> songs) {
        this.songs = songs;
    }

    public void addSongs(Set<Song> songs) {
        this.songs.addAll(songs);
    }

    public Playlist() {}

     /*public Playlist(String name, Date create_date, String list_type, String access_level) {
        this.name = name;
        this.create_date = create_date;
        this.list_type = list_type;
        this.access_level = access_level;
      //  this.songs = songs;
    }

    public Playlist(String name, Date create_date, String list_type, String access_level, String dsc, HashSet<User> user) {
        this.name = name;
        this.create_date = create_date;
        this.list_type = list_type;
        this.access_level = access_level;
        this.dsc = dsc;
        this.subscribers = user;
      //  this.songs = songs;
    }

    public Playlist(String name, String list_type) {
        this.name = name;
        this.list_type = list_type;
    }
    public Playlist() {}

  /*  public Song[] getSongs() {
        return songs;
    }

    public void setSongs(Song[] songs) {
        this.songs = songs;
    }

    @Override
    public String toString() {
        return  "Name: " + name + "\n" + "Songs: " + songs.toString();
        /*for (Song song : songs) {
            System.out.print(song.getPublicName() + ", ");
            System.out.println();
        }*/

}