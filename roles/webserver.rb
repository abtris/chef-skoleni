name "webserver"
description "Base apache configuration"

run_list "recipe[apache2]", "recipe[symfony]"
