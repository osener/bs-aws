type endpoint =
  { address : string;
    port : int;
    hosted_zone_id : string }

type status_info =
  { status_type : string;
    normal : bool;
    status : string;
    message : string option }

type db_instance =
  { endpoint : endpoint;
    status_infos : status_info list;
    read_replica_db_instance_identifiers : string list }

val describe_db_instances :
  credentials:Aws_common.credentials ->
  region:[< Aws_common.Region.t ] ->
  ?db_instance_identifier:string -> unit -> db_instance list Lwt.t
