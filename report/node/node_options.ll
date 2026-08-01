inline.NumInlined: 6623
inline.NumDeleted: 2684
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
@.str.383 = private unnamed_addr constant [32 x i8] c"--max-old-space-size-percentage\00", align 1
@.str.384 = private unnamed_addr constant [123 x i8] c"set V8's max old space size as a percentage of available memory (e.g., '50%'). Takes precedence over --max-old-space-size.\00", align 1
@.str.385 = private unnamed_addr constant [22 x i8] c"--max-semi-space-size\00", align 1
@.str.386 = private unnamed_addr constant [18 x i8] c"--perf-basic-prof\00", align 1
@.str.387 = private unnamed_addr constant [33 x i8] c"--perf-basic-prof-only-functions\00", align 1
@.str.388 = private unnamed_addr constant [12 x i8] c"--perf-prof\00", align 1
@.str.389 = private unnamed_addr constant [27 x i8] c"--perf-prof-unwinding-info\00", align 1
@.str.390 = private unnamed_addr constant [20 x i8] c"--stack-trace-limit\00", align 1
@.str.391 = private unnamed_addr constant [40 x i8] c"--disallow-code-generation-from-strings\00", align 1
@.str.392 = private unnamed_addr constant [26 x i8] c"disallow eval and friends\00", align 1
@.str.393 = private unnamed_addr constant [10 x i8] c"--jitless\00", align 1
@.str.394 = private unnamed_addr constant [48 x i8] c"disable runtime allocation of executable memory\00", align 1
@.str.395 = private unnamed_addr constant [28 x i8] c"--report-uncaught-exception\00", align 1
@.str.396 = private unnamed_addr constant [50 x i8] c"generate diagnostic report on uncaught exceptions\00", align 1
@.str.397 = private unnamed_addr constant [19 x i8] c"--report-on-signal\00", align 1
@.str.398 = private unnamed_addr constant [50 x i8] c"generate diagnostic report upon receiving signals\00", align 1
@.str.399 = private unnamed_addr constant [16 x i8] c"--report-signal\00", align 1
@.str.400 = private unnamed_addr constant [103 x i8] c"causes diagnostic report to be produced on provided signal, unsupported in Windows. (default: SIGUSR2)\00", align 1
@.str.401 = private unnamed_addr constant [27 x i8] c"--enable-etw-stack-walking\00", align 1
@.str.402 = private unnamed_addr constant [49 x i8] c"provides heap data to ETW Windows native tracing\00", align 1
@.str.403 = private unnamed_addr constant [31 x i8] c"--experimental-top-level-await\00", align 1
@.str.404 = private unnamed_addr constant [28 x i8] c"--experimental-shadow-realm\00", align 1
@.str.405 = private unnamed_addr constant [23 x i8] c"--harmony-shadow-realm\00", align 1
@.str.406 = private unnamed_addr constant [26 x i8] c"--no-harmony-shadow-realm\00", align 1
@.str.407 = private unnamed_addr constant [17 x i8] c"--build-snapshot\00", align 1
@.str.408 = private unnamed_addr constant [49 x i8] c"Generate a snapshot blob when the process exits.\00", align 1
@.str.409 = private unnamed_addr constant [24 x i8] c"--build-snapshot-config\00", align 1
@.str.410 = private unnamed_addr constant [97 x i8] c"Generate a snapshot blob when the process exits using aJSON configuration in the specified path.\00", align 1
@_ZTVN4node14options_parser23PerProcessOptionsParserE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEED2Ev, ptr @_ZN4node14options_parser23PerProcessOptionsParserD0Ev] }, comdat, align 8
@.str.411 = private unnamed_addr constant [8 x i8] c"--title\00", align 1
@.str.412 = private unnamed_addr constant [36 x i8] c"the process title to use on startup\00", align 1
@.str.413 = private unnamed_addr constant [25 x i8] c"--trace-event-categories\00", align 1
@.str.414 = private unnamed_addr constant [57 x i8] c"comma separated list of trace event categories to record\00", align 1
@.str.415 = private unnamed_addr constant [27 x i8] c"--trace-event-file-pattern\00", align 1
@.str.416 = private unnamed_addr constant [103 x i8] c"Template string specifying the filepath for the trace-events data, it supports ${rotation} and ${pid}.\00", align 1
@.str.417 = private unnamed_addr constant [23 x i8] c"--trace-events-enabled\00", align 1
@.str.418 = private unnamed_addr constant [25 x i8] c"v8,node,node.async_hooks\00", align 1
@.str.419 = private unnamed_addr constant [15 x i8] c"--v8-pool-size\00", align 1
@.str.420 = private unnamed_addr constant [26 x i8] c"set V8's thread pool size\00", align 1
@.str.421 = private unnamed_addr constant [20 x i8] c"--zero-fill-buffers\00", align 1
@.str.422 = private unnamed_addr constant [61 x i8] c"automatically zero-fill all newly allocated Buffer instances\00", align 1
@.str.423 = private unnamed_addr constant [32 x i8] c"--debug-arraybuffer-allocations\00", align 1
@.str.424 = private unnamed_addr constant [16 x i8] c"--disable-proto\00", align 1
@.str.425 = private unnamed_addr constant [35 x i8] c"disable Object.prototype.__proto__\00", align 1
@.str.426 = private unnamed_addr constant [16 x i8] c"--node-snapshot\00", align 1
@.str.427 = private unnamed_addr constant [16 x i8] c"--snapshot-blob\00", align 1
@.str.428 = private unnamed_addr constant [130 x i8] c"Path to the snapshot blob that's either the result of snapshotbuilding, or the blob that is used to restore the application state\00", align 1
@.str.429 = private unnamed_addr constant [18 x i8] c"--security-revert\00", align 1
@.str.430 = private unnamed_addr constant [19 x i8] c"--security-reverts\00", align 1
@.str.431 = private unnamed_addr constant [18 x i8] c"--completion-bash\00", align 1
@.str.432 = private unnamed_addr constant [41 x i8] c"print source-able bash completion script\00", align 1
@.str.433 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.434 = private unnamed_addr constant [32 x i8] c"print node command line options\00", align 1
@.str.435 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.436 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.437 = private unnamed_addr constant [22 x i8] c"print Node.js version\00", align 1
@.str.438 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.439 = private unnamed_addr constant [13 x i8] c"--v8-options\00", align 1
@.str.440 = private unnamed_addr constant [30 x i8] c"print V8 command line options\00", align 1
@.str.441 = private unnamed_addr constant [17 x i8] c"--report-compact\00", align 1
@.str.442 = private unnamed_addr constant [32 x i8] c"output compact single-line JSON\00", align 1
@.str.443 = private unnamed_addr constant [13 x i8] c"--report-dir\00", align 1
@.str.444 = private unnamed_addr constant [68 x i8] c"define custom report pathname. (default: current working directory)\00", align 1
@.str.445 = private unnamed_addr constant [19 x i8] c"--report-directory\00", align 1
@.str.446 = private unnamed_addr constant [18 x i8] c"--report-filename\00", align 1
@.str.447 = private unnamed_addr constant [77 x i8] c"define custom report file name. (default: YYYYMMDD.HHMMSS.PID.SEQUENCE#.txt)\00", align 1
@.str.448 = private unnamed_addr constant [23 x i8] c"--report-on-fatalerror\00", align 1
@.str.449 = private unnamed_addr constant [54 x i8] c"generate diagnostic report on fatal (internal) errors\00", align 1
@.str.450 = private unnamed_addr constant [15 x i8] c"--icu-data-dir\00", align 1
@.str.451 = private unnamed_addr constant [94 x i8] c"set ICU data load path to dir (overrides NODE_ICU_DATA) (note: linked-in ICU data is present)\00", align 1
@.str.452 = private unnamed_addr constant [17 x i8] c"--openssl-config\00", align 1
@.str.453 = private unnamed_addr constant [76 x i8] c"load OpenSSL configuration from the specified file (overrides OPENSSL_CONF)\00", align 1
@.str.454 = private unnamed_addr constant [18 x i8] c"--tls-cipher-list\00", align 1
@.str.455 = private unnamed_addr constant [43 x i8] c"use an alternative default TLS cipher list\00", align 1
@.str.456 = private unnamed_addr constant [17 x i8] c"--use-openssl-ca\00", align 1
@.str.457 = private unnamed_addr constant [31 x i8] c"use OpenSSL's default CA store\00", align 1
@.str.458 = private unnamed_addr constant [17 x i8] c"--use-bundled-ca\00", align 1
@.str.459 = private unnamed_addr constant [31 x i8] c"use bundled CA store (default)\00", align 1
@.str.460 = private unnamed_addr constant [25 x i8] c"[ssl_openssl_cert_store]\00", align 1
@.str.461 = private unnamed_addr constant [14 x i8] c"--enable-fips\00", align 1
@.str.462 = private unnamed_addr constant [30 x i8] c"enable FIPS crypto at startup\00", align 1
@.str.463 = private unnamed_addr constant [13 x i8] c"--force-fips\00", align 1
@.str.464 = private unnamed_addr constant [39 x i8] c"force FIPS crypto (cannot be disabled)\00", align 1
@.str.465 = private unnamed_addr constant [14 x i8] c"--secure-heap\00", align 1
@.str.466 = private unnamed_addr constant [38 x i8] c"total size of the OpenSSL secure heap\00", align 1
@.str.467 = private unnamed_addr constant [18 x i8] c"--secure-heap-min\00", align 1
@.str.468 = private unnamed_addr constant [53 x i8] c"minimum allocation size from the OpenSSL secure heap\00", align 1
@.str.469 = private unnamed_addr constant [26 x i8] c"--openssl-legacy-provider\00", align 1
@.str.470 = private unnamed_addr constant [35 x i8] c"enable OpenSSL 3.0 legacy provider\00", align 1
@.str.471 = private unnamed_addr constant [24 x i8] c"--openssl-shared-config\00", align 1
@.str.472 = private unnamed_addr constant [36 x i8] c"enable OpenSSL shared configuration\00", align 1
@.str.473 = private unnamed_addr constant [17 x i8] c"--use-largepages\00", align 1
@.str.474 = private unnamed_addr constant [204 x i8] c"Map the Node.js static code to large pages. Options are 'off' (the default value, meaning do not map), 'on' (map and ignore failure, reporting it to stderr), or 'silent' (map and silently ignore failure)\00", align 1
@.str.475 = private unnamed_addr constant [15 x i8] c"--trace-sigint\00", align 1
@.str.476 = private unnamed_addr constant [48 x i8] c"enable printing JavaScript stacktrace on SIGINT\00", align 1
@.str.477 = private unnamed_addr constant [20 x i8] c"--node-memory-debug\00", align 1
@.str.478 = private unnamed_addr constant [63 x i8] c"Run with extra debug checks for memory leaks in Node.js itself\00", align 1
@.str.479 = private unnamed_addr constant [26 x i8] c"--experimental-sea-config\00", align 1
@.str.480 = private unnamed_addr constant [76 x i8] c"Generate a blob that can be embedded into the single executable application\00", align 1
@.str.481 = private unnamed_addr constant [6 x i8] c"--run\00", align 1
@.str.482 = private unnamed_addr constant [39 x i8] c"Run a script specified in package.json\00", align 1
@.str.483 = private unnamed_addr constant [28 x i8] c"--disable-wasm-trap-handler\00", align 1
@.str.484 = private unnamed_addr constant [148 x i8] c"Disable trap-handler-based WebAssembly bound checks. V8 will insert inline bound checks when compiling WebAssembly which may slow down performance.\00", align 1
@.str.485 = private unnamed_addr constant [12 x i8] c"--build-sea\00", align 1
@.str.486 = private unnamed_addr constant [46 x i8] c"Build a Node.js single executable application\00", align 1
@.str.487 = private unnamed_addr constant [152 x i8] c"_node_complete() {\0A  local cur_word options\0A  cur_word=\22${COMP_WORDS[COMP_CWORD]}\22\0A  if [[ \22${cur_word}\22 == -* ]] ; then\0A    COMPREPLY=( $(compgen -W '\00", align 1
@.str.488 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.489 = private unnamed_addr constant [186 x i8] c"' -- \22${cur_word}\22) )\0A    return 0\0A  else\0A    COMPREPLY=( $(compgen -f \22${cur_word}\22) )\0A    return 0\0A  fi\0A}\0Acomplete -o filenames -o nospace -o bashdefault -F _node_complete node node_g\00", align 1
@.str.490 = private unnamed_addr constant [54 x i8] c"Should not query options before bootstrapping is done\00", align 1
@.str.491 = private unnamed_addr constant [5 x i8] c"--no\00", align 1
@_ZZN4node14options_parser19GetCLIOptionsValuesERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.492, ptr @.str.493, ptr @.str.494 }, align 8
@.str.492 = private unnamed_addr constant [31 x i8] c"../../src/node_options.cc:1771\00", align 1
@.str.493 = private unnamed_addr constant [27 x i8] c"\22Unreachable code reached\22\00", align 1
@.str.494 = private unnamed_addr constant [84 x i8] c"void node::options_parser::GetCLIOptionsValues(const FunctionCallbackInfo<Value> &)\00", align 1
@_ZZN4node14options_parser19GetCLIOptionsValuesERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.495, ptr @.str.496, ptr @.str.494 }, align 8
@.str.495 = private unnamed_addr constant [31 x i8] c"../../src/node_options.cc:1773\00", align 1
@.str.496 = private unnamed_addr constant [17 x i8] c"!value.IsEmpty()\00", align 1
@.str.497 = private unnamed_addr constant [27 x i8] c"shouldNotRegisterESMLoader\00", align 1
@.str.498 = private unnamed_addr constant [20 x i8] c"noGlobalSearchPaths\00", align 1
@.str.499 = private unnamed_addr constant [17 x i8] c"noBrowserGlobals\00", align 1
@.str.500 = private unnamed_addr constant [19 x i8] c"hasEmbedderPreload\00", align 1
@.str.501 = private unnamed_addr constant [6 x i8] c"--no-\00", align 1
@.str.502 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.503 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZZN4node14options_parser17GetOptionsAsFlagsERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.504, ptr @.str.505, ptr @.str.506 }, align 8
@.str.504 = private unnamed_addr constant [31 x i8] c"../../src/node_options.cc:2100\00", align 1
@.str.505 = private unnamed_addr constant [43 x i8] c"ToV8Value(context, flags).ToLocal(&result)\00", align 1
@.str.506 = private unnamed_addr constant [82 x i8] c"void node::options_parser::GetOptionsAsFlags(const FunctionCallbackInfo<Value> &)\00", align 1
@.str.507 = private unnamed_addr constant [20 x i8] c"getCLIOptionsValues\00", align 1
@.str.508 = private unnamed_addr constant [18 x i8] c"getCLIOptionsInfo\00", align 1
@.str.509 = private unnamed_addr constant [18 x i8] c"getOptionsAsFlags\00", align 1
@.str.510 = private unnamed_addr constant [19 x i8] c"getEmbedderOptions\00", align 1
@.str.511 = private unnamed_addr constant [23 x i8] c"getEnvOptionsInputType\00", align 1
@.str.512 = private unnamed_addr constant [29 x i8] c"getNamespaceOptionsInputType\00", align 1
@.str.513 = private unnamed_addr constant [17 x i8] c"kAllowedInEnvvar\00", align 1
@.str.514 = private unnamed_addr constant [20 x i8] c"kDisallowedInEnvvar\00", align 1
@.str.515 = private unnamed_addr constant [12 x i8] c"envSettings\00", align 1
@.str.516 = private unnamed_addr constant [6 x i8] c"kNoOp\00", align 1
@.str.517 = private unnamed_addr constant [10 x i8] c"kV8Option\00", align 1
@.str.518 = private unnamed_addr constant [9 x i8] c"kBoolean\00", align 1
@.str.519 = private unnamed_addr constant [9 x i8] c"kInteger\00", align 1
@.str.520 = private unnamed_addr constant [10 x i8] c"kUInteger\00", align 1
@.str.521 = private unnamed_addr constant [8 x i8] c"kString\00", align 1
@.str.522 = private unnamed_addr constant [10 x i8] c"kHostPort\00", align 1
@.str.523 = private unnamed_addr constant [12 x i8] c"kStringList\00", align 1
@.str.524 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.525 = private unnamed_addr constant [25 x i8] c"NODE_PENDING_DEPRECATION\00", align 1
@.str.527 = private unnamed_addr constant [23 x i8] c"NODE_PRESERVE_SYMLINKS\00", align 1
@.str.528 = private unnamed_addr constant [28 x i8] c"NODE_PRESERVE_SYMLINKS_MAIN\00", align 1
@.str.529 = private unnamed_addr constant [19 x i8] c"NODE_USE_ENV_PROXY\00", align 1
@.str.530 = private unnamed_addr constant [19 x i8] c"NODE_USE_SYSTEM_CA\00", align 1
@.str.531 = private unnamed_addr constant [23 x i8] c"NODE_REDIRECT_WARNINGS\00", align 1
@.str.532 = private unnamed_addr constant [49 x i8] c"invalid value for NODE_OPTIONS (invalid escape)\0A\00", align 1
@.str.533 = private unnamed_addr constant [54 x i8] c"invalid value for NODE_OPTIONS (unterminated string)\0A\00", align 1
@_ZL7_module = internal global %"struct.node::node_module" { i32 141, i32 4, ptr null, ptr @.str.569, ptr null, ptr @_ZN4node14options_parser10InitializeEN2v85LocalINS1_6ObjectEEENS2_INS1_5ValueEEENS2_INS1_7ContextEEEPv, ptr @.str.570, ptr null, ptr null }, align 8
@_ZTVN4node18EnvironmentOptionsE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node18EnvironmentOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_, ptr @_ZN4node18EnvironmentOptionsD2Ev, ptr @_ZN4node18EnvironmentOptionsD0Ev] }, align 8
@_ZTVN4node12DebugOptionsE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node12DebugOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_, ptr @_ZN4node12DebugOptionsD2Ev, ptr @_ZN4node12DebugOptionsD0Ev] }, align 8
@_ZTVN4node17PerIsolateOptionsE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node17PerIsolateOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_, ptr @_ZN4node17PerIsolateOptionsD2Ev, ptr @_ZN4node17PerIsolateOptionsD0Ev] }, align 8
@_ZTVN4node17PerProcessOptionsE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node17PerProcessOptions12CheckOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESA_, ptr @_ZN4node17PerProcessOptionsD2Ev, ptr @_ZN4node17PerProcessOptionsD0Ev] }, align 8
@.str.534 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.535 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.536 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.537 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.538 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping = linkonce_odr dso_local local_unnamed_addr constant <{ [93 x i8], [163 x i8] }> <{ [93 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [163 x i8] zeroinitializer }>, comdat, align 16
@_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE7escaped = linkonce_odr dso_local local_unnamed_addr constant [32 x %"struct.simdjson::(anonymous namespace)::escape_sequence"] [%"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0000\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0001\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0002\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0003\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0004\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0005\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0006\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0007\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\b\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\t\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\n\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u000b\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\f\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\r\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u000e\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u000f\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0010\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0011\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0012\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0013\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0014\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0015\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0016\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0017\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0018\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0019\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001a\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001b\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001c\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001d\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001e\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001f\00" }], comdat, align 16
@.str.543 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.544 = private unnamed_addr constant [27 x i8] c"node_trace.${rotation}.log\00", align 1
@.str.545 = private unnamed_addr constant [417 x i8] c"TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_GCM_SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-SHA256:DHE-RSA-AES128-SHA256:ECDHE-RSA-AES256-SHA384:DHE-RSA-AES256-SHA384:ECDHE-RSA-AES256-SHA256:DHE-RSA-AES256-SHA256:HIGH:!aNULL:!eNULL:!EXPORT:!DES:!RC4:!MD5:!PSK:!SRP:!CAMELLIA\00", align 1
@.str.546 = private unnamed_addr constant [8 x i8] c"SIGUSR2\00", align 1
@.str.547 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@.str.548 = private unnamed_addr constant [12 x i8] c"stderr,http\00", align 1
@.str.549 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt15_Sp_counted_ptrIPN4node17PerIsolateOptionsELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerIsolateOptionsELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerIsolateOptionsELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerIsolateOptionsELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerIsolateOptionsELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.550 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN4node14options_parser13OptionsParserINS_12DebugOptionsEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEED2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEED0Ev] }, comdat, align 8
@_ZTVZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE7ConvertINS1_INS_12DebugOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEE12AdaptedField = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE7ConvertINS1_INS_12DebugOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEEN12AdaptedFieldD2Ev, ptr @_ZZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE7ConvertINS1_INS_12DebugOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEEN12AdaptedFieldD0Ev, ptr @_ZZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE7ConvertINS1_INS_12DebugOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEENK12AdaptedField10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE7ConvertINS2_INS0_12DebugOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE7ConvertINS2_INS0_12DebugOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE7ConvertINS2_INS0_12DebugOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE7ConvertINS2_INS0_12DebugOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE7ConvertINS2_INS0_12DebugOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEED2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEED0Ev] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEED2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEED0Ev] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerProcessOptionsEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEED2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEED0Ev] }, comdat, align 8
@.str.551 = private unnamed_addr constant [37 x i8] c"must be 0 or in range 1024 to 65535.\00", align 1
@.str.552 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.553 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.556 = private unnamed_addr constant [6 x i8] c"watch\00", align 1
@.str.557 = private unnamed_addr constant [11 x i8] c"permission\00", align 1
@.str.558 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.559 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.560 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.561 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.562 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.563 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@_ZZN4node14options_parserL21AddOptionTypeToObjectEPN2v87IsolateENS1_5LocalINS1_7ContextEEENS4_INS1_6ObjectEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_20OptionMappingDetailsEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.564, ptr @.str.493, ptr @.str.565 }, align 8
@.str.564 = private unnamed_addr constant [30 x i8] c"../../src/node_options.cc:349\00", align 1
@.str.565 = private unnamed_addr constant [142 x i8] c"bool node::options_parser::AddOptionTypeToObject(Isolate *, Local<Context>, Local<Object>, const std::string &, const OptionMappingDetails &)\00", align 1
@.str.566 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.567 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.568 = private unnamed_addr constant [68 x i8] c"basic_string::at: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.569 = private unnamed_addr constant [26 x i8] c"../../src/node_options.cc\00", align 1
@.str.570 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@_ZZN4node9MutexBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.571, ptr @.str.572, ptr @.str.573 }, comdat, align 8
@.str.571 = private unnamed_addr constant [27 x i8] c"../../src/node_mutex.h:254\00", align 1
@.str.572 = private unnamed_addr constant [37 x i8] c"(0) == (Traits::mutex_init(&mutex_))\00", align 1
@.str.573 = private unnamed_addr constant [87 x i8] c"node::MutexBase<node::LibuvMutexTraits>::MutexBase() [Traits = node::LibuvMutexTraits]\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN4node17PerProcessOptionsELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerProcessOptionsELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerProcessOptionsELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerProcessOptionsELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN4node17PerProcessOptionsELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@.str.574 = private unnamed_addr constant [7 x i8] c" <arg>\00", align 1
@.str.575 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@_ZZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.576, ptr @.str.493, ptr @.str.577 }, comdat, align 8
@.str.576 = private unnamed_addr constant [33 x i8] c"../../src/node_options-inl.h:513\00", align 1
@.str.577 = private unnamed_addr constant [275 x i8] c"void node::options_parser::OptionsParser<node::DebugOptions>::Parse(std::vector<std::string> *const, std::vector<std::string> *const, std::vector<std::string> *const, Options *const, OptionEnvvarSettings, std::vector<std::string> *const) const [Options = node::DebugOptions]\00", align 1
@.str.578 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.579 = private unnamed_addr constant [32 x i8] c" is not allowed in NODE_OPTIONS\00", align 1
@.str.581 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.582 = private unnamed_addr constant [59 x i8] c" is an invalid negation because it is not a boolean option\00", align 1
@.str.583 = private unnamed_addr constant [22 x i8] c" requires an argument\00", align 1
@_ZZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.576, ptr @.str.493, ptr @.str.584 }, comdat, align 8
@.str.584 = private unnamed_addr constant [285 x i8] c"void node::options_parser::OptionsParser<node::PerIsolateOptions>::Parse(std::vector<std::string> *const, std::vector<std::string> *const, std::vector<std::string> *const, Options *const, OptionEnvvarSettings, std::vector<std::string> *const) const [Options = node::PerIsolateOptions]\00", align 1
@_ZZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE5ParseEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_SD_PS2_NS_20OptionEnvvarSettingsESD_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.576, ptr @.str.493, ptr @.str.585 }, comdat, align 8
@.str.585 = private unnamed_addr constant [285 x i8] c"void node::options_parser::OptionsParser<node::PerProcessOptions>::Parse(std::vector<std::string> *const, std::vector<std::string> *const, std::vector<std::string> *const, Options *const, OptionEnvvarSettings, std::vector<std::string> *const) const [Options = node::PerProcessOptions]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINS0_8HostPortEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINS0_8HostPortEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINS0_8HostPortEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINS0_8HostPortEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINS0_8HostPortEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldINS_8HostPortEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldINS_8HostPortEED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldINS_8HostPortEE10LookupImplEPS2_] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldIbEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldIbED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldIbE10LookupImplEPS2_] }, comdat, align 8
@_ZZN4node14options_parser13OptionsParserINS_12DebugOptionsEE7ImpliesEPKcS5_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.586, ptr @.str.587, ptr @.str.588 }, comdat, align 8
@.str.586 = private unnamed_addr constant [33 x i8] c"../../src/node_options-inl.h:181\00", align 1
@.str.587 = private unnamed_addr constant [25 x i8] c"(it) != (options_.end())\00", align 1
@.str.588 = private unnamed_addr constant [129 x i8] c"void node::options_parser::OptionsParser<node::DebugOptions>::Implies(const char *, const char *) [Options = node::DebugOptions]\00", align 1
@_ZZN4node14options_parser13OptionsParserINS_12DebugOptionsEE7ImpliesEPKcS5_E20error_and_abort_args_0 = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.589, ptr @.str.590, ptr @.str.588 }, comdat, align 8
@.str.589 = private unnamed_addr constant [33 x i8] c"../../src/node_options-inl.h:182\00", align 1
@.str.590 = private unnamed_addr constant [60 x i8] c"it->second.type == kBoolean || it->second.type == kV8Option\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_12DebugOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldIbEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldIbED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldIbE10LookupImplEPS2_] }, comdat, align 8
@_ZZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE7ImpliesEPKcS5_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.586, ptr @.str.587, ptr @.str.591 }, comdat, align 8
@.str.591 = private unnamed_addr constant [141 x i8] c"void node::options_parser::OptionsParser<node::EnvironmentOptions>::Implies(const char *, const char *) [Options = node::EnvironmentOptions]\00", align 1
@_ZZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE7ImpliesEPKcS5_E20error_and_abort_args_0 = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.589, ptr @.str.590, ptr @.str.591 }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldImEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldImEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldImEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldImEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldImED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldImE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_18EnvironmentOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldIlEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldIlED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_18EnvironmentOptionsEE17SimpleOptionFieldIlE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldIbEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldIbED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldIbE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldIlEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldIlED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE17SimpleOptionFieldIlE10LookupImplEPS2_] }, comdat, align 8
@_ZZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE7ImpliesEPKcS5_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.586, ptr @.str.587, ptr @.str.592 }, comdat, align 8
@.str.592 = private unnamed_addr constant [139 x i8] c"void node::options_parser::OptionsParser<node::PerIsolateOptions>::Implies(const char *, const char *) [Options = node::PerIsolateOptions]\00", align 1
@_ZZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE7ImpliesEPKcS5_E20error_and_abort_args_0 = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.589, ptr @.str.590, ptr @.str.592 }, comdat, align 8
@_ZZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE10ImpliesNotEPKcS5_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.593, ptr @.str.587, ptr @.str.594 }, comdat, align 8
@.str.593 = private unnamed_addr constant [33 x i8] c"../../src/node_options-inl.h:191\00", align 1
@.str.594 = private unnamed_addr constant [142 x i8] c"void node::options_parser::OptionsParser<node::PerIsolateOptions>::ImpliesNot(const char *, const char *) [Options = node::PerIsolateOptions]\00", align 1
@_ZZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE10ImpliesNotEPKcS5_E20error_and_abort_args_0 = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.595, ptr @.str.596, ptr @.str.594 }, comdat, align 8
@.str.595 = private unnamed_addr constant [33 x i8] c"../../src/node_options-inl.h:192\00", align 1
@.str.596 = private unnamed_addr constant [32 x i8] c"(it->second.type) == (kBoolean)\00", align 1
@_ZTVZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE7ConvertINS1_INS_18EnvironmentOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEE12AdaptedField = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE7ConvertINS1_INS_18EnvironmentOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEEN12AdaptedFieldD2Ev, ptr @_ZZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE7ConvertINS1_INS_18EnvironmentOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEEN12AdaptedFieldD0Ev, ptr @_ZZN4node14options_parser13OptionsParserINS_17PerIsolateOptionsEE7ConvertINS1_INS_18EnvironmentOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEENK12AdaptedField10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE7ConvertINS2_INS0_18EnvironmentOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE7ConvertINS2_INS0_18EnvironmentOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE7ConvertINS2_INS0_18EnvironmentOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE7ConvertINS2_INS0_18EnvironmentOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerIsolateOptionsEE7ConvertINS2_INS0_18EnvironmentOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldIlEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldIlED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldIlE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldIbEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldIbED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldIbE10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE15BaseOptionFieldD2Ev, ptr @_ZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEED0Ev, ptr @_ZNK4node14options_parser13OptionsParserINS_17PerProcessOptionsEE17SimpleOptionFieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE10LookupImplEPS2_] }, comdat, align 8
@_ZZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE7ImpliesEPKcS5_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.586, ptr @.str.587, ptr @.str.597 }, comdat, align 8
@.str.597 = private unnamed_addr constant [139 x i8] c"void node::options_parser::OptionsParser<node::PerProcessOptions>::Implies(const char *, const char *) [Options = node::PerProcessOptions]\00", align 1
@_ZZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE7ImpliesEPKcS5_E20error_and_abort_args_0 = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.589, ptr @.str.590, ptr @.str.597 }, comdat, align 8
@_ZZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE10ImpliesNotEPKcS5_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.593, ptr @.str.587, ptr @.str.598 }, comdat, align 8
@.str.598 = private unnamed_addr constant [142 x i8] c"void node::options_parser::OptionsParser<node::PerProcessOptions>::ImpliesNot(const char *, const char *) [Options = node::PerProcessOptions]\00", align 1
@_ZZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE10ImpliesNotEPKcS5_E20error_and_abort_args_0 = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.595, ptr @.str.596, ptr @.str.598 }, comdat, align 8
@_ZTVZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE7ConvertINS1_INS_17PerIsolateOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEE12AdaptedField = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE7ConvertINS1_INS_17PerIsolateOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEEN12AdaptedFieldD2Ev, ptr @_ZZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE7ConvertINS1_INS_17PerIsolateOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEEN12AdaptedFieldD0Ev, ptr @_ZZN4node14options_parser13OptionsParserINS_17PerProcessOptionsEE7ConvertINS1_INS_17PerIsolateOptionsEE15BaseOptionFieldES5_EEDaSt10shared_ptrIT_EMS2_FPT0_vEENK12AdaptedField10LookupImplEPS2_] }, comdat, align 8
@_ZTVSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE7ConvertINS2_INS0_17PerIsolateOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE7ConvertINS2_INS0_17PerIsolateOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE7ConvertINS2_INS0_17PerIsolateOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE7ConvertINS2_INS0_17PerIsolateOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPZN4node14options_parser13OptionsParserINS0_17PerProcessOptionsEE7ConvertINS2_INS0_17PerIsolateOptionsEE15BaseOptionFieldES6_EEDaSt10shared_ptrIT_EMS3_FPT0_vEE12AdaptedFieldLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.599 = private unnamed_addr constant [33 x i8] c"ERR_OPTIONS_BEFORE_BOOTSTRAPPING\00", align 1
@.str.600 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.605 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm128EE25AllocateSufficientStorageEmE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.606, ptr @.str.607, ptr @.str.608 }, comdat, align 8
@.str.606 = private unnamed_addr constant [25 x i8] c"../../src/util-inl.h:555\00", align 1
@.str.607 = private unnamed_addr constant [17 x i8] c"!IsInvalidated()\00", align 1
@.str.608 = private unnamed_addr constant [142 x i8] c"void node::MaybeStackBuffer<v8::Local<v8::Value>, 128>::AllocateSufficientStorage(size_t) [T = v8::Local<v8::Value>, kStackStorageSize = 128]\00", align 1
@_ZZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_mE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.609, ptr @.str.610, ptr @.str.611 }, comdat, align 8
@.str.609 = private unnamed_addr constant [25 x i8] c"../../src/util-inl.h:293\00", align 1
@.str.610 = private unnamed_addr constant [29 x i8] c"!(n > 0) || (ret != nullptr)\00", align 1
@.str.611 = private unnamed_addr constant [57 x i8] c"T *node::Realloc(T *, size_t) [T = v8::Local<v8::Value>]\00", align 1
@_ZZN4node25MultiplyWithOverflowCheckImEET_S1_S1_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.612, ptr @.str.613, ptr @.str.614 }, comdat, align 8
@.str.612 = private unnamed_addr constant [25 x i8] c"../../src/util-inl.h:246\00", align 1
@.str.613 = private unnamed_addr constant [17 x i8] c"(b) == (ret / a)\00", align 1
@.str.614 = private unnamed_addr constant [60 x i8] c"T node::MultiplyWithOverflowCheck(T, T) [T = unsigned long]\00", align 1
@_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm128EE9SetLengthEmE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.615, ptr @.str.616, ptr @.str.617 }, comdat, align 8
@.str.615 = private unnamed_addr constant [21 x i8] c"../../src/util.h:448\00", align 1
@.str.616 = private unnamed_addr constant [25 x i8] c"(length) <= (capacity())\00", align 1
@.str.617 = private unnamed_addr constant [126 x i8] c"void node::MaybeStackBuffer<v8::Local<v8::Value>, 128>::SetLength(size_t) [T = v8::Local<v8::Value>, kStackStorageSize = 128]\00", align 1
@_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm128EEixEmE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.618, ptr @.str.619, ptr @.str.620 }, comdat, align 8
@.str.618 = private unnamed_addr constant [21 x i8] c"../../src/util.h:421\00", align 1
@.str.619 = private unnamed_addr constant [21 x i8] c"(index) < (length())\00", align 1
@.str.620 = private unnamed_addr constant [125 x i8] c"T &node::MaybeStackBuffer<v8::Local<v8::Value>, 128>::operator[](size_t) [T = v8::Local<v8::Value>, kStackStorageSize = 128]\00", align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_node_options.cc, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E], section "llvm.metadata"

