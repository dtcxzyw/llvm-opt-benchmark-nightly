Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tshark?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
begin_hunk_0
@.str.281 = private unnamed_addr constant [81 x i8] c"                           this option can be repeated to print multiple fields\0A\00", align 1
@.str.282 = private unnamed_addr constant [75 x i8] c"  -E<fieldsoption>=<value> set options for output when -Tfields selected:\0A\00", align 1
@.str.283 = private unnamed_addr constant [46 x i8] c"     bom=y|n               print a UTF-8 BOM\0A\00", align 1
@.str.284 = private unnamed_addr constant [54 x i8] c"     header=y|n            switch headers on and off\0A\00", align 1
@.str.285 = private unnamed_addr constant [81 x i8] c"     separator=/t|/s|<char> select tab, space, printable character as separator\0A\00", align 1
@.str.286 = private unnamed_addr constant [79 x i8] c"     occurrence=f|l|a      print first, last or all occurrences of each field\0A\00", align 1
@.str.287 = private unnamed_addr constant [73 x i8] c"     aggregator=,|/s|<char> select comma, space, printable character as\0A\00", align 1
@.str.288 = private unnamed_addr constant [39 x i8] c"                           aggregator\0A\00", align 1
@.str.289 = private unnamed_addr constant [72 x i8] c"     quote=d|s|n           select double, single, no quotes for values\0A\00", align 1
@.str.290 = private unnamed_addr constant [51 x i8] c"  -t (a|ad|adoy|d|dd|e|r|rc|u|ud|udoy)[.[N]]|.[N]\0A\00", align 1
@.str.291 = private unnamed_addr constant [81 x i8] c"                           output format of time stamps (def: r: rel. to first)\0A\00", align 1
@.str.292 = private unnamed_addr constant [71 x i8] c"  -u s|hms                 output format of seconds (def: s: seconds)\0A\00", align 1
@.str.293 = private unnamed_addr constant [68 x i8] c"  -l                       flush standard output after each packet\0A\00", align 1
@.str.294 = private unnamed_addr constant [58 x i8] c"                           (implies --update-interval 0)\0A\00", align 1
@.str.295 = private unnamed_addr constant [81 x i8] c"  -q                       be more quiet on stdout (e.g. when using statistics)\0A\00", align 1
@.str.296 = private unnamed_addr constant [77 x i8] c"  -Q                       only log true errors to stderr (quieter than -q)\0A\00", align 1
@.str.297 = private unnamed_addr constant [75 x i8] c"  -g                       enable group read access on the output file(s)\0A\00", align 1
@.str.298 = private unnamed_addr constant [78 x i8] c"  -W n                     Save extra information in the file, if supported.\0A\00", align 1
@.str.299 = private unnamed_addr constant [77 x i8] c"                           n = write network address resolution information\0A\00", align 1
@.str.300 = private unnamed_addr constant [76 x i8] c"  -X <key>:<value>         eXtension options, see the man page for details\0A\00", align 1
@.str.301 = private unnamed_addr constant [75 x i8] c"  -U tap_name              PDUs export mode, see the man page for details\0A\00", align 1
@.str.302 = private unnamed_addr constant [77 x i8] c"  -z <statistics>          various statistics, see the man page for details\0A\00", align 1
@.str.303 = private unnamed_addr constant [41 x i8] c"  --export-objects <protocol>,<destdir>\0A\00", align 1
@.str.304 = private unnamed_addr constant [80 x i8] c"                           save exported objects for a protocol to a directory\0A\00", align 1
@.str.305 = private unnamed_addr constant [44 x i8] c"                           named \22destdir\22\0A\00", align 1
@.str.306 = private unnamed_addr constant [39 x i8] c"  --export-tls-session-keys <keyfile>\0A\00", align 1
@.str.307 = private unnamed_addr constant [78 x i8] c"                           export TLS Session Keys to a file named \22keyfile\22\0A\00", align 1
@.str.308 = private unnamed_addr constant [78 x i8] c"  --color                  color output text similarly to the Wireshark GUI,\0A\00", align 1
@.str.309 = private unnamed_addr constant [74 x i8] c"                           requires a terminal with 24-bit color support\0A\00", align 1
@.str.310 = private unnamed_addr constant [84 x i8] c"                           Also supplies color attributes to pdml and psml formats\0A\00", align 1
@.str.311 = private unnamed_addr constant [67 x i8] c"                           (Note that attributes are nonstandard)\0A\00", align 1
@.str.312 = private unnamed_addr constant [87 x i8] c"  --no-duplicate-keys      If -T json is specified, merge duplicate keys in an object\0A\00", align 1
@.str.313 = private unnamed_addr constant [88 x i8] c"                           into a single key with as value a json array containing all\0A\00", align 1
@.str.314 = private unnamed_addr constant [35 x i8] c"                           values\0A\00", align 1
@.str.315 = private unnamed_addr constant [89 x i8] c"  --elastic-mapping-filter <protocols> If -G elastic-mapping is specified, put only the\0A\00", align 1
@.str.316 = private unnamed_addr constant [72 x i8] c"                           specified protocols within the mapping file\0A\00", align 1
@.str.317 = private unnamed_addr constant [68 x i8] c"  --temp-dir <directory>   write temporary files to this directory\0A\00", align 1
@.str.318 = private unnamed_addr constant [42 x i8] c"                           (default: %s)\0A\00", align 1
@.str.319 = private unnamed_addr constant [87 x i8] c"  --compress <type>        compress the output file using the type compression format\0A\00", align 1
@.str.320 = private unnamed_addr constant [16 x i8] c"Miscellaneous:\0A\00", align 1
@.str.321 = private unnamed_addr constant [55 x i8] c"  -h, --help               display this help and exit\0A\00", align 1
@.str.322 = private unnamed_addr constant [58 x i8] c"  -v, --version            display version info and exit\0A\00", align 1
@.str.323 = private unnamed_addr constant [56 x i8] c"  -o <name>:<value> ...    override preference setting\0A\00", align 1
@.str.324 = private unnamed_addr constant [71 x i8] c"  -K <keytab>              keytab file to use for kerberos decryption\0A\00", align 1
@.str.325 = private unnamed_addr constant [75 x i8] c"  -G [report]              dump one of several available reports and exit\0A\00", align 1
@.str.326 = private unnamed_addr constant [52 x i8] c"                           default report=\22fields\22\0A\00", align 1
@.str.327 = private unnamed_addr constant [56 x i8] c"                           use \22-G help\22 for more help\0A\00", align 1
@.str.328 = private unnamed_addr constant [68 x i8] c"Dumpcap can benefit from an enabled BPF JIT compiler if available.\0A\00", align 1
@.str.329 = private unnamed_addr constant [43 x i8] c"You might want to enable it by executing:\0A\00", align 1
@.str.330 = private unnamed_addr constant [47 x i8] c" \22echo 1 > /proc/sys/net/core/bpf_jit_enable\22\0A\00", align 1
@.str.331 = private unnamed_addr constant [50 x i8] c"Note that this can make your system less secure!\0A\00", align 1
@.str.332 = private unnamed_addr constant [115 x i8] c"tshark: The available export tap names and the encapsulation types they produce for the \22-U tap_name\22 option are:\0A\00", align 1
@.str.333 = private unnamed_addr constant [53 x i8] c"tshark: Valid --hexdump <hexoption> values include:\0A\00", align 1
@.str.334 = private unnamed_addr constant [22 x i8] c"Data source options:\0A\00", align 1
@.str.335 = private unnamed_addr constant [76 x i8] c"  all                      add hexdump, dump all data sources (-x default)\0A\00", align 1
@.str.336 = private unnamed_addr constant [69 x i8] c"  frames                   add hexdump, dump only frame data source\0A\00", align 1
@.str.337 = private unnamed_addr constant [16 x i8] c"ASCII options:\0A\00", align 1
@.str.338 = private unnamed_addr constant [78 x i8] c"  ascii                    add hexdump, include ASCII dump text (-x default)\0A\00", align 1
@.str.339 = private unnamed_addr constant [85 x i8] c"  delimit                  add hexdump, delimit ASCII dump text with '|' characters\0A\00", align 1
@.str.340 = private unnamed_addr constant [65 x i8] c"  noascii                  add hexdump, exclude ASCII dump text\0A\00", align 1
@.str.341 = private unnamed_addr constant [20 x i8] c"Timestamp options:\0A\00", align 1
@.str.342 = private unnamed_addr constant [100 x i8] c"  time                     add hexdump, include frame timestamp preamble (uses the format from -t)\0A\00", align 1
@.str.343 = private unnamed_addr constant [94 x i8] c"  notime                   add hexdump, do not include frame timestamp preamble (-x default)\0A\00", align 1
@.str.344 = private unnamed_addr constant [55 x i8] c"  help                     display this help and exit\0A\00", align 1
@.str.345 = private unnamed_addr constant [10 x i8] c"Example:\0A\00", align 1
@.str.346 = private unnamed_addr constant [57 x i8] c"    $ tshark ... --hexdump frames --hexdump delimit ...\0A\00", align 1
@.str.347 = private unnamed_addr constant [46 x i8] c"The available output compression type(s) are:\00", align 1
@.str.348 = private unnamed_addr constant [6 x i8] c"   %s\00", align 1
@.str.349 = private unnamed_addr constant [27 x i8] c"Usage: tshark -G <report>\0A\00", align 1
@.str.350 = private unnamed_addr constant [25 x i8] c"Glossary table reports:\0A\00", align 1
@.str.351 = private unnamed_addr constant [62 x i8] c"  -G column-formats        dump column format codes and exit\0A\00", align 1
@.str.352 = private unnamed_addr constant [80 x i8] c"  -G decodes               dump \22layer type\22/\22decode as\22 associations and exit\0A\00", align 1
@.str.353 = private unnamed_addr constant [78 x i8] c"  -G dissector-tables      dump dissector table names, types, and properties\0A\00", align 1
@.str.354 = private unnamed_addr constant [60 x i8] c"  -G dissectors            dump registered dissector names\0A\00", align 1
@.str.355 = private unnamed_addr constant [60 x i8] c"  -G elastic-mapping       dump ElasticSearch mapping file\0A\00", align 1
@.str.356 = private unnamed_addr constant [76 x i8] c"  -G enterprises           dump IANA Private Enterprise Number (PEN) table\0A\00", align 1
@.str.357 = private unnamed_addr constant [65 x i8] c"  -G fieldcount            dump count of header fields and exit\0A\00", align 1
@.str.358 = private unnamed_addr constant [58 x i8] c"  -G fields[,[<prefix>]]   dump fields glossary and exit\0A\00", align 1
@.str.359 = private unnamed_addr constant [72 x i8] c"  -G ftypes                dump field type basic and descriptive names\0A\00", align 1
@.str.360 = private unnamed_addr constant [60 x i8] c"  -G heuristic-decodes     dump heuristic dissector tables\0A\00", align 1
@.str.361 = private unnamed_addr constant [62 x i8] c"  -G manuf                 dump ethernet manufacturer tables\0A\00", align 1
@.str.362 = private unnamed_addr constant [60 x i8] c"  -G plugins               dump installed plugins and exit\0A\00", align 1
@.str.363 = private unnamed_addr constant [77 x i8] c"  -G protocols             dump protocols in registration database and exit\0A\00", align 1
@.str.364 = private unnamed_addr constant [64 x i8] c"  -G services              dump transport service (port) names\0A\00", align 1
@.str.365 = private unnamed_addr constant [75 x i8] c"  -G values                dump value, range, true/false strings and exit\0A\00", align 1
@.str.366 = private unnamed_addr constant [51 x i8] c"  -G profiles[,filter]     dump profiles and exit\0A\00", align 1
@.str.367 = private unnamed_addr constant [21 x i8] c"Preference reports:\0A\00", align 1
@.str.368 = private unnamed_addr constant [62 x i8] c"  -G currentprefs          dump current preferences and exit\0A\00", align 1
@.str.369 = private unnamed_addr constant [62 x i8] c"  -G defaultprefs          dump default preferences and exit\0A\00", align 1
@.str.370 = private unnamed_addr constant [47 x i8] c"  -G folders               dump about:folders\0A\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"Magic-value-based\00", align 1
@.str.372 = private unnamed_addr constant [17 x i8] c"Heuristics-based\00", align 1
@open_routines = external local_unnamed_addr global ptr, align 8
@.str.373 = private unnamed_addr constant [77 x i8] c"tshark: The available read file types for the \22-X read_format:\22 option are:\0A\00", align 1
@.str.374 = private unnamed_addr constant [15 x i8] c"column-formats\00", align 1
@.str.375 = private unnamed_addr constant [13 x i8] c"currentprefs\00", align 1
@.str.376 = private unnamed_addr constant [8 x i8] c"decodes\00", align 1
@.str.377 = private unnamed_addr constant [13 x i8] c"defaultprefs\00", align 1
@.str.378 = private unnamed_addr constant [17 x i8] c"dissector-tables\00", align 1
@.str.379 = private unnamed_addr constant [11 x i8] c"dissectors\00", align 1
@.str.380 = private unnamed_addr constant [16 x i8] c"elastic-mapping\00", align 1
@.str.381 = private unnamed_addr constant [17 x i8] c"elastic-mapping,\00", align 1
@.str.382 = private unnamed_addr constant [11 x i8] c"fieldcount\00", align 1
@.str.383 = private unnamed_addr constant [8 x i8] c"fields,\00", align 1
@.str.384 = private unnamed_addr constant [38 x i8] c"No field or protocol begins with \22%s\22\00", align 1
@.str.385 = private unnamed_addr constant [8 x i8] c"folders\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"ftypes\00", align 1
@.str.387 = private unnamed_addr constant [18 x i8] c"heuristic-decodes\00", align 1
@.str.388 = private unnamed_addr constant [6 x i8] c"manuf\00", align 1
@.str.389 = private unnamed_addr constant [12 x i8] c"enterprises\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"services\00", align 1
@.str.391 = private unnamed_addr constant [8 x i8] c"plugins\00", align 1
@.str.392 = private unnamed_addr constant [9 x i8] c"profiles\00", align 1
@.str.393 = private unnamed_addr constant [10 x i8] c"profiles,\00", align 1
@.str.394 = private unnamed_addr constant [10 x i8] c"protocols\00", align 1
@.str.395 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.397 = private unnamed_addr constant [62 x i8] c"Invalid \22%s\22 option for -G flag, enter -G help for more help.\00", align 1
@.str.398 = private unnamed_addr constant [10 x i8] c"%-21s\09%s\0A\00", align 1
@.str.399 = private unnamed_addr constant [6 x i8] c"Temp:\00", align 1
@.str.400 = private unnamed_addr constant [24 x i8] c"Personal configuration:\00", align 1
@.str.401 = private unnamed_addr constant [22 x i8] c"Global configuration:\00", align 1
@.str.402 = private unnamed_addr constant [8 x i8] c"System:\00", align 1
@.str.403 = private unnamed_addr constant [9 x i8] c"Program:\00", align 1
@.str.404 = private unnamed_addr constant [18 x i8] c"Personal Plugins:\00", align 1
@.str.405 = private unnamed_addr constant [16 x i8] c"Global Plugins:\00", align 1
@.str.406 = private unnamed_addr constant [22 x i8] c"Personal Lua Plugins:\00", align 1
@.str.407 = private unnamed_addr constant [20 x i8] c"Global Lua Plugins:\00", align 1
@.str.408 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.409 = private unnamed_addr constant [22 x i8] c"Personal Extcap path:\00", align 1
@.str.410 = private unnamed_addr constant [20 x i8] c"Global Extcap path:\00", align 1
@.str.411 = private unnamed_addr constant [23 x i8] c"MaxMind database path:\00", align 1
@.str.412 = private unnamed_addr constant [14 x i8] c"MIB/PIB path:\00", align 1
@tshark_elapsed.0 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.1 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.2 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.3 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.4 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.5 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.6 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.8 = internal unnamed_addr global i64 0, align 8
@tshark_elapsed.9 = internal unnamed_addr global i64 0, align 8
@.str.413 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.414 = private unnamed_addr constant [98 x i8] c"  Note: That read filter code looks like a valid capture filter;\0A        maybe you mixed them up?\00", align 1
@__func__.print_elapsed_json = private unnamed_addr constant [19 x i8] c"print_elapsed_json\00", align 1
@.str.415 = private unnamed_addr constant [51 x i8] c"Print timers requested but no timing info provided\00", align 1
@.str.416 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.417 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"time_unit\00", align 1
@.str.419 = private unnamed_addr constant [13 x i8] c"microseconds\00", align 1
@.str.420 = private unnamed_addr constant [8 x i8] c"elapsed\00", align 1
@.str.421 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.422 = private unnamed_addr constant [15 x i8] c"dfilter_expand\00", align 1
@.str.423 = private unnamed_addr constant [16 x i8] c"dfilter_compile\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"dissect\00", align 1
@.str.425 = private unnamed_addr constant [15 x i8] c"display_filter\00", align 1
@.str.426 = private unnamed_addr constant [12 x i8] c"read_filter\00", align 1
@.str.427 = private unnamed_addr constant [17 x i8] c"Capturing on %s\0A\00", align 1
@global_info_data = internal global %struct._info_data zeroinitializer, align 8
@loop_running = internal unnamed_addr global i1 false, align 1
@capture.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16
@__func__.capture_input_cfilter_error = private unnamed_addr constant [28 x i8] c"capture_input_cfilter_error\00", align 1
@.str.428 = private unnamed_addr constant [357 x i8] c"Invalid capture filter \22%s\22 for interface '%s'.\0A\0AThat string looks like a valid display filter; however, it isn't a valid\0Acapture filter (%s).\0A\0ANote that display filters and capture filters don't have the same syntax,\0Aso you can't use most display filter expressions as capture filters.\0A\0ASee the User's Guide for a description of the capture filter syntax.\00", align 1
@.str.429 = private unnamed_addr constant [165 x i8] c"Invalid capture filter \22%s\22 for interface '%s'.\0A\0AThat string isn't a valid capture filter (%s).\0ASee the User's Guide for a description of the capture filter syntax.\00", align 1
@.str.430 = private unnamed_addr constant [17 x i8] c"Capture started.\00", align 1
@.str.431 = private unnamed_addr constant [11 x i8] c"File: \22%s\22\00", align 1
@packet_count = internal unnamed_addr global i32 0, align 4
@.str.432 = private unnamed_addr constant [5 x i8] c"\0D%u \00", align 1
@.str.433 = private unnamed_addr constant [20 x i8] c"resetting session.\0A\00", align 1
@cum_bytes = internal global i32 0, align 4
@.str.434 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@ref_frame = internal global %struct._frame_data zeroinitializer, align 8
@prev_dis_frame = internal global %struct._frame_data zeroinitializer, align 8
@prev_cap_frame = internal global %struct._frame_data zeroinitializer, align 8
@__func__.print_packet = private unnamed_addr constant [13 x i8] c"print_packet\00", align 1
@jdumper = internal global %struct.json_dumper zeroinitializer, align 8
@.str.435 = private unnamed_addr constant [4 x i8] c"\E2\86\92\00", align 1
@.str.436 = private unnamed_addr constant [4 x i8] c"\E2\86\90\00", align 1
@get_line_buf.line_bufp = internal unnamed_addr global ptr null, align 8
@get_line_buf.line_buf_len = internal unnamed_addr global i64 256, align 8
@.str.437 = private unnamed_addr constant [29 x i8] c"%u packet%s dropped from %s\0A\00", align 1
@.str.438 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.439 = private unnamed_addr constant [21 x i8] c"%u packet%s dropped\0A\00", align 1
@.str.440 = private unnamed_addr constant [12 x i8] c"tshark: %s\0A\00", align 1
@.str.441 = private unnamed_addr constant [22 x i8] c"%u packet%s captured\0A\00", align 1
@.str.442 = private unnamed_addr constant [66 x i8] c"The file format \22%s\22 doesn't support name resolution information.\00", align 1
@read_interrupted = internal unnamed_addr global i1 false, align 1
@gbl_resolv_flags = external local_unnamed_addr global %struct._e_addr_resolve, align 1
@__func__.write_preamble = private unnamed_addr constant [15 x i8] c"write_preamble\00", align 1
@__func__.write_finale = private unnamed_addr constant [13 x i8] c"write_finale\00", align 1
@tshark_epan_new.funcs = internal constant %struct.packet_provider_funcs { ptr @cap_file_provider_get_frame_ts, ptr @cap_file_provider_get_start_ts, ptr @cap_file_provider_get_end_ts, ptr @cap_file_provider_get_interface_name, ptr @cap_file_provider_get_interface_description, ptr null, ptr @cap_file_provider_get_process_id, ptr @cap_file_provider_get_process_name, ptr @cap_file_provider_get_process_uuid }, align 8
@.str.443 = private unnamed_addr constant [88 x i8] c"Not all the packets could be printed because there is no space left on the file system.\00", align 1
@.str.444 = private unnamed_addr constant [92 x i8] c"Not all the packets could be printed because you are too close to, or over your disk quota.\00", align 1
@.str.445 = private unnamed_addr constant [46 x i8] c"An error occurred while printing packets: %s.\00", align 1
@switch.table.main = private unnamed_addr constant [5 x i8] [i8 2, i8 3, i8 4, i8 poison, i8 6], align 4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 10 uses
  %i.j = alloca i32, align 4                      ; 110 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 16 uses
  %i.n = alloca i8, align 1                       ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 13 uses
  %i.q = alloca ptr, align 8                      ; 13 uses
  %i.r = alloca ptr, align 8                      ; 9 uses
  %i.s = alloca ptr, align 8                      ; 8 uses
  %i.t = alloca ptr, align 8                      ; 9 uses
  %i.u = alloca ptr, align 8                      ; 11 uses
  %i.v = alloca ptr, align 8                      ; 12 uses
  %i.w = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct._exp_pdu_t, align 8         ; 5 uses
  %i.x = alloca i32, align 4                      ; 14 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.epan_app_data_t, align 8    ; 10 uses
  %i.aa = alloca ptr, align 8                     ; 7 uses
  %i.ab = alloca ptr, align 8                     ; 8 uses
  %i.ac = alloca i32, align 4                     ; 13 uses
  %4 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %5 = alloca %struct.except_catch, align 8       ; 6 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 6 uses
  store i32 %0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store volatile i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store volatile i32 0, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store volatile i32 -1, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store volatile i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store volatile i32 0, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store volatile ptr null, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store volatile ptr null, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store volatile ptr null, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #19
  store ptr null, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #19
  store ptr null, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store volatile ptr null, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store volatile ptr null, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store volatile ptr null, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store volatile i32 4, ptr %i.x, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef 0, i64 noundef 48, i1 noundef false) #19
  call void @g_set_prgname(ptr noundef @.str.51)
  %i.ag = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.52) #19 ; 0 uses
  call void @ws_tzset()
  call void @cmdarg_err_init(ptr noundef @stderr_cmdarg_err, ptr noundef @stderr_cmdarg_err_cont)
  call void @ws_log_init(ptr noundef @vcmdarg_err, ptr noundef @.str.53)
  %i.ah = call i32 @ws_log_parse_args(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef @main.optstring, ptr noundef @main.long_options, ptr noundef @vcmdarg_err, i32 noundef 1) ; 0 uses
  call void @init_process_policies()
  call void @relinquish_special_privs_perm()
  %i.ai = call zeroext i1 @started_with_special_privs()
  br i1 %i.ai, label %bb.b, label %print_current_user.exit

