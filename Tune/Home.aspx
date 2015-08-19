<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Tune.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/custom.css">
	<title></title>
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>


	<script type="text/javascript" src="js/jquery.sidr.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jquery.sidr.dark.css">
	<link rel="stylesheet" type="text/css" href="css/sidr.dark.custom.css">

		<script type="text/javascript" src="js/jssor.js"></script>
	<script type="text/javascript" src="js/jssor.slider.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jquery.sidr.dark.css">

	<script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/custom_music_player.css" rel="stylesheet" />
</head>
<body>
	<div style="height:80px; width: 100%"></div>
	 <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container no-margin" style="width:100%">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
					<img src="img/logo.png" height="50px" width="50px" style="display: inline">
					<h1 style="font-family: 'Montserrat', sans-serif; display:inline; color: #23527c">tune <small>BETA</small></h1>
		  </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <div class="nav navbar-nav navbar-left" style="padding-top: 10px; width:50%">
          <form class="navbar-form">
          	<div class="input-group" style="width:100%!important; display:none">
          		<input type="text" class="form-control" placeholder="What do you want to listen today?" style="width: 100%!important">
          		<span class="input-group-addon" id="search">search</span>
          	</div>
          </form>
          </div>
          <div class="nav navbar-nav navbar-right" style="padding: 10px 10px 0px 0px">
           	<a href="#" id="right-menu"><img src="img/user.png" height="50px" width="50px"></a>
          </div>
        </div>
      </div>
    </nav>