@_ZN4node14options_parser18DebugOptionsParserC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4node14options_parser18DebugOptionsParserC2Ev
@_ZN4node14options_parser24EnvironmentOptionsParserC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4node14options_parser24EnvironmentOptionsParserC2Ev
@_ZN4node14options_parser23PerIsolateOptionsParserC1ERKNS0_24EnvironmentOptionsParserE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4node14options_parser23PerIsolateOptionsParserC2ERKNS0_24EnvironmentOptionsParserE
@_ZN4node14options_parser23PerProcessOptionsParserC1ERKNS0_23PerIsolateOptionsParserE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4node14options_parser23PerProcessOptionsParserC2ERKNS0_23PerIsolateOptionsParserE

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.simdjson::fractured_json_options", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 120, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 80, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store double 8.000000e-01, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 10, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 81
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 1, ptr %i.l, align 2
  call void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.simdjson::dom::element", align 8 ; 3 uses
  %5 = alloca %"class.simdjson::internal::fractured_string_builder", align 8 ; 15 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %5, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store ptr %5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 64, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i32 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @_ZN8simdjson8internal24fractured_string_builder6appendERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.j = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.k = load i64, ptr %i.c, align 8              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8
  %i.m = icmp eq ptr %i.j, null
  %i.n = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.534) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.k, 15
  br i1 %i.o, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = icmp slt i64 %i.k, 0
  br i1 %i.p, label %bb.e, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN4node16HandleEnvOptionsESt10shared_ptrINS_18EnvironmentOptionsEESt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  %i.bo = load i64, ptr %i.bl, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %.pre36, i64 noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.530, ptr %i.b, align 8, !noalias !519
  %i.bq = load ptr, ptr %i.g, align 8, !noalias !519
  %.not.i.i22 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i22, label %bb.j, label %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit23

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  call void @_ZSt25__throw_bad_function_callv() #27, !noalias !519
  unreachable

