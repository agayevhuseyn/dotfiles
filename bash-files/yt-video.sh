if [ -z "$1" ]; then
	echo "Enter the URL"
	exit 1
fi
# yt-dlp -f 'bestvideo+bestaudio' $1
yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' -o "%(title)s.%(ext)s" $1
