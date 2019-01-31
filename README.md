# ScrapeIt
Windows Command CMD script using Selph's Scraper (https://github.com/sselph/scraper)

Download scraper.exe from Selph's Scraper and put in same directory as this script.

Modify CMD file before running:
'''
```
SHORTNAME = name of emulator config in RetroPie (i.e. snes, arcade, atari2600)
LONGNAME = folder name to save scraped information to (i.e. Nintendo SNES, MAME_2003pi)
EMUDIR = directory where LONGNAME is located, can be network drive (i.e. c:\emulation\, \\network\network_share\emulation
SSUSER = user name registered for ScreenScraper
SSPASS = password registered for ScreenScraper (reminder this is store in pure text so don't share with other users)
IMAGEPATH = location on RetroPie where you will copy scrapped data.  This is combined with SHORTNAME to make a full path.

By default this script only scrapes box art, snaps (screenshots), marquees, and video; however, there is more you can scrape by removing the :: before each scraper line at the end of the script.