bb.b:                                             ; preds = %bb.a
  %i.aj = call ptr @get_cur_username()            ; 2 uses
  %i.ak = call ptr @get_cur_groupname()           ; 2 uses
  %i.al = load ptr, ptr @stderr, align 8
  %i.am = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.al, i32 noundef 2, ptr noundef @.str.169, ptr noundef %i.aj, ptr noundef %i.ak) ; 0 uses
  call void @g_free(ptr noundef %i.aj)
  call void @g_free(ptr noundef %i.ak)
  %i.an = call zeroext i1 @running_with_special_privs()
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr @stderr, align 8
  %i.ap = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ao, i32 noundef 2, ptr noundef @.str.170) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = load ptr, ptr @stderr, align 8
  %i.ar = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aq, i32 noundef 2, ptr noundef @.str.160) ; 0 uses
  br label %print_current_user.exit

print_current_user.exit:                          ; preds = %bb.a, %bb.d
  %i.as = load ptr, ptr %1, align 8
  %i.at = call ptr @configuration_init(ptr noundef %i.as, ptr noundef @.str.54) ; 3 uses
  store ptr %i.at, ptr %i.d, align 8
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %print_current_user.exit
  %i.au = load ptr, ptr @stderr, align 8
  %i.av = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.au, i32 noundef 2, ptr noundef @.str.55, ptr noundef nonnull %i.at) ; 0 uses
  %i.aw = load ptr, ptr %i.d, align 8
  call void @g_free(ptr noundef %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %print_current_user.exit
  call void @initialize_funnel_ops()
  %i.ax = call ptr @application_flavor_name_proper()
  call void @ws_init_version_info(ptr noundef @.str.56, ptr noundef %i.ax, ptr noundef @application_get_vcs_version_info, ptr noundef @gather_tshark_compile_info, ptr noundef @gather_tshark_runtime_info)
  store i32 0, ptr @ws_opterr, align 4
  store i32 1, ptr @ws_optreset, align 4
  store i32 1, ptr @ws_optind, align 4
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %bb.f
  %.0327 = phi i1 [ false, %bb.f ], [ %.0327.be, %.backedge ] ; 16 uses
  %.0324 = phi ptr [ null, %bb.f ], [ %.0324.be, %.backedge ] ; 16 uses
  %.0322 = phi ptr [ null, %bb.f ], [ %.0322.be, %.backedge ] ; 16 uses
  %.0314 = phi i1 [ false, %bb.f ], [ %.0314.be, %.backedge ] ; 12 uses
  %i.ay = load i32, ptr %i.c, align 4
  %i.az = call i32 @ws_getopt_long(i32 noundef %i.ay, ptr noundef %1, ptr noundef @main.optstring, ptr noundef @main.long_options, ptr noundef null)
  switch i32 %i.az, label %.backedge [
    i32 -1, label %bb.x
    i32 67, label %g_strdup_inline.exit490
    i32 3010, label %bb.h
    i32 71, label %bb.i
    i32 105, label %bb.o
    i32 111, label %bb.p
    i32 80, label %bb.s
    i32 114, label %g_strdup_inline.exit485
    i32 79, label %bb.t
    i32 86, label %g_strdup_inline.exit480
    i32 120, label %bb.u
    i32 88, label %bb.v
    i32 104, label %bb.w
    i32 118, label %bb.w
  ]

g_strdup_inline.exit490:                          ; preds = %bb.g
  %i.ba = load ptr, ptr @ws_optarg, align 8
  %i.bb = call noalias ptr @g_strdup(ptr noundef %i.ba)
  store volatile ptr %i.bb, ptr %i.r, align 8
  br label %.backedge

bb.h:                                             ; preds = %bb.g
  br label %.backedge

bb.i:                                             ; preds = %bb.g
  %.not446 = icmp eq ptr %.0322, null
  br i1 %.not446, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.57)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.k:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr @ws_optarg, align 8       ; 4 uses
  %.not448 = icmp eq ptr %i.bc, null
  br i1 %.not448, label %.split, label %bb.l, !prof !19

.split:                                           ; preds = %bb.k
  %i.bd = call i32 @g_str_has_suffix(ptr noundef null, ptr noundef @.str.58)
  %.fr785 = freeze i32 %i.bd
  %i.be = icmp eq i32 %.fr785, 0
  br i1 %i.be, label %.thread, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #20 ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 4
  br i1 %i.bg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %i.bc, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 -5     ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = xor i32 %i.bj, 1717924464
  %i.bl = getelementptr i8, ptr %i.bi, i64 4
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i32
  %i.bo = xor i32 %i.bn, 115
  %i.bp = or i32 %i.bk, %i.bo
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %bcmp449.fr = freeze i32 %i.br
  %.not784 = icmp eq i32 %bcmp449.fr, 0
  br i1 %.not784, label %bb.n, label %.thread

.thread:                                          ; preds = %.split, %bb.l, %bb.m
  br label %bb.n

bb.n:                                             ; preds = %.split, %bb.m, %.thread
  %i.bs = phi i1 [ %.0314, %.thread ], [ true, %bb.m ], [ true, %.split ]
  store volatile i8 0, ptr %i.e, align 1
  br label %.backedge

bb.o:                                             ; preds = %bb.g
  br label %.backedge

bb.p:                                             ; preds = %bb.g
  %i.bt = load ptr, ptr @ws_optarg, align 8       ; 4 uses
  %.not444 = icmp eq ptr %i.bt, null
  br i1 %.not444, label %.split769, label %bb.q, !prof !19

.split769:                                        ; preds = %bb.p
  %i.bu = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef @.str.59)
  %.fr = freeze i32 %i.bu
  %i.bv = icmp eq i32 %.fr, 0
  br i1 %i.bv, label %.thread512, label %.backedge

.backedge:                                        ; preds = %.split769, %.thread512, %bb.r, %bb.g, %bb.w, %bb.v, %bb.u, %g_strdup_inline.exit480, %g_strdup_inline.exit485, %bb.s, %bb.o, %bb.n, %bb.h, %g_strdup_inline.exit490
  %.0327.be = phi i1 [ %.0327, %bb.g ], [ %.0327, %g_strdup_inline.exit490 ], [ true, %bb.h ], [ %.0327, %bb.n ], [ %.0327, %bb.o ], [ %.0327, %bb.w ], [ %.0327, %bb.v ], [ %.0327, %bb.s ], [ %.0327, %g_strdup_inline.exit485 ], [ %.0327, %g_strdup_inline.exit480 ], [ %.0327, %bb.u ], [ %.0327, %bb.r ], [ %.0327, %.thread512 ], [ %.0327, %.split769 ]
  %.0324.be = phi ptr [ %.0324, %bb.g ], [ %.0324, %g_strdup_inline.exit490 ], [ %.0324, %bb.h ], [ %.0324, %bb.n ], [ %.0324, %bb.o ], [ %.0324, %bb.w ], [ %.0324, %bb.v ], [ %.0324, %bb.s ], [ %.0324, %g_strdup_inline.exit485 ], [ %.1325, %g_strdup_inline.exit480 ], [ %.0324, %bb.u ], [ %.0324, %bb.r ], [ %.0324, %.thread512 ], [ %.0324, %.split769 ]
  %.0322.be = phi ptr [ %.0322, %bb.g ], [ %.0322, %g_strdup_inline.exit490 ], [ %.0322, %bb.h ], [ %i.bc, %bb.n ], [ %.0322, %bb.o ], [ %.0322, %bb.w ], [ %.0322, %bb.v ], [ %.0322, %bb.s ], [ %.0322, %g_strdup_inline.exit485 ], [ %.0322, %g_strdup_inline.exit480 ], [ %.0322, %bb.u ], [ %.0322, %bb.r ], [ %.0322, %.thread512 ], [ %.0322, %.split769 ]
  %.0314.be = phi i1 [ %.0314, %bb.g ], [ %.0314, %g_strdup_inline.exit490 ], [ %.0314, %bb.h ], [ %i.bs, %bb.n ], [ true, %bb.o ], [ %.0314, %bb.w ], [ %.0314, %bb.v ], [ %.0314, %bb.s ], [ %.0314, %g_strdup_inline.exit485 ], [ %.0314, %g_strdup_inline.exit480 ], [ %.0314, %bb.u ], [ true, %bb.r ], [ %.0314, %.thread512 ], [ true, %.split769 ]
  br label %bb.g, !llvm.loop !10

bb.q:                                             ; preds = %bb.p
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #20
  %i.bx = icmp ugt i64 %i.bw, 6
  br i1 %i.bx, label %bb.r, label %.thread512

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %i.bt, align 1
  %i.bz = xor i32 %i.by, 1668577381
  %i.ca = getelementptr i8, ptr %i.bt, i64 3
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = xor i32 %i.cb, 779116899
  %i.cd = or i32 %i.bz, %i.cc
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %bcmp.fr = freeze i32 %i.cf
  %.not783 = icmp eq i32 %bcmp.fr, 0
  br i1 %.not783, label %.backedge, label %.thread512

.thread512:                                       ; preds = %.split769, %bb.q, %bb.r
  br label %.backedge

bb.s:                                             ; preds = %bb.g
  store i1 true, ptr @print_packet_info, align 1
  store i1 true, ptr @print_summary, align 1
  br label %.backedge

g_strdup_inline.exit485:                          ; preds = %bb.g
  %i.cg = load ptr, ptr @ws_optarg, align 8
  %i.ch = call noalias ptr @g_strdup(ptr noundef %i.cg)
  store volatile ptr %i.ch, ptr %i.p, align 8
  store volatile i8 0, ptr %i.e, align 1
  br label %.backedge

bb.t:                                             ; preds = %bb.g
  %i.ci = load ptr, ptr @ws_optarg, align 8
  %i.cj = call noalias ptr @g_strdup(ptr noundef %i.ci)
  br label %g_strdup_inline.exit480

g_strdup_inline.exit480:                          ; preds = %bb.t, %bb.g
  %.1325 = phi ptr [ %.0324, %bb.g ], [ %i.cj, %bb.t ]
  store i1 true, ptr @print_details, align 1
  store i1 true, ptr @print_packet_info, align 1
  br label %.backedge

bb.u:                                             ; preds = %bb.g
  store i1 true, ptr @print_hex, align 1
  store i1 true, ptr @print_packet_info, align 1
  br label %.backedge

