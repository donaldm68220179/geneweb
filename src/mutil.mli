(* $Id: mutil.mli,v 5.14 2007-02-18 18:35:24 ddr Exp $ *)
(* Copyright (c) 2006-2007 INRIA *)

value int_size : int;
value verbose : ref bool;
value utf_8_db : ref bool;

value lindex : string -> char -> option int;
value rindex : string -> char -> option int;
value array_mem : 'a -> array 'a -> bool;
value list_iter_first : (bool -> 'a -> unit) -> list 'a -> unit;
value tr : char -> char -> string -> string;
value strip_all_trailing_spaces : string -> string;

value decline : char -> string -> string;
value nominative : string -> string;

value remove_file : string -> unit;
value mkdir_p : string -> unit;
value remove_dir : string -> unit;
value lock_file : string -> string;

type header_pos = 'abstract;

value create_output_value_header : out_channel -> header_pos;
value patch_output_value_header : out_channel -> header_pos -> int;

value output_value_no_sharing : out_channel -> _ -> unit;
value output_array_no_sharing : out_channel -> (int -> _) -> int -> unit;

value name_key : string -> string;
value initial : string -> int;
value input_particles : string -> list string;
value surnames_pieces : string -> list string;

value utf_8_of_iso_8859_1 : string -> string;
value iso_8859_1_of_utf_8 : string -> string;

value roman_of_arabian : int -> string;
value arabian_of_roman : string -> int;

value compare_after_particle : list string -> string -> string -> int;

value input_lexicon :
  string -> Hashtbl.t string string -> (unit -> in_channel) -> unit;

module StrSet : Set.S with type elt = string;
