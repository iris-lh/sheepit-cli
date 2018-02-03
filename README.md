# SheepIt CLI

This command line interface makes it easy and painless to run the [SheepIt Render-Farm](https://www.sheepit-renderfarm.com/) client in the command line across multiple machines with different setups and hardware specs. No more obnoxiously long commands!

---

### Installation
Copy this command and paste it into your terminal:

`curl https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/install.sh | bash`

---

### Configuration
This CLI can use config files to load options to feed into the SheepIt jar. These config options include most of the jar's command line options, plus options for logging and specifying paths.

The CLI will search for a config file both in your home directory (I.E. "/home/you/.sheepit_cli_config") and in your current directory (I.E. "/home/you/your/current/directory/.sheepit_cli_config"), with the current-directory config file's options taking precedence.

Other than the path to the SheepIt jar file, all of these options are optional.

These are the current config options. (Where "Default" is not listed, option falls through to SheepIt's default)

```
# Save at
# /home/you/.sheepit_cli_config
# OR
# /home/you/your/current/directory/.sheepit_cli_config

jar_path=<path>                   # Installation sets this to $HOME/sheepit_cli/sheepit-client-5.590.2883.jar
log_dir=[path]                    # Default: $HOME/.sheepit_logs
logging=[true|false]              # Default: false
login=[username]                  # Default: (prompt)
ui=['text'|'oneLine'|'swing']     # Default: 'text'
cache_dir=[path]
compute_method=[cpu|gpu|cpu_gpu]
cores=[integer]
config=[path]                     # not to be confused with the CLI's config!
extras=[value]                    
gpu=[gpu_name]                    
memory=[megabytes]
priority=[-19 to 19]
proxy=[address]
rendertime=[minutes]
request_time=[time]
server=[address]
```

If you're wondering about the password, this CLI will always prompt with an obfuscated field so that your password never has to be stored.

---

### Happy rendering!

I hope this CLI saves you as much headache as it saves me. :blush:

My SheepIt profile: [imhelbling](https://www.sheepit-renderfarm.com/account.php?mode=profile&login=imhelbling)

**Coming soon:**
- easy installation
- option validation
- dependency checking
- more logging options