bb.v:                                             ; preds = %bb.g
  %i.ck = load ptr, ptr @ws_optarg, align 8
  %i.cl = call zeroext i1 @ex_opt_add(ptr noundef %i.ck) ; 0 uses
  br label %.backedge

bb.w:                                             ; preds = %bb.g, %bb.g
  store volatile i8 0, ptr %i.e, align 1
  br label %.backedge

bb.x:                                             ; preds = %bb.g
  %.0..0..0..0.212 = load volatile ptr, ptr %i.r, align 8
  %.not375 = icmp eq ptr %.0..0..0..0.212, null
  br i1 %.not375, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = call ptr @application_configuration_environment_prefix()
  %.0..0..0..0.213 = load volatile ptr, ptr %i.r, align 8
  %i.cn = call zeroext i1 @profile_exists(ptr noundef %i.cm, ptr noundef %.0..0..0..0.213, i1 noundef zeroext %.0327)
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.0..0..0..0.214 = load volatile ptr, ptr %i.r, align 8
  call void @set_profile_name(ptr noundef %.0..0..0..0.214)
  br i1 %.0327, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.co = select i1 %.0327, ptr @.str.61, ptr @.str.52
  %.0..0..0..0.215 = load volatile ptr, ptr %i.r, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.60, ptr noundef nonnull %i.co, ptr noundef %.0..0..0..0.215)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ab:                                            ; preds = %bb.z
  %i.cp = call ptr @application_configuration_environment_prefix()
  %i.cq = call ptr @get_datafile_dir(ptr noundef %i.cp)
  call void @set_persconffile_dir(ptr noundef %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.x
  call void @init_report_failure_message(ptr noundef @.str.56)
  call void @capture_opts_init(ptr noundef @global_capture_opts, ptr noundef @capture_opts_get_interface_list)
  call void @capture_session_init(ptr noundef @global_capture_session, ptr noundef @cfile, ptr noundef @capture_input_new_file, ptr noundef @capture_input_new_packets, ptr noundef @capture_input_drops, ptr noundef @capture_input_error, ptr noundef @capture_input_cfilter_error, ptr noundef @capture_input_warning, ptr noundef @capture_input_closed)
  call void @timestamp_set_type(i32 noundef 0)
  call void @timestamp_set_precision(i32 noundef -1)
  call void @timestamp_set_seconds_type(i32 noundef 0)
  call void @application_file_extensions(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z)
  %i.cr = call ptr @application_configuration_environment_prefix()
  %i.cs = load ptr, ptr %i.y, align 8
  %i.ct = load i32, ptr %i.z, align 4
  call void @wtap_init(i1 noundef zeroext true, ptr noundef %i.cr, ptr noundef %i.cs, i32 noundef %i.ct)
  %i.cu = call ptr @application_configuration_environment_prefix()
  store ptr %i.cu, ptr %3, align 8
  %i.cv = call ptr @application_columns()
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cx = call i32 @application_num_columns()
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @register_all_protocols, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @register_all_protocol_handoffs, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @tap_reg_listener, ptr %i.db, align 8
  %i.dc = call zeroext i1 @epan_init(ptr noundef null, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %3)
  br i1 %i.dc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store volatile i32 8, ptr %i.j, align 4
  br label %.thread521

bb.ae:                                            ; preds = %bb.ac
  br i1 %.0314, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.0..0..0..0.274 = load volatile i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.dd = trunc nuw i8 %.0..0..0..0.274 to i1
  br i1 %i.dd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @extcap_register_preferences(ptr noundef null, ptr noundef null)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @conversation_table_set_gui_info(ptr noundef @init_iousers)
  call void @endpoint_table_set_gui_info(ptr noundef @init_endpoints)
  call void @srt_table_iterate_tables(ptr noundef @register_srt_tables, ptr noundef null)
  call void @rtd_table_iterate_tables(ptr noundef @register_rtd_tables, ptr noundef null)
  call void @stat_tap_iterate_tables(ptr noundef @register_simple_stat_tables, ptr noundef null)
  %i.de = call ptr @epan_load_settings()          ; 2 uses
  call void @cap_file_init(ptr noundef @cfile)
  store i1 false, ptr @print_format, align 4
  store ptr @.str.62, ptr @delimiter_char, align 8
  %i.df = call ptr @output_fields_new()
  store ptr %i.df, ptr @output_fields, align 8
  store i32 1, ptr @ws_optreset, align 4
  store i32 1, ptr @ws_optind, align 4
  store i32 1, ptr @ws_opterr, align 4
  %6 = load i32, ptr %i.c, align 4
  %7 = call i32 @ws_getopt_long(i32 noundef %6, ptr noundef %1, ptr noundef @main.optstring, ptr noundef @main.long_options, ptr noundef null) ; 2 uses
  %.not376667 = icmp eq i32 %7, -1
  br i1 %.not376667, label %._crit_edge.a, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.ah, %protocolfilter_add_opt.exit
  %i.dg = phi i32 [ %9, %protocolfilter_add_opt.exit ], [ %7, %bb.ah ] ; 4 uses
  %.0306671 = phi i1 [ %.4310, %protocolfilter_add_opt.exit ], [ false, %bb.ah ] ; 64 uses
  %.0320670 = phi ptr [ %.1321, %protocolfilter_add_opt.exit ], [ null, %bb.ah ] ; 63 uses
  %.0329669 = phi ptr [ %.1330, %protocolfilter_add_opt.exit ], [ null, %bb.ah ] ; 63 uses
  %.0331668 = phi i32 [ %.1332, %protocolfilter_add_opt.exit ], [ 0, %bb.ah ] ; 64 uses
  switch i32 %i.dg, label %bb.en [
    i32 50, label %bb.ai
    i32 77, label %bb.al
    i32 97, label %bb.ao
    i32 98, label %bb.ao
    i32 102, label %bb.ao
    i32 103, label %bb.ao
    i32 105, label %bb.ao
    i32 1002, label %bb.ao
    i32 112, label %bb.ao
    i32 73, label %bb.ao
    i32 115, label %bb.ao
    i32 121, label %bb.ao
    i32 66, label %bb.ao
    i32 1006, label %bb.ao
    i32 1003, label %bb.ao
    i32 1004, label %bb.ao
    i32 1005, label %bb.ao
    i32 99, label %bb.ap
    i32 119, label %g_strdup_inline.exit475
    i32 67, label %protocolfilter_add_opt.exit
    i32 3010, label %protocolfilter_add_opt.exit
    i32 68, label %bb.aq
    i32 101, label %bb.aw
    i32 69, label %bb.bb
    i32 70, label %bb.bd
    i32 71, label %protocolfilter_add_opt.exit
    i32 106, label %bb.bf
    i32 74, label %bb.bj
    i32 87, label %bb.bn
    i32 72, label %bb.bq
    i32 104, label %bb.bt
    i32 108, label %bb.bu
    i32 76, label %bb.bv
    i32 1001, label %bb.bw
    i32 111, label %bb.bx
    i32 113, label %bb.cc
    i32 81, label %bb.cd
    i32 114, label %protocolfilter_add_opt.exit
    i32 82, label %bb.ce
    i32 80, label %protocolfilter_add_opt.exit
    i32 83, label %bb.cf
    i32 84, label %bb.cg
    i32 85, label %bb.cy
    i32 118, label %bb.da
    i32 79, label %protocolfilter_add_opt.exit
    i32 86, label %protocolfilter_add_opt.exit
    i32 120, label %protocolfilter_add_opt.exit
    i32 88, label %protocolfilter_add_opt.exit
    i32 89, label %g_strdup_inline.exit465
    i32 122, label %bb.db
    i32 100, label %bb.df
    i32 75, label %bb.df
    i32 110, label %bb.df
    i32 78, label %bb.df
    i32 116, label %bb.df
    i32 117, label %bb.df
    i32 2001, label %bb.df
    i32 2002, label %bb.df
    i32 2003, label %bb.df
    i32 2004, label %bb.df
    i32 2005, label %bb.df
    i32 2006, label %bb.df
    i32 3001, label %bb.dh
    i32 3005, label %bb.dl
    i32 3002, label %bb.dm
    i32 3003, label %bb.dn
    i32 3004, label %bb.do
    i32 3006, label %bb.dp
    i32 3007, label %bb.dr
    i32 3008, label %bb.ei
    i32 3009, label %bb.ek
    i32 3011, label %bb.el
  ]

bb.ai:                                            ; preds = %.lr.ph.a
  %.b365 = load i1, ptr @epan_auto_reset, align 1
  br i1 %.b365, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.63)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1307 = phi i1 [ true, %bb.aj ], [ %.0306671, %bb.ai ]
  store i1 true, ptr @perform_two_pass_analysis, align 1
  br label %protocolfilter_add_opt.exit

bb.al:                                            ; preds = %.lr.ph.a
  %.b368 = load i1, ptr @perform_two_pass_analysis, align 1
  br i1 %.b368, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.64)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.2308 = phi i1 [ true, %bb.am ], [ %.0306671, %bb.al ]
  %i.dh = load ptr, ptr @ws_optarg, align 8
  %i.di = call zeroext i1 @get_uint32(ptr noundef %i.dh, ptr noundef @.str.65, ptr noundef @epan_auto_reset_count)
  %not. = xor i1 %i.di, true
  %spec.select453 = select i1 %not., i1 true, i1 %.2308
  store i1 true, ptr @epan_auto_reset, align 1
  br label %protocolfilter_add_opt.exit

bb.ao:                                            ; preds = %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a
  %i.dj = call ptr @application_configuration_environment_prefix()
  %i.dk = load ptr, ptr @ws_optarg, align 8
  %i.dl = call i32 @capture_opts_add_opt(ptr noundef %i.dj, ptr noundef @global_capture_opts, i32 noundef %i.dg, ptr noundef %i.dk)
  store volatile i32 %i.dl, ptr %i.j, align 4
  %.0..0..0..0.263 = load volatile i32, ptr %i.j, align 4
  %.not442 = icmp eq i32 %.0..0..0..0.263, 0
  br i1 %.not442, label %protocolfilter_add_opt.exit, label %.thread521

bb.ap:                                            ; preds = %.lr.ph.a
  %i.dm = call ptr @application_configuration_environment_prefix()
  %i.dn = load ptr, ptr @ws_optarg, align 8
  %i.do = call i32 @capture_opts_add_opt(ptr noundef %i.dm, ptr noundef @global_capture_opts, i32 noundef 99, ptr noundef %i.dn)
  store volatile i32 %i.do, ptr %i.j, align 4
  %.0..0..0..0.264 = load volatile i32, ptr %i.j, align 4
  %.not441 = icmp eq i32 %.0..0..0..0.264, 0
  br i1 %.not441, label %protocolfilter_add_opt.exit, label %.thread521

g_strdup_inline.exit475:                          ; preds = %.lr.ph.a
  %i.dp = load ptr, ptr @ws_optarg, align 8
  %i.dq = call noalias ptr @g_strdup(ptr noundef %i.dp)
  store ptr %i.dq, ptr @output_file_name, align 8
  %i.dr = call ptr @application_configuration_environment_prefix()
  %i.ds = load ptr, ptr @ws_optarg, align 8
  %i.dt = call i32 @capture_opts_add_opt(ptr noundef %i.dr, ptr noundef @global_capture_opts, i32 noundef 119, ptr noundef %i.ds)
  store volatile i32 %i.dt, ptr %i.j, align 4
  %.0..0..0..0.265 = load volatile i32, ptr %i.j, align 4
  %.not440 = icmp eq i32 %.0..0..0..0.265, 0
  br i1 %.not440, label %protocolfilter_add_opt.exit, label %.thread521

bb.aq:                                            ; preds = %.lr.ph.a
  store volatile i32 0, ptr %i.j, align 4
  %i.du = call ptr @capture_interface_list(ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef null) ; 3 uses
  %i.dv = load i32, ptr %i.f, align 4
  %.not439 = icmp eq i32 %i.dv, 0
  br i1 %.not439, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = load ptr, ptr %i.k, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.66, ptr noundef %i.dw)
  %i.dx = load ptr, ptr %i.k, align 8
  call void @g_free(ptr noundef %i.dx)
  store volatile i32 13, ptr %i.j, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dy = icmp eq ptr %i.du, null
  br i1 %i.dy, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.dz = load i32, ptr %i.f, align 4
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.au, label %.thread521

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.67)
  store volatile i32 12, ptr %i.j, align 4
  br label %.thread521

bb.av:                                            ; preds = %bb.as
  call void @capture_opts_print_interfaces(ptr noundef nonnull %i.du)
  call void @free_interface_list(ptr noundef nonnull %i.du)
  br label %.thread521

bb.aw:                                            ; preds = %.lr.ph.a
  %i.eb = load ptr, ptr @ws_optarg, align 8
  %i.ec = call ptr @try_convert_to_column_field(ptr noundef %i.eb) ; 2 uses
  %.not437 = icmp eq ptr %i.ec, null
  br i1 %.not437, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = load ptr, ptr @output_fields, align 8
  call void @output_fields_add(ptr noundef %i.ed, ptr noundef nonnull %i.ec)
  br label %protocolfilter_add_opt.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ee = load ptr, ptr @ws_optarg, align 8
  %i.ef = call ptr @proto_registrar_get_byalias(ptr noundef %i.ee) ; 2 uses
  %.not438 = icmp eq ptr %i.ef, null
  %i.eg = load ptr, ptr @output_fields, align 8   ; 2 uses
  br i1 %.not438, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eh = getelementptr i8, ptr %i.ef, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void @output_fields_add(ptr noundef %i.eg, ptr noundef %i.ei)
  br label %protocolfilter_add_opt.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ej = load ptr, ptr @ws_optarg, align 8
  call void @output_fields_add(ptr noundef %i.eg, ptr noundef %i.ej)
  br label %protocolfilter_add_opt.exit

bb.bb:                                            ; preds = %.lr.ph.a
  %i.ek = load ptr, ptr @output_fields, align 8
  %i.el = load ptr, ptr @ws_optarg, align 8
  %i.em = call zeroext i1 @output_fields_set_option(ptr noundef %i.ek, ptr noundef %i.el)
  br i1 %i.em, label %protocolfilter_add_opt.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.68, ptr noundef %i.en)
  %i.eo = load ptr, ptr @stderr, align 8
  call void @output_fields_list_options(ptr noundef %i.eo)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.bd:                                            ; preds = %.lr.ph.a
  %i.ep = load ptr, ptr @ws_optarg, align 8
  %i.eq = call i32 @wtap_name_to_file_type_subtype(ptr noundef %i.ep)
  store volatile i32 %i.eq, ptr %i.m, align 4
  %.0..0..0..0.243 = load volatile i32, ptr %i.m, align 4
  %i.er = icmp slt i32 %.0..0..0..0.243, 0
  br i1 %i.er, label %bb.be, label %protocolfilter_add_opt.exit

bb.be:                                            ; preds = %bb.bd
  %i.es = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.69, ptr noundef %i.es)
  call fastcc void @list_capture_types()
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.bf:                                            ; preds = %.lr.ph.a
  %i.et = load ptr, ptr @ws_optarg, align 8
  %i.eu = call ptr @wmem_epan_scope()
  %i.ev = call ptr @wmem_strsplit(ptr noundef %i.eu, ptr noundef %i.et, ptr noundef @.str.62, i32 noundef -1) ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %.not7.i = icmp eq ptr %i.ew, null
  br i1 %.not7.i, label %protocolfilter_add_opt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bf, %bb.bi
  %i.ex = phi ptr [ %i.fd, %bb.bi ], [ %i.ew, %bb.bf ] ; 2 uses
  %.08.i = phi ptr [ %i.fc, %bb.bi ], [ %i.ev, %bb.bf ] ; 2 uses
  %strcmpload.i = load i8, ptr %i.ex, align 1
  %i.ey = icmp eq i8 %strcmpload.i, 0
  br i1 %i.ey, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i
  %i.ez = load ptr, ptr @output_fields, align 8
  %i.fa = call zeroext i1 @output_fields_add_protocolfilter(ptr noundef %i.ez, ptr noundef nonnull %i.ex, i32 noundef 0)
  br i1 %i.fa, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fb = load ptr, ptr %.08.i, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.173, ptr noundef %i.fb)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %.lr.ph.i
  %i.fc = getelementptr i8, ptr %.08.i, i64 8     ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not.i491 = icmp eq ptr %i.fd, null
  br i1 %.not.i491, label %protocolfilter_add_opt.exit, label %.lr.ph.i, !llvm.loop !11

bb.bj:                                            ; preds = %.lr.ph.a
  %i.fe = load ptr, ptr @ws_optarg, align 8
  %i.ff = call ptr @wmem_epan_scope()
  %i.fg = call ptr @wmem_strsplit(ptr noundef %i.ff, ptr noundef %i.fe, ptr noundef @.str.62, i32 noundef -1) ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not7.i492 = icmp eq ptr %i.fh, null
  br i1 %.not7.i492, label %protocolfilter_add_opt.exit, label %.lr.ph.i493