_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.br = load ptr, ptr %i.i, align 8, !noalias !519
  call void %i.br(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26, !inline_history !509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 1
  %.pre37 = load ptr, ptr %6, align 8             ; 3 uses
  br i1 %i.bu, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25

bb.k:                                             ; preds = %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit23
  %lhsc57 = load i8, ptr %.pre37, align 1
  %i.bv = icmp eq i8 %lhsc57, 49
  %i.bw = zext i1 %i.bv to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25: ; preds = %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit23, %bb.k
  %i.bx = phi i8 [ 0, %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit23 ], [ %i.bw, %bb.k ]
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 963
  store i8 %i.bx, ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %.pre37, %i.ca
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %i.cc = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.cc)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %i.cd = load i64, ptr %i.ca, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %.pre37, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 504
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.531, ptr %i.a, align 8, !noalias !522
  %i.cj = load ptr, ptr %i.g, align 8, !noalias !522
  %.not.i.i29 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i29, label %bb.m, label %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit30

bb.m:                                             ; preds = %bb.l
  call void @_ZSt25__throw_bad_function_callv() #27, !noalias !522
  unreachable

_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit30: ; preds = %bb.l
  %i.ck = load ptr, ptr %i.i, align 8, !noalias !522
  call void %i.ck(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26, !inline_history !509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cl = load ptr, ptr %0, align 8               ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 496 ; 5 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 512 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  %i.cq = load ptr, ptr %7, align 8               ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit30
  br i1 %i.cs, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEclES7_.exit30
  br i1 %i.cs, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %.not21.i = icmp eq ptr %7, %i.cm
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.o, !prof !5

bb.o:                                             ; preds = %bb.n
  switch i64 %i.cu, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.cw = load i8, ptr %i.cq, align 1
  store i8 %i.cw, ptr %i.cn, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.cq, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.cx = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 504
  store i64 %i.cx, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %i.cm, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1
  %.pre.i = load ptr, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 504
  store ptr %i.cq, ptr %i.cm, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = load <2 x i64>, ptr %i.dc, align 8
  store <2 x i64> %i.dd, ptr %i.db, align 8
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.de = load i64, ptr %i.co, align 8
  store ptr %i.cq, ptr %i.cm, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cl, i64 504
  %i.dh = load <2 x i64>, ptr %i.df, align 8
  store <2 x i64> %i.dh, ptr %i.dg, align 8
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cn, ptr %7, align 8
  store i64 %i.de, ptr %i.cr, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cr, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.r, %bb.s
  %i.di = phi ptr [ %i.cn, %bb.r ], [ %i.cr, %bb.s ], [ %i.cq, %bb.n ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.dj, align 8
  store i8 0, ptr %i.di, align 1
  %i.dk = load ptr, ptr %7, align 8               ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dn = load i64, ptr %i.dl, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node22ParseNodeOptionsEnvVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not77.not = icmp eq i64 %i.b, 0
  br i1 %.not77.not, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit.lr.ph

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit.lr.ph, %bb.n
  %i.h = phi i64 [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit.lr.ph ], [ %i.bx, %bb.n ] ; 3 uses
  %.02780 = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit.lr.ph ], [ %i.bw, %bb.n ] ; 5 uses
  %.02979 = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit.lr.ph ], [ %.231.ph, %bb.n ] ; 2 uses
  %.03278 = phi i8 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit.lr.ph ], [ %.133.ph, %bb.n ] ; 4 uses
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.02780
  %i.k = load i8, ptr %i.j, align 1               ; 4 uses
  %i.l = icmp eq i8 %i.k, 92
  %i.m = trunc nuw i8 %.03278 to i1               ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.n = add nuw i64 %.02780, 1                   ; 5 uses
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.q = call noalias noundef nonnull dereferenceable(49) ptr @_Znwm(i64 noundef 49) #28 ; 3 uses
  store ptr %i.q, ptr %3, align 8
  store i64 48, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.q, ptr noundef nonnull align 1 dereferenceable(48) @.str.532, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 48, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.u, align 8
  %i.y = load ptr, ptr %3, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.p
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.r, align 8             ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.y, ptr %i.u, align 8
  %i.ad = load i64, ptr %i.p, align 8
  store i64 %i.ad, ptr %i.x, align 8
  %.pre86 = load i64, ptr %i.r, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ae = phi i64 [ %.pre86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  store i64 0, ptr %i.r, align 8
  %i.ag = load ptr, ptr %i.t, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.ah, ptr %i.t, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre87 = load ptr, ptr %3, align 8             ; 2 uses
  %i.ai = icmp eq ptr %.pre87, %i.p
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aj = load i64, ptr %i.p, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre87, i64 noundef %i.ak) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

