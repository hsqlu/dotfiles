# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# To resolve VIM error: `Warning: Failed to set locale category LC_MONETARY to en_CN.`
export LC_ALL=en_US.UTF-8

if [ "$(uname)" = "Darwin" ];then
    # Add VS Code command 
    export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

    export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"
    # Add istio path
    export PATH="$HOME/workspace/istio-1.7.3/bin:$PATH"

    # protoc java code generation plugin. build from source: $repositories/grpc-java/compiler
    export PROTOC_PLUGIN_JAVA="$HOME/repositories/grpc-java/compiler/build/exe/java_plugin/protoc-gen-grpc-java"

    export RUST_SRC_PATH=${HOME}/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
    export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
    export PATH="$HOME/.jenv/bin:$PATH"
    eval "$(jenv init -)"
fi

. "$HOME/.cargo/env"

export PATH="/usr/local/go/bin:$PATH"
# export PATH="$HOME/.cargo/bin:$PATH"
# export PATH="/opt/apache-maven-3.6.3/bin:$PATH"
# export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH=`go env GOPATH`/bin:$PATH
