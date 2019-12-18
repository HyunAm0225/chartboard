package chart;

public class Info {
	public int rank;
	public String singer;
	public String song;
	public String album;
	public String youtube_url;
	
	public String getYoutube_url() {
		return youtube_url;
	}
	public void setYoutube_url(String youtube_url) {
		this.youtube_url = youtube_url;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getElbum() {
		return album;
	}
	public void setElbum(String album) {
		this.album = album;
	}
}
