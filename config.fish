if status is-interactive
  # Commands to run in interactive sessions can go here
	eval "$(/opt/homebrew/bin/brew shellenv)"
	
	alias l='ls -la'
	alias vim='nvim'

	# git
	alias g='git'
	alias ga='git add'
	alias gst='git status'
	alias gco='git checkout'
	alias gd='git diff'
	alias gc='git commit'
	alias gr='git remote'
	alias gfgp='git fetch && git pull'
	function grs
		switch (count $argv)
			case 0
				set steps 1
			case 1
				set steps $argv
			case '*'
				echo "git reset --soft HEAD~'number-of-steps'-- you passed '$argv'"
				return
		end
		git reset --soft HEAD~$steps
	end
	alias grsh='git restore --staged .'

	# yarn
	alias yaarn="yarn && yarn start"

	# rwgps
	alias r='./ride.rb'
end
