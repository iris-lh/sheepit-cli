git_path=$(which git)
bin_is_in_path=$(echo "$PATH"|grep -q $HOME/bin && echo true)

install_dir="${HOME}/sheepit-cli"
config_path="${HOME}/.sheepit-cli.conf"

cli_name='sheepit'
jar_name='sheepit-client-5.590.2883.jar'

repo_url='https://github.com/isaachelbling/sheepit-cli.git'
cli_url="https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/${cli_name}"
readme_url='https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/README.md'
jar_url="https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/${jar_name}"
config_example_url="https://raw.githubusercontent.com/isaachelbling/sheepit-cli/master/config_example"


if [ ! $git_path = '' ]
then
  echo "Found Git at ${git_path}."

  echo "Cloning from ${repo_url}"
  git clone "${repo_url}" "${install_dir}"
else
  echo "Git not found, falling back on curl..."

  echo "Source: $cli_url"
  curl -o "${cli_url}" "${install_dir}/${cli_name}"

  echo "Source: $readme_url"
  curl -o "${readme_url}" "${install_dir}/README.md"

  echo "Source: $jar_url"
  curl -o "${jar_url}" "${install_dir}/${jar_name}"

  echo "Source: $config_example_url"
  curl -o "${config_example_url}" "${install_dir}/config_example"
fi

if [ -e $config_path ]
then
  echo "Found config file at ${config_path}"
else
  echo "Creating config file at ${config_path}/..."
  echo "Source: ${config_example_url}"
  curl "${config_example_url}" > "${config_path}"
fi

if [ ! $bin_is_in_path = '' ]
then
  echo "Creating symbolic link to CLI in ${HOME}/bin..."
  ln -s "${install_dir}/${cli_name}" "${HOME}/bin/${cli_name}"
fi