.lr.ph.i493:                                      ; preds = %bb.bj, %bb.bm
  %i.fi = phi ptr [ %i.fo, %bb.bm ], [ %i.fh, %bb.bj ] ; 2 uses
  %.08.i494 = phi ptr [ %i.fn, %bb.bm ], [ %i.fg, %bb.bj ] ; 2 uses
  %strcmpload.i495 = load i8, ptr %i.fi, align 1
  %i.fj = icmp eq i8 %strcmpload.i495, 0
  br i1 %i.fj, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i493
  %i.fk = load ptr, ptr @output_fields, align 8
  %i.fl = call zeroext i1 @output_fields_add_protocolfilter(ptr noundef %i.fk, ptr noundef nonnull %i.fi, i32 noundef 1)
  br i1 %i.fl, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fm = load ptr, ptr %.08.i494, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.173, ptr noundef %i.fm)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.lr.ph.i493
  %i.fn = getelementptr i8, ptr %.08.i494, i64 8  ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not.i496 = icmp eq ptr %i.fo, null
  br i1 %.not.i496, label %protocolfilter_add_opt.exit, label %.lr.ph.i493, !llvm.loop !11

bb.bn:                                            ; preds = %.lr.ph.a
  %i.fp = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  %i.fq = call ptr @strchr(ptr noundef %i.fp, i32 noundef 110) #20
  %.not436 = icmp eq ptr %i.fq, null
  br i1 %.not436, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store volatile i8 1, ptr %i.n, align 1
  br label %protocolfilter_add_opt.exit

bb.bp:                                            ; preds = %bb.bn
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.70, ptr noundef %i.fp)
  call void (ptr, ...) @cmdarg_err_cont(ptr noundef @.str.71)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.bq:                                            ; preds = %.lr.ph.a
  %i.fr = load ptr, ptr @ws_optarg, align 8
  %i.fs = call zeroext i1 @add_hosts_file(ptr noundef %i.fr)
  br i1 %i.fs, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ft = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.72, ptr noundef %i.ft)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.bs:                                            ; preds = %bb.bq
  store volatile i8 1, ptr %i.n, align 1
  br label %protocolfilter_add_opt.exit

bb.bt:                                            ; preds = %.lr.ph.a
  call void @show_help_header(ptr noundef @.str.73)
  %i.fu = load ptr, ptr @stdout, align 8
  call fastcc void @print_usage(ptr noundef %i.fu)
  store volatile i32 0, ptr %i.j, align 4
  br label %.thread521

bb.bu:                                            ; preds = %.lr.ph.a
  store i1 true, ptr @line_buffered, align 1
  %i.fv = call ptr @application_configuration_environment_prefix()
  %i.fw = load ptr, ptr @ws_optarg, align 8
  %i.fx = call i32 @capture_opts_add_opt(ptr noundef %i.fv, ptr noundef @global_capture_opts, i32 noundef 108, ptr noundef %i.fw)
  store volatile i32 %i.fx, ptr %i.j, align 4
  %.0..0..0..0.266 = load volatile i32, ptr %i.j, align 4
  %.not435 = icmp eq i32 %.0..0..0..0.266, 0
  br i1 %.not435, label %protocolfilter_add_opt.exit, label %.thread521

bb.bv:                                            ; preds = %.lr.ph.a
  %i.fy = or i32 %.0331668, 1
  br label %protocolfilter_add_opt.exit

bb.bw:                                            ; preds = %.lr.ph.a
  %i.fz = or i32 %.0331668, 2
  br label %protocolfilter_add_opt.exit

bb.bx:                                            ; preds = %.lr.ph.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #19
  store ptr null, ptr %i.aa, align 8
  %i.ga = load ptr, ptr @ws_optarg, align 8
  %i.gb = call i32 @prefs_set_pref(ptr noundef %i.ga, ptr noundef nonnull %i.aa)
  switch i32 %i.gb, label %bb.cb [
    i32 3, label %bb.ca
    i32 1, label %bb.by
    i32 2, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.gc = load ptr, ptr @ws_optarg, align 8
  %i.gd = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not434 = icmp eq ptr %i.gd, null              ; 2 uses
  %i.ge = select i1 %.not434, ptr @.str.52, ptr @.str.75
  %i.gf = select i1 %.not434, ptr @.str.52, ptr %i.gd
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.74, ptr noundef %i.gc, ptr noundef nonnull %i.ge, ptr noundef nonnull %i.gf)
  %i.gg = load ptr, ptr %i.aa, align 8
  call void @g_free(ptr noundef %i.gg)
  br label %.thread516

bb.bz:                                            ; preds = %bb.bx
  %i.gh = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.76, ptr noundef %i.gh)
  br label %.thread516

bb.ca:                                            ; preds = %bb.bx
  %i.gi = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.77, ptr noundef %i.gi)
  br label %.thread516

.thread516:                                       ; preds = %bb.bz, %bb.ca, %bb.by
  store volatile i32 1, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #19
  br label %.thread521

bb.cb:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #19
  br label %protocolfilter_add_opt.exit

bb.cc:                                            ; preds = %.lr.ph.a
  store i1 true, ptr @quiet, align 1
  br label %protocolfilter_add_opt.exit

bb.cd:                                            ; preds = %.lr.ph.a
  store i1 true, ptr @quiet, align 1
  store i1 true, ptr @really_quiet, align 1
  br label %protocolfilter_add_opt.exit

bb.ce:                                            ; preds = %.lr.ph.a
  %i.gj = load ptr, ptr @ws_optarg, align 8
  br label %protocolfilter_add_opt.exit

bb.cf:                                            ; preds = %.lr.ph.a
  %i.gk = load ptr, ptr @ws_optarg, align 8
  store ptr %i.gk, ptr @separator, align 8
  br label %protocolfilter_add_opt.exit

bb.cg:                                            ; preds = %.lr.ph.a
  %i.gl = load i32, ptr @output_action, align 4
  %.not433 = icmp eq i32 %i.gl, 0
  br i1 %.not433, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.78)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ci:                                            ; preds = %bb.cg
  store i1 true, ptr @print_packet_info, align 1
  %i.gm = load ptr, ptr @ws_optarg, align 8       ; 13 uses
  %i.gn = call i32 @strcmp(ptr noundef %i.gm, ptr noundef dereferenceable(5) @.str.79) #20
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 1, ptr @output_action, align 4
  store i1 false, ptr @print_format, align 4
  br label %protocolfilter_add_opt.exit

bb.ck:                                            ; preds = %bb.ci
  %i.gp = call i32 @strcmp(ptr noundef %i.gm, ptr noundef dereferenceable(5) @.str.80) #20
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.cl, label %sub_0

bb.cl:                                            ; preds = %bb.ck
  store i32 1, ptr @output_action, align 4
  store i1 false, ptr @print_format, align 4
  store ptr @.str.81, ptr @delimiter_char, align 8
  br label %protocolfilter_add_opt.exit

sub_0:                                            ; preds = %bb.ck
  %i.gr = load i8, ptr %i.gm, align 1             ; 2 uses
  %.not698 = icmp eq i8 %i.gr, 112
  br i1 %.not698, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gt = load i8, ptr %i.gs, align 1
  %.not699 = icmp eq i8 %i.gt, 115
  br i1 %.not699, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.cm, label %.tail.thread

bb.cm:                                            ; preds = %.tail
  store i32 1, ptr @output_action, align 4
  store i1 true, ptr @print_format, align 4
  br label %protocolfilter_add_opt.exit

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.gx = call i32 @strcmp(ptr noundef %i.gm, ptr noundef dereferenceable(5) @.str.83) #20
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.tail.thread
  store i32 2, ptr @output_action, align 4
  store i1 true, ptr @print_details, align 1
  store i1 false, ptr @print_summary, align 1
  br label %protocolfilter_add_opt.exit

bb.co:                                            ; preds = %.tail.thread
  %i.gz = call i32 @strcmp(ptr noundef %i.gm, ptr noundef dereferenceable(5) @.str.84) #20
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 2, ptr @output_action, align 4
  store i1 false, ptr @print_details, align 1
  store i1 true, ptr @print_summary, align 1
  br label %protocolfilter_add_opt.exit

bb.cq:                                            ; preds = %bb.co
  %i.hb = call i32 @strcmp(ptr noundef %i.gm, ptr noundef dereferenceable(7) @.str.85) #20
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 3, ptr @output_action, align 4
  store i1 true, ptr @print_details, align 1
  store i1 false, ptr @print_summary, align 1
  br label %protocolfilter_add_opt.exit

bb.cs:                                            ; preds = %bb.cq
  %i.hd = call i32 @strcmp(ptr noundef %i.gm, ptr noundef dereferenceable(5) @.str.86) #20
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ct, label %sub_0548

bb.ct:                                            ; preds = %bb.cs
  store i32 4, ptr @output_action, align 4
  store i1 true, ptr @print_details, align 1
  store i1 false, ptr @print_summary, align 1
  br label %protocolfilter_add_opt.exit

sub_0548:                                         ; preds = %bb.cs
  %.not700 = icmp eq i8 %i.gr, 101
  br i1 %.not700, label %sub_1549, label %.tail547.thread

sub_1549:                                         ; preds = %sub_0548
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.hg = load i8, ptr %i.hf, align 1
  %.not701 = icmp eq i8 %i.hg, 107
  br i1 %.not701, label %.tail547, label %.tail547.thread

.tail547:                                         ; preds = %sub_1549
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.cu, label %.tail547.thread

bb.cu:                                            ; preds = %.tail547
  store i32 6, ptr @output_action, align 4
  %.b359 = load i1, ptr @print_summary, align 1
  br i1 %.b359, label %protocolfilter_add_opt.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i1 true, ptr @print_details, align 1
  br label %protocolfilter_add_opt.exit

.tail547.thread:                                  ; preds = %sub_1549, %sub_0548, %.tail547
  %i.hk = call i32 @strcmp(ptr noundef %i.gm, ptr noundef dereferenceable(8) @.str.88) #20
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.tail547.thread
  store i32 5, ptr @output_action, align 4
  store i1 true, ptr @print_details, align 1
  store i1 false, ptr @print_summary, align 1
  br label %protocolfilter_add_opt.exit

bb.cx:                                            ; preds = %.tail547.thread
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.89, ptr noundef %i.gm)
  call void (ptr, ...) @cmdarg_err_cont(ptr noundef @.str.90)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.cy:                                            ; preds = %.lr.ph.a
  %i.hm = load ptr, ptr @ws_optarg, align 8       ; 3 uses
  %strcmpload = load i8, ptr %i.hm, align 1
  switch i8 %strcmpload, label %.tail552.thread [
    i8 0, label %bb.cz
    i8 63, label %.tail552
  ]

.tail552:                                         ; preds = %bb.cy
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.cz, label %.tail552.thread

bb.cz:                                            ; preds = %bb.cy, %.tail552
  call fastcc void @list_export_pdu_taps()
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.tail552.thread:                                  ; preds = %bb.cy, %.tail552
  %i.hq = call noalias ptr @g_strdup(ptr noundef %i.hm)
  store volatile ptr %i.hq, ptr %i.u, align 8
  br label %protocolfilter_add_opt.exit

bb.da:                                            ; preds = %.lr.ph.a
  call void @show_version()
  call void @epan_cleanup()
  call void @extcap_cleanup()
  store volatile i32 0, ptr %i.j, align 4
  br label %.thread521

g_strdup_inline.exit465:                          ; preds = %.lr.ph.a
  %i.hr = load ptr, ptr @ws_optarg, align 8
  %i.hs = call noalias ptr @g_strdup(ptr noundef %i.hr)
  store volatile ptr %i.hs, ptr %i.q, align 8
  br label %protocolfilter_add_opt.exit

bb.db:                                            ; preds = %.lr.ph.a
  %i.ht = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  %i.hu = call i32 @strcmp(ptr noundef dereferenceable(5) @.str, ptr noundef %i.ht) #20
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.hw = load ptr, ptr @stderr, align 8
  %i.hx = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hw, i32 noundef 2, ptr noundef @.str.92) ; 0 uses
  call void @list_stat_cmd_args()
  store volatile i32 0, ptr %i.j, align 4
  br label %.thread521

bb.dd:                                            ; preds = %bb.db
  %i.hy = call zeroext i1 @process_stat_cmd_arg(ptr noundef %i.ht)
  br i1 %i.hy, label %protocolfilter_add_opt.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hz = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.93, ptr noundef %i.hz)
  call void @list_stat_cmd_args()
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.df:                                            ; preds = %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a
  %i.ia = load ptr, ptr @ws_optarg, align 8
  %i.ib = call zeroext i1 @dissect_opts_handle_opt(i32 noundef %i.dg, ptr noundef %i.ia)
  br i1 %i.ib, label %protocolfilter_add_opt.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.dh:                                            ; preds = %.lr.ph.a
  %i.ic = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  %i.id = call i32 @strcmp(ptr noundef dereferenceable(5) @.str, ptr noundef %i.ic) #20
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.if = load ptr, ptr @stderr, align 8
  %i.ig = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.if, i32 noundef 2, ptr noundef @.str.94) ; 0 uses
  call void @eo_list_object_types()
  store volatile i32 0, ptr %i.j, align 4
  br label %.thread521

bb.dj:                                            ; preds = %bb.dh
  %i.ih = call zeroext i1 @eo_tap_opt_add(ptr noundef %i.ic)
  br i1 %i.ih, label %protocolfilter_add_opt.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.dl:                                            ; preds = %.lr.ph.a
  %i.ii = load ptr, ptr @ws_optarg, align 8
  store volatile ptr %i.ii, ptr %i.w, align 8
  br label %protocolfilter_add_opt.exit

bb.dm:                                            ; preds = %.lr.ph.a
  store i1 true, ptr @dissect_color, align 1
  br label %protocolfilter_add_opt.exit

bb.dn:                                            ; preds = %.lr.ph.a
  store i1 true, ptr @no_duplicate_keys, align 1
  store ptr @proto_node_group_children_by_json_key, ptr @node_children_grouper, align 8
  br label %protocolfilter_add_opt.exit

bb.do:                                            ; preds = %.lr.ph.a
  %i.ij = load ptr, ptr @ws_optarg, align 8
  br label %protocolfilter_add_opt.exit

bb.dp:                                            ; preds = %.lr.ph.a
  %i.ik = load ptr, ptr @capture_comments, align 8 ; 2 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.dq, label %g_strdup_inline.exit

bb.dq:                                            ; preds = %bb.dp
  %i.im = call ptr @g_ptr_array_new_with_free_func(ptr noundef @g_free) ; 2 uses
  store ptr %i.im, ptr @capture_comments, align 8
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.dq, %bb.dp
  %i.in = phi ptr [ %i.im, %bb.dq ], [ %i.ik, %bb.dp ]
  %i.io = load ptr, ptr @ws_optarg, align 8
  %i.ip = call noalias ptr @g_strdup(ptr noundef %i.io)
  call void @g_ptr_array_add(ptr noundef %i.in, ptr noundef %i.ip)
  br label %protocolfilter_add_opt.exit

bb.dr:                                            ; preds = %.lr.ph.a
  store i1 true, ptr @print_hex, align 1
  store i1 true, ptr @print_packet_info, align 1
  %i.iq = load ptr, ptr @ws_optarg, align 8       ; 9 uses
  %i.ir = call i32 @strcmp(ptr noundef %i.iq, ptr noundef dereferenceable(4) @.str.95) #20
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i1 false, ptr @hexdump_source_option, align 4
  br label %protocolfilter_add_opt.exit

bb.dt:                                            ; preds = %bb.dr
  %i.it = call i32 @strcmp(ptr noundef %i.iq, ptr noundef dereferenceable(7) @.str.96) #20
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i1 true, ptr @hexdump_source_option, align 4
  br label %protocolfilter_add_opt.exit

bb.dv:                                            ; preds = %bb.dt
  %i.iv = call i32 @strcmp(ptr noundef %i.iq, ptr noundef dereferenceable(6) @.str.97) #20
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr @hexdump_ascii_option, align 4
  br label %protocolfilter_add_opt.exit

bb.dx:                                            ; preds = %bb.dv
  %i.ix = call i32 @strcmp(ptr noundef %i.iq, ptr noundef dereferenceable(8) @.str.98) #20
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 1, ptr @hexdump_ascii_option, align 4
  br label %protocolfilter_add_opt.exit

bb.dz:                                            ; preds = %bb.dx
  %i.iz = call i32 @strcmp(ptr noundef %i.iq, ptr noundef dereferenceable(8) @.str.99) #20
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 2, ptr @hexdump_ascii_option, align 4
  br label %protocolfilter_add_opt.exit

bb.eb:                                            ; preds = %bb.dz
  %i.jb = call i32 @strcmp(ptr noundef %i.iq, ptr noundef dereferenceable(5) @.str.100) #20
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i1 true, ptr @hexdump_timestamp_option, align 4
  br label %protocolfilter_add_opt.exit

