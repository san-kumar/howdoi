# howdoi

Get quick answers to common linux related questions, right inside your terminal by typing
"howdoi [your question]".

## Screenshot

![screenshot](./screenshot.gif)

## Examples

### Quick answer
````shell script
$ howdoi extract a bz2 file

  -j, --bzip2
            filter the archive through bzip2
  tar -xvjf enginsxt.tar.bz2
  
  Source: https://askubuntu.com/questions/707861/how-to-extract-tar-bz2
```` 

### Verbose output
````shell script
$ howdoi -v add a program to cron

  Put a shell script in one of these folders: /etc/cron.daily, /etc/cron.hourly, /etc/cron.monthly or /etc/cron.weekly. 
  
  If these are not enough for you, you can add more specific tasks e.g. twice a month or every 5 minutes. Go to the terminal and type:
  
  crontab -e
  
 ...snip
  
  Source: https://askubuntu.com/questions/2368/how-do-i-set-up-a-cron-job
````

### Multiple results
````shell script
$ howdoi -n 2 attach to a screen

 screen
 screen -S myprogramrunningunderscreen
 screen -ls

There are screens on:
    4964.myprogramrunningunderscreen    (05/31/2013 09:42:29 PM)    (Detached)
    4874.pts-1.creeper  (05/31/2013 09:39:12 PM)    (Detached)

Source: https://askubuntu.com/questions/302662/reattaching-to-an-existing-screen-session

  screen -d -r

Source: https://askubuntu.com/questions/302662/reattaching-to-an-existing-screen-session
````

### Programming questions
````shell script
$ howdoi js hex to int
  hexString = yourNumber.toString(16);
  yourNumber = parseInt(hexString, 16);
  
  Source: https://stackoverflow.com/questions/57803/how-to-convert-decimal-to-hexadecimal-in-javascript
```` 

## Usage
 
howdoi [-n -v -h -i] -- question

   	-n		Number of results (default is 1)
   	-v		Show full answer (otherwise shows only code)
   	-i		Interactive or REPL mode (useful for hotkey binding)
   	-h		Shows this help

## Installation

Just run the following commands (requires PHP 5+).

````shell script
$ mkdir -p ~/bin && wget https://raw.githubusercontent.com/san-kumar/howdoi/master/howdoi -O ~/bin/howdoi && chmod +x ~/bin/howdoi
$ sudo ln -s ~/bin/howdoi /usr/local/bin/howdoi

$ howdoi check my linux version
```` 

## Interactive or Popup mode

It is possible to run this outside the terminal interactively via a hotkey binding. It
can also handle simple programming related questions too.

![popup](./popup.gif)

(you can ask questions in a popup too by pressing a hotkey - as described below)

### Setup hotkey binding

- Copy [popup.sh](./popup.sh) in your `~/bin` folder (or the folder in which you've downloaded *howdoi* script)
- Run `chmod +x ~/bin/popup.sh`
- Go to *Settings &gt; Keyboard &gt; Shortcuts* and add a new shortcut to `~/bin/popup.sh`
- Assign a hotkey (e.g. Ctrl+Shift+H) to your new shortcut.
- Now press the hotkey and you should see a popup where you can type your question!

## Feedback

Hopefully it will save you some time and makes your life easier. If so, please share it with your friends and give me [feedback here](https://news.ycombinator.com/item?id=23230157#23230181).

Thank you everyone who encouraged me and voted for this project on Hacker news. Seeing comments like
these really makes the work I've put into it worth it and now I want to make more such projects!

[![testimonial 1](./testimonial-1.png)](https://news.ycombinator.com/item?id=23230157)  

[![testimonial 2](./testimonial-2.png)](https://www.reddit.com/r/linux/comments/gn2wfv/howdoi_get_quick_answers_to_common_linux_related/)  
 	   	
## Caveats

- It's just a quick hack to save you a few clicks. I wrote this in just a few hours, so it's not perfect.
- Right now, it prefers Ubuntu solutions over other linux distros.
- Just to clarify this only prints the answer, it does not run any code on your machine (in case the screenshot gives you the wrong impression).

## Licence   	

Perl's Artistic Licence