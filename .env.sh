export GOROOT=/usr/local/go
export GOPATH=$HOME/Projects/go
export GOBIN=$GOPATH/bin
export PATH="$HOME/bin:/usr/local/go/bin:$GOPATH/bin:$PATH"
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
export RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/perl5/bin${PATH+:}${PATH}"
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64\
	                         ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
#export PERL5LIB="/home/igor/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"
#PERL_LOCAL_LIB_ROOT="/home/igor/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/igor/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/igor/perl5"; export PERL_MM_OPT;

VIRTUALENVWRAPPER=/usr/local/bin/virtualenvwrapper_lazy.sh
if [ -f $VIRTUALENVWRAPPER ]; then
	source $VIRTUALENVWRAPPER
fi

export VAGRANT_HOME=/media/igor/DATA/vagrant.d

export NVM_DIR="/home/igor/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
