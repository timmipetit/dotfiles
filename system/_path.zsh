export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
if $(gls &>/dev/null)
then
	export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi