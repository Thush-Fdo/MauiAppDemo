; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [333 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [660 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 249
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 286
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 8: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 296
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 192
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 268
	i32 113429830, ; 14: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 326
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 268
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 290
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 223
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 270
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 325
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 326
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 221
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 243
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 226
	i32 266337479, ; 37: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 285
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 245
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 242
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 297
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 293579439, ; 43: ExoPlayer.Dash.dll => 0x117faaaf => 197
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 212
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 310
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 244
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 309
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 297
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 329
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 321
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 227
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 240
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 452127346, ; 65: ExoPlayer.Database.dll => 0x1af2ea72 => 198
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 242
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 255
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 308
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 302
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 186
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 77: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 305
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 290
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 80: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 81: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 82: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 83: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 281
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 279
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 316
	i32 597488923, ; 89: CommunityToolkit.Maui => 0x239cf51b => 174
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 92: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 626887733, ; 93: ExoPlayer.Container => 0x255d8c35 => 195
	i32 627609679, ; 94: Xamarin.AndroidX.CustomView => 0x2568904f => 232
	i32 639843206, ; 95: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 238
	i32 643868501, ; 96: System.Net => 0x2660a755 => 81
	i32 662205335, ; 97: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 98: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 275
	i32 666292255, ; 99: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 219
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 102: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 296
	i32 690569205, ; 103: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 104: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 292
	i32 693804605, ; 105: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 106: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 107: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 287
	i32 700358131, ; 108: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 109: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 311
	i32 709557578, ; 110: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 299
	i32 720511267, ; 111: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 291
	i32 722857257, ; 112: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 113: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 114: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 115: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 209
	i32 759454413, ; 116: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 117: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 118: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 185
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 233
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 247
	i32 812693636, ; 123: ExoPlayer.Dash => 0x3070b884 => 197
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 261
	i32 870878177, ; 129: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 295
	i32 873119928, ; 130: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 131: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 132: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 915551335, ; 135: ExoPlayer.Ext.MediaSession => 0x36923467 => 203
	i32 926902833, ; 136: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 323
	i32 928116545, ; 137: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 286
	i32 939704684, ; 138: ExoPlayer.Extractor => 0x3802c16c => 201
	i32 952186615, ; 139: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 140: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 291
	i32 966729478, ; 141: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 282
	i32 967690846, ; 142: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 244
	i32 975236339, ; 143: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 144: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 145: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 146: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 148: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 327
	i32 994442037, ; 149: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 150: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 301
	i32 1001831731, ; 151: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 152: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 265
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 36
	i32 1028013380, ; 154: ExoPlayer.UI.dll => 0x3d463d44 => 207
	i32 1028951442, ; 155: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 181
	i32 1029334545, ; 156: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 298
	i32 1031528504, ; 157: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 283
	i32 1035644815, ; 158: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 217
	i32 1036536393, ; 159: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 160: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 161: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 251
	i32 1067306892, ; 162: GoogleGson => 0x3f9dcf8c => 177
	i32 1082857460, ; 163: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 164: Xamarin.Kotlin.StdLib => 0x409e66d8 => 288
	i32 1098259244, ; 165: System => 0x41761b2c => 164
	i32 1121599056, ; 166: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 250
	i32 1127624469, ; 167: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1149092582, ; 168: Xamarin.AndroidX.Window => 0x447dc2e6 => 278
	i32 1151313727, ; 169: ExoPlayer.Rtsp => 0x449fa73f => 204
	i32 1170634674, ; 170: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 274
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 259
	i32 1178797549, ; 173: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 302
	i32 1203215381, ; 174: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 315
	i32 1204270330, ; 175: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 219
	i32 1208641965, ; 176: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 177: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 178: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 313
	i32 1243150071, ; 179: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 279
	i32 1253011324, ; 180: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1263886435, ; 181: Xamarin.Google.Guava.dll => 0x4b556063 => 284
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 269
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 273
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 224
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 292
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 216
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 235
	i32 1309188875, ; 188: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1309209905, ; 189: ExoPlayer.DataSource => 0x4e08f531 => 199
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 278
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 193: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 194: Xamarin.AndroidX.SavedState => 0x52114ed3 => 265
	i32 1379779777, ; 195: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1395857551, ; 196: Xamarin.AndroidX.Media.dll => 0x5333188f => 256
	i32 1402170036, ; 197: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 198: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 228
	i32 1406299041, ; 199: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 285
	i32 1408764838, ; 200: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 201: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 202: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 203: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 204: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 282
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 207: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 210: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 211: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 212: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 213: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 218
	i32 1470490898, ; 214: Microsoft.Extensions.Primitives => 0x57a5e912 => 186
	i32 1479771757, ; 215: System.Collections.Immutable => 0x5833866d => 9
	i32 1480156764, ; 216: ExoPlayer.DataSource.dll => 0x5839665c => 199
	i32 1480492111, ; 217: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 218: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 219: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 266
	i32 1493001747, ; 220: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 305
	i32 1514721132, ; 221: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 300
	i32 1536373174, ; 222: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 223: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 224: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 225: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 226: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 320
	i32 1554762148, ; 227: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 303
	i32 1565862583, ; 228: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 229: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 230: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 231: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 232: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 321
	i32 1582372066, ; 233: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 234
	i32 1591080825, ; 234: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 328
	i32 1592978981, ; 235: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 236: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 283
	i32 1601112923, ; 237: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 238: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 239: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 240: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 254
	i32 1622358360, ; 241: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 242: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 277
	i32 1634654947, ; 243: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 175
	i32 1635184631, ; 244: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 238
	i32 1636350590, ; 245: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 231
	i32 1638652436, ; 246: CommunityToolkit.Maui.MediaElement => 0x61abda14 => 176
	i32 1639515021, ; 247: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 248: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 249: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 271
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 280
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 226
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 258: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 259: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 260: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 289
	i32 1700397376, ; 261: ExoPlayer.Transformer => 0x655a0140 => 206
	i32 1701541528, ; 262: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 247
	i32 1726116996, ; 264: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 265: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 266: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 222
	i32 1736233607, ; 267: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 318
	i32 1744735666, ; 268: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 269: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 270: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 271: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 272: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765620304, ; 273: ExoPlayer.Core => 0x693d3a50 => 196
	i32 1765942094, ; 274: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 275: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 270
	i32 1770582343, ; 276: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1776026572, ; 277: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 278: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 279: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1781418309, ; 280: AngleSharp => 0x6a2e4945 => 173
	i32 1788241197, ; 281: Xamarin.AndroidX.Fragment => 0x6a96652d => 240
	i32 1808609942, ; 282: Xamarin.AndroidX.Loader => 0x6bcd3296 => 254
	i32 1809966115, ; 283: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 313
	i32 1813058853, ; 284: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 288
	i32 1813201214, ; 285: Xamarin.Google.Android.Material => 0x6c13413e => 280
	i32 1818569960, ; 286: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 260
	i32 1818787751, ; 287: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 288: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 307
	i32 1824175904, ; 289: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 290: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 291: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1842015223, ; 292: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 324
	i32 1847515442, ; 293: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 209
	i32 1858542181, ; 294: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 295: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 296: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 297: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 220
	i32 1888955245, ; 298: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 299: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 300: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 301: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 302: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1926145099, ; 303: ExoPlayer.Container.dll => 0x72cea44b => 195
	i32 1939592360, ; 304: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 305: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 306: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 310
	i32 1961813231, ; 307: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 267
	i32 1968388702, ; 308: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 178
	i32 1983156543, ; 309: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 289
	i32 1984283898, ; 310: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 203
	i32 1985761444, ; 311: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 211
	i32 2011961780, ; 312: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 313: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 306
	i32 2019465201, ; 314: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 251
	i32 2025202353, ; 315: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 295
	i32 2031763787, ; 316: Xamarin.Android.Glide => 0x791a414b => 208
	i32 2043674646, ; 317: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 309
	i32 2045470958, ; 318: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 319: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 246
	i32 2060060697, ; 320: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 321: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 322: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 323: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2106312818, ; 324: ExoPlayer.Decoder => 0x7d8bc872 => 200
	i32 2113912252, ; 325: ExoPlayer.UI => 0x7dffbdbc => 207
	i32 2127167465, ; 326: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 327: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 328: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 329: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 330: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 311
	i32 2159891885, ; 331: Microsoft.Maui => 0x80bd55ad => 190
	i32 2165051842, ; 332: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 318
	i32 2181898931, ; 333: Microsoft.Extensions.Options.dll => 0x820d22b3 => 185
	i32 2192057212, ; 334: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 335: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 336: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 293
	i32 2201231467, ; 337: System.Net.Http => 0x8334206b => 64
	i32 2202964214, ; 338: ExoPlayer.dll => 0x834e90f6 => 193
	i32 2217644978, ; 339: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 274
	i32 2222056684, ; 340: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2239138732, ; 341: ExoPlayer.SmoothStreaming => 0x85768bac => 205
	i32 2244775296, ; 342: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 255
	i32 2252106437, ; 343: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 344: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 345: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 346: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 179
	i32 2267999099, ; 347: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 210
	i32 2270573516, ; 348: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 303
	i32 2275458144, ; 349: AngleSharp.dll => 0x87a0bc60 => 173
	i32 2279755925, ; 350: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 263
	i32 2289298199, ; 351: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 322
	i32 2293034957, ; 352: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 353: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 354: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 355: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 356: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 214
	i32 2320631194, ; 357: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 358: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 359: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 360: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 361: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 362: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 323
	i32 2371007202, ; 363: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 178
	i32 2378619854, ; 364: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 365: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 366: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 367: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 237
	i32 2421380589, ; 368: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 369: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 314
	i32 2423080555, ; 370: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 224
	i32 2435356389, ; 371: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 372: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2437192331, ; 373: CommunityToolkit.Maui.MediaElement.dll => 0x91449a8b => 176
	i32 2454642406, ; 374: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 375: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 376: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 377: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 227
	i32 2471841756, ; 378: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 379: Java.Interop.dll => 0x93918882 => 168
	i32 2476233210, ; 380: ExoPlayer => 0x939851fa => 193
	i32 2480646305, ; 381: Microsoft.Maui.Controls => 0x93dba8a1 => 188
	i32 2483903535, ; 382: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 383: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 384: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 385: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 386: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 249
	i32 2515854816, ; 387: ExoPlayer.Common => 0x95f4e5e0 => 194
	i32 2517802524, ; 388: MauiAppDemo.dll => 0x96129e1c => 0
	i32 2520433370, ; 389: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 320
	i32 2522472828, ; 390: Xamarin.Android.Glide.dll => 0x9659e17c => 208
	i32 2538310050, ; 391: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 392: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 393: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 394: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 250
	i32 2581819634, ; 395: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 273
	i32 2585220780, ; 396: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 397: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 398: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 399: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 293
	i32 2615233544, ; 400: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 241
	i32 2616218305, ; 401: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 402: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 403: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 404: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 231
	i32 2624644809, ; 405: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 236
	i32 2626028643, ; 406: ExoPlayer.Rtsp.dll => 0x9c860463 => 204
	i32 2627185994, ; 407: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 408: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 409: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 245
	i32 2663391936, ; 410: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 210
	i32 2663698177, ; 411: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 412: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 413: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 414: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 415: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2689693182, ; 416: YoutubeExplode => 0xa05175fe => 294
	i32 2693849962, ; 417: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 418: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 271
	i32 2713040075, ; 419: ExoPlayer.Hls => 0xa1b5b4cb => 202
	i32 2715334215, ; 420: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 421: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 422: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 423: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 424: Xamarin.AndroidX.Activity => 0xa2e0939b => 212
	i32 2735172069, ; 425: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 426: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 218
	i32 2740948882, ; 427: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 428: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 429: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 189
	i32 2764596588, ; 430: MauiAppDemo => 0xa4c8656c => 0
	i32 2764765095, ; 431: Microsoft.Maui.dll => 0xa4caf7a7 => 190
	i32 2765824710, ; 432: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 433: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 287
	i32 2778768386, ; 434: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 276
	i32 2779977773, ; 435: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 264
	i32 2788224221, ; 436: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 241
	i32 2796087574, ; 437: ExoPlayer.Extractor.dll => 0xa6a8e916 => 201
	i32 2801831435, ; 438: Microsoft.Maui.Graphics => 0xa7008e0b => 192
	i32 2802068195, ; 439: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 324
	i32 2803228030, ; 440: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 441: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 301
	i32 2810250172, ; 442: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 228
	i32 2819470561, ; 443: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 444: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 445: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 264
	i32 2824502124, ; 446: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 447: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 314
	i32 2838993487, ; 448: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 252
	i32 2849599387, ; 449: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 450: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 276
	i32 2855708567, ; 451: Xamarin.AndroidX.Transition => 0xaa36a797 => 272
	i32 2857259519, ; 452: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 300
	i32 2861098320, ; 453: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 454: Microsoft.Maui.Essentials => 0xaa8a4878 => 191
	i32 2868488919, ; 455: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 175
	i32 2870099610, ; 456: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 213
	i32 2875164099, ; 457: Jsr305Binding.dll => 0xab5f85c3 => 281
	i32 2875220617, ; 458: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 459: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 319
	i32 2884993177, ; 460: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 239
	i32 2887636118, ; 461: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 462: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 463: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 464: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 465: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 466: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 467: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 277
	i32 2919462931, ; 468: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 469: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 215
	i32 2936416060, ; 470: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 471: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 472: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 473: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960379616, ; 474: Xamarin.Google.Guava => 0xb073cee0 => 284
	i32 2968338931, ; 475: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 476: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 477: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 235
	i32 2987532451, ; 478: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 267
	i32 2996846495, ; 479: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 248
	i32 3016983068, ; 480: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 269
	i32 3023353419, ; 481: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 482: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 243
	i32 3027462113, ; 483: ExoPlayer.Common.dll => 0xb47367e1 => 194
	i32 3038032645, ; 484: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 329
	i32 3056245963, ; 485: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 266
	i32 3057625584, ; 486: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 257
	i32 3059408633, ; 487: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 488: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 489: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 490: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 307
	i32 3090735792, ; 491: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 492: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 493: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 494: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 495: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 496: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 497: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3144327419, ; 498: ExoPlayer.Hls.dll => 0xbb6aa0fb => 202
	i32 3147165239, ; 499: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 500: GoogleGson.dll => 0xbba64c02 => 177
	i32 3159123045, ; 501: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 502: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 503: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 258
	i32 3190271366, ; 504: ExoPlayer.Decoder.dll => 0xbe27ad86 => 200
	i32 3192346100, ; 505: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 506: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 507: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 508: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 509: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 234
	i32 3220365878, ; 510: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 511: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 512: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 513: Xamarin.AndroidX.CardView => 0xc235e84d => 222
	i32 3265493905, ; 514: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 515: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 516: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 517: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 518: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 519: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 520: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 521: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 522: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 523: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 232
	i32 3317144872, ; 524: System.Data => 0xc5b79d28 => 24
	i32 3329734229, ; 525: ExoPlayer.Database => 0xc677b655 => 198
	i32 3340431453, ; 526: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 220
	i32 3345895724, ; 527: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 262
	i32 3346324047, ; 528: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 259
	i32 3358260929, ; 529: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 530: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 213
	i32 3362522851, ; 531: Xamarin.AndroidX.Core => 0xc86c06e3 => 229
	i32 3366347497, ; 532: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 533: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 263
	i32 3395150330, ; 534: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396979385, ; 535: ExoPlayer.Transformer.dll => 0xca79cab9 => 206
	i32 3403906625, ; 536: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 537: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 233
	i32 3428513518, ; 538: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 180
	i32 3429136800, ; 539: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 540: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 541: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 236
	i32 3445260447, ; 542: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 543: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 187
	i32 3463511458, ; 544: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 306
	i32 3471940407, ; 545: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 546: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 547: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 319
	i32 3485117614, ; 548: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 549: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 550: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 225
	i32 3509114376, ; 551: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 552: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 553: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 554: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 555: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 325
	i32 3560100363, ; 556: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 557: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 558: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 299
	i32 3597029428, ; 559: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 211
	i32 3598340787, ; 560: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 561: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 562: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 298
	i32 3624195450, ; 563: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 564: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 261
	i32 3633644679, ; 565: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 215
	i32 3638274909, ; 566: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 567: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 246
	i32 3643854240, ; 568: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 258
	i32 3645089577, ; 569: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 570: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 316
	i32 3657292374, ; 571: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 179
	i32 3660523487, ; 572: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 573: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 304
	i32 3672681054, ; 574: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 575: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 221
	i32 3684561358, ; 576: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 225
	i32 3686075795, ; 577: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 312
	i32 3690895846, ; 578: YoutubeExplode.dll => 0xdbfe99e6 => 294
	i32 3697841164, ; 579: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 328
	i32 3700866549, ; 580: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 581: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 230
	i32 3716563718, ; 582: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 583: Xamarin.AndroidX.Annotation => 0xdda814c6 => 214
	i32 3724971120, ; 584: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 257
	i32 3732100267, ; 585: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 586: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 587: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 588: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 589: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 223
	i32 3792276235, ; 590: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 591: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 187
	i32 3802395368, ; 592: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 593: CommunityToolkit.Maui.dll => 0xe3886bf7 => 174
	i32 3819260425, ; 594: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 595: Xamarin.AndroidX.Media => 0xe3d849b1 => 256
	i32 3823082795, ; 596: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 597: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 598: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 181
	i32 3844307129, ; 599: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 600: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 601: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 602: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 603: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 604: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 605: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 272
	i32 3888767677, ; 606: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 262
	i32 3889960447, ; 607: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 327
	i32 3896106733, ; 608: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 609: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 229
	i32 3901907137, ; 610: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 611: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 612: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 275
	i32 3928044579, ; 613: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 614: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 615: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 260
	i32 3945713374, ; 616: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 617: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 618: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 217
	i32 3959773229, ; 619: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 248
	i32 3980434154, ; 620: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 322
	i32 3987592930, ; 621: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 304
	i32 4003436829, ; 622: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 623: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 216
	i32 4025784931, ; 624: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 625: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 189
	i32 4054681211, ; 626: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 627: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 628: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 308
	i32 4073602200, ; 629: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 630: Microsoft.Maui.Essentials.dll => 0xf40add04 => 191
	i32 4099507663, ; 631: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 632: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 633: Xamarin.AndroidX.Emoji2 => 0xf479582c => 237
	i32 4102112229, ; 634: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 317
	i32 4119206479, ; 635: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 315
	i32 4125707920, ; 636: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 312
	i32 4126470640, ; 637: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 180
	i32 4127667938, ; 638: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 639: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 640: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 641: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 642: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 643: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 644: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4173364138, ; 645: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 205
	i32 4181436372, ; 646: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 647: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 253
	i32 4185676441, ; 648: System.Security => 0xf97c5a99 => 130
	i32 4190597220, ; 649: ExoPlayer.Core.dll => 0xf9c77064 => 196
	i32 4196529839, ; 650: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 651: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 652: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 317
	i32 4256097574, ; 653: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 230
	i32 4258378803, ; 654: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 252
	i32 4260525087, ; 655: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 656: Microsoft.Maui.Controls.dll => 0xfea12dee => 188
	i32 4274976490, ; 657: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 658: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 253
	i32 4294763496 ; 659: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 239
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [660 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 249, ; 3
	i32 286, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 296, ; 8
	i32 30, ; 9
	i32 124, ; 10
	i32 192, ; 11
	i32 102, ; 12
	i32 268, ; 13
	i32 326, ; 14
	i32 107, ; 15
	i32 268, ; 16
	i32 139, ; 17
	i32 290, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 223, ; 22
	i32 132, ; 23
	i32 270, ; 24
	i32 151, ; 25
	i32 325, ; 26
	i32 326, ; 27
	i32 18, ; 28
	i32 221, ; 29
	i32 26, ; 30
	i32 243, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 226, ; 36
	i32 285, ; 37
	i32 147, ; 38
	i32 245, ; 39
	i32 242, ; 40
	i32 297, ; 41
	i32 54, ; 42
	i32 197, ; 43
	i32 69, ; 44
	i32 212, ; 45
	i32 83, ; 46
	i32 310, ; 47
	i32 244, ; 48
	i32 309, ; 49
	i32 297, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 329, ; 58
	i32 165, ; 59
	i32 321, ; 60
	i32 227, ; 61
	i32 12, ; 62
	i32 240, ; 63
	i32 125, ; 64
	i32 198, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 242, ; 70
	i32 255, ; 71
	i32 84, ; 72
	i32 308, ; 73
	i32 302, ; 74
	i32 186, ; 75
	i32 150, ; 76
	i32 305, ; 77
	i32 290, ; 78
	i32 60, ; 79
	i32 182, ; 80
	i32 51, ; 81
	i32 103, ; 82
	i32 114, ; 83
	i32 40, ; 84
	i32 281, ; 85
	i32 279, ; 86
	i32 120, ; 87
	i32 316, ; 88
	i32 174, ; 89
	i32 52, ; 90
	i32 44, ; 91
	i32 119, ; 92
	i32 195, ; 93
	i32 232, ; 94
	i32 238, ; 95
	i32 81, ; 96
	i32 136, ; 97
	i32 275, ; 98
	i32 219, ; 99
	i32 8, ; 100
	i32 73, ; 101
	i32 296, ; 102
	i32 155, ; 103
	i32 292, ; 104
	i32 154, ; 105
	i32 92, ; 106
	i32 287, ; 107
	i32 45, ; 108
	i32 311, ; 109
	i32 299, ; 110
	i32 291, ; 111
	i32 109, ; 112
	i32 129, ; 113
	i32 25, ; 114
	i32 209, ; 115
	i32 72, ; 116
	i32 55, ; 117
	i32 46, ; 118
	i32 185, ; 119
	i32 233, ; 120
	i32 22, ; 121
	i32 247, ; 122
	i32 197, ; 123
	i32 86, ; 124
	i32 43, ; 125
	i32 160, ; 126
	i32 71, ; 127
	i32 261, ; 128
	i32 295, ; 129
	i32 3, ; 130
	i32 42, ; 131
	i32 63, ; 132
	i32 16, ; 133
	i32 53, ; 134
	i32 203, ; 135
	i32 323, ; 136
	i32 286, ; 137
	i32 201, ; 138
	i32 105, ; 139
	i32 291, ; 140
	i32 282, ; 141
	i32 244, ; 142
	i32 34, ; 143
	i32 158, ; 144
	i32 85, ; 145
	i32 32, ; 146
	i32 12, ; 147
	i32 327, ; 148
	i32 51, ; 149
	i32 301, ; 150
	i32 56, ; 151
	i32 265, ; 152
	i32 36, ; 153
	i32 207, ; 154
	i32 181, ; 155
	i32 298, ; 156
	i32 283, ; 157
	i32 217, ; 158
	i32 35, ; 159
	i32 58, ; 160
	i32 251, ; 161
	i32 177, ; 162
	i32 17, ; 163
	i32 288, ; 164
	i32 164, ; 165
	i32 250, ; 166
	i32 184, ; 167
	i32 278, ; 168
	i32 204, ; 169
	i32 153, ; 170
	i32 274, ; 171
	i32 259, ; 172
	i32 302, ; 173
	i32 315, ; 174
	i32 219, ; 175
	i32 29, ; 176
	i32 52, ; 177
	i32 313, ; 178
	i32 279, ; 179
	i32 5, ; 180
	i32 284, ; 181
	i32 269, ; 182
	i32 273, ; 183
	i32 224, ; 184
	i32 292, ; 185
	i32 216, ; 186
	i32 235, ; 187
	i32 85, ; 188
	i32 199, ; 189
	i32 278, ; 190
	i32 61, ; 191
	i32 112, ; 192
	i32 57, ; 193
	i32 265, ; 194
	i32 99, ; 195
	i32 256, ; 196
	i32 19, ; 197
	i32 228, ; 198
	i32 285, ; 199
	i32 111, ; 200
	i32 101, ; 201
	i32 102, ; 202
	i32 104, ; 203
	i32 282, ; 204
	i32 71, ; 205
	i32 38, ; 206
	i32 32, ; 207
	i32 103, ; 208
	i32 73, ; 209
	i32 9, ; 210
	i32 123, ; 211
	i32 46, ; 212
	i32 218, ; 213
	i32 186, ; 214
	i32 9, ; 215
	i32 199, ; 216
	i32 43, ; 217
	i32 4, ; 218
	i32 266, ; 219
	i32 305, ; 220
	i32 300, ; 221
	i32 31, ; 222
	i32 138, ; 223
	i32 92, ; 224
	i32 93, ; 225
	i32 320, ; 226
	i32 303, ; 227
	i32 49, ; 228
	i32 141, ; 229
	i32 112, ; 230
	i32 140, ; 231
	i32 321, ; 232
	i32 234, ; 233
	i32 328, ; 234
	i32 115, ; 235
	i32 283, ; 236
	i32 157, ; 237
	i32 76, ; 238
	i32 79, ; 239
	i32 254, ; 240
	i32 37, ; 241
	i32 277, ; 242
	i32 175, ; 243
	i32 238, ; 244
	i32 231, ; 245
	i32 176, ; 246
	i32 64, ; 247
	i32 138, ; 248
	i32 15, ; 249
	i32 116, ; 250
	i32 271, ; 251
	i32 280, ; 252
	i32 226, ; 253
	i32 48, ; 254
	i32 70, ; 255
	i32 80, ; 256
	i32 126, ; 257
	i32 94, ; 258
	i32 121, ; 259
	i32 289, ; 260
	i32 206, ; 261
	i32 26, ; 262
	i32 247, ; 263
	i32 97, ; 264
	i32 28, ; 265
	i32 222, ; 266
	i32 318, ; 267
	i32 149, ; 268
	i32 169, ; 269
	i32 4, ; 270
	i32 98, ; 271
	i32 33, ; 272
	i32 196, ; 273
	i32 93, ; 274
	i32 270, ; 275
	i32 182, ; 276
	i32 21, ; 277
	i32 41, ; 278
	i32 170, ; 279
	i32 173, ; 280
	i32 240, ; 281
	i32 254, ; 282
	i32 313, ; 283
	i32 288, ; 284
	i32 280, ; 285
	i32 260, ; 286
	i32 2, ; 287
	i32 307, ; 288
	i32 134, ; 289
	i32 111, ; 290
	i32 183, ; 291
	i32 324, ; 292
	i32 209, ; 293
	i32 58, ; 294
	i32 95, ; 295
	i32 39, ; 296
	i32 220, ; 297
	i32 25, ; 298
	i32 94, ; 299
	i32 89, ; 300
	i32 99, ; 301
	i32 10, ; 302
	i32 195, ; 303
	i32 87, ; 304
	i32 100, ; 305
	i32 310, ; 306
	i32 267, ; 307
	i32 178, ; 308
	i32 289, ; 309
	i32 203, ; 310
	i32 211, ; 311
	i32 7, ; 312
	i32 306, ; 313
	i32 251, ; 314
	i32 295, ; 315
	i32 208, ; 316
	i32 309, ; 317
	i32 88, ; 318
	i32 246, ; 319
	i32 154, ; 320
	i32 33, ; 321
	i32 116, ; 322
	i32 82, ; 323
	i32 200, ; 324
	i32 207, ; 325
	i32 20, ; 326
	i32 11, ; 327
	i32 162, ; 328
	i32 3, ; 329
	i32 311, ; 330
	i32 190, ; 331
	i32 318, ; 332
	i32 185, ; 333
	i32 183, ; 334
	i32 84, ; 335
	i32 293, ; 336
	i32 64, ; 337
	i32 193, ; 338
	i32 274, ; 339
	i32 143, ; 340
	i32 205, ; 341
	i32 255, ; 342
	i32 157, ; 343
	i32 41, ; 344
	i32 117, ; 345
	i32 179, ; 346
	i32 210, ; 347
	i32 303, ; 348
	i32 173, ; 349
	i32 263, ; 350
	i32 322, ; 351
	i32 131, ; 352
	i32 75, ; 353
	i32 66, ; 354
	i32 172, ; 355
	i32 214, ; 356
	i32 143, ; 357
	i32 106, ; 358
	i32 151, ; 359
	i32 70, ; 360
	i32 156, ; 361
	i32 323, ; 362
	i32 178, ; 363
	i32 121, ; 364
	i32 127, ; 365
	i32 152, ; 366
	i32 237, ; 367
	i32 141, ; 368
	i32 314, ; 369
	i32 224, ; 370
	i32 20, ; 371
	i32 14, ; 372
	i32 176, ; 373
	i32 135, ; 374
	i32 75, ; 375
	i32 59, ; 376
	i32 227, ; 377
	i32 167, ; 378
	i32 168, ; 379
	i32 193, ; 380
	i32 188, ; 381
	i32 15, ; 382
	i32 74, ; 383
	i32 6, ; 384
	i32 23, ; 385
	i32 249, ; 386
	i32 194, ; 387
	i32 0, ; 388
	i32 320, ; 389
	i32 208, ; 390
	i32 91, ; 391
	i32 1, ; 392
	i32 136, ; 393
	i32 250, ; 394
	i32 273, ; 395
	i32 134, ; 396
	i32 69, ; 397
	i32 146, ; 398
	i32 293, ; 399
	i32 241, ; 400
	i32 184, ; 401
	i32 88, ; 402
	i32 96, ; 403
	i32 231, ; 404
	i32 236, ; 405
	i32 204, ; 406
	i32 31, ; 407
	i32 45, ; 408
	i32 245, ; 409
	i32 210, ; 410
	i32 109, ; 411
	i32 158, ; 412
	i32 35, ; 413
	i32 22, ; 414
	i32 114, ; 415
	i32 294, ; 416
	i32 57, ; 417
	i32 271, ; 418
	i32 202, ; 419
	i32 144, ; 420
	i32 118, ; 421
	i32 120, ; 422
	i32 110, ; 423
	i32 212, ; 424
	i32 139, ; 425
	i32 218, ; 426
	i32 54, ; 427
	i32 105, ; 428
	i32 189, ; 429
	i32 0, ; 430
	i32 190, ; 431
	i32 133, ; 432
	i32 287, ; 433
	i32 276, ; 434
	i32 264, ; 435
	i32 241, ; 436
	i32 201, ; 437
	i32 192, ; 438
	i32 324, ; 439
	i32 159, ; 440
	i32 301, ; 441
	i32 228, ; 442
	i32 163, ; 443
	i32 132, ; 444
	i32 264, ; 445
	i32 161, ; 446
	i32 314, ; 447
	i32 252, ; 448
	i32 140, ; 449
	i32 276, ; 450
	i32 272, ; 451
	i32 300, ; 452
	i32 169, ; 453
	i32 191, ; 454
	i32 175, ; 455
	i32 213, ; 456
	i32 281, ; 457
	i32 40, ; 458
	i32 319, ; 459
	i32 239, ; 460
	i32 81, ; 461
	i32 56, ; 462
	i32 37, ; 463
	i32 97, ; 464
	i32 166, ; 465
	i32 172, ; 466
	i32 277, ; 467
	i32 82, ; 468
	i32 215, ; 469
	i32 98, ; 470
	i32 30, ; 471
	i32 159, ; 472
	i32 18, ; 473
	i32 284, ; 474
	i32 127, ; 475
	i32 119, ; 476
	i32 235, ; 477
	i32 267, ; 478
	i32 248, ; 479
	i32 269, ; 480
	i32 165, ; 481
	i32 243, ; 482
	i32 194, ; 483
	i32 329, ; 484
	i32 266, ; 485
	i32 257, ; 486
	i32 170, ; 487
	i32 16, ; 488
	i32 144, ; 489
	i32 307, ; 490
	i32 125, ; 491
	i32 118, ; 492
	i32 38, ; 493
	i32 115, ; 494
	i32 47, ; 495
	i32 142, ; 496
	i32 117, ; 497
	i32 202, ; 498
	i32 34, ; 499
	i32 177, ; 500
	i32 95, ; 501
	i32 53, ; 502
	i32 258, ; 503
	i32 200, ; 504
	i32 129, ; 505
	i32 153, ; 506
	i32 24, ; 507
	i32 161, ; 508
	i32 234, ; 509
	i32 148, ; 510
	i32 104, ; 511
	i32 89, ; 512
	i32 222, ; 513
	i32 60, ; 514
	i32 142, ; 515
	i32 100, ; 516
	i32 5, ; 517
	i32 13, ; 518
	i32 122, ; 519
	i32 135, ; 520
	i32 28, ; 521
	i32 72, ; 522
	i32 232, ; 523
	i32 24, ; 524
	i32 198, ; 525
	i32 220, ; 526
	i32 262, ; 527
	i32 259, ; 528
	i32 137, ; 529
	i32 213, ; 530
	i32 229, ; 531
	i32 168, ; 532
	i32 263, ; 533
	i32 101, ; 534
	i32 206, ; 535
	i32 123, ; 536
	i32 233, ; 537
	i32 180, ; 538
	i32 163, ; 539
	i32 167, ; 540
	i32 236, ; 541
	i32 39, ; 542
	i32 187, ; 543
	i32 306, ; 544
	i32 17, ; 545
	i32 171, ; 546
	i32 319, ; 547
	i32 137, ; 548
	i32 150, ; 549
	i32 225, ; 550
	i32 155, ; 551
	i32 130, ; 552
	i32 19, ; 553
	i32 65, ; 554
	i32 325, ; 555
	i32 147, ; 556
	i32 47, ; 557
	i32 299, ; 558
	i32 211, ; 559
	i32 79, ; 560
	i32 61, ; 561
	i32 298, ; 562
	i32 106, ; 563
	i32 261, ; 564
	i32 215, ; 565
	i32 49, ; 566
	i32 246, ; 567
	i32 258, ; 568
	i32 14, ; 569
	i32 316, ; 570
	i32 179, ; 571
	i32 68, ; 572
	i32 304, ; 573
	i32 171, ; 574
	i32 221, ; 575
	i32 225, ; 576
	i32 312, ; 577
	i32 294, ; 578
	i32 328, ; 579
	i32 78, ; 580
	i32 230, ; 581
	i32 108, ; 582
	i32 214, ; 583
	i32 257, ; 584
	i32 67, ; 585
	i32 63, ; 586
	i32 27, ; 587
	i32 160, ; 588
	i32 223, ; 589
	i32 10, ; 590
	i32 187, ; 591
	i32 11, ; 592
	i32 174, ; 593
	i32 78, ; 594
	i32 256, ; 595
	i32 126, ; 596
	i32 83, ; 597
	i32 181, ; 598
	i32 66, ; 599
	i32 107, ; 600
	i32 65, ; 601
	i32 128, ; 602
	i32 122, ; 603
	i32 77, ; 604
	i32 272, ; 605
	i32 262, ; 606
	i32 327, ; 607
	i32 8, ; 608
	i32 229, ; 609
	i32 2, ; 610
	i32 44, ; 611
	i32 275, ; 612
	i32 156, ; 613
	i32 128, ; 614
	i32 260, ; 615
	i32 23, ; 616
	i32 133, ; 617
	i32 217, ; 618
	i32 248, ; 619
	i32 322, ; 620
	i32 304, ; 621
	i32 29, ; 622
	i32 216, ; 623
	i32 62, ; 624
	i32 189, ; 625
	i32 90, ; 626
	i32 87, ; 627
	i32 308, ; 628
	i32 148, ; 629
	i32 191, ; 630
	i32 36, ; 631
	i32 86, ; 632
	i32 237, ; 633
	i32 317, ; 634
	i32 315, ; 635
	i32 312, ; 636
	i32 180, ; 637
	i32 50, ; 638
	i32 6, ; 639
	i32 90, ; 640
	i32 21, ; 641
	i32 162, ; 642
	i32 96, ; 643
	i32 50, ; 644
	i32 205, ; 645
	i32 113, ; 646
	i32 253, ; 647
	i32 130, ; 648
	i32 196, ; 649
	i32 76, ; 650
	i32 27, ; 651
	i32 317, ; 652
	i32 230, ; 653
	i32 252, ; 654
	i32 7, ; 655
	i32 188, ; 656
	i32 110, ; 657
	i32 253, ; 658
	i32 239 ; 659
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
