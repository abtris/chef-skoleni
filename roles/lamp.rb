name "lamp"
description "LAMP server (apache,mysql,php)"

run_list(
	"recipe[apache2]",
	"recipe[mysql::server]",
	"recipe[php5]"
)
