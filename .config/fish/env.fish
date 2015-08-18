set -x BROWSER firefox
set -x EDITOR nvim
set -x PAGER less
set -x MANPAGER $PAGER

# go
set -x GOPATH $HOME/go
add_to_path $GOPATH/bin

# haskell
add_to_path $HOME/.cabal/bin

# nim
add_to_path $HOME/.nimble/bin

# nnn
set -x NNN_COPIER "~/bin/copier"

# python
add_to_path /usr/local/share/python

# ruby
# Make ruby aware of gems when it runs
set -x RUBYOPT rubygems
set -x GEM_HOME $HOME/.gem
add_to_path $GEM_HOME/bin
add_to_path $HOME/.rbenv/bin

# rust
add_to_path $HOME/.cargo/bin
