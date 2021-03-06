val invoke :
  credentials:Aws_common.credentials -> region:Aws_common.Region.t ->
  ?client_context:Yojson.Safe.json ->
  ?invocation_type:[ `Dry_run | `Event | `Request_response ] ->
  ?log_type:[ `None | `Tail ] ->
  ?qualifier:string ->
  ?payload:Yojson.Safe.json ->
  function_name:string -> unit -> string Lwt.t
