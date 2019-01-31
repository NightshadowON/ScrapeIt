SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: variables
SET parent=%~dp0
SET me=%~nx0

SET SHORTNAME=atari2600
SET LONGNAME=Atari 2600

::Use N worker threads to process roms. (default 1)
SET WORKTHREADS=1
::Comma-separated order to prefer console sources, ss=screenscraper, ovgdb=OpenVGDB, gdb=theGamesDB (default "gdb")
SET DATAB=ss

::The username for registered ScreenScraper users.
SET SSUSER=username
::The password for registered ScreenScraper users.
SET SSPASS=password

SET EMUDIR=\\NETCOMPUTER\network_drive\Emulation\%LONGNAME%\
SET XMLFILE="%EMUDIR%gamelist.xml"
SET ROMDIR="%EMUDIR%roms"
SET CARTDIR="%EMUDIR%cart"
SET SNAPDIR="%EMUDIR%snap"
SET FANARTDIR="%EMUDIR%fanart"
SET BANNERDIR="%EMUDIR%banner"
SET LOGODIR="%EMUDIR%logo"
SET THREEDBOXARTDIR="%EMUDIR%3dboxart"
SET CARTLABELDIR="%EMUDIR%cartlabel"
SET MIX3DIR="%EMUDIR%mix3"
SET MIX4DIR="%EMUDIR%mix4"
SET BOXDIR="%EMUDIR%box"
SET MARQUEEDIR="%EMUDIR%marquee"
SET VIDEODIR="%EMUDIR%video"

SET IMAGEPATH=/home/pi/.emulationstation/downloaded_images/%SHORTNAME%/
::jpg or png, the format to write the images. (default "jpg")
SET IMAGEFORMAT=png
SET BOXPATH=%IMAGEPATH%box
SET MARQUEEPATH=%IMAGEPATH%marquee
SET VIDEOPATH=%IMAGEPATH%video

scraper -console_img=s -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%SNAPDIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=snap -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=f -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%FANARTDIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=fanart -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=a -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%BANNERDIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=banner -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=l -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%LOGODIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=logo -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=3b -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%THREEDBOXARTDIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=3dboxart -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=cart -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%CARTDIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=cart -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=clabel -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%CARTLABELDIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=cartlabel -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=mix3 -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%MIX3DIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=mix3 -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

::scraper -console_img=mix4 -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -image_dir=%MIX4DIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=mix4 -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

scraper -console_img=b -console_src=%DATAB% -skip_check -download_images=true -output_file=%XMLFILE% -download_marquees=true -download_videos=true -image_dir=%BOXDIR% -img_format=%IMAGEFORMAT% -max_width=0 -image_suffix="" -image_path=%BOXPATH% -marquee_dir=%MARQUEEDIR% -marquee_suffix="" -marquee_path=%MARQUEEPATH% -video_dir=%VIDEODIR% -video_suffix="" -video_path=%VIDEOPATH% -use_nointro_name=false -workers=%WORKTHREADS% -ss_user=%SSUSER% -ss_password=%SSPASS% -rom_dir=%ROMDIR%

pause
