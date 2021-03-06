USE [master]
GO
/****** Object:  Database [DigitalNews]    Script Date: 7/19/2018 3:47:14 PM ******/
CREATE DATABASE [DigitalNews]
GO
USE DATABASE [DigitalNews]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DigitalNews].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DigitalNews] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DigitalNews] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DigitalNews] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DigitalNews] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DigitalNews] SET ARITHABORT OFF 
GO
ALTER DATABASE [DigitalNews] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DigitalNews] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DigitalNews] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DigitalNews] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DigitalNews] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DigitalNews] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DigitalNews] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DigitalNews] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DigitalNews] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DigitalNews] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DigitalNews] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DigitalNews] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DigitalNews] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DigitalNews] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DigitalNews] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DigitalNews] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DigitalNews] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DigitalNews] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DigitalNews] SET  MULTI_USER 
GO
ALTER DATABASE [DigitalNews] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DigitalNews] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DigitalNews] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DigitalNews] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DigitalNews] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DigitalNews] SET QUERY_STORE = OFF
GO
USE [DigitalNews]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DigitalNews]
GO
/****** Object:  Table [dbo].[News]    Script Date: 7/19/2018 3:47:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[writer] [nvarchar](50) NOT NULL,
	[shortDescription] [nvarchar](max) NOT NULL,
	[fullDescription] [nvarchar](max) NOT NULL,
	[publishedDate] [datetime] NOT NULL,
	[img] [varchar](100) NULL,
 CONSTRAINT [PK__News__3213E83FCFBE4B9E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [title], [writer], [shortDescription], [fullDescription], [publishedDate], [img]) VALUES (1, N'Making security feeds smarter via machine learning', N'Benjamin Cher', N'In today’s age of surveillance, with cameras even in our homes, security professionals need to monitor an ever-increasing number of screens. In 2014 alone, 245 million video surveillance cameras were installed globally, according to an IHS report.', N'In today’s age of surveillance, with cameras even in our homes, security professionals need to monitor an ever-increasing number of screens. In 2014 alone, 245 million video surveillance cameras were installed globally, according to an IHS report.
It is increasingly clear that the ‘watchmen’ are having trouble watching. This is where Singapore-based Vi Dimensions hopes to help, by identifying anomalies to alert human operators that a second look is needed.

While the security industry is already familiar with rule-based analytics, there is still a gap, according to its cofounder and chief executive officer Raymond Looi. 
“Video analytics has been in the market for the last 10 years, but the way they have been doing it is not very efficient, using rule-based analytics.
“This requires you to know what you are looking for and then specify a rule, when most do not know what to look out for,” he says, in a conversation with Digital News Asia (DNA) in Singapore recently.
“We felt that there was a gap in the industry in how they applied automation to cameras – and with the proliferation of surveillance cameras and vast amounts of data being generated, we felt that this was an area in which we could differentiate ourselves,” he adds.', CAST(N'2016-04-12T00:00:00.000' AS DateTime), N'i1.jpg')
INSERT [dbo].[News] ([id], [title], [writer], [shortDescription], [fullDescription], [publishedDate], [img]) VALUES (2, N'Elevenia tawarkan layanan Mokado', N'Ervina Anggraini', N'SERIUS menjajaki bisnis e-commerce perusahaan joint venture PT XL Planet dengan produk elevenia kembali mengumumkan strategi bisnis perusahaan pada 2016 dengan menyediakan layanan mobile gifting Mokado (mobile kado).', N'SERIUS menjajaki bisnis e-commerce perusahaan joint venture PT XL Planet dengan produk elevenia kembali mengumumkan strategi bisnis perusahaan pada 2016 dengan menyediakan layanan mobile gifting Mokado (mobile kado).
 
Dengan mengusung konsep online-to-offline (O2O), Mokado menawarkan produk dengan cara yang berbeda dengan platform induk elevenia. Jika elevenia menyediakan berbagai barang, maka Mokado lebih menyasar pada penyediaan voucher yang bisa dipakai sendiri atau dijadikan hadiah.
 
Ide kemunculan Mokado disebut GM hobby & service elevenia Pamkin Pandawa diawali sejak adanya e-kupon pada 2014.
 
Ketersediaan kupon elektronik yang merupakan kategori hobi menjadi salah satu produk terlaris di antara 8 kategori lainnya yakni gadget/ computer, elektronik, fesyen, kecantikan & kesehatan, anak-anak dan bayi, home/garden, dan service/food.
 
“Pada dasarnya kami memisahkan layanan Mokado karena melihat latar belakang orang Indonesia yang suka berbagi. Mereka membeli satu barang untuk diberikan kepada orang lain.
 
“Jadi Mokado sama halnya dengan kado versi digital,” katanya di sela-sela diskusi media di Mall Central Park, Jakarta, 8 April 2016.', CAST(N'2016-04-12T00:00:00.000' AS DateTime), N'public/images/i1.jpg')
INSERT [dbo].[News] ([id], [title], [writer], [shortDescription], [fullDescription], [publishedDate], [img]) VALUES (3, N'What’s next for the wireless industry?', N'Michael Lok', N'NO doubt, WiFi technology has become such a pervasive force that it has become hard to imagine what life will be like without wireless Internet access.', N'NO doubt, WiFi technology has become such a pervasive force that it has become hard to imagine what life will be like without wireless Internet access.
 
The growth of smart mobile devices that feature new, data-hungry applications has undoubtedly shaped the wireless landscape as more users rely on these devices to perform more than just phone calls.
 
On the enterprise front, the concept of the traditional office and work day has also evolved as more organisations adopt WiFi to boost operational efficiency and productivity, allowing employees to accomplish tasks and collaborate with one another regardless of their location in the workplace.
 
Given the changes in the way we live and work, no technology is better suited to address the ever-increasing demand for data than WiFi technology.
 
In 2015, we saw 802.11ac Wave 2 WiFi access points (APs) improve the overall experience for users. These APs support a new capability called multi-user multiple input/ multiple output (MU-MIMO), which allows the simultaneous transmission of multiple client streams to different devices over the same frequency, enabling high performance WiFi connectivity even in congested environments.', CAST(N'2016-02-16T00:00:00.000' AS DateTime), N'public/images/i1.jpg')
INSERT [dbo].[News] ([id], [title], [writer], [shortDescription], [fullDescription], [publishedDate], [img]) VALUES (4, N'Pick yourself up, learn, sharpen skills', N'Karamjit Singh', N'THE entrepreneur panel session during the What’s Next conference on Aug 29 threw up a mix of advice ranging from “raising too much money too early can actually be harmful” and warning hardware-based tech companies about getting working capital from banks, to cautions against thinking only of maximising money from customers.', N'THE entrepreneur panel session during the What’s Next conference on Aug 29 threw up a mix of advice ranging from “raising too much money too early can actually be harmful” and warning hardware-based tech companies about getting working capital from banks, to cautions against thinking only of maximising money from customers.
 
Two of the entrepreneurs have listed their companies. Wei Chuan Beng is founder and group managing director of integrated telecommunications service provider REDtone International Bhd, listed on Bursa Malaysia; while Ivan Teh is founder and managing director of UK-listed big data analytics firm Fusionex International Plc.
 
The third panellist, Dr Gabriel Walter, hopes to join them within the next 12-months by listing Quantum Electro Opto Systems Sdn Bhd (QEOS), his optical laser company that is now focusing on the Internet of Things (IoT).', CAST(N'2015-10-12T00:00:00.000' AS DateTime), N'public/images/i1.jpg')
INSERT [dbo].[News] ([id], [title], [writer], [shortDescription], [fullDescription], [publishedDate], [img]) VALUES (5, N'Tony’s Top 10 Tips for Entrepreneurs', N'Goh Thean Eu', N'LOVE him or hate him, you can’t just ignore AirAsia cofounder Tony Fernandes, who rocked the house earlier this week as the closing speaker for Digital News Asia’s (DNA) inaugural What’s Next business technology conference in Cyberjaya.', N'LOVE him or hate him, you can’t just ignore AirAsia cofounder Tony Fernandes, who rocked the house earlier this week as the closing speaker for Digital News Asia’s (DNA) inaugural What’s Next business technology conference in Cyberjaya.
 
With his trademark biting wit and expected insights into the business world, he had the floor in stitches at times, or furiously taking down notes at others.
It was sponsored by Malaysia’s national ICT custodian Multimedia Development Corp (MDeC), which oversees the MSC Malaysia and Digital Malaysia national programmes, and big data analytics company Fusionex International.
 
Now a true-blooded tycoon after having disrupted the global aviation industry, it’s easy to forget that Fernandes trod the same entrepreneurs’ path that many DNA readers are treading now, and that he faced his own challenges in bringing a crazy idea – that everyone can fly – to fruition.', CAST(N'2015-10-02T00:00:00.000' AS DateTime), N'public/images/i1.jpg')
INSERT [dbo].[News] ([id], [title], [writer], [shortDescription], [fullDescription], [publishedDate], [img]) VALUES (6, N'Test news with earlies that never be in top five', N'Le Hoang Nam', N'ABC test LOVE him or hate him, you can’t just ignore AirAsia cofounder Tony Fernandes, who rocked the house earlier this week as the closing speaker for Digital News Asia’s (DNA) inaugural What’s Next business technology conference in Cyberjaya.', N'LOVE him or hate him, you can’t just ignore AirAsia cofounder Tony Fernandes, who rocked the house earlier this week as the closing speaker for Digital News Asia’s (DNA) inaugural What’s Next business technology conference in Cyberjaya.
 
With his trademark biting wit and expected insights into the business world, he had the floor in stitches at times, or furiously taking down notes at others.
It was sponsored by Malaysia’s national ICT custodian Multimedia Development Corp (MDeC), which oversees the MSC Malaysia and Digital Malaysia national programmes, and big data analytics company Fusionex International.
 
Now a true-blooded tycoon after having disrupted the global aviation industry, it’s easy to forget that Fernandes trod the same entrepreneurs’ path that many DNA readers are treading now, and that he faced his own challenges in bringing a crazy idea – that everyone can fly – to fruition.', CAST(N'2010-10-10T00:00:00.000' AS DateTime), N'i1.jpg')
SET IDENTITY_INSERT [dbo].[News] OFF
USE [master]
GO
ALTER DATABASE [DigitalNews] SET  READ_WRITE 
GO
