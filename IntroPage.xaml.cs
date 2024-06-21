namespace MauiAppDemo;

public partial class IntroPage : ContentPage
{
	public IntroPage()
	{
		InitializeComponent();
	}
    private async void OnLoginClicked(object sender, EventArgs e)
    {
        // string username = UsernameEntry.Text;
        // string password = PasswordEntry.Text;

        // Perform authentication logic here
        // if (AuthenticateUser(username, password))
        // {
        //     // Navigate to the next page upon successful login
        //     await Shell.Current.GoToAsync($"//{nameof(MainPage)}");
        // }
        // else
        // {
        //     await App.Current.MainPage.DisplayAlert("Error", "Invalid username or password", "OK");
        // }
        
            await Shell.Current.GoToAsync($"//{nameof(MainPage)}");
    }

    private bool AuthenticateUser(string username, string password)
    {
        // Perform actual authentication logic here
        // For demonstration purposes, let's assume a hardcoded username and password
        return username == "admin" && password == "password";
    }
}