<!--Navbar ends here-->
    <div class="container no-margin" style="padding: 0px">

        <!-- Featured slider-->
        <div class="slider-wrapper">
        <div class="slider-header">featured</div>
        <div id="featured-slider" style="position: relative; top: 0px; left: 0px; width: 1200px;
        height: 150px; overflow: hidden; margin: 0 auto">
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1200px; height: 150px;
            overflow: hidden;">
         <div class="slider-package">
                <img u="image" src="img/art/albumart1.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="1">TRACK 1</a></div>
            </div>
            <div class="slider-package">
                <img u="image" src="img/art/albumart2.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="2">TRACK 2</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart3.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="3">TRACK 3</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart4.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="4">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart5.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="5">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart6.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="6">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart7.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="7">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart8.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="8">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart9.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="9">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart10.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="1">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart1.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="2">TRACK NAME</a></div>
            </div>
        </div>
        <style>
            /* jssor slider arrow navigator skin 13 css */
            /*
            .jssora13l                  (normal)
            .jssora13r                  (normal)
            .jssora13l:hover            (normal mouseover)
            .jssora13r:hover            (normal mouseover)
            .jssora13l.jssora13ldn      (mousedown)
            .jssora13r.jssora13rdn      (mousedown)
            */
            .jssora13l, .jssora13r {
                display: block;
                position: absolute;
                /* size of arrow element */
                width: 40px;
                height: 50px;
                cursor: pointer;
                background: url(img/a13.png) no-repeat;
                overflow: hidden;
            }
            .jssora13l { background-position: -10px -35px; }
            .jssora13r { background-position: -70px -35px; }
            .jssora13l:hover { background-position: -130px -35px; }
            .jssora13r:hover { background-position: -190px -35px; }
            .jssora13l.jssora13ldn { background-position: -250px -35px; }
            .jssora13r.jssora13rdn { background-position: -310px -35px; }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora13l" style="top: 123px; left: 30px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora13r" style="top: 123px; right: 30px;">
        </span>
        </div>
        </div>

        <hr style="width:100%" class="section-divider">

        <!--Recent Slider-->
        <div class="slider-wrapper">
        <div class="slider-header">recent releases</div>
        <div id="recent-slider" style="position: relative; top: 0px; left: 0px; width: 1200px;
        height: 150px; overflow: hidden; margin: 0 auto">
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1200px; height: 150px;
            overflow: hidden;">
                     <div class="slider-package">
                <img u="image" src="img/art/albumart1.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="1">TRACK 1</a></div>
            </div>
            <div class="slider-package">
                <img u="image" src="img/art/albumart2.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="2">TRACK 2</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart3.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="3">TRACK 3</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart4.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="4">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart5.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="5">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart6.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="6">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart7.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="7">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart8.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="8">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart9.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="9">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart10.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="1">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart1.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="2">TRACK NAME</a></div>
            </div>
           </div>
        <style>
            /* jssor slider arrow navigator skin 13 css */
            /*
            .jssora13l                  (normal)
            .jssora13r                  (normal)
            .jssora13l:hover            (normal mouseover)
            .jssora13r:hover            (normal mouseover)
            .jssora13l.jssora13ldn      (mousedown)
            .jssora13r.jssora13rdn      (mousedown)
            */
            .jssora13l, .jssora13r {
                display: block;
                position: absolute;
                /* size of arrow element */
                width: 40px;
                height: 50px;
                cursor: pointer;
                background: url(img/a13.png) no-repeat;
                overflow: hidden;
            }
            .jssora13l { background-position: -10px -35px; }
            .jssora13r { background-position: -70px -35px; }
            .jssora13l:hover { background-position: -130px -35px; }
            .jssora13r:hover { background-position: -190px -35px; }
            .jssora13l.jssora13ldn { background-position: -250px -35px; }
            .jssora13r.jssora13rdn { background-position: -310px -35px; }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora13l" style="top: 123px; left: 30px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora13r" style="top: 123px; right: 30px;">
        </span>
        </div>
        </div>

        <hr style="width:100%" class="section-divider">

        <!--Hot Slider-->
        <div class="slider-wrapper">
            <div class="slider-header">hot favourites</div>
         <div id="hot-slider" style="position: relative; top: 0px; left: 0px; width: 1200px;
        height: 150px; overflow: hidden; margin: 0 auto">
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1200px; height: 150px;
            overflow: hidden;">
                   <div class="slider-package">
                <img u="image" src="img/art/albumart1.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="1">TRACK 1</a></div>
            </div>
            <div class="slider-package">
                <img u="image" src="img/art/albumart2.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="2">TRACK 2</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart3.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="3">TRACK 3</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart4.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="4">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart5.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="5">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart6.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="6">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart7.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="7">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart8.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="8">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart9.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="9">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart10.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="1">TRACK NAME</a></div>
            </div><div class="slider-package">
                <img u="image" src="img/art/albumart1.jpg" id="recommend-1"/>
                <div class="slider-track-name"><a href="#" data-val="2">TRACK NAME</a></div>
            </div>
           </div>
        <style>
            /* jssor slider arrow navigator skin 13 css */
            /*
            .jssora13l                  (normal)
            .jssora13r                  (normal)
            .jssora13l:hover            (normal mouseover)
            .jssora13r:hover            (normal mouseover)
            .jssora13l.jssora13ldn      (mousedown)
            .jssora13r.jssora13rdn      (mousedown)
            */
            .jssora13l, .jssora13r {
                display: block;
                position: absolute;
                /* size of arrow element */
                width: 40px;
                height: 50px;
                cursor: pointer;
                background: url(img/a13.png) no-repeat;
                overflow: hidden;
            }
            .jssora13l { background-position: -10px -35px; }
            .jssora13r { background-position: -70px -35px; }
            .jssora13l:hover { background-position: -130px -35px; }
            .jssora13r:hover { background-position: -190px -35px; }
            .jssora13l.jssora13ldn { background-position: -250px -35px; }
            .jssora13r.jssora13rdn { background-position: -310px -35px; }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora13l" style="top: 123px; left: 30px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora13r" style="top: 123px; right: 30px;">
        </span>
        </div>
        </div>
        
        
        <div class="row" style="margin-top: 20px" id="list-songs">
        
        </div>
        <div id="pause" style='background:#ccc;  margin-left: 10px;padding:10px; border-radius:6px; border: 1px solid black'>Pause</div>
        <script>
            $(document).ready(function () {
                var audio = new Audio();
                $.ajax({
                    url: 'Home.aspx/PopulateSuso',
                    method:"POST",
                    data: "{superbakchodi:'get'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (result) {
                        console.log(result);
                        var response = JSON.parse(result['d']);
                        var parent = $("#list-songs");
                        var child = "<ul style='padding:50px 0px; width: 25%'>";
                             for (i = 0; i < response.length; i++) {
                                 child += "<li class='dblink' style='background:#ccc;  margin-left: 10px;padding:10px; border-radius:6px; border: 1px solid black' data-val=" + response[i].TrackPath + ">" + response[i].TrackName + "</li>";
                             }
                             child += "</ul>";
                             console.log(child);
                             parent.append(child);
                             var base = "FullSongs";
                             $("#list-songs li").click(function(e){
                                 e.preventDefault();
                                 console.log("Clicked");
                                 var path = $(this).data('val');
                                 switchTrack(path);
                             });
                        },
                   
                    error: function (result) {
                        console.log(result.responseText);
                    }

                });

                switchTrack = function (path) {
                    var base = "FullSongs/";
                    var url = base + path + ".mp3";
                    audio.pause();
                    audio.src = url;
                    audio.load();
                    audio.play();
                }
                $("#pause").click(function () {
                    audio.pause();
                });
            });
        </script>
    </div>

    <!--Right sidebar-->
    <div id="profile-menu" style="display: none">
        
        
        <h3> <asp:Label ID="lblUserName" runat="server"></asp:Label> </h3>
       
        <h5><asp:Label ID="lblUserEmail" runat="server" ></asp:Label></h5>
        
        <br>
        <ul>
            <li><a href="#">Edit profile</a></li>
            <li><a href="#">Cart</a></li>
            <li><a href="#">Purchase History</a></li>
            <li><form runat="server"><asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" /></form></li>
        </ul>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#right-menu').sidr({ name: 'sidr-right', side: 'right', source: '#profile-menu' });
        });
    </script>

    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: true,
                $AutoPlaySteps: 1,
                $PauseOnHover: 3,                               //[Optional] Whether to pause when mouse over if a slideshow is auto playing, default value is false
                $ArrowKeyNavigation: true,                          //Allows arrow key to navigate or not
                $SlideWidth: 150,                                   //[Optional] Width of every slide in pixels, the default is width of 'slides' container
                $SlideHeight: 150,                                  //[Optional] Height of every slide in pixels, the default is width of 'slides' container
                $SlideSpacing: 20,                                  //Space between each slide in pixels
                $DisplayPieces: 10,                                  //Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 100,                                //The offset position to park slide (this options applys only when slideshow disabled).
                $ArrowNavigatorOptions: {                       //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                }
            };

            var reverseOptions = {
                $AutoPlay: true,
                $PauseOnHover: 3,
                $AutoPlaySteps: -2,                        //[Optional] Whether to pause when mouse over if a slideshow is auto playing, default value is false
                $ArrowKeyNavigation: true,                          //Allows arrow key to navigate or not
                $SlideWidth: 150,                                   //[Optional] Width of every slide in pixels, the default is width of 'slides' container
                $SlideHeight: 150,                                  //[Optional] Height of every slide in pixels, the default is width of 'slides' container
                $SlideSpacing: 20,                                  //Space between each slide in pixels
                $DisplayPieces: 10,                                  //Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 100,                                //The offset position to park slide (this options applys only when slideshow disabled).
                $ArrowNavigatorOptions: {                       //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                }
            };


            var featuredSlider = new $JssorSlider$("featured-slider", options);
            var recentSlider = new $JssorSlider$("recent-slider", reverseOptions);
            var hotSlider = new $JssorSlider$("hot-slider", options);


            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes

            function ScaleSliders() {
                //var parentWidth = slider.$Elmt.parentNode.clientWidth;
                var windowWidth = $(window).width();
                featuredSlider.$ScaleWidth(windowWidth);
                recentSlider.$ScaleWidth(windowWidth);
                hotSlider.$ScaleWidth(windowWidth);
            }
            $(window).bind("load", ScaleSliders);
            $(window).bind("resize", ScaleSliders);
            $(window).bind("orientationchange", ScaleSliders);
            //responsive code end*/
        });

        $(".slider-package").hover(function () {
            $(this).children('div .slider-track-name').fadeToggle();
        });