bb.ed:                                            ; preds = %bb.eb
  %i.jd = call i32 @strcmp(ptr noundef %i.iq, ptr noundef dereferenceable(7) @.str.101) #20
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i1 false, ptr @hexdump_timestamp_option, align 4
  br label %protocolfilter_add_opt.exit

bb.ef:                                            ; preds = %bb.ed
  %i.jf = call i32 @strcmp(ptr noundef dereferenceable(5) @.str, ptr noundef %i.iq) #20
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.jh = load ptr, ptr @stdout, align 8
  call fastcc void @hexdump_option_help(ptr noundef %i.jh)
  store volatile i32 0, ptr %i.j, align 4
  br label %.thread521

bb.eh:                                            ; preds = %bb.ef
  %i.ji = load ptr, ptr @stderr, align 8
  %i.jj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ji, i32 noundef 2, ptr noundef @.str.102, ptr noundef %i.iq) ; 0 uses
  %i.jk = load ptr, ptr @stderr, align 8
  %i.jl = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jk, i32 noundef 2, ptr noundef @.str.103) ; 0 uses
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ei:                                            ; preds = %.lr.ph.a
  %i.jm = load ptr, ptr @ws_optarg, align 8
  %i.jn = call zeroext i1 @ws_strtou32(ptr noundef %i.jm, ptr noundef null, ptr noundef @selected_frame_number)
  br i1 %i.jn, label %protocolfilter_add_opt.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.jo = load ptr, ptr @stderr, align 8
  %i.jp = load ptr, ptr @ws_optarg, align 8
  %i.jq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jo, i32 noundef 2, ptr noundef @.str.104, ptr noundef %i.jp) ; 0 uses
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ek:                                            ; preds = %.lr.ph.a
  store i1 true, ptr @opt_print_timers, align 1
  br label %protocolfilter_add_opt.exit

bb.el:                                            ; preds = %.lr.ph.a
  %i.jr = load ptr, ptr @ws_optarg, align 8
  %i.js = call i32 @ws_name_to_compression_type(ptr noundef %i.jr)
  store volatile i32 %i.js, ptr %i.x, align 4
  %.0..0..0..0.173 = load volatile i32, ptr %i.x, align 4
  %i.jt = icmp eq i32 %.0..0..0..0.173, 4
  br i1 %i.jt, label %bb.em, label %protocolfilter_add_opt.exit

bb.em:                                            ; preds = %bb.el
  %i.ju = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.105, ptr noundef %i.ju)
  call fastcc void @list_output_compression_types()
  br label %.thread521

bb.en:                                            ; preds = %.lr.ph.a
  %i.jv = call zeroext i1 @ws_log_is_wslog_arg(i32 noundef %i.dg)
  br i1 %i.jv, label %protocolfilter_add_opt.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.jw = load i32, ptr @ws_optopt, align 4
  switch i32 %i.jw, label %bb.es [
    i32 70, label %bb.ep
    i32 71, label %bb.eq
    i32 3011, label %bb.er
    i32 1003, label %bb.er
  ]

bb.ep:                                            ; preds = %bb.eo
  call fastcc void @list_capture_types()
  br label %bb.et

bb.eq:                                            ; preds = %bb.eo
  call fastcc void @glossary_option_help()
  br label %bb.et

bb.er:                                            ; preds = %bb.eo, %bb.eo
  call fastcc void @list_output_compression_types()
  br label %bb.et

bb.es:                                            ; preds = %bb.eo
  %i.jx = load ptr, ptr @stderr, align 8
  call fastcc void @print_usage(ptr noundef %i.jx)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq, %bb.ep
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

protocolfilter_add_opt.exit:                      ; preds = %bb.bm, %bb.bi, %bb.cb, %bb.bj, %bb.bf, %bb.ax, %bb.ba, %bb.az, %bb.en, %bb.el, %bb.ei, %bb.ds, %bb.dw, %bb.ea, %bb.ee, %bb.ec, %bb.dy, %bb.du, %bb.dj, %bb.df, %bb.dd, %bb.cj, %bb.cm, %bb.cp, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cr, %bb.cn, %bb.cl, %bb.bu, %bb.bd, %bb.bb, %.lr.ph.a, %.lr.ph.a, %g_strdup_inline.exit475, %bb.ap, %bb.ao, %bb.ek, %g_strdup_inline.exit, %bb.do, %bb.dn, %bb.dm, %bb.dl, %g_strdup_inline.exit465, %.tail552.thread, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.bw, %bb.bv, %bb.bs, %bb.bo, %bb.an, %bb.ak, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a, %.lr.ph.a
  %.1332 = phi i32 [ %.0331668, %bb.en ], [ %.0331668, %bb.ak ], [ %.0331668, %bb.an ], [ %.0331668, %bb.ao ], [ %.0331668, %bb.ap ], [ %.0331668, %g_strdup_inline.exit475 ], [ %.0331668, %bb.el ], [ %.0331668, %bb.bb ], [ %.0331668, %bb.bd ], [ %.0331668, %bb.ax ], [ %.0331668, %bb.bi ], [ %.0331668, %bb.bo ], [ %.0331668, %bb.bs ], [ %.0331668, %bb.bu ], [ %i.fy, %bb.bv ], [ %i.fz, %bb.bw ], [ %.0331668, %bb.cb ], [ %.0331668, %bb.cc ], [ %.0331668, %bb.cd ], [ %.0331668, %bb.ce ], [ %.0331668, %bb.cf ], [ %.0331668, %bb.cj ], [ %.0331668, %bb.cl ], [ %.0331668, %bb.cm ], [ %.0331668, %bb.cn ], [ %.0331668, %bb.cp ], [ %.0331668, %bb.cr ], [ %.0331668, %bb.ct ], [ %.0331668, %bb.cu ], [ %.0331668, %bb.cv ], [ %.0331668, %bb.cw ], [ %.0331668, %.tail552.thread ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %.lr.ph.a ], [ %.0331668, %g_strdup_inline.exit465 ], [ %.0331668, %bb.dd ], [ %.0331668, %bb.df ], [ %.0331668, %bb.dj ], [ %.0331668, %bb.dl ], [ %.0331668, %bb.dm ], [ %.0331668, %bb.dn ], [ %.0331668, %bb.do ], [ %.0331668, %g_strdup_inline.exit ], [ %.0331668, %bb.ds ], [ %.0331668, %bb.du ], [ %.0331668, %bb.dw ], [ %.0331668, %bb.dy ], [ %.0331668, %bb.ea ], [ %.0331668, %bb.ec ], [ %.0331668, %bb.ee ], [ %.0331668, %bb.ei ], [ %.0331668, %bb.ek ], [ %.0331668, %bb.az ], [ %.0331668, %bb.ba ], [ %.0331668, %bb.bf ], [ %.0331668, %bb.bj ], [ %.0331668, %bb.bm ] ; 2 uses
  %.1330 = phi ptr [ %.0329669, %bb.en ], [ %.0329669, %bb.ak ], [ %.0329669, %bb.an ], [ %.0329669, %bb.ao ], [ %.0329669, %bb.ap ], [ %.0329669, %g_strdup_inline.exit475 ], [ %.0329669, %bb.el ], [ %.0329669, %bb.bb ], [ %.0329669, %bb.bd ], [ %.0329669, %bb.ax ], [ %.0329669, %bb.bi ], [ %.0329669, %bb.bo ], [ %.0329669, %bb.bs ], [ %.0329669, %bb.bu ], [ %.0329669, %bb.bv ], [ %.0329669, %bb.bw ], [ %.0329669, %bb.cb ], [ %.0329669, %bb.cc ], [ %.0329669, %bb.cd ], [ %i.gj, %bb.ce ], [ %.0329669, %bb.cf ], [ %.0329669, %bb.cj ], [ %.0329669, %bb.cl ], [ %.0329669, %bb.cm ], [ %.0329669, %bb.cn ], [ %.0329669, %bb.cp ], [ %.0329669, %bb.cr ], [ %.0329669, %bb.ct ], [ %.0329669, %bb.cu ], [ %.0329669, %bb.cv ], [ %.0329669, %bb.cw ], [ %.0329669, %.tail552.thread ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %.lr.ph.a ], [ %.0329669, %g_strdup_inline.exit465 ], [ %.0329669, %bb.dd ], [ %.0329669, %bb.df ], [ %.0329669, %bb.dj ], [ %.0329669, %bb.dl ], [ %.0329669, %bb.dm ], [ %.0329669, %bb.dn ], [ %.0329669, %bb.do ], [ %.0329669, %g_strdup_inline.exit ], [ %.0329669, %bb.ds ], [ %.0329669, %bb.du ], [ %.0329669, %bb.dw ], [ %.0329669, %bb.dy ], [ %.0329669, %bb.ea ], [ %.0329669, %bb.ec ], [ %.0329669, %bb.ee ], [ %.0329669, %bb.ei ], [ %.0329669, %bb.ek ], [ %.0329669, %bb.az ], [ %.0329669, %bb.ba ], [ %.0329669, %bb.bf ], [ %.0329669, %bb.bj ], [ %.0329669, %bb.bm ] ; 2 uses
  %.1321 = phi ptr [ %.0320670, %bb.en ], [ %.0320670, %bb.ak ], [ %.0320670, %bb.an ], [ %.0320670, %bb.ao ], [ %.0320670, %bb.ap ], [ %.0320670, %g_strdup_inline.exit475 ], [ %.0320670, %bb.el ], [ %.0320670, %bb.bb ], [ %.0320670, %bb.bd ], [ %.0320670, %bb.ax ], [ %.0320670, %bb.bi ], [ %.0320670, %bb.bo ], [ %.0320670, %bb.bs ], [ %.0320670, %bb.bu ], [ %.0320670, %bb.bv ], [ %.0320670, %bb.bw ], [ %.0320670, %bb.cb ], [ %.0320670, %bb.cc ], [ %.0320670, %bb.cd ], [ %.0320670, %bb.ce ], [ %.0320670, %bb.cf ], [ %.0320670, %bb.cj ], [ %.0320670, %bb.cl ], [ %.0320670, %bb.cm ], [ %.0320670, %bb.cn ], [ %.0320670, %bb.cp ], [ %.0320670, %bb.cr ], [ %.0320670, %bb.ct ], [ %.0320670, %bb.cu ], [ %.0320670, %bb.cv ], [ %.0320670, %bb.cw ], [ %.0320670, %.tail552.thread ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %.lr.ph.a ], [ %.0320670, %g_strdup_inline.exit465 ], [ %.0320670, %bb.dd ], [ %.0320670, %bb.df ], [ %.0320670, %bb.dj ], [ %.0320670, %bb.dl ], [ %.0320670, %bb.dm ], [ %.0320670, %bb.dn ], [ %i.ij, %bb.do ], [ %.0320670, %g_strdup_inline.exit ], [ %.0320670, %bb.ds ], [ %.0320670, %bb.du ], [ %.0320670, %bb.dw ], [ %.0320670, %bb.dy ], [ %.0320670, %bb.ea ], [ %.0320670, %bb.ec ], [ %.0320670, %bb.ee ], [ %.0320670, %bb.ei ], [ %.0320670, %bb.ek ], [ %.0320670, %bb.az ], [ %.0320670, %bb.ba ], [ %.0320670, %bb.bf ], [ %.0320670, %bb.bj ], [ %.0320670, %bb.bm ] ; 2 uses
  %.4310 = phi i1 [ %.0306671, %bb.en ], [ %.1307, %bb.ak ], [ %spec.select453, %bb.an ], [ %.0306671, %bb.ao ], [ %.0306671, %bb.ap ], [ %.0306671, %g_strdup_inline.exit475 ], [ %.0306671, %bb.el ], [ %.0306671, %bb.bb ], [ %.0306671, %bb.bd ], [ %.0306671, %bb.ax ], [ %.0306671, %bb.bi ], [ %.0306671, %bb.bo ], [ %.0306671, %bb.bs ], [ %.0306671, %bb.bu ], [ %.0306671, %bb.bv ], [ %.0306671, %bb.bw ], [ %.0306671, %bb.cb ], [ %.0306671, %bb.cc ], [ %.0306671, %bb.cd ], [ %.0306671, %bb.ce ], [ %.0306671, %bb.cf ], [ %.0306671, %bb.cj ], [ %.0306671, %bb.cl ], [ %.0306671, %bb.cm ], [ %.0306671, %bb.cn ], [ %.0306671, %bb.cp ], [ %.0306671, %bb.cr ], [ %.0306671, %bb.ct ], [ %.0306671, %bb.cu ], [ %.0306671, %bb.cv ], [ %.0306671, %bb.cw ], [ %.0306671, %.tail552.thread ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %.lr.ph.a ], [ %.0306671, %g_strdup_inline.exit465 ], [ %.0306671, %bb.dd ], [ %.0306671, %bb.df ], [ %.0306671, %bb.dj ], [ %.0306671, %bb.dl ], [ %.0306671, %bb.dm ], [ %.0306671, %bb.dn ], [ %.0306671, %bb.do ], [ %.0306671, %g_strdup_inline.exit ], [ %.0306671, %bb.ds ], [ %.0306671, %bb.du ], [ %.0306671, %bb.dw ], [ %.0306671, %bb.dy ], [ %.0306671, %bb.ea ], [ %.0306671, %bb.ec ], [ %.0306671, %bb.ee ], [ %.0306671, %bb.ei ], [ %.0306671, %bb.ek ], [ %.0306671, %bb.az ], [ %.0306671, %bb.ba ], [ %.0306671, %bb.bf ], [ %.0306671, %bb.bj ], [ %.0306671, %bb.bm ] ; 2 uses
  %8 = load i32, ptr %i.c, align 4
  %9 = call i32 @ws_getopt_long(i32 noundef %8, ptr noundef %1, ptr noundef @main.optstring, ptr noundef @main.long_options, ptr noundef null) ; 2 uses
  %.not376 = icmp eq i32 %9, -1
  br i1 %.not376, label %._crit_edge.a, label %.lr.ph.a, !llvm.loop !12

._crit_edge.a:                                    ; preds = %protocolfilter_add_opt.exit, %bb.ah
  %.0331.lcssa = phi i32 [ 0, %bb.ah ], [ %.1332, %protocolfilter_add_opt.exit ] ; 3 uses
  %.0329.lcssa = phi ptr [ null, %bb.ah ], [ %.1330, %protocolfilter_add_opt.exit ] ; 3 uses
  %.0320.lcssa = phi ptr [ null, %bb.ah ], [ %.1321, %protocolfilter_add_opt.exit ]
  %.0306.lcssa = phi i1 [ false, %bb.ah ], [ %.4310, %protocolfilter_add_opt.exit ]
  %i.jy = load i32, ptr @output_action, align 4
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %._crit_edge.a
  store i32 1, ptr @output_action, align 4
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge.a
  %.0..0..0..0.244 = load volatile i32, ptr %i.m, align 4
  %i.ka = icmp eq i32 %.0..0..0..0.244, -1
  br i1 %i.ka, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.kb = call i32 @wtap_pcapng_file_type_subtype()
  store volatile i32 %i.kb, ptr %i.m, align 4
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.b358 = load i1, ptr @print_summary, align 1
  %.b360 = load i1, ptr @print_details, align 1
  %or.cond = select i1 %.b358, i1 true, i1 %.b360
  %.b362 = load i1, ptr @print_hex, align 1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %.b362
  br i1 %or.cond5, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  store i1 true, ptr @print_summary, align 1
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.b372 = load i1, ptr @no_duplicate_keys, align 1
  %i.kc = load i32, ptr @output_action, align 4   ; 2 uses
  %i.kd = add i32 %i.kc, -6
  %i.ke = icmp ult i32 %i.kd, -2
  %or.cond9 = select i1 %.b372, i1 %i.ke, i1 false
  br i1 %or.cond9, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.106)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.fb:                                            ; preds = %bb.ez
  %switch.tableidx = add i32 %i.kc, -2            ; 3 uses
  %i.kf = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond794 = select i1 %i.kf, i1 %switch.lobit, i1 false
  br i1 %or.cond794, label %switch.lookup, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.kg = load ptr, ptr @output_fields, align 8
  %i.kh = call i64 @output_fields_num_fields(ptr noundef %i.kg)
  %.not377 = icmp eq i64 %i.kh, 0
  br i1 %.not377, label %thread-pre-split, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.107)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

thread-pre-split:                                 ; preds = %bb.fc
  %.pr = load i32, ptr @output_action, align 4
  br label %bb.fe

switch.lookup:                                    ; preds = %bb.fb
  %i.ki = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.main, i64 %i.ki
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.fe

