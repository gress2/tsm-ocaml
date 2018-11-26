let load_file f =
  let ic = open_in f in
  let n = in_channel_length ic in
  let s = Bytes.create n in
  really_input ic s 0 n;
  close_in ic;
  (s)
;;

let read_toml_file file_name =
  let cfg_file_str = load_file file_name in
    Toml.Parser.from_string (Bytes.to_string cfg_file_str)
;;