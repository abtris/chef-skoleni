name "base"
description "Base server configuration"

run_list(
	"recipe[fail2ban]",
	"recipe[ntp]",
	"recipe[git]",
	"recipe[zsh]",
	"recipe[oh-my-zsh]"
)
