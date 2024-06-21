namespace MauiAppDemo.Views;

public partial class EmbeddedVideo : ContentPage
{
	public EmbeddedVideo()
	{
		InitializeComponent();
	}
	void ContentPage_Unloaded(object? sender, EventArgs e)
	{
		// Stop and cleanup MediaElement when we navigate away
		mediaElement.Handler?.DisconnectHandler();
	}
}