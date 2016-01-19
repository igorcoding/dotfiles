. ~/.bashrc_colors

export LANG="en_US.UTF-8"
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_PAPER=en_GB.UTF-8
export LC_NAME=en_GB.UTF-8
export LC_ADDRESS=en_GB.UTF-8
export LC_TELEPHONE=en_GB.UTF-8
export LC_MEASUREMENT=en_GB.UTF-8
export LC_IDENTIFICATION=en_GB.UTF-8
export LC_ALL=en_US.UTF-8

VIRTUALENVWRAPPER=/usr/local/bin/virtualenvwrapper_lazy.sh
if [ -f $VIRTUALENVWRAPPER ]; then
	source $VIRTUALENVWRAPPER
fi

export GOPATH=$HOME/Projects/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

export PATH="/home/igor/perl5/bin${PATH+:}${PATH}"
export PERL5LIB="/home/igor/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"
#PERL_LOCAL_LIB_ROOT="/home/igor/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/igor/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/igor/perl5"; export PERL_MM_OPT;
