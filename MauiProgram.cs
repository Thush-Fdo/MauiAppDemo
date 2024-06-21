using Microsoft.Extensions.Logging;
using CommunityToolkit.Maui;

namespace MauiAppDemo;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.UseMauiCommunityToolkit()
			.UseMauiCommunityToolkitMediaElement()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");

				fonts.AddFont("FontAwesome6Regular.otf", "FontAwesome6Regular");
				fonts.AddFont("FontAwesome6Brands.otf", "FontAwesome6Brands");
				fonts.AddFont("FontAwesome6Solid.otf", "FontAwesome6Solid");
			});

#if DEBUG
		builder.Logging.AddDebug();
#endif

		return builder.Build();
	}
}
