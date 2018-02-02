# SheepIt CLI

This command line interface makes it easy and painless to run SheepIt Render-Farm across multiple machines with different setups and hardware specs.

### Configuration
This CLI can use config files to load options to feed into the SheepIt jar. These config options include most of the jar's command line options, plus options for logging and specifying paths.

The CLI will search for a config file both in your home directory (I.E. "/home/you/.sheepit_cli_config") and in your current directory (I.E. "/home/you/your/current/directory/.sheepit_cli_config"), with the current-directory config file's options taking precedence.

These are the current config options. (Where "Default" is not listed, option falls through to SheepIt's default)

```
# Save at
# /home/you/.sheepit_cli_config
# OR
# /home/you/your/current/directory/.sheepit_cli_config

jar_path=<path>                   # Default: $HOME/bin/sheepit-client-5.590.2883.jar (Required! Default is a last resort.)
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