</script>
    <!-- MUSIC PLAYER -->
   <div id="music_player">
            <img src="img/albums/1.png" id="album_art">
            <span id="track_details">
                <a href="#" id="track_name">track_name</a> - <a href="#" id="album_name">album_name</a> - <a href="#" id="artist_name">atrist_name</a>
            </span>
            <div class="player_seek">
                <audio controls id="custom-player">
                    <source id="custom-player-source" src="full_songs/1.mp3" type="audio/mpeg">
                        Your browser does not support the audio element.
                    </audio>
                    <span><input type="submit" value="&#x20b9;5.00" id="btn_buy" class="btn btn-success" style=""display:none;"></span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var audio = $("#custom-player");
            var source = $("#custom-player-source");
            var art = $("#album_art");

            $(".slider-package").click(function (e) {
                e.preventDefault();
                console.log("Changed");
                var data = $(this).find('a').data('val');
                changeTrack(data);
            });
            function UrlExists(url) {
                var http = new XMLHttpRequest();
                http.open('HEAD', url, false);
                http.send();
                return http.status != 404;
            }

            changeTrack = function (track) {
                //console.log(audio[0]);
                //console.log("Trying to pause previous song");
                $("#custom-player")[0].pause();

                var base = "full_songs/";
                var album_art_path = "img/art/albumart" + track + ".jpg";
                var path = base + track + ".mp3";
                console.log(UrlExists(album_art_path));
                if (UrlExists(album_art_path) == false) {
                    album_art_path = "img/art/albumart" + track + ".png";
                }
                //console.log(path);
                //console.log("Changing the source of the player");
                source.attr('src', path);

                //album_art_fadein
                $("#album_art").fadeOut(600, function () {
                    $(this).attr('src', album_art_path).bind('onreadystatechange load', function () {
                        if (this.complete) $(this).fadeIn(600);
                    });
                });
                //art.attr('src',album_art_path);
                //console.log("Playing");
                //$("#custom-player")[0].animate({volume:0.5},1000);
                $("#custom-player")[0].load();
                $("#custom-player")[0].play();
            }
        </script>
</body>
</html>
