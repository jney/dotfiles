function f
	find . | peco | xargs sh -c 'vim "$0" < /dev/tty' $argv;
end
