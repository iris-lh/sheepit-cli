git_path=$(which git)
bin_is_in_path=$(echo "$PATH"|grep -q $HOME/bin && echo true)

install_dir="${HOME}/sheepit-cli"
config_path="${HOME}/.sheepit_cli_config"

cli_name='sheepit'
jar_name='sheepit-client-5.590.2883.jar'

repo_url='https://github.com/isaachelbling/sheepit-cli.git'
cli_url="https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/${cli_name}"
readme_url='https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/README.md'
jar_url="https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/${jar_name}"
config_example_url='https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/config_example'


touch $install_dir $config_path

if [ ! $git_path = '' ]
then
  echo "Found Git at ${git_path}."
  git clone $repo_url $install_dir
else
  echo "Git not found, falling back on curl..."
  curl -o ${cli_url} "${install_dir}/${cli_name}"
  curl -o ${readme_url} "${install_dir}/README.md"
  curl -o ${jar_url} "${install_dir}/${jar_name}"
  curl -o ${config_example_url} "${install_dir}/config_example"
fi

echo 'Adding SheepIt jar path to CLI config...'
echo "jar_path=${install_dir}/${jar_name}" >> $config_path

if [ ! $bin_is_in_path = '' ]
then
  echo "Creating symbolic link to CLI in ${HOME}/bin..."
  ln -s $install_dir/$cli_name $HOME/bin/$cli_name
fi
