name "balance"

run_list("recipe[haproxy::app_lb]")

override_attributes(
	"haproxy" => {
	    "app_server_role" => "webserver", "member_port" => "80"
	}
)