bb.fe:                                            ; preds = %switch.lookup, %thread-pre-split
  %i.kj = phi i32 [ %.pr, %thread-pre-split ], [ %switch.ext, %switch.lookup ]
  %i.kk = icmp eq i32 %i.kj, 3
  br i1 %i.kk, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.kl = load ptr, ptr @output_fields, align 8
  %i.km = call i64 @output_fields_num_fields(ptr noundef %i.kl)
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.108)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.fh:                                            ; preds = %bb.fe, %bb.ff
  %.b371 = load i1, ptr @dissect_color, align 1
  %i.ko = load i8, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 360), align 8, !range !8
  %i.kp = trunc nuw i8 %i.ko to i1
  %or.cond17 = select i1 %.b371, i1 true, i1 %i.kp
  br i1 %or.cond17, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.kq = call ptr @application_configuration_environment_prefix()
  %i.kr = call zeroext i1 @color_filters_init(ptr noundef nonnull %i.d, ptr noundef null, ptr noundef %i.kq)
  br i1 %i.kr, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ks = load ptr, ptr @stderr, align 8
  %i.kt = load ptr, ptr %i.d, align 8
  %i.ku = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ks, i32 noundef 2, ptr noundef @.str.109, ptr noundef %i.kt) ; 0 uses
  %i.kv = load ptr, ptr %i.d, align 8
  call void @g_free(ptr noundef %i.kv)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fi, %bb.fj, %bb.fh
  %i.kw = load i32, ptr @ws_optind, align 4       ; 3 uses
  %i.kx = load i32, ptr %i.c, align 4             ; 3 uses
  %i.ky = icmp slt i32 %i.kw, %i.kx
  br i1 %i.ky, label %bb.fl, label %bb.ft

bb.fl:                                            ; preds = %bb.fk
  %.0..0..0..0.230 = load volatile ptr, ptr %i.p, align 8
  %.not378 = icmp eq ptr %.0..0..0..0.230, null
  br i1 %.not378, label %bb.fp, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %.0..0..0..0.217 = load volatile ptr, ptr %i.q, align 8
  %.not380 = icmp eq ptr %.0..0..0..0.217, null
  br i1 %.not380, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.110)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.fo:                                            ; preds = %bb.fm
  %i.kz = call ptr @get_args_as_string(i32 noundef %i.kx, ptr noundef %1, i32 noundef %i.kw)
  store volatile ptr %i.kz, ptr %i.q, align 8
  br label %bb.ft

bb.fp:                                            ; preds = %bb.fl
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 88), align 8
  %.not379 = icmp eq ptr %i.la, null
  br i1 %.not379, label %.preheader, label %bb.fq

.preheader:                                       ; preds = %bb.fp
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 8), align 8 ; 2 uses
  %i.lc = getelementptr i8, ptr %i.lb, i64 8
  %i.ld = load i32, ptr %i.lc, align 8
  %.not702 = icmp eq i32 %i.ld, 0
  br i1 %.not702, label %._crit_edge677, label %.lr.ph676

bb.fq:                                            ; preds = %bb.fp
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.111)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.lr.ph676:                                        ; preds = %.preheader, %bb.fs
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.fs ], [ 0, %.preheader ] ; 2 uses
  %i.le = phi ptr [ %i.ln, %bb.fs ], [ %i.lb, %.preheader ]
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = getelementptr [168 x i8], ptr %i.lf, i64 %indvars.iv
  %i.lh = getelementptr i8, ptr %i.lg, i64 40     ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph676
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.112)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.fs:                                            ; preds = %.lr.ph676
  %i.lk = load i32, ptr %i.c, align 4
  %i.ll = load i32, ptr @ws_optind, align 4
  %i.lm = call ptr @get_args_as_string(i32 noundef %i.lk, ptr noundef %1, i32 noundef %i.ll)
  store ptr %i.lm, ptr %i.lh, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 8), align 8 ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 8
  %i.lp = load i32, ptr %i.lo, align 8
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next, %i.lq
  br i1 %i.lr, label %.lr.ph676, label %._crit_edge677.loopexit, !llvm.loop !13

._crit_edge677.loopexit:                          ; preds = %bb.fs
  %.pre = load i32, ptr %i.c, align 4
  %.pre727 = load i32, ptr @ws_optind, align 4
  br label %._crit_edge677

._crit_edge677:                                   ; preds = %._crit_edge677.loopexit, %.preheader
  %i.ls = phi i32 [ %.pre727, %._crit_edge677.loopexit ], [ %i.kw, %.preheader ]
  %i.lt = phi i32 [ %.pre, %._crit_edge677.loopexit ], [ %i.kx, %.preheader ]
  %i.lu = call ptr @get_args_as_string(i32 noundef %i.lt, ptr noundef %1, i32 noundef %i.ls)
  store ptr %i.lu, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 88), align 8
  br label %bb.ft

bb.ft:                                            ; preds = %._crit_edge677, %bb.fo, %bb.fk
  %i.lv = load ptr, ptr @output_file_name, align 8 ; 4 uses
  %.not381 = icmp eq ptr %i.lv, null
  br i1 %.not381, label %bb.fu, label %sub_0557

bb.fu:                                            ; preds = %bb.ft
  %.b370 = load i1, ptr @quiet, align 1
  br i1 %.b370, label %.thread524, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store i1 true, ptr @print_packet_info, align 1
  br label %.thread524

sub_0557:                                         ; preds = %bb.ft
  %i.lw = load i8, ptr %i.lv, align 1
  %.not703 = icmp eq i8 %i.lw, 45
  br i1 %.not703, label %.tail556, label %.tail556.thread

.tail556:                                         ; preds = %sub_0557
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = icmp eq i8 %i.ly, 0
  %.b = load i1, ptr @print_packet_info, align 1
  %or.cond19 = select i1 %i.lz, i1 %.b, i1 false
  br i1 %or.cond19, label %bb.fy, label %.tail556.thread

.tail556.thread:                                  ; preds = %sub_0557, %.tail556
  %.0..0..0..0.174 = load volatile i32, ptr %i.x, align 4
  %i.ma = icmp eq i32 %.0..0..0..0.174, 4
  br i1 %i.ma, label %bb.fw, label %.thread524

bb.fw:                                            ; preds = %.tail556.thread
  %i.mb = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.lv, i32 noundef 46) #20 ; 2 uses
  %.not382 = icmp eq ptr %i.mb, null
  br i1 %.not382, label %.thread524, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.mc = getelementptr i8, ptr %i.mb, i64 1
  %i.md = call i32 @ws_extension_to_compression_type(ptr noundef %i.mc)
  store volatile i32 %i.md, ptr %i.x, align 4
  br label %.thread524

bb.fy:                                            ; preds = %.tail556
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.114)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.thread524:                                       ; preds = %.tail556.thread, %bb.fx, %bb.fw, %bb.fu, %bb.fv
  %.0..0..0..0.175 = load volatile i32, ptr %i.x, align 4
  %i.me = icmp eq i32 %.0..0..0..0.175, 4
  br i1 %i.me, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %.thread524
  store volatile i32 0, ptr %i.x, align 4
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %.thread524
  %.0..0..0..0.176 = load volatile i32, ptr %i.x, align 4
  %i.mf = call zeroext i1 @ws_can_write_compression_type(i32 noundef %.0..0..0..0.176)
  %.0..0..0..0.178 = load volatile i32, ptr %i.x, align 4 ; 2 uses
  br i1 %i.mf, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.mg = call ptr @ws_compression_type_description(i32 noundef %.0..0..0..0.178)
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.115, ptr noundef %i.mg)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.gc:                                            ; preds = %bb.ga
  %.not383 = icmp eq i32 %.0..0..0..0.178, 0
  br i1 %.not383, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %.0..0..0..0.245 = load volatile i32, ptr %i.m, align 4
  %i.mh = call zeroext i1 @wtap_dump_can_compress(i32 noundef %.0..0..0..0.245)
  br i1 %i.mh, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %.0..0..0..0.246 = load volatile i32, ptr %i.m, align 4
  %i.mi = call ptr @wtap_file_type_subtype_name(i32 noundef %.0..0..0..0.246)
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.116, ptr noundef %i.mi)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.gf:                                            ; preds = %bb.gd, %bb.gc
  %.0..0..0..0.179 = load volatile i32, ptr %i.x, align 4
  %.not384 = icmp eq i32 %.0..0..0..0.179, 0
  br i1 %.not384, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %.0..0..0..0.275 = load volatile i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.mj = trunc nuw i8 %.0..0..0..0.275 to i1
  br i1 %i.mj, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.mk = call ptr @application_configuration_environment_prefix()
  %.0..0..0..0.180 = load volatile i32, ptr %i.x, align 4
  %i.ml = call ptr @ws_compression_type_name(i32 noundef %.0..0..0..0.180)
  %i.mm = call i32 @capture_opts_add_opt(ptr noundef %i.mk, ptr noundef @global_capture_opts, i32 noundef 1003, ptr noundef %i.ml)
  store volatile i32 %i.mm, ptr %i.j, align 4
  %.0..0..0..0.267 = load volatile i32, ptr %i.j, align 4
  %.not385 = icmp eq i32 %.0..0..0..0.267, 0
  br i1 %.not385, label %bb.gi, label %.thread521

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %bb.gf
  br i1 %.0306.lcssa, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.mn = load ptr, ptr @stderr, align 8
  call fastcc void @print_usage(ptr noundef %i.mn)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.gk:                                            ; preds = %bb.gi
  %.b363 = load i1, ptr @print_hex, align 1
  br i1 %.b363, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %bb.gk
  %i.mo = load i32, ptr @output_action, align 4
  switch i32 %i.mo, label %bb.gm [
    i32 6, label %bb.gn
    i32 5, label %bb.gn
    i32 4, label %bb.gn
    i32 1, label %bb.gn
  ]

bb.gm:                                            ; preds = %bb.gl
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.117)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.gn:                                            ; preds = %bb.gl, %bb.gl, %bb.gl, %bb.gl, %bb.gk
  %.not386 = icmp eq ptr %.0324, null
  br i1 %.not386, label %.thread526, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.b361 = load i1, ptr @print_details, align 1
  br i1 %.b361, label %bb.gp, label %bb.gs

bb.gp:                                            ; preds = %bb.go
  %i.mp = call ptr @g_hash_table_new(ptr noundef @g_str_hash, ptr noundef @g_str_equal)
  store ptr %i.mp, ptr @output_only_tables, align 8
  %i.mq = call ptr @strtok(ptr noundef nonnull %.0324, ptr noundef @.str.119) #19 ; 2 uses
  %.not387678 = icmp eq ptr %i.mq, null
  br i1 %.not387678, label %.thread526, label %.lr.ph681

.lr.ph681:                                        ; preds = %bb.gp, %bb.gr
  %.0302679 = phi ptr [ %i.mw, %bb.gr ], [ %i.mq, %bb.gp ] ; 2 uses
  %i.mr = call ptr @proto_registrar_get_byalias(ptr noundef nonnull %.0302679) ; 2 uses
  %.not432 = icmp eq ptr %i.mr, null
  br i1 %.not432, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph681
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.lr.ph681
  %.0301 = phi ptr [ %i.mt, %bb.gq ], [ %.0302679, %.lr.ph681 ] ; 2 uses
  %i.mu = load ptr, ptr @output_only_tables, align 8
  %i.mv = call i32 @g_hash_table_insert(ptr noundef %i.mu, ptr noundef %.0301, ptr noundef %.0301) ; 0 uses
  %i.mw = call ptr @strtok(ptr noundef null, ptr noundef @.str.119) #19 ; 2 uses
  %.not387 = icmp eq ptr %i.mw, null
  br i1 %.not387, label %.thread526, label %.lr.ph681, !llvm.loop !14

bb.gs:                                            ; preds = %bb.go
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.118)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.thread526:                                       ; preds = %bb.gr, %bb.gp, %bb.gn
  %i.mx = icmp eq ptr %.0329.lcssa, null          ; 3 uses
  %.b366 = load i1, ptr @perform_two_pass_analysis, align 1 ; 2 uses
  %or.cond27 = select i1 %i.mx, i1 true, i1 %.b366
  br i1 %or.cond27, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %.thread526
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.120)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.gu:                                            ; preds = %.thread526
  %.not388 = icmp eq i32 %.0331.lcssa, 0          ; 2 uses
  %.0..0..0..0.232 = load volatile ptr, ptr %i.p, align 8
  %.not389 = icmp eq ptr %.0..0..0..0.232, null   ; 2 uses
  br i1 %.not388, label %bb.gz, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  br i1 %.not389, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.my = and i32 %.0331.lcssa, 1
  %.not431 = icmp eq i32 %i.my, 0
  %i.mz = select i1 %.not431, ptr @.str.123, ptr @.str.122
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.121, ptr noundef nonnull %i.mz)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.gx:                                            ; preds = %bb.gv
  %i.na = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 256), align 8, !range !8, !noundef !9
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.gy, label %bb.im

bb.gy:                                            ; preds = %bb.gx
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.124)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.gz:                                            ; preds = %bb.gu
  br i1 %.not389, label %bb.ho, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 88), align 8
  %.not393 = icmp eq ptr %i.nc, null
  br i1 %.not393, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.125)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hc:                                            ; preds = %bb.ha
  %i.nd = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 256), align 8, !range !8, !noundef !9
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.126)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.he:                                            ; preds = %bb.hc
  %i.nf = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 257), align 1, !range !8, !noundef !9
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.127)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hg:                                            ; preds = %bb.he
  %i.nh = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 272), align 8, !range !8, !noundef !9
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.128)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hi:                                            ; preds = %bb.hg
  %i.nj = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 288), align 8, !range !8, !noundef !9
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.129)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hk:                                            ; preds = %bb.hi
  %i.nl = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 297), align 1, !range !8, !noundef !9
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.130)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hm:                                            ; preds = %bb.hk
  %i.nn = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 328), align 8, !range !8, !noundef !9
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.hn, label %bb.im

bb.hn:                                            ; preds = %bb.hm
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.131)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ho:                                            ; preds = %bb.gz
  br i1 %.b366, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.132)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hq:                                            ; preds = %bb.ho
  %i.np = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 216), align 8, !range !8, !noundef !9
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %bb.hr, label %bb.ig

bb.hr:                                            ; preds = %bb.hq
  %.0..0..0..0.247 = load volatile i32, ptr %i.m, align 4
  %i.nr = call i32 @wtap_pcapng_file_type_subtype()
  %i.ns = icmp eq i32 %.0..0..0..0.247, %i.nr     ; 2 uses
  br i1 %i.ns, label %.thread528, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.0..0..0..0.248 = load volatile i32, ptr %i.m, align 4
  %i.nt = call i32 @wtap_pcap_file_type_subtype()
  %i.nu = icmp eq i32 %.0..0..0..0.248, %i.nt
  br i1 %i.nu, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %.0..0..0..0.249 = load volatile i32, ptr %i.m, align 4
  %i.nv = call i32 @wtap_pcap_nsec_file_type_subtype()
  %i.nw = icmp eq i32 %.0..0..0..0.249, %i.nv
  br i1 %i.nw, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.133)
  call void @capture_opts_list_file_types()
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hv:                                            ; preds = %bb.ht, %bb.hs
  %i.nx = load ptr, ptr @capture_comments, align 8
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %.thread528, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.134)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.thread528:                                       ; preds = %bb.hr, %bb.hv
  %i.nz = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 256), align 8, !range !8, !noundef !9
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %sub_0561, label %bb.ib

sub_0561:                                         ; preds = %.thread528
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 224), align 8 ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1
  %.not704 = icmp eq i8 %i.oc, 45
  br i1 %.not704, label %.tail560, label %.tail560.thread

.tail560:                                         ; preds = %sub_0561
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = icmp eq i8 %i.oe, 0
  br i1 %i.of, label %bb.hx, label %.tail560.thread

bb.hx:                                            ; preds = %.tail560
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.135)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.tail560.thread:                                  ; preds = %sub_0561, %.tail560
  %i.og = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 368), align 8, !range !8, !noundef !9
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.tail560.thread
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.136)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.hz:                                            ; preds = %.tail560.thread
  %i.oi = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 320), align 8, !range !8, !noundef !9
  %i.oj = trunc nuw i8 %i.oi to i1
  %i.ok = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 257), align 1, !range !8
  %i.ol = trunc nuw i8 %i.ok to i1
  %or.cond31 = select i1 %i.oj, i1 true, i1 %i.ol
  %i.om = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 272), align 8, !range !8
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond33 = select i1 %or.cond31, i1 true, i1 %i.on
  %i.oo = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 280), align 8, !range !8
  %i.op = trunc nuw i8 %i.oo to i1
  %or.cond35 = select i1 %or.cond33, i1 true, i1 %i.op
  br i1 %or.cond35, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.137)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ib:                                            ; preds = %bb.hz, %.thread528
  br i1 %i.mx, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.138)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.id:                                            ; preds = %bb.ib
  %.0..0..0..0.218 = load volatile ptr, ptr %i.q, align 8
  %.not392 = icmp eq ptr %.0..0..0..0.218, null
  br i1 %.not392, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.139)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.if:                                            ; preds = %bb.id
  %i.oq = zext i1 %i.ns to i8
  store i8 %i.oq, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 233), align 1
  br label %bb.im

