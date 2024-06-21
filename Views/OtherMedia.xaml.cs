namespace MauiAppDemo.Views;

public partial class OtherMedia : ContentPage
{
	int count = 0;
	public OtherMedia()
	{
		InitializeComponent();
	}
	void ContentPage_Unloaded(object? sender, EventArgs e)
	{
		// Stop and cleanup MediaElement when we navigate away
		mediaElement.Handler?.DisconnectHandler();
	}
}