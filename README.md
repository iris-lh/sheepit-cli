# SheepIt CLI

This command line interface makes it easy and painless to run the [SheepIt Render-Farm](https://www.sheepit-renderfarm.com/) client in the command line across multiple machines with different setups and hardware specs. No more obnoxiously long commands!

---

### Installation
Copy this command and paste it into your terminal:

`curl https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/install.sh | bash`

Then, simply type `sheepit` to start the CLI.

---

### Configuration
This CLI can use config files to load options to feed into the SheepIt jar. These config options include most of the jar's command line options, plus options for logging and specifying paths.

The CLI will search for a config file both in your home directory (I.E. "/home/you/.sheepit-cli.conf") and in your current directory (I.E. "/home/you/your/current/directory/.sheepit-cli.conf"), with the current-directory config file's options taking precedence.

Other than the path to the SheepIt jar file, all of these options are optional.

What follows is the config file format and the available fields. (Where default value is not listed, option falls through to SheepIt's default)

```
# Save at
# /home/you/.sheepit-cli.conf
# OR
# /home/you/your/current/directory/.sheepit-cli.conf
#
# Uses bash syntax. Remove #'s to uncomment fields.

# jar_path="$HOME/sheepit-cli/sheepit-client-5.590.2883.jar"  # [path]
# log_dir="$HOME/.sheepit-logs"                               # [dir]
# logging=false                                               # [true|false]
# login=                                                      # (prompt)
# ui=text                                                     # ['text'|'oneLine'|'swing']
# cache_dir=                                                  # [dir]
# compute_method=                                             # [cpu|gpu|cpu_gpu]
# cores=                                                      # [integer]
# config=                                                     # [path] (not to be confused with the CLI's config!)
# extras=                                                     # [value]
# gpu=                                                        # [gpu_name]
# memory=                                                     # [megabytes]
# priority=                                                   # [-19 to 19]
# proxy=                                                      # [address]
# rendertime=                                                 # [minutes]
# request_time=                                               # [time]
# server=                                                     # [address]

```

If you're wondering about the password, this CLI will always prompt with an obfuscated field so that your password never has to be stored.

---

### Happy rendering!

I hope this CLI saves you as much headache as it saves me. :blush:

My SheepIt profile: [imhelbling](https://www.sheepit-renderfarm.com/account.php?mode=profile&login=imhelbling)

**Coming soon:**
- option validation
- dependency checking
- more logging options
- easy updating
