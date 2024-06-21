namespace  MauiAppDemo.Views;
using YoutubeExplode;
using YoutubeExplode.Videos.Streams;

public partial class YoutubeVideo : ContentPage
{
	public YoutubeVideo()
	{
		InitializeComponent();
		GetVideoContent();
	}
	void ContentPage_Unloaded(object? sender, EventArgs e)
	{
		// Stop and cleanup MediaElement when we navigate away
		MyMediaElement.Handler?.DisconnectHandler();
	}
	private async void GetVideoContent()
	{
		MyActivityIndicator.IsVisible = true;
		YoutubeClient youtube = new YoutubeClient();
		var videoUrl = "https://www.youtube.com/watch?v=n2MNPjUFwH4";

		//Now it's time to get stream :
		StreamManifest streamManifest = await youtube.Videos.Streams.GetManifestAsync(videoUrl);

		var streamInfo = streamManifest.GetMuxedStreams().GetWithHighestVideoQuality();

		if (streamInfo != null)
		{
			// Get the actual stream
			var stream = await youtube.Videos.Streams.GetAsync(streamInfo);

			MyMediaElement.Source = streamInfo.Url;
			MyMediaElement.Play();
		}
	}

	void MediaElement_MediaOpened(System.Object sender, System.EventArgs e)
	{
		MyActivityIndicator.IsVisible = false;
	}

	async void CloseButton_Clicked(System.Object sender, System.EventArgs e)
	{
		MyMediaElement.Stop();
		await Navigation.PopAsync();
	}
}