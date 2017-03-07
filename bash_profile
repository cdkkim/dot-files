#!/usr/bin/env bash

export PS1="\[\e[1;30m\][\w]\e[m\]\[\e[0;32m\$(parse_git_branch)\e[m\] \[\e[1;30m$\e[m\] "
export HOME=/Users/cdkkim

export WORKON_HOME="$HOME/.virtualenvs"
#source /usr/local/bin/virtualenvwrapper.sh 

export HADOOP_HOME="/usr/local/Celler/hadoop/2.4.0/libexec/share/hadoop/"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home
export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.1
export M2=$M2_HOME/bin
export JULIA_DIR=/Applications/Julia-0.2.1.app/Contents/Resources/julia
export POSTGRES_HOME=/Applications/Postgres.app/Contents/Versions/9.3
export RABBITMQ_HOME=/usr/local/Cellar/rabbitmq/3.3.1
export MAHOUT_HOME=/usr/local/mahout-distribution-0.9
export SCALA_HOME=/usr/local/share/scala-2.11.2
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export PYTHONPATH=$HOME/anaconda/lib/python3.5/site-packages export SPARK_HOME=/usr/local/spark-2.0.2
export GRADLE_HOME=/usr/local/gradle-2.12
export PLAY2_HOME=$HOME/app/activator-1.3.7
export STORM_HOME=/usr/local/storm
export BOXFUSE_HOME=$HOME/app/boxfuse
export ctags_HOME=/usr/local/Celler/ctags/5.8.1/bin

# added by Anaconda3 4.2.0 installer
export PATH="/Users/cdkkim/anaconda3/bin:$PATH"

PATH=$POSTGRES_HOME/bin:$RABBITMQ_HOME/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:$M2:$JAVA_HOME/bin:$MAHOUT_HOME/bin:$SCALA_HOME/bin:$JULIA_DIR/bin:$SPARK_HOME/bin:$STORM_HOME/bin:$GRADLE_HOME/bin:$PLAY2_HOME:$BOXFUSE_HOME:$ctags_HOME:$PATH

CDPATH=.:~:~/app:~/Documents/exercise:/Volumes/sdcard:~/app/utils/scripts

export HADOOP_OPTS="-Djava.security.krb5.realm=OX.AC.UK -Djava.security.krb5.kdc=kdc0.ox.ac.uk:kdc1.ox.ac.uk"

export CC=clang
export CXX=clang++
export LDFLAGS="-L/usr/X11/lib"
export CFLAGS="-I/usr/X11/include -I/usr/X11/include/freetype2"
alias cc="/usr/sfw/bin/gcc"
export LC_ALL=C # forces applications to use the default language for output and sorting to be bytewise
#export CPPFLAGS="-I/usr/local/include -L/usr/local/lib" # https://github.com/andrix/python-snappy

shopt -s cdspell # bash enable minor spell correction
shopt -s cmdhist # bash enable history
# set -o vi

export CLICOLOR=1
export LSCOLORS=fxExCxDxBxegedabagachx
#export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# set the DYLD_FALLBACK_LIBRARY_PATH to include the anaconda libraries
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/anaconda3/lib/:$DYLD_FALLBACK_LIBRARY_PATH

export DYLD_LIBRARY_PATH=/usr/local/bin/mecab-java

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