bb.ig:                                            ; preds = %bb.hq
  %i.or = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 320), align 8, !range !8, !noundef !9
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.140)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ii:                                            ; preds = %bb.ig
  %i.ot = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 256), align 8, !range !8, !noundef !9
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.141)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ik:                                            ; preds = %bb.ii
  %i.ov = load ptr, ptr @capture_comments, align 8
  %.not390 = icmp eq ptr %i.ov, null
  br i1 %.not390, label %.thread535, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.142)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.im:                                            ; preds = %bb.if, %bb.hm, %bb.gx
  %.pr534 = load ptr, ptr @capture_comments, align 8
  %.not395 = icmp eq ptr %.pr534, null
  br i1 %.not395, label %.thread535, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ow = load ptr, ptr @output_file_name, align 8
  %.not396 = icmp eq ptr %i.ow, null
  br i1 %.not396, label %bb.is, label %bb.io

bb.io:                                            ; preds = %bb.in
  %.0..0..0..0.250 = load volatile i32, ptr %i.m, align 4
  %i.ox = call i32 @wtap_file_type_subtype_supports_option(i32 noundef %.0..0..0..0.250, i32 noundef 0, i32 noundef 1)
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.ip, label %.thread535

bb.ip:                                            ; preds = %bb.io
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.143)
  %i.oz = call ptr @wtap_get_writable_file_types_subtypes(i32 noundef 0) ; 2 uses
  %i.pa = getelementptr i8, ptr %i.oz, i64 8      ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 8
  %.not705 = icmp eq i32 %i.pb, 0
  br i1 %.not705, label %._crit_edge685, label %.lr.ph684.a

._crit_edge685:                                   ; preds = %bb.ir, %bb.ip
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.lr.ph684.a:                                      ; preds = %bb.ip, %bb.ir
  %indvars.iv718 = phi i64 [ %indvars.iv.next719, %bb.ir ], [ 0, %bb.ip ] ; 2 uses
  %i.pc = load ptr, ptr %i.oz, align 8
  %i.pd = getelementptr [4 x i8], ptr %i.pc, i64 %indvars.iv718
  %i.pe = load i32, ptr %i.pd, align 4            ; 3 uses
  %i.pf = call i32 @wtap_file_type_subtype_supports_option(i32 noundef %i.pe, i32 noundef 0, i32 noundef 1)
  %.not430 = icmp eq i32 %i.pf, 0
  br i1 %.not430, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %.lr.ph684.a
  %i.pg = call ptr @wtap_file_type_subtype_name(i32 noundef %i.pe)
  %i.ph = call ptr @wtap_file_type_subtype_description(i32 noundef %i.pe)
  call void (ptr, ...) @cmdarg_err_cont(ptr noundef @.str.144, ptr noundef %i.pg, ptr noundef %i.ph)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %.lr.ph684.a
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %i.pi = load i32, ptr %i.pa, align 8
  %i.pj = zext i32 %i.pi to i64
  %i.pk = icmp samesign ult i64 %indvars.iv.next719, %i.pj
  br i1 %i.pk, label %.lr.ph684.a, label %._crit_edge685, !llvm.loop !15

bb.is:                                            ; preds = %bb.in
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.145)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

.thread535:                                       ; preds = %bb.ik, %bb.io, %bb.im
  %i.pl = call ptr @ws_init_sockets()             ; 3 uses
  store ptr %i.pl, ptr %i.d, align 8
  %.not397 = icmp eq ptr %i.pl, null
  br i1 %.not397, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %.thread535
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.66, ptr noundef nonnull %i.pl)
  %i.pm = load ptr, ptr %i.d, align 8
  call void @g_free(ptr noundef %i.pm)
  %i.pn = call ptr @please_report_bug()
  call void (ptr, ...) @cmdarg_err_cont(ptr noundef @.str.66, ptr noundef %i.pn)
  store volatile i32 8, ptr %i.j, align 4
  br label %.thread521

bb.iu:                                            ; preds = %.thread535
  call void @prefs_apply_all()
  call void @start_exportobjects()
  %i.po = load ptr, ptr @output_fields, align 8
  %i.pp = call ptr @output_fields_valid(ptr noundef %i.po) ; 3 uses
  %.not398 = icmp eq ptr %i.pp, null
  br i1 %.not398, label %bb.iy, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.146)
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iw
  %.0298686 = phi ptr [ %i.pp, %bb.iv ], [ %i.ps, %bb.iw ] ; 2 uses
  %i.pq = load ptr, ptr %.0298686, align 8
  call void (ptr, ...) @cmdarg_err_cont(ptr noundef @.str.147, ptr noundef %i.pq)
  %i.pr = getelementptr i8, ptr %.0298686, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8            ; 2 uses
  %.not399 = icmp eq ptr %i.ps, null
  br i1 %.not399, label %bb.ix, label %bb.iw, !llvm.loop !16

bb.ix:                                            ; preds = %bb.iw
  call void @g_slist_free(ptr noundef nonnull %i.pp)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.iy:                                            ; preds = %bb.iu
  %i.pt = call i32 @ex_opt_count(ptr noundef @.str.148)
  %i.pu = icmp sgt i32 %i.pt, 0
  br i1 %i.pu, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %i.pv = call ptr @ex_opt_get_next(ptr noundef @.str.148) ; 5 uses
  %i.pw = call i32 @open_info_name_to_type(ptr noundef %i.pv)
  store volatile i32 %i.pw, ptr %i.o, align 4
  %.0..0..0..0.240 = load volatile i32, ptr %i.o, align 4
  %i.px = icmp eq i32 %.0..0..0..0.240, 0
  br i1 %i.px, label %bb.ja, label %.thread539

.thread539:                                       ; preds = %bb.iz
  call void @g_free(ptr noundef %i.pv)
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %.not400 = icmp eq ptr %i.pv, null
  %i.py = select i1 %.not400, ptr @.str.52, ptr %i.pv
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.149, ptr noundef nonnull %i.py)
  call void @g_free(ptr noundef %i.pv)
  call fastcc void @list_read_capture_types()
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.jb:                                            ; preds = %.thread539, %bb.iy
  %i.pz = load i32, ptr @global_dissect_options, align 8 ; 2 uses
  %.not401 = icmp eq i32 %i.pz, 11
  br i1 %.not401, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  call void @timestamp_set_type(i32 noundef %i.pz)
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.qa = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_dissect_options, i64 4), align 4 ; 2 uses
  %.not402 = icmp eq i32 %i.qa, -2
  br i1 %.not402, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @timestamp_set_precision(i32 noundef %i.qa)
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.qb = call zeroext i1 @setup_enabled_and_disabled_protocols()
  br i1 %i.qb, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.jh:                                            ; preds = %bb.jf
  %i.qc = getelementptr i8, ptr %i.de, i64 8
  %i.qd = load i32, ptr %i.qc, align 8
  call void @build_column_format_array(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cfile, i64 288), i32 noundef %i.qd, i1 noundef zeroext true)
  %.not403 = icmp eq ptr %.0322, null
  br i1 %.not403, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.qe = call fastcc i32 @dump_glossary(ptr noundef %.0322, ptr noundef %.0320.lcssa)
  store volatile i32 %i.qe, ptr %i.j, align 4
  br label %.thread521

bb.jj:                                            ; preds = %bb.jh
  call void @capture_opts_trim_snaplen(ptr noundef @global_capture_opts, i32 noundef 1)
  call void @capture_opts_trim_ring_num_files(ptr noundef @global_capture_opts)
  br i1 %i.mx, label %bb.jm, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.qf = call fastcc zeroext i1 @_compile_dfilter(ptr noundef nonnull %.0329.lcssa, ptr noundef nonnull %i.s)
  br i1 %i.qf, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @epan_cleanup()
  call void @extcap_cleanup()
  call fastcc void @warn_about_capture_filter(ptr noundef nonnull %.0329.lcssa)
  store volatile i32 4, ptr %i.j, align 4
  br label %.thread521

bb.jm:                                            ; preds = %bb.jk, %bb.jj
  %i.qg = load ptr, ptr %i.s, align 8
  store ptr %i.qg, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 144), align 8
  %.0..0..0..0.219 = load volatile ptr, ptr %i.q, align 8
  %.not405 = icmp eq ptr %.0..0..0..0.219, null
  br i1 %.not405, label %bb.jp, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %.0..0..0..0.220 = load volatile ptr, ptr %i.q, align 8
  %i.qh = call fastcc zeroext i1 @_compile_dfilter(ptr noundef %.0..0..0..0.220, ptr noundef nonnull %i.t)
  br i1 %i.qh, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @epan_cleanup()
  call void @extcap_cleanup()
  %.0..0..0..0.221 = load volatile ptr, ptr %i.q, align 8
  call fastcc void @warn_about_capture_filter(ptr noundef %.0..0..0..0.221)
  store volatile i32 4, ptr %i.j, align 4
  br label %.thread521

bb.jp:                                            ; preds = %bb.jn, %bb.jm
  %i.qi = load ptr, ptr %i.t, align 8             ; 2 uses
  store ptr %i.qi, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 152), align 8
  call void @tap_load_main_filter(ptr noundef %i.qi)
  %.b357 = load i1, ptr @print_packet_info, align 1
  %i.qj = load i32, ptr @output_action, align 4
  %i.qk = icmp eq i32 %i.qj, 1
  %or.cond41 = select i1 %.b357, i1 %i.qk, i1 false
  br i1 %or.cond41, label %bb.jq, label %bb.jt

bb.jq:                                            ; preds = %bb.jp
  %.b364 = load i1, ptr @print_format, align 4
  %i.ql = load ptr, ptr @stdout, align 8          ; 2 uses
  br i1 %.b364, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.qm = call ptr @print_stream_text_stdio_new(ptr noundef %i.ql)
  br label %.sink.split

bb.js:                                            ; preds = %bb.jq
  %i.qn = call ptr @print_stream_ps_stdio_new(ptr noundef %i.ql)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.jr, %bb.js
  %.sink = phi ptr [ %i.qn, %bb.js ], [ %i.qm, %bb.jr ]
  store ptr %.sink, ptr @print_stream, align 8
  br label %bb.jt

bb.jt:                                            ; preds = %.sink.split, %bb.jp
  %.0..0..0..0.196 = load volatile ptr, ptr %i.u, align 8
  %.not406 = icmp eq ptr %.0..0..0..0.196, null
  br i1 %.not406, label %bb.kd, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %.0..0..0..0.197 = load volatile ptr, ptr %i.u, align 8
  %.0..0..0..0.222 = load volatile ptr, ptr %i.q, align 8
  %.0..0..0..0.233 = load volatile ptr, ptr %i.p, align 8
  %.not407 = icmp eq ptr %.0..0..0..0.233, null
  br i1 %.not407, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.153)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.jw:                                            ; preds = %bb.ju
  %i.qo = load ptr, ptr @output_file_name, align 8
  store volatile ptr %i.qo, ptr %i.v, align 8
  store ptr null, ptr @output_file_name, align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 224), align 8
  %.0..0..0..0.188 = load volatile ptr, ptr %i.v, align 8
  %i.qp = icmp eq ptr %.0..0..0..0.188, null
  br i1 %i.qp, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.154)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.jy:                                            ; preds = %bb.jw
  %i.qq = call ptr @exp_pdu_pre_open(ptr noundef %.0..0..0..0.197, ptr noundef %.0..0..0..0.222, ptr noundef nonnull %2) ; 3 uses
  %.not408 = icmp eq ptr %i.qq, null
  br i1 %.not408, label %sub_0565, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.155, ptr noundef nonnull %i.qq)
  call void @g_free(ptr noundef nonnull %i.qq)
  call fastcc void @list_export_pdu_taps()
  store volatile i32 2, ptr %i.j, align 4
  br label %.thread521

sub_0565:                                         ; preds = %bb.jy
  %.0..0..0..0.189 = load volatile ptr, ptr %i.v, align 8 ; 2 uses
  %i.qr = load i8, ptr %.0..0..0..0.189, align 1
  %.not706 = icmp eq i8 %i.qr, 45
  br i1 %.not706, label %.tail564, label %.tail564.thread

.tail564:                                         ; preds = %sub_0565
  %i.qs = getelementptr inbounds nuw i8, ptr %.0..0..0..0.189, i64 1
  %i.qt = load i8, ptr %i.qs, align 1
  %i.qu = icmp eq i8 %i.qt, 0
  br i1 %i.qu, label %bb.kb, label %.tail564.thread

.tail564.thread:                                  ; preds = %sub_0565, %.tail564
  %.0..0..0..0.190 = load volatile ptr, ptr %i.v, align 8
  %i.qv = call i32 (ptr, i32, ...) @open(ptr noundef %.0..0..0..0.190, i32 noundef 577, i32 noundef 420) ; 2 uses
  %i.qw = icmp eq i32 %i.qv, -1
  br i1 %i.qw, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %.tail564.thread
  %.0..0..0..0.191 = load volatile ptr, ptr %i.v, align 8
  %i.qx = call ptr @__errno_location() #21
  %i.qy = load i32, ptr %i.qx, align 4
  %i.qz = call ptr @file_open_error_message(i32 noundef %i.qy, i1 noundef zeroext true)
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.156, ptr noundef %.0..0..0..0.191, ptr noundef %i.qz)
  store volatile i32 3, ptr %i.j, align 4
  br label %.thread521

bb.kb:                                            ; preds = %.tail564, %.tail564.thread
  %.0297 = phi i32 [ %i.qv, %.tail564.thread ], [ 1, %.tail564 ]
  %.0..0..0..0.234 = load volatile ptr, ptr %i.p, align 8
  %i.ra = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.157, ptr noundef %.0..0..0..0.234) ; 2 uses
  %.0..0..0..0.192 = load volatile ptr, ptr %i.v, align 8
  %.0..0..0..0.251 = load volatile i32, ptr %i.m, align 4
  %i.rb = call zeroext i1 @exp_pdu_open(ptr noundef nonnull %2, ptr noundef %.0..0..0..0.192, i32 noundef %.0..0..0..0.251, i32 noundef %.0297, ptr noundef %i.ra, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  call void @g_free(ptr noundef %i.ra)
  br i1 %i.rb, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %.0..0..0..0.193 = load volatile ptr, ptr %i.v, align 8
  %i.rc = load i32, ptr %i.f, align 4
  %i.rd = load ptr, ptr %i.g, align 8
  %.0..0..0..0.252 = load volatile i32, ptr %i.m, align 4
  call void @report_cfile_dump_open_failure(ptr noundef %.0..0..0..0.193, i32 noundef %i.rc, ptr noundef %i.rd, i32 noundef %.0..0..0..0.252)
  store volatile i32 2, ptr %i.j, align 4
  br label %.thread521

bb.kd:                                            ; preds = %bb.kb, %bb.jt
  %.0..0..0..0.235 = load volatile ptr, ptr %i.p, align 8
  %.not409 = icmp eq ptr %.0..0..0..0.235, null
  br i1 %.not409, label %bb.li, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %.0..0..0..0.236 = load volatile ptr, ptr %i.p, align 8
  %.0..0..0..0.241 = load volatile i32, ptr %i.o, align 4
  %i.re = call i32 @cf_open(ptr noundef @cfile, ptr noundef %.0..0..0..0.236, i32 noundef %.0..0..0..0.241, i1 noundef zeroext false, ptr noundef nonnull %i.f)
  %.not421 = icmp eq i32 %i.re, 0
  br i1 %.not421, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @epan_cleanup()
  call void @extcap_cleanup()
  store volatile i32 3, ptr %i.j, align 4
  br label %.thread521

bb.kg:                                            ; preds = %bb.ke
  %i.rf = call zeroext i1 @start_requested_stats()
  br i1 %i.rf, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ki:                                            ; preds = %bb.kg
  %i.rg = load ptr, ptr %i.s, align 8
  %i.rh = load ptr, ptr %i.t, align 8
  %.0..0..0..0.198 = load volatile ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %.0..0..0..0.198, ptr %i.b, align 8
  %.b.i = load i1, ptr @print_packet_info, align 1
  %i.ri = icmp ne ptr %i.rg, null
  %or.cond.i498 = or i1 %i.ri, %.b.i
  %i.rj = icmp ne ptr %i.rh, null
  %or.cond3.i499 = or i1 %i.rj, %or.cond.i498
  br i1 %or.cond3.i499, label %must_do_dissection.exit, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8
  %.not.i500 = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not.i500, label %bb.kk, label %must_do_dissection.exit

bb.kk:                                            ; preds = %bb.kj
  %i.rk = call zeroext i1 @tap_listeners_require_dissection()
  %i.rl = zext i1 %i.rk to i8
  br label %must_do_dissection.exit

must_do_dissection.exit:                          ; preds = %bb.ki, %bb.kj, %bb.kk
  %i.rm = phi i8 [ 1, %bb.kj ], [ 1, %bb.ki ], [ %i.rl, %bb.kk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.rm, ptr @do_dissection, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store volatile i32 0, ptr %i.ac, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @except_setup_try(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef @main.catch_spec, i64 noundef 1)
  %i.rn = getelementptr inbounds nuw i8, ptr %5, i64 48
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.sq = load ptr, ptr @stderr, align 8
  %i.sr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.sq, i32 noundef 2, ptr noundef @.str.158) ; 0 uses
  store volatile i32 5, ptr %i.h, align 4
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %bb.kq, %bb.kp
  %.0..0..0..0.82 = load volatile i32, ptr %i.ac, align 4
  %i.ss = and i32 %.0..0..0..0.82, 1
  %.not425 = icmp eq i32 %i.ss, 0
  br i1 %.not425, label %bb.ku, label %bb.kw

bb.ku:                                            ; preds = %bb.kt
  %.0..0..0..0.86 = load volatile ptr, ptr %i.ab, align 8
  %.not426 = icmp eq ptr %.0..0..0..0.86, null
  br i1 %.not426, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %.0..0..0..0.87 = load volatile ptr, ptr %i.ab, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.87) #23
  unreachable

