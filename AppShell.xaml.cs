namespace MauiAppDemo;

public partial class AppShell : Shell
{
	public AppShell()
	{
		InitializeComponent();
	}
	async void OnLogoutClicked(object sender, System.EventArgs e)
	{
		Preferences.Clear();
		 Shell.Current.FlyoutIsPresented = false;
		await Shell.Current.GoToAsync($"//{nameof(IntroPage)}");
	}
}