6:                                                ; preds = %bb.b
  %.not.i39 = icmp ult i64 %i.n, %i.h
  br i1 %.not.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit40, label %7

7:                                                ; preds = %6
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.568, i64 noundef %i.n, i64 noundef %i.h) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit40: ; preds = %6
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.am = load i8, ptr %i.al, align 1
  br label %bb.h

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.an = icmp ne i8 %i.k, 32
  %or.cond3 = select i1 %i.an, i1 true, i1 %i.m
  br i1 %or.cond3, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq i8 %i.k, 34
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = xor i8 %.03278, 1
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit40
  %.128 = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit40 ], [ %.02780, %bb.f ] ; 2 uses
  %.0 = phi i8 [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit40 ], [ %i.k, %bb.f ] ; 2 uses
  br i1 %.02979, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.d, ptr %4, align 8
  store i8 %.0, ptr %i.d, align 8
  store i64 1, ptr %i.e, align 8
  store i8 0, ptr %i.f, align 1
  %i.aq = load ptr, ptr %i.c, align 8             ; 6 uses
  %i.ar = load ptr, ptr %i.g, align 8
  %.not.i41 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i41, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %4, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.av = load i64, ptr %i.e, align 8             ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.at, ptr %i.aq, align 8
  %i.ay = load i64, ptr %i.d, align 8
  store i64 %i.ay, ptr %i.as, align 8
  %.pre = load i64, ptr %i.e, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.az = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.av, %bb.k ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.az, ptr %i.ba, align 8
  store ptr %i.d, ptr %4, align 8
  store i64 0, ptr %i.e, align 8
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.bc, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.pre85.a = load ptr, ptr %4, align 8           ; 2 uses
  %i.bd = icmp eq ptr %.pre85.a, %i.d
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.be = load i64, ptr %i.d, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %.pre85.a, i64 noundef %i.bf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -32 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 4 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 -16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.l
  %i.bo = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.l
  %i.bp = load i64, ptr %i.bm, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bq = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.br = icmp ugt i64 %i.bk, %i.bq
  br i1 %i.br, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.bj, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.bh, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.m
  %i.bs = phi ptr [ %.pre.i.i, %bb.m ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bj
  store i8 %.0, ptr %i.bt, align 1
  store i64 %i.bk, ptr %i.bi, align 8
  %i.bu = load ptr, ptr %i.bh, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bk
  store i8 0, ptr %i.bv, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.133.ph = phi i8 [ %.03278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.03278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.ap, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %.231.ph = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %.02979, %bb.g ], [ true, %bb.e ]
  %.2.ph = phi i64 [ %.128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %.02780, %bb.g ], [ %.02780, %bb.e ]
  %i.bw = add nuw i64 %.2.ph, 1                   ; 2 uses
  %i.bx = load i64, ptr %i.a, align 8             ; 2 uses
  %.not = icmp ult i64 %i.bw, %i.bx
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, label %._crit_edge, !llvm.loop !525

._crit_edge:                                      ; preds = %bb.n
  %i.by = trunc nuw i8 %.133.ph to i1
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i47, label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i47: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ca = call noalias noundef nonnull dereferenceable(54) ptr @_Znwm(i64 noundef 54) #28 ; 3 uses
  store ptr %i.ca, ptr %5, align 8
  store i64 53, ptr %i.bz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.ca, ptr noundef nonnull align 1 dereferenceable(53) @.str.533, i64 53, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 53, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 53
  store i8 0, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %.not.i.i49 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i.i49, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i47
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.ce, align 8
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bz
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50

bb.p:                                             ; preds = %bb.o
  %i.ck = load i64, ptr %i.cb, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.bz, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50: ; preds = %bb.o
  store ptr %i.ci, ptr %i.ce, align 8
  %i.cn = load i64, ptr %i.bz, align 8
  store i64 %i.cn, ptr %i.ch, align 8
  %.pre88 = load i64, ptr %i.cb, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50
  %i.co = phi i64 [ %.pre88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50 ], [ %i.ck, %bb.p ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.co, ptr %i.cp, align 8
  store i64 0, ptr %i.cb, align 8
  %i.cq = load ptr, ptr %i.cd, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.cr, ptr %i.cd, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i47
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre89 = load ptr, ptr %5, align 8             ; 2 uses
  %i.cs = icmp eq ptr %.pre89, %i.bz
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52
  %i.ct = load i64, ptr %i.bz, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %.pre89, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit52.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.critedge
end_hunk_1