bb.kw:                                            ; preds = %bb.ku, %bb.kt
  %i.st = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.su = load volatile ptr, ptr %i.st, align 8
  call void @except_free(ptr noundef %i.su)
  %i.sv = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.0..0..0..0.272 = load volatile i32, ptr %i.h, align 4
  switch i32 %.0..0..0..0.272, label %bb.le [
    i32 0, label %bb.kx
    i32 1, label %bb.ky
    i32 2, label %bb.kz
    i32 3, label %bb.la
    i32 4, label %bb.lb
    i32 5, label %bb.lc
    i32 6, label %bb.ld
  ]

bb.kx:                                            ; preds = %bb.kw
  store volatile i8 1, ptr %i.i, align 1
  br label %bb.le

bb.ky:                                            ; preds = %bb.kw
  store volatile i32 9, ptr %i.j, align 4
  br label %bb.le

bb.kz:                                            ; preds = %bb.kw
  store volatile i8 1, ptr %i.i, align 1
  store volatile i32 14, ptr %i.j, align 4
  br label %bb.le

bb.la:                                            ; preds = %bb.kw
  store volatile i8 1, ptr %i.i, align 1
  store volatile i32 15, ptr %i.j, align 4
  br label %bb.le

bb.lb:                                            ; preds = %bb.kw
  store volatile i8 1, ptr %i.i, align 1
  store volatile i32 16, ptr %i.j, align 4
  br label %bb.le

bb.lc:                                            ; preds = %bb.kw
  store volatile i8 1, ptr %i.i, align 1
  store volatile i32 18, ptr %i.j, align 4
  br label %bb.le

bb.ld:                                            ; preds = %bb.kw
  store volatile i32 0, ptr %i.j, align 4
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw
  %.0..0..0..0.199 = load volatile ptr, ptr %i.u, align 8
  %.not427 = icmp eq ptr %.0..0..0..0.199, null
  br i1 %.not427, label %bb.mt, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.sw = call zeroext i1 @exp_pdu_close(ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br i1 %i.sw, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %.0..0..0..0.194 = load volatile ptr, ptr %i.v, align 8
  %i.sx = load i32, ptr %i.f, align 4
  %i.sy = load ptr, ptr %i.g, align 8
  call void @report_cfile_close_failure(ptr noundef %.0..0..0..0.194, i32 noundef %i.sx, ptr noundef %i.sy)
  store volatile i32 2, ptr %i.j, align 4
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.0..0..0..0.200 = load volatile ptr, ptr %i.u, align 8
  call void @g_free(ptr noundef %.0..0..0..0.200)
  %.0..0..0..0.195 = load volatile ptr, ptr %i.v, align 8
  call void @g_free(ptr noundef %.0..0..0..0.195)
  br label %bb.mt

bb.li:                                            ; preds = %bb.kd
  %i.sz = getelementptr i8, ptr %i.de, i64 168
  %i.ta = load ptr, ptr %i.sz, align 8            ; 3 uses
  %.not410 = icmp eq ptr %i.ta, null
  br i1 %.not410, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.tb = load i8, ptr %i.ta, align 1
  %.not411 = icmp eq i8 %i.tb, 0
  br i1 %.not411, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.tc = call ptr @get_if_name(ptr noundef nonnull %i.ta)
  br label %bb.ll

bb.ll:                                            ; preds = %bb.li, %bb.lj, %bb.lk
  %i.td = phi ptr [ %i.tc, %bb.lk ], [ null, %bb.lj ], [ null, %bb.li ]
  %i.te = call i32 @capture_opts_default_iface_if_necessary(ptr noundef @global_capture_opts, ptr noundef %i.td)
  store volatile i32 %i.te, ptr %i.j, align 4
  %.0..0..0..0.268 = load volatile i32, ptr %i.j, align 4
  %.not412 = icmp eq i32 %.0..0..0..0.268, 0
  br i1 %.not412, label %bb.lm, label %.thread521

bb.lm:                                            ; preds = %bb.ll
  br i1 %.not388, label %bb.lr, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  store volatile i32 0, ptr %i.j, align 4
  %i.tf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 8), align 8 ; 2 uses
  %i.tg = getelementptr i8, ptr %i.tf, i64 8
  %i.th = load i32, ptr %i.tg, align 8
  %.not707 = icmp eq i32 %i.th, 0
  br i1 %.not707, label %._crit_edge691, label %.lr.ph690

.lr.ph690:                                        ; preds = %bb.ln, %.lr.ph690
  %indvars.iv721 = phi i64 [ %indvars.iv.next722, %.lr.ph690 ], [ 0, %bb.ln ] ; 2 uses
  %i.ti = phi ptr [ %i.ts, %.lr.ph690 ], [ %i.tf, %bb.ln ]
  %.0295688 = phi ptr [ %i.tr, %.lr.ph690 ], [ null, %bb.ln ]
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = getelementptr [168 x i8], ptr %i.tj, i64 %indvars.iv721 ; 2 uses
  %i.tl = call noalias dereferenceable_or_null(32) ptr @g_malloc(i64 noundef 32) #24 ; 4 uses
  %i.tm = load ptr, ptr %i.tk, align 8
  store ptr %i.tm, ptr %i.tl, align 8
  %i.tn = getelementptr i8, ptr %i.tk, i64 148
  %i.to = load i8, ptr %i.tn, align 4, !range !8, !noundef !9
  %i.tp = getelementptr i8, ptr %i.tl, i64 8
  store i8 %i.to, ptr %i.tp, align 8
  %i.tq = getelementptr i8, ptr %i.tl, i64 16
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.tq, i8 0, i64 16, i1 false)
  %i.tr = call ptr @g_list_prepend(ptr noundef %.0295688, ptr noundef %i.tl) ; 2 uses
  %indvars.iv.next722 = add nuw nsw i64 %indvars.iv721, 1 ; 2 uses
  %i.ts = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 8), align 8 ; 2 uses
  %i.tt = getelementptr i8, ptr %i.ts, i64 8
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = zext i32 %i.tu to i64
  %i.tw = icmp samesign ult i64 %indvars.iv.next722, %i.tv
  br i1 %i.tw, label %.lr.ph690, label %._crit_edge691, !llvm.loop !17

._crit_edge691:                                   ; preds = %.lr.ph690, %bb.ln
  %.0295.lcssa = phi ptr [ null, %bb.ln ], [ %i.tr, %.lr.ph690 ]
  %i.tx = call ptr @g_list_reverse(ptr noundef %.0295.lcssa) ; 2 uses
  %i.ty = call ptr @capture_get_if_list_capabilities(ptr noundef %i.tx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef null) ; 2 uses
  call void @g_list_free_full(ptr noundef %i.tx, ptr noundef @g_free)
  %i.tz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 8), align 8 ; 2 uses
  %i.ua = getelementptr i8, ptr %i.tz, i64 8
  %i.ub = load i32, ptr %i.ua, align 8
  %.not708 = icmp eq i32 %i.ub, 0
  br i1 %.not708, label %.thread545, label %.lr.ph695

bb.lo:                                            ; preds = %bb.lq
  %indvars.iv.next725 = add nuw nsw i64 %indvars.iv724, 1 ; 2 uses
  %i.uc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 8), align 8 ; 2 uses
  %i.ud = getelementptr i8, ptr %i.uc, i64 8
  %i.ue = load i32, ptr %i.ud, align 8
  %i.uf = zext i32 %i.ue to i64
  %i.ug = icmp samesign ult i64 %indvars.iv.next725, %i.uf
  br i1 %i.ug, label %.lr.ph695, label %.thread545, !llvm.loop !18

.lr.ph695:                                        ; preds = %._crit_edge691, %bb.lo
  %indvars.iv724 = phi i64 [ %indvars.iv.next725, %bb.lo ], [ 0, %._crit_edge691 ] ; 2 uses
  %i.uh = phi ptr [ %i.uc, %bb.lo ], [ %i.tz, %._crit_edge691 ]
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = getelementptr [168 x i8], ptr %i.ui, i64 %indvars.iv724 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = call ptr @g_hash_table_lookup(ptr noundef %i.ty, ptr noundef %i.uk) ; 2 uses
  %i.um = icmp eq ptr %i.ul, null
  br i1 %i.um, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %.lr.ph695
  %i.un = load ptr, ptr %i.k, align 8
  %i.uo = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not420 = icmp eq ptr %i.uo, null              ; 2 uses
  %i.up = select i1 %.not420, ptr @.str.52, ptr @.str.160
  %i.uq = select i1 %.not420, ptr @.str.52, ptr %i.uo
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.159, ptr noundef %i.un, ptr noundef nonnull %i.up, ptr noundef nonnull %i.uq)
  %i.ur = load ptr, ptr %i.k, align 8
  call void @g_free(ptr noundef %i.ur)
  %i.us = load ptr, ptr %i.l, align 8
  call void @g_free(ptr noundef %i.us)
  store volatile i32 5, ptr %i.j, align 4
  br label %.thread545

bb.lq:                                            ; preds = %.lr.ph695
  %i.ut = call i32 @capture_opts_print_if_capabilities(ptr noundef nonnull %i.ul, ptr noundef %i.uj, i32 noundef %.0331.lcssa)
  store volatile i32 %i.ut, ptr %i.j, align 4
  %.0..0..0..0.269 = load volatile i32, ptr %i.j, align 4
  %.not419 = icmp eq i32 %.0..0..0..0.269, 0
  br i1 %.not419, label %bb.lo, label %.thread545

.thread545:                                       ; preds = %bb.lo, %bb.lq, %._crit_edge691, %bb.lp
  call void @g_hash_table_destroy(ptr noundef %i.ty)
  br label %.thread521

bb.lr:                                            ; preds = %bb.lm
  %i.uu = load ptr, ptr @stderr, align 8
  %i.uv = call i32 @fileno(ptr noundef %i.uu) #19
  %i.uw = call i32 @isatty(i32 noundef %i.uv) #19
  %.not413 = icmp eq i32 %i.uw, 0
  br i1 %.not413, label %bb.lv, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %.b356 = load i1, ptr @print_packet_info, align 1
  br i1 %.b356, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.ux = load ptr, ptr @stdout, align 8
  %i.uy = call i32 @fileno(ptr noundef %i.ux) #19
  %i.uz = call i32 @isatty(i32 noundef %i.uy) #19
  %.not414 = icmp eq i32 %i.uz, 0
  br i1 %.not414, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.b369 = load i1, ptr @quiet, align 1
  %not..b369 = xor i1 %.b369, true
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt, %bb.lr
  %.sink782 = phi i1 [ false, %bb.lr ], [ %not..b369, %bb.lu ], [ false, %bb.lt ]
  store i1 %.sink782, ptr @print_packet_counts, align 1
  %i.va = call zeroext i1 @start_requested_stats()
  br i1 %i.va, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.lx:                                            ; preds = %bb.lv
  %i.vb = load ptr, ptr %i.s, align 8
  %i.vc = load ptr, ptr %i.t, align 8
  %.0..0..0..0.201 = load volatile ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0.201, ptr %i.a, align 8
  %.b.i501 = load i1, ptr @print_packet_info, align 1
  %i.vd = icmp ne ptr %i.vb, null
  %or.cond.i502 = or i1 %i.vd, %.b.i501
  %i.ve = icmp ne ptr %i.vc, null
  %or.cond3.i503 = or i1 %i.ve, %or.cond.i502
  br i1 %or.cond3.i503, label %must_do_dissection.exit506, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %.0..0..0..0..0..0..i504 = load volatile ptr, ptr %i.a, align 8
  %.not.i505 = icmp eq ptr %.0..0..0..0..0..0..i504, null
  br i1 %.not.i505, label %bb.lz, label %must_do_dissection.exit506

bb.lz:                                            ; preds = %bb.ly
  %i.vf = call zeroext i1 @tap_listeners_require_dissection()
  br label %must_do_dissection.exit506

must_do_dissection.exit506:                       ; preds = %bb.lx, %bb.ly, %bb.lz
  %i.vg = phi i1 [ true, %bb.ly ], [ true, %bb.lx ], [ %i.vf, %bb.lz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.vh = zext i1 %i.vg to i8
  store i8 %i.vh, ptr @do_dissection, align 1
  %i.vi = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_capture_opts, i64 368), align 8, !range !8
  %i.vj = trunc nuw i8 %i.vi to i1
  %or.cond37 = select i1 %i.vg, i1 %i.vj, i1 false
  br i1 %or.cond37, label %bb.ma, label %bb.ml

bb.ma:                                            ; preds = %must_do_dissection.exit506
  %i.vk = call zeroext i1 @tap_listeners_require_dissection()
  br i1 %i.vk, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.161)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.mc:                                            ; preds = %bb.ma
  %.b355 = load i1, ptr @print_packet_info, align 1
  br i1 %.b355, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.162)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.me:                                            ; preds = %bb.mc
  %.0..0..0..0.202 = load volatile ptr, ptr %i.u, align 8
  %.not416 = icmp eq ptr %.0..0..0..0.202, null
  br i1 %.not416, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.163)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.mg:                                            ; preds = %bb.me
  %i.vl = load ptr, ptr %i.s, align 8
  %.not417 = icmp eq ptr %i.vl, null
  br i1 %.not417, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.164)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.mi:                                            ; preds = %bb.mg
  %i.vm = load ptr, ptr %i.t, align 8
  %.not418 = icmp eq ptr %i.vm, null
  br i1 %.not418, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.165)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.mk:                                            ; preds = %bb.mi
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.166)
  store volatile i32 1, ptr %i.j, align 4
  br label %.thread521

bb.ml:                                            ; preds = %must_do_dissection.exit506
  %.b354 = load i1, ptr @print_packet_info, align 1
  br i1 %.b354, label %bb.mm, label %bb.mo

bb.mm:                                            ; preds = %bb.ml
  %i.vn = call fastcc zeroext i1 @write_preamble()
  br i1 %i.vn, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  call fastcc void @show_print_file_io_error()
  store volatile i32 3, ptr %i.j, align 4
  br label %.thread521

bb.mo:                                            ; preds = %bb.mm, %bb.ml
  call fastcc void @capture()
  %i.vo = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_capture_session, i64 4), align 4
  store volatile i32 %i.vo, ptr %i.j, align 4
  %.b353 = load i1, ptr @print_packet_info, align 1
  br i1 %.b353, label %bb.mp, label %bb.mr

bb.mp:                                            ; preds = %bb.mo
  %i.vp = call fastcc zeroext i1 @write_finale()
  br i1 %i.vp, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  call fastcc void @show_print_file_io_error()
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mp, %bb.mq, %bb.mo
  %i.vq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 16), align 8
  %.not415 = icmp eq ptr %i.vq, null
  br i1 %.not415, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  store volatile i8 1, ptr %i.i, align 1
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mr, %bb.ms, %bb.le, %bb.lh
  %i.vr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 264), align 8 ; 2 uses
  %.not428 = icmp eq ptr %i.vr, null
  br i1 %.not428, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  call void @free_frame_data_sequence(ptr noundef nonnull %i.vr)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 264), align 8
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %.0..0..0..0.271 = load volatile i8, ptr %i.i, align 1, !range !8, !noundef !9
  %i.vs = trunc nuw i8 %.0..0..0..0.271 to i1
  br i1 %i.vs, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  call void @draw_tap_listeners(i1 noundef zeroext true)
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %.0..0..0..0.186 = load volatile ptr, ptr %i.w, align 8
  %.not429 = icmp eq ptr %.0..0..0..0.186, null
  br i1 %.not429, label %bb.nb, label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #19
  store i64 0, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #19
  store i32 0, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #19
  store ptr null, ptr %i.af, align 8
  %i.vt = call i32 @secrets_export(ptr noundef @.str.167, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae)
  %i.vu = icmp eq i32 %i.vt, 0
  %i.vv = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.vw = icmp ne i64 %i.vv, 0
  %or.cond39 = select i1 %i.vu, i1 %i.vw, i1 false
end_hunk_1
