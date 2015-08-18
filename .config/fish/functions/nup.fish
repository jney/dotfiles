function nup
	npm outdated --depth=0 | grep -v "^Package" | awk '{print $1}' | xargs npm install $1 --save-dev
end
