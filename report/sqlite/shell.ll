Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
@.str.23 = private unnamed_addr constant [15 x i8] c"ieee754_to_int\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"ieee754_from_int\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ieee754_inc\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"generate_series() requires SQLite 3.8.12 or later\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"generate_series\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"regexpi\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"readfile\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"writefile\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"lsmode\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"realpath\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sqlar_compress\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"sqlar_uncompress\00", align 1
@.str.37 = private unnamed_addr constant [77 x i8] c"SELECT name,type,enc,narg,flags FROM pragma_function_list() WHERE builtin==0\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"utf16le\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"utf16be\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@.str.44 = private unnamed_addr constant [159 x i8] c"SELECT sql, name, substr(sql,1,14)=='create virtual' COLLATE nocase FROM sqlite_schema WHERE substr(name,1,7)!='sqlite_' COLLATE nocase ORDER BY 3 DESC, rowid\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"Cannot find a unique index name to propose.\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"%s;%s%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" -- stat1: \00", align 1
@.str.48 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"parse_create_index\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"corruption found while reading database schema\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"corruption found while scanning database object %s\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"stmtrand\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"%s.enabled_for(\22%s\22)\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@stdout_tty_width = internal unnamed_addr global i32 -1, align 4
@.str.58 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"Start-Of-SQLite3-\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"%.zip\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [39 x i8] c"Error: sqlite3_close() returns %d: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"SQL error: %s\0A\00", align 1
@stdin_is_interactive = internal unnamed_addr global i32 1, align 4
@stdout_is_console = internal unnamed_addr global i32 1, align 4
@.str.64 = private unnamed_addr constant [19 x i8] c"SQLITE_DEBUG_BREAK\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"attach debugger to process %d and press ENTER to continue...\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.67 = private unnamed_addr constant [85 x i8] c"2026-07-24 19:02:57 bf7c7f30031888f4e796e429ab3978879485813aaca6f641c7b33e4e09459bcc\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"SQLite header and source version mismatch\0A%s\0A%s\0A\00", align 1
@Argv0 = internal unnamed_addr global ptr null, align 8
@.str.70 = private unnamed_addr constant [11 x i8] c"-separator\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"-nullvalue\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"-newline\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"-cmd\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"-init\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"-interactive\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"-batch\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"-screenwidth\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"minimum --screenwidth is 2\0A\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"-utf8\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"-no-utf8\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"-no-rowid-in-view\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"-heap\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"-pagecache\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.84 = private unnamed_addr constant [68 x i8] c"Page cache size increased to %d to accommodate the %d-byte headers\0A\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"-lookaside\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"-threadsafe\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"-vfstrace\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"-mmap\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"-vfs\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"-zip\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"-append\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"-deserialize\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"-maxsize\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"-readonly\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"-nofollow\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"-noinit\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"-exclusive\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"-ifexists\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"-memtrace\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"-pcachetrace\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"-bail\00", align 1
@bail_on_error = internal unnamed_addr global i32 0, align 4
@.str.103 = private unnamed_addr constant [7 x i8] c"-nonce\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"-unsafe-testing\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"-safe\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"-escape\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"-test-argv\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"argv[%d] = \22%s\22\0A\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"could not load extension VFS \22%s\22: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"no such VFS: \22%s\22\0A\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"-html\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"-list\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"-quote\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"-line\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"-column\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"-json\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"-markdown\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"-table\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"-psql\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"-box\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"-csv\00", align 1
@qrfEscNames = internal unnamed_addr constant [4 x ptr] [ptr @.str.849, ptr @.str.850, ptr @.str.851, ptr @.str.852], align 16
@.str.123 = private unnamed_addr constant [54 x i8] c"unknown control character escape mode \22%s\22 - choices:\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"-ascii\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"-tabs\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"-header\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"-noheader\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"-echo\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"-eqp\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"-eqpfull\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"-stats\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"-scanstats\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"-backslash\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"%s %s (%d-bit)\0A\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"cmdline\00", align 1
@.str.140 = private unnamed_addr constant [57 x i8] c"Error: cannot mix regular SQL or dot-commands with \22%s\22\0A\00", align 1
@.str.141 = private unnamed_addr constant [31 x i8] c"%s: Error: unknown option: %s\0A\00", align 1
@.str.142 = private unnamed_addr constant [34 x i8] c"Use -help for a list of options.\0A\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"argv[%i]:\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"<cmdline>\00", align 1
@.str.145 = private unnamed_addr constant [56 x i8] c"SQLite version %s %.19s\0AEnter \22.help\22 for usage hints.\0A\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"Connected to a \00", align 1
@.str.147 = private unnamed_addr constant [29 x i8] c"transient in-memory database\00", align 1
@.str.148 = private unnamed_addr constant [60 x i8] c".\0AUse \22.open FILENAME\22 to reopen on a persistent database.\0A\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"SQLITE_HISTORY\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"XDG_STATE_HOME\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c".local/state\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"sqlite_history\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"%s/.sqlite_history\00", align 1
@rl_attempted_completion_function = external local_unnamed_addr global ptr, align 8
@.str.154 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.155 = private unnamed_addr constant [31 x i8] c"%d test%s run with %d error%s\0A\00", align 1
@aQrfUWidth = internal unnamed_addr constant [303 x { i8, [3 x i8], i32 }] [{ i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 768 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 880 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1155 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1159 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1160 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1162 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1425 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1470 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1471 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1472 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1473 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1475 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1476 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1478 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1479 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1480 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1536 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1540 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1552 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1558 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1611 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1631 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1648 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1649 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1750 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1765 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1767 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1769 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1770 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1774 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1807 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1808 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1809 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1810 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1840 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1867 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 1958 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 1969 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2027 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2036 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2305 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2307 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2364 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2365 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2369 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2377 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2381 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2382 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2385 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2389 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2402 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2404 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2433 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2434 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2492 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2493 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2497 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2501 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2509 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2510 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2530 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2532 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2561 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2563 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2620 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2621 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2625 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2627 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2631 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2633 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2635 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2638 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2672 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2674 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2689 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2691 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2748 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2749 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2753 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2758 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2759 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2761 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2765 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2766 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2786 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2788 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2817 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2818 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2876 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2877 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2879 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2880 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2881 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2884 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2893 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2894 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2902 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2903 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 2946 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 2947 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3008 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3009 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3021 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3022 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3134 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3137 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3142 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3145 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3146 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3150 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3157 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3159 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3260 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3261 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3263 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3264 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3270 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3271 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3276 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3278 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3298 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3300 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3393 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3396 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3405 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3406 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3530 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3531 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3538 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3541 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3542 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3543 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3633 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3634 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3636 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3643 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3655 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3663 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3761 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3762 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3764 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3770 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3771 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3773 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3784 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3790 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3864 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3866 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3893 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3894 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3895 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3896 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3897 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3898 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3953 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3967 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3968 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3973 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3974 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3976 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3984 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 3992 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 3993 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4029 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4038 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4039 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4141 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4145 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4146 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4147 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4150 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4155 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4184 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4186 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 4352 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4448 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4608 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 4959 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 4960 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 5906 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 5909 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 5938 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 5941 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 5970 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 5972 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6002 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6004 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6068 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6070 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6071 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6078 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6086 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6087 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6089 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6100 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6109 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6110 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6155 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6158 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6313 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6314 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6432 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6435 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6439 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6441 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6450 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6451 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6457 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6460 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6679 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6681 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6912 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6916 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6964 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6965 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6966 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6971 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6972 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6973 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 6978 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 6979 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 7019 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 7028 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 7616 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 7627 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 7678 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 7680 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8203 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8208 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8234 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8239 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8288 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8292 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8298 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8304 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 8400 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 8432 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 9001 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 9003 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 11904 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 12330 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 12336 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 12351 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 12352 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 12441 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 12443 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 42192 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 43014 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 43015 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 43019 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 43020 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 43045 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 43047 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 44032 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 55204 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 63744 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 64256 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 64286 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 64287 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65024 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65040 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65050 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65056 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65060 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65072 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65136 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65279 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65280 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65377 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 65504 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65511 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 65529 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 65532 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68097 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68100 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68101 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68103 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68108 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68112 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68152 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68155 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 68159 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 68160 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119143 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119146 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119155 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119171 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119173 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119180 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119210 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119214 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 119362 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 119365 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 131072 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 196606 }, { i8, [3 x i8], i32 } { i8 2, [3 x i8] zeroinitializer, i32 196608 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 262142 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 917505 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 917506 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 917536 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 917632 }, { i8, [3 x i8], i32 } { i8 0, [3 x i8] zeroinitializer, i32 917760 }, { i8, [3 x i8], i32 } { i8 1, [3 x i8] zeroinitializer, i32 918000 }], align 16
@.str.157 = private unnamed_addr constant [40 x i8] c"unusable sqlite3_qrf_spec.iVersion (%d)\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"\E2\94\82 \00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c" \E2\94\82 \00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c" \E2\94\82\0A\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"\E2\94\82\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"\E2\94\82\0A\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"\E2\95\AD\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"\E2\94\AC\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"\E2\95\AE\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c" |\0A\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@qrfColumnar.zSpace = internal constant [6 x i8] c"     \00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"\E2\95\9E\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"\E2\95\AA\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"\E2\95\A1\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"\E2\94\9C\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"\E2\94\BC\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"\E2\94\A4\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"\E2\95\B0\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"\E2\94\B4\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"\E2\95\AF\00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c"%Q\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"%#Q\00", align 1
@qrfCsvQuote = internal unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str.190 = private unnamed_addr constant [5 x i8] c"\22%w\22\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.196 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.200 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.202 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.203 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@qrfCType = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\04\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", [133 x i8] zeroinitializer }>, align 16
@.str.208 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"jsonb(\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.211 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"(%d-byte blob)\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"SELECT json(?1)\00", align 1
@.str.215 = private unnamed_addr constant [31 x i8] c"\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\00", align 1
@.str.216 = private unnamed_addr constant [31 x i8] c"\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\00", align 1
@__const.qrfBoxLine.azDash = private unnamed_addr constant [2 x ptr] [ptr @.str.215, ptr @.str.216], align 16
@.str.217 = private unnamed_addr constant [35 x i8] c"Failed to write %d bytes of output\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"Next\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"Prev\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"VPrev\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"VNext\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"SorterNext\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"Return\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"Yield\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"SeekLT\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"SeekGT\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"RowSetRead\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"Rewind\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"Goto\00", align 1
@qrfExplain.aExplainWidth = internal unnamed_addr constant [8 x i32] [i32 4, i32 13, i32 4, i32 4, i32 4, i32 13, i32 2, i32 13], align 16
@qrfExplain.aExplainMap = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@qrfExplain.aScanExpWidth = internal unnamed_addr constant [10 x i32] [i32 4, i32 15, i32 6, i32 13, i32 4, i32 4, i32 4, i32 13, i32 2, i32 13], align 16
@qrfExplain.aScanExpMap = internal unnamed_addr constant [10 x i32] [i32 0, i32 9, i32 8, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@.str.230 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"%.*c\00", align 1
@.str.232 = private unnamed_addr constant [383 x i8] c"  SELECT addr, opcode, p1, p2, p3, p4, p5, comment, nexec,   format('% 6s (%.2f%%)',      CASE WHEN ncycle<100_000 THEN ncycle || ' '         WHEN ncycle<100_000_000 THEN (ncycle/1_000) || 'K'         WHEN ncycle<100_000_000_000 THEN (ncycle/1_000_000) || 'M'         ELSE (ncycle/1000_000_000) || 'G' END,       ncycle*100.0/(sum(ncycle) OVER ())   )  AS cycles   FROM bytecode(?1)\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"stmt-pointer\00", align 1
@.str.234 = private unnamed_addr constant [28 x i8] c"not available in this build\00", align 1
@.str.235 = private unnamed_addr constant [3 x i8] c"[{\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"},\0A{\00", align 1
@.str.237 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"}\0A{\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"<TR>\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"\0A<TH>\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"\0A</TR>\0A\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"\0A<TD>\00", align 1
@.str.243 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.244 = private unnamed_addr constant [17 x i8] c"INSERT INTO \22%w\22\00", align 1
@.str.245 = private unnamed_addr constant [15 x i8] c"INSERT INTO %s\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"%c\22%w\22\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.248 = private unnamed_addr constant [9 x i8] c" VALUES(\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c",\0A  (\00", align 1
@.str.250 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.252 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.260 = private unnamed_addr constant [12 x i8] c"QUERY PLAN\0A\00", align 1
@.str.265 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"|--\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"`--\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.271 = private unnamed_addr constant [4 x i8] c"}]\0A\00", align 1
@.str.272 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.273 = private unnamed_addr constant [29 x i8] c"MEMTRACE: allocate %d bytes\0A\00", align 1
@.str.274 = private unnamed_addr constant [25 x i8] c"MEMTRACE: free %d bytes\0A\00", align 1
@.str.275 = private unnamed_addr constant [33 x i8] c"MEMTRACE: resize %d -> %d bytes\0A\00", align 1
@ersaztPcacheMethods = internal global { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr null, ptr @pcachetraceInit, ptr @pcachetraceShutdown, ptr @pcachetraceCreate, ptr @pcachetraceCachesize, ptr @pcachetracePagecount, ptr @pcachetraceFetch, ptr @pcachetraceUnpin, ptr @pcachetraceRekey, ptr @pcachetraceTruncate, ptr @pcachetraceDestroy, ptr @pcachetraceShrink }, align 8
@.str.277 = private unnamed_addr constant [24 x i8] c"PCACHETRACE: xInit(%p)\0A\00", align 1
@.str.278 = private unnamed_addr constant [30 x i8] c"PCACHETRACE: xInit(%p) -> %d\0A\00", align 1
@.str.279 = private unnamed_addr constant [28 x i8] c"PCACHETRACE: xShutdown(%p)\0A\00", align 1
@.str.280 = private unnamed_addr constant [32 x i8] c"PCACHETRACE: xCreate(%d,%d,%d)\0A\00", align 1
@.str.281 = private unnamed_addr constant [38 x i8] c"PCACHETRACE: xCreate(%d,%d,%d) -> %p\0A\00", align 1
@.str.282 = private unnamed_addr constant [33 x i8] c"PCACHETRACE: xCachesize(%p, %d)\0A\00", align 1
@.str.283 = private unnamed_addr constant [29 x i8] c"PCACHETRACE: xPagecount(%p)\0A\00", align 1
@.str.284 = private unnamed_addr constant [35 x i8] c"PCACHETRACE: xPagecount(%p) -> %d\0A\00", align 1
@.str.285 = private unnamed_addr constant [31 x i8] c"PCACHETRACE: xFetch(%p,%u,%d)\0A\00", align 1
@.str.286 = private unnamed_addr constant [37 x i8] c"PCACHETRACE: xFetch(%p,%u,%d) -> %p\0A\00", align 1
@.str.287 = private unnamed_addr constant [33 x i8] c"PCACHETRACE: xUnpin(%p, %p, %d)\0A\00", align 1
@.str.288 = private unnamed_addr constant [37 x i8] c"PCACHETRACE: xRekey(%p, %p, %u, %u)\0A\00", align 1
@.str.289 = private unnamed_addr constant [32 x i8] c"PCACHETRACE: xTruncate(%p, %u)\0A\00", align 1
@.str.290 = private unnamed_addr constant [27 x i8] c"PCACHETRACE: xDestroy(%p)\0A\00", align 1
@.str.291 = private unnamed_addr constant [26 x i8] c"PCACHETRACE: xShrink(%p)\0A\00", align 1
@.str.292 = private unnamed_addr constant [44 x i8] c"SHA3 size should be one of: 224 256 384 512\00", align 1
@KeccakF1600Step.RC = internal unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 16
@.str.293 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"T%d:\00", align 1
@.str.295 = private unnamed_addr constant [5 x i8] c"B%d:\00", align 1
@.str.296 = private unnamed_addr constant [29 x i8] c"error SQL statement [%s]: %s\00", align 1
@.str.297 = private unnamed_addr constant [16 x i8] c"non-query: [%s]\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"S%d:\00", align 1
@.str.299 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@hash_finish.zEncode = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.300 = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.302 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.303 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"e%+03d\00", align 1
@.str.306 = private unnamed_addr constant [32 x i8] c"blob expanded to base64 too big\00", align 1
@.str.307 = private unnamed_addr constant [32 x i8] c"blob from base64 may be too big\00", align 1
@.str.308 = private unnamed_addr constant [33 x i8] c"base64 accepts only blob or text\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"base64 OOM\00", align 1
@b64Numerals = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@fromBase64.nboi = internal unnamed_addr constant [5 x i8] c"\00\00\01\02\03", align 1
@b64DigitValues = internal unnamed_addr constant [128 x i8] c"\82\82\82\82\82\82\82\82\82\81\81\81\81\81\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\82\82\82\82\82\82\82\82\82\82>\82\82\82?456789:;<=\82\82\82\80\82\82\82\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\82\82\82\82\82\82\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\82\82\82\82\82", align 16
@.str.310 = private unnamed_addr constant [36 x i8] c"is_base85 accepts only text or NULL\00", align 1
@.str.311 = private unnamed_addr constant [32 x i8] c"blob expanded to base85 too big\00", align 1
@.str.312 = private unnamed_addr constant [32 x i8] c"blob from base85 may be too big\00", align 1
@.str.313 = private unnamed_addr constant [34 x i8] c"base85 accepts only blob or text.\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"base85 OOM\00", align 1
@fromBase85.nboi = internal unnamed_addr constant [6 x i8] c"\00\00\01\02\03\04", align 1
@b85_cOffset = internal unnamed_addr constant [5 x i8] c"\00#\00&\00", align 1
@.str.315 = private unnamed_addr constant [17 x i8] c"ieee754(%lld,%d)\00", align 1
@seriesModule = internal global { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr null, ptr @seriesConnect, ptr @seriesBestIndex, ptr @seriesDisconnect, ptr null, ptr @seriesOpen, ptr @seriesClose, ptr @seriesFilter, ptr @seriesNext, ptr @seriesEof, ptr @seriesColumn, ptr @seriesRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.317 = private unnamed_addr constant [59 x i8] c"CREATE TABLE x(value,start hidden,stop hidden,step hidden)\00", align 1
@.str.318 = private unnamed_addr constant [58 x i8] c"first argument to \22generate_series()\22 missing or unusable\00", align 1
@.str.319 = private unnamed_addr constant [23 x i8] c"REGEXP pattern too big\00", align 1
@.str.320 = private unnamed_addr constant [23 x i8] c"unrecognized character\00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"unmatched '('\00", align 1
@.str.322 = private unnamed_addr constant [20 x i8] c"'*' without operand\00", align 1
@.str.323 = private unnamed_addr constant [20 x i8] c"'+' without operand\00", align 1
@.str.324 = private unnamed_addr constant [20 x i8] c"'?' without operand\00", align 1
@.str.325 = private unnamed_addr constant [24 x i8] c"'{m,n}' without operand\00", align 1
@.str.326 = private unnamed_addr constant [14 x i8] c"unmatched '{'\00", align 1
@.str.327 = private unnamed_addr constant [25 x i8] c"n less than m in '{m,n}'\00", align 1
@.str.328 = private unnamed_addr constant [33 x i8] c"both m and n are zero in '{m,n}'\00", align 1
@.str.329 = private unnamed_addr constant [38 x i8] c"POSIX character classes not supported\00", align 1
@.str.330 = private unnamed_addr constant [13 x i8] c"unclosed '['\00", align 1
@re_esc_char.zTrans = internal unnamed_addr constant [7 x i8] c"\07\0C\0A\0D\09\0B\00", align 1
@.str.331 = private unnamed_addr constant [17 x i8] c"unknown \\ escape\00", align 1
@.str.332 = private unnamed_addr constant [50 x i8] c"wrong number of arguments to function writefile()\00", align 1
@.str.333 = private unnamed_addr constant [29 x i8] c"failed to create symlink: %s\00", align 1
@.str.334 = private unnamed_addr constant [31 x i8] c"failed to create directory: %s\00", align 1
@.str.335 = private unnamed_addr constant [25 x i8] c"failed to write file: %s\00", align 1
@.str.336 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@fsdirRegister.fsdirModule = internal global { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr null, ptr @fsdirConnect, ptr @fsdirBestIndex, ptr @fsdirDisconnect, ptr null, ptr @fsdirOpen, ptr @fsdirClose, ptr @fsdirFilter, ptr @fsdirNext, ptr @fsdirEof, ptr @fsdirColumn, ptr @fsdirRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.337 = private unnamed_addr constant [6 x i8] c"fsdir\00", align 1
@.str.338 = private unnamed_addr constant [66 x i8] c"CREATE TABLE x(name,mode,mtime,data,level,path HIDDEN,dir HIDDEN)\00", align 1
@.str.339 = private unnamed_addr constant [42 x i8] c"table function fsdir requires an argument\00", align 1
@.str.340 = private unnamed_addr constant [50 x i8] c"table function fsdir requires a non-NULL argument\00", align 1
@.str.341 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.342 = private unnamed_addr constant [21 x i8] c"cannot stat file: %s\00", align 1
@.str.343 = private unnamed_addr constant [26 x i8] c"cannot read directory: %s\00", align 1
@.str.344 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.345 = private unnamed_addr constant [5 x i8] c"%z%s\00", align 1
@.str.346 = private unnamed_addr constant [6 x i8] c"%z/%s\00", align 1
@completionModule = internal global { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr null, ptr @completionConnect, ptr @completionBestIndex, ptr @completionDisconnect, ptr null, ptr @completionOpen, ptr @completionClose, ptr @completionFilter, ptr @completionNext, ptr @completionEof, ptr @completionColumn, ptr @completionRowid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.348 = private unnamed_addr constant [97 x i8] c"CREATE TABLE x(  candidate TEXT,  prefix TEXT HIDDEN,  wholeline TEXT HIDDEN,  phase INT HIDDEN)\00", align 1
@.str.349 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.350 = private unnamed_addr constant [21 x i8] c"PRAGMA database_list\00", align 1
@.str.351 = private unnamed_addr constant [38 x i8] c"%sSELECT name FROM \22%w\22.sqlite_schema\00", align 1
@.str.352 = private unnamed_addr constant [8 x i8] c" UNION \00", align 1
@.str.353 = private unnamed_addr constant [113 x i8] c"%sSELECT pti.name FROM \22%w\22.sqlite_schema AS sm JOIN pragma_table_xinfo(sm.name,%Q) AS pti WHERE sm.type='table'\00", align 1
@.str.354 = private unnamed_addr constant [8 x i8] c"apndvfs\00", align 1
@apnd_vfs = internal global { i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 3, i32 0, i32 1024, [4 x i8] zeroinitializer, ptr null, ptr @.str.354, ptr null, ptr @apndOpen, ptr @apndDelete, ptr @apndAccess, ptr @apndFullPathname, ptr @apndDlOpen, ptr @apndDlError, ptr @apndDlSym, ptr @apndDlClose, ptr @apndRandomness, ptr @apndSleep, ptr @apndCurrentTime, ptr @apndGetLastError, ptr @apndCurrentTimeInt64, ptr @apndSetSystemCall, ptr @apndGetSystemCall, ptr @apndNextSystemCall }, align 8
@apnd_io_methods = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @apndClose, ptr @apndRead, ptr @apndWrite, ptr @apndTruncate, ptr @apndSync, ptr @apndFileSize, ptr @apndLock, ptr @apndUnlock, ptr @apndCheckReservedLock, ptr @apndFileControl, ptr @apndSectorSize, ptr @apndDeviceCharacteristics, ptr @apndShmMap, ptr @apndShmLock, ptr @apndShmBarrier, ptr @apndShmUnmap, ptr @apndFetch, ptr @apndUnfetch }, align 8
@.str.357 = private unnamed_addr constant [14 x i8] c"apnd(%lld)/%z\00", align 1
@zipfileRegister.zipfileModule = internal global { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @zipfileConnect, ptr @zipfileConnect, ptr @zipfileBestIndex, ptr @zipfileDisconnect, ptr @zipfileDisconnect, ptr @zipfileOpen, ptr @zipfileClose, ptr @zipfileFilter, ptr @zipfileNext, ptr @zipfileEof, ptr @zipfileColumn, ptr null, ptr @zipfileUpdate, ptr @zipfileBegin, ptr null, ptr @zipfileCommit, ptr @zipfileRollback, ptr @zipfileFindFunction, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.358 = private unnamed_addr constant [8 x i8] c"zipfile\00", align 1
@.str.359 = private unnamed_addr constant [12 x i8] c"zipfile_cds\00", align 1
@.str.360 = private unnamed_addr constant [42 x i8] c"zipfile constructor requires one argument\00", align 1
@ZIPFILE_SCHEMA = internal constant [91 x i8] c"CREATE TABLE y(name PRIMARY KEY,mode,mtime,sz,rawdata,data,method,z HIDDEN) WITHOUT ROWID;\00", align 16
@.str.361 = private unnamed_addr constant [40 x i8] c"zipfile() function requires an argument\00", align 1
@zipfileFilter.aEmptyBlob = internal constant i8 0, align 1
@.str.362 = private unnamed_addr constant [21 x i8] c"cannot open file: %s\00", align 1
@.str.363 = private unnamed_addr constant [34 x i8] c"failed to read CDS at offset %lld\00", align 1
@.str.364 = private unnamed_addr constant [32 x i8] c"failed to read LFH at offset %d\00", align 1
@.str.365 = private unnamed_addr constant [17 x i8] c"error in fread()\00", align 1
@.str.366 = private unnamed_addr constant [23 x i8] c"zip archive is corrupt\00", align 1
@.str.367 = private unnamed_addr constant [44 x i8] c"cannot find end of central directory record\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.369 = private unnamed_addr constant [27 x i8] c"inflateInit2() failed (%d)\00", align 1
@.str.370 = private unnamed_addr constant [22 x i8] c"inflate() failed (%d)\00", align 1
@.str.371 = private unnamed_addr constant [16 x i8] c"sz must be NULL\00", align 1
@.str.372 = private unnamed_addr constant [21 x i8] c"rawdata must be NULL\00", align 1
@.str.373 = private unnamed_addr constant [31 x i8] c"unknown compression method: %d\00", align 1
@.str.374 = private unnamed_addr constant [33 x i8] c"filename too long; max: %d bytes\00", align 1
@.str.375 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.376 = private unnamed_addr constant [21 x i8] c"duplicate name: \22%s\22\00", align 1
@.str.377 = private unnamed_addr constant [25 x i8] c"zipfile: deflate() error\00", align 1
@.str.378 = private unnamed_addr constant [34 x i8] c"zipfile: mode does not match data\00", align 1
@.str.379 = private unnamed_addr constant [33 x i8] c"zipfile: parse error in mode: %s\00", align 1
@.str.380 = private unnamed_addr constant [18 x i8] c"error in fwrite()\00", align 1
@.str.381 = private unnamed_addr constant [26 x i8] c"zipfile: missing filename\00", align 1
@.str.382 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@.str.383 = private unnamed_addr constant [44 x i8] c"zipfile: failed to open file %s for writing\00", align 1
@.str.384 = private unnamed_addr constant [342 x i8] c"{\22version-made-by\22 : %u, \22version-to-extract\22 : %u, \22flags\22 : %u, \22compression\22 : %u, \22time\22 : %u, \22date\22 : %u, \22crc32\22 : %u, \22compressed-size\22 : %u, \22uncompressed-size\22 : %u, \22file-name-length\22 : %u, \22extra-field-length\22 : %u, \22file-comment-length\22 : %u, \22disk-number-start\22 : %u, \22internal-attr\22 : %u, \22external-attr\22 : %u, \22offset\22 : %u }\00", align 1
@.str.385 = private unnamed_addr constant [48 x i8] c"wrong number of arguments to function zipfile()\00", align 1
@.str.386 = private unnamed_addr constant [45 x i8] c"first argument to zipfile() must be non-NULL\00", align 1
@.str.387 = private unnamed_addr constant [54 x i8] c"filename argument to zipfile() too big; max: %d bytes\00", align 1
@.str.388 = private unnamed_addr constant [25 x i8] c"illegal method value: %d\00", align 1
@.str.389 = private unnamed_addr constant [39 x i8] c"non-directory name must not end with /\00", align 1
@.str.390 = private unnamed_addr constant [20 x i8] c"error in compress()\00", align 1
@.str.391 = private unnamed_addr constant [22 x i8] c"error in uncompress()\00", align 1
@.str.392 = private unnamed_addr constant [43 x i8] c"SELECT 1 FROM sqlite_schema WHERE name = ?\00", align 1
@.str.394 = private unnamed_addr constant [360 x i8] c"SELECT type, name, sql, 1,        substr(sql,1,14)=='create virtual' COLLATE nocase FROM sqlite_schema WHERE type IN ('table','view') AND       substr(name,1,7)!='sqlite_' COLLATE nocase  UNION ALL SELECT type, name, sql, 2, 0 FROM sqlite_schema WHERE type = 'trigger'  AND tbl_name IN(SELECT name FROM sqlite_schema WHERE type = 'view') ORDER BY 4, 5 DESC, 1\00", align 1
@.str.395 = private unnamed_addr constant [16 x i8] c"CREATE TABLE x(\00", align 1
@.str.396 = private unnamed_addr constant [16 x i8] c"%s%Q COLLATE %s\00", align 1
@.str.397 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.398 = private unnamed_addr constant [41 x i8] c"CREATE VIRTUAL TABLE %Q USING expert(%Q)\00", align 1
@idxRegisterVtab.expertModule = internal global { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @expertConnect, ptr @expertConnect, ptr @expertBestIndex, ptr @expertDisconnect, ptr @expertDisconnect, ptr @expertOpen, ptr @expertClose, ptr @expertFilter, ptr @expertNext, ptr @expertEof, ptr @expertColumn, ptr @expertRowid, ptr @expertUpdate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.399 = private unnamed_addr constant [7 x i8] c"expert\00", align 1
@.str.400 = private unnamed_addr constant [16 x i8] c"internal error!\00", align 1
@.str.401 = private unnamed_addr constant [51 x i8] c"SELECT * FROM main.%Q WHERE sqlite_expert_sample()\00", align 1
@.str.402 = private unnamed_addr constant [22 x i8] c"PRAGMA table_xinfo=%Q\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.404 = private unnamed_addr constant [38 x i8] c"t592690916721053953805701627921227776\00", align 1
@.str.405 = private unnamed_addr constant [49 x i8] c"DROP TABLE t592690916721053953805701627921227776\00", align 1
@.str.406 = private unnamed_addr constant [126 x i8] c"SELECT 'CREATE TEMP' || substr(sql, 7) FROM sqlite_schema WHERE tbl_name = %Q AND type IN ('table', 'trigger') ORDER BY type;\00", align 1
@.str.407 = private unnamed_addr constant [33 x i8] c"ALTER TABLE temp.%Q RENAME TO %Q\00", align 1
@.str.408 = private unnamed_addr constant [23 x i8] c"INSERT INTO %Q VALUES(\00", align 1
@.str.409 = private unnamed_addr constant [4 x i8] c"%s?\00", align 1
@.str.410 = private unnamed_addr constant [15 x i8] c"UPDATE %Q SET \00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"%s%Q=?\00", align 1
@.str.412 = private unnamed_addr constant [15 x i8] c"DELETE FROM %Q\00", align 1
end_hunk_0
begin_hunk_1
@.str.1779 = private unnamed_addr constant [13 x i8] c"bad argument\00", align 1
@.str.1780 = private unnamed_addr constant [57 x i8] c"Should be \22L,C,T\22 where L, C and T are unsigned integers\00", align 1
@.str.1781 = private unnamed_addr constant [17 x i8] c"available modes:\00", align 1
@.str.1782 = private unnamed_addr constant [12 x i8] c" batch tty\0A\00", align 1
@.str.1783 = private unnamed_addr constant [8 x i8] c"noquote\00", align 1
@.str.1784 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.1785 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1786 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@.str.1787 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.1788 = private unnamed_addr constant [8 x i8] c"relaxed\00", align 1
@.str.1789 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.1790 = private unnamed_addr constant [12 x i8] c"screenwidth\00", align 1
@.str.1792 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.1793 = private unnamed_addr constant [20 x i8] c"mode already exists\00", align 1
@.str.1794 = private unnamed_addr constant [22 x i8] c"cannot add more modes\00", align 1
@.str.1795 = private unnamed_addr constant [10 x i8] c"textjsonb\00", align 1
@.str.1796 = private unnamed_addr constant [7 x i8] c"titles\00", align 1
@.str.1797 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1798 = private unnamed_addr constant [19 x i8] c"bad --titles value\00", align 1
@.str.1799 = private unnamed_addr constant [7 x i8] c"widths\00", align 1
@.str.1800 = private unnamed_addr constant [14 x i8] c"width too big\00", align 1
@.str.1801 = private unnamed_addr constant [27 x i8] c"Maximum column width is %d\00", align 1
@.str.1802 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.1803 = private unnamed_addr constant [45 x i8] c"should be a comma-separated list if integers\00", align 1
@.str.1804 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.1806 = private unnamed_addr constant [9 x i8] c"wordwrap\00", align 1
@.str.1808 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.1809 = private unnamed_addr constant [11 x i8] c"bad option\00", align 1
@.str.1810 = private unnamed_addr constant [32 x i8] c"Use \22.help .mode\22 for more info\00", align 1
@.str.1811 = private unnamed_addr constant [13 x i8] c"unknown mode\00", align 1
@.str.1812 = private unnamed_addr constant [8 x i8] c"--once \00", align 1
@.str.1813 = private unnamed_addr constant [11 x i8] c" --align \22\00", align 1
@.str.1814 = private unnamed_addr constant [5 x i8] c"LLCR\00", align 1
@.str.1815 = private unnamed_addr constant [13 x i8] c" --border %s\00", align 1
@__const.dotCmdMode.azBQuote = private unnamed_addr constant [7 x ptr] [ptr @.str.849, ptr @.str.1763, ptr @.str.1764, ptr @.str.1765, ptr @.str.1766, ptr @.str.1767, ptr @.str.1768], align 16
@.str.1816 = private unnamed_addr constant [17 x i8] c" --blob-quote %s\00", align 1
@.str.1817 = private unnamed_addr constant [11 x i8] c" --colsep \00", align 1
@.str.1818 = private unnamed_addr constant [13 x i8] c" --escape %s\00", align 1
@.str.1819 = private unnamed_addr constant [14 x i8] c" --limits off\00", align 1
@.str.1820 = private unnamed_addr constant [13 x i8] c" --limits on\00", align 1
@.str.1821 = private unnamed_addr constant [19 x i8] c" --limits %d,%d,%d\00", align 1
@.str.1822 = private unnamed_addr constant [18 x i8] c" --multiinsert %u\00", align 1
@.str.1823 = private unnamed_addr constant [9 x i8] c" --null \00", align 1
@.str.1824 = private unnamed_addr constant [12 x i8] c" --quote %s\00", align 1
@qrfQuoteNames = internal unnamed_addr constant [8 x ptr] [ptr @.str.850, ptr @.str.850, ptr @.str.1764, ptr @.str.1765, ptr @.str.1786, ptr @.str.1766, ptr @.str.1767, ptr @.str.1788], align 16
@.str.1825 = private unnamed_addr constant [11 x i8] c" --rowsep \00", align 1
@.str.1826 = private unnamed_addr constant [11 x i8] c" --sw auto\00", align 1
@.str.1827 = private unnamed_addr constant [9 x i8] c" --sw %d\00", align 1
@.str.1828 = private unnamed_addr constant [14 x i8] c" --tablename \00", align 1
@.str.1829 = private unnamed_addr constant [16 x i8] c" --textjsonb %s\00", align 1
@.str.1830 = private unnamed_addr constant [14 x i8] c" --titles off\00", align 1
@.str.1831 = private unnamed_addr constant [13 x i8] c" --titles on\00", align 1
@dotCmdMode.azTitle = internal unnamed_addr constant [6 x ptr] [ptr @.str.1322, ptr @.str.1764, ptr @.str.1786, ptr @.str.1787, ptr @.str.1766, ptr @.str.1767], align 16
@.str.1832 = private unnamed_addr constant [13 x i8] c" --titles %s\00", align 1
@.str.1833 = private unnamed_addr constant [11 x i8] c" --widths \00", align 1
@.str.1834 = private unnamed_addr constant [13 x i8] c" --widths \22\22\00", align 1
@.str.1835 = private unnamed_addr constant [15 x i8] c" --wordwrap %s\00", align 1
@.str.1836 = private unnamed_addr constant [11 x i8] c" --wrap %d\00", align 1
@.str.1837 = private unnamed_addr constant [6 x i8] c" --ww\00", align 1
@.str.1838 = private unnamed_addr constant [10 x i8] c".mode %s\0A\00", align 1
@.str.1839 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.1840 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.1842 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.1843 = private unnamed_addr constant [5 x i8] c"-bom\00", align 1
@.str.1844 = private unnamed_addr constant [7 x i8] c"-plain\00", align 1
@.str.1845 = private unnamed_addr constant [7 x i8] c"-[ewx]\00", align 1
@.str.1846 = private unnamed_addr constant [13 x i8] c"error-prefix\00", align 1
@.str.1847 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.1848 = private unnamed_addr constant [28 x i8] c"cannot redirect to \22memory\22\00", align 1
@.str.1849 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1850 = private unnamed_addr constant [17 x i8] c"surplus argument\00", align 1
@.str.1851 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.1852 = private unnamed_addr constant [30 x i8] c"Error: cannot open pipe \22%s\22\0A\00", align 1
@.str.1853 = private unnamed_addr constant [29 x i8] c"Error: cannot write to \22%s\22\0A\00", align 1
@.str.1854 = private unnamed_addr constant [36 x i8] c"<!DOCTYPE html>\0A<BODY>\0A<PLAINTEXT>\0A\00", align 1
@.str.1855 = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1856 = private unnamed_addr constant [15 x i8] c"%s%ctemp-%s.%s\00", align 1
@.str.1857 = private unnamed_addr constant [28 x i8] c"Output already redirected.\0A\00", align 1
@.str.1858 = private unnamed_addr constant [35 x i8] c"<!DOCTYPE html>\0A<HTML><BODY><PRE>\0A\00", align 1
@.str.1859 = private unnamed_addr constant [100 x i8] c"CREATE TABLE IF NOT EXISTS temp.sqlite_parameters(\0A  key TEXT PRIMARY KEY,\0A  value\0A) WITHOUT ROWID;\00", align 1
@.str.1860 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.1861 = private unnamed_addr constant [18 x i8] c"sqlite_parameters\00", align 1
@.str.1862 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1863 = private unnamed_addr constant [54 x i8] c"SELECT value FROM temp.sqlite_parameters WHERE key=?1\00", align 1
@.str.1864 = private unnamed_addr constant [4 x i8] c"?%d\00", align 1
@.str.1865 = private unnamed_addr constant [5 x i8] c"_NAN\00", align 1
@.str.1866 = private unnamed_addr constant [5 x i8] c"_INF\00", align 1
@.str.1867 = private unnamed_addr constant [6 x i8] c"$int_\00", align 1
@.str.1868 = private unnamed_addr constant [7 x i8] c"$text_\00", align 1
@.str.1869 = private unnamed_addr constant [7 x i8] c"$TIMER\00", align 1
@.str.1870 = private unnamed_addr constant [37 x i8] c"Progress timeout after %.6f seconds\0A\00", align 1
@.str.1871 = private unnamed_addr constant [29 x i8] c"Progress limit reached (%u)\0A\00", align 1
@.str.1872 = private unnamed_addr constant [13 x i8] c"Progress %u\0A\00", align 1
@iBegin = internal unnamed_addr global i64 0, align 8
@.str.1873 = private unnamed_addr constant [1097 x i8] c"SAVEPOINT selftest_init;\0ACREATE TABLE IF NOT EXISTS selftest(\0A  tno INTEGER PRIMARY KEY,\0A  op TEXT,\0A  cmd TEXT,\0A  ans TEXT\0A);CREATE TEMP TABLE [_shell$self](op,cmd,ans);\0AINSERT INTO [_shell$self](rowid,op,cmd)\0A  VALUES(coalesce((SELECT (max(tno)+100)/10 FROM selftest),10),\0A         'memo','Tests generated by --init');\0AINSERT INTO [_shell$self]\0A  SELECT 'run',\0A    'SELECT hex(sha3_query(''SELECT type,name,tbl_name,sql FROM sqlite_schema ORDER BY 2'',224))',\0A    hex(sha3_query('SELECT type,name,tbl_name,sql FROM sqlite_schema ORDER BY 2',224));\0AINSERT INTO [_shell$self]\0A  SELECT 'run',    'SELECT hex(sha3_query(''SELECT * FROM \22' ||        printf('%w',name) || '\22 NOT INDEXED'',224))',\0A    hex(sha3_query(printf('SELECT * FROM \22%w\22 NOT INDEXED',name),224))\0A  FROM (\0A    SELECT name FROM sqlite_schema\0A     WHERE type='table'\0A       AND name<>'selftest'\0A       AND coalesce(rootpage,0)>0\0A  )\0A ORDER BY name;\0AINSERT INTO [_shell$self]\0A  VALUES('run','PRAGMA integrity_check','ok');\0AINSERT INTO selftest(tno,op,cmd,ans)  SELECT rowid*10,op,cmd,ans FROM [_shell$self];\0ADROP TABLE [_shell$self];\00", align 1
@.str.1874 = private unnamed_addr constant [37 x i8] c"SELFTEST initialization failure: %s\0A\00", align 1
@.str.1875 = private unnamed_addr constant [22 x i8] c"RELEASE selftest_init\00", align 1
@__const.output_c_string.ace = private unnamed_addr constant [3 x i8] c"\\?\00", align 1
@.str.1876 = private unnamed_addr constant [10 x i8] c"%-36s %d\0A\00", align 1
@.str.1877 = private unnamed_addr constant [26 x i8] c"Number of output columns:\00", align 1
@.str.1878 = private unnamed_addr constant [18 x i8] c"Column %d %nname:\00", align 1
@.str.1879 = private unnamed_addr constant [10 x i8] c"%-36s %s\0A\00", align 1
@.str.1880 = private unnamed_addr constant [15 x i8] c"declared type:\00", align 1
@.str.1881 = private unnamed_addr constant [14 x i8] c"VM-steps: %d\0A\00", align 1
@.str.1882 = private unnamed_addr constant [13 x i8] c"Memory Used:\00", align 1
@.str.1883 = private unnamed_addr constant [22 x i8] c"%lld (max %lld) bytes\00", align 1
@.str.1884 = private unnamed_addr constant [35 x i8] c"Number of Outstanding Allocations:\00", align 1
@.str.1885 = private unnamed_addr constant [16 x i8] c"%lld (max %lld)\00", align 1
@.str.1886 = private unnamed_addr constant [29 x i8] c"Number of Pcache Pages Used:\00", align 1
@.str.1887 = private unnamed_addr constant [22 x i8] c"%lld (max %lld) pages\00", align 1
@.str.1888 = private unnamed_addr constant [33 x i8] c"Number of Pcache Overflow Bytes:\00", align 1
@.str.1889 = private unnamed_addr constant [20 x i8] c"Largest Allocation:\00", align 1
@.str.1890 = private unnamed_addr constant [11 x i8] c"%lld bytes\00", align 1
@.str.1891 = private unnamed_addr constant [27 x i8] c"Largest Pcache Allocation:\00", align 1
@.str.1892 = private unnamed_addr constant [50 x i8] c"Lookaside Slots Used:                %d (max %d)\0A\00", align 1
@.str.1893 = private unnamed_addr constant [41 x i8] c"Successful lookaside attempts:       %d\0A\00", align 1
@.str.1894 = private unnamed_addr constant [41 x i8] c"Lookaside failures due to size:      %d\0A\00", align 1
@.str.1895 = private unnamed_addr constant [41 x i8] c"Lookaside failures due to OOM:       %d\0A\00", align 1
@.str.1896 = private unnamed_addr constant [47 x i8] c"Pager Heap Usage:                    %d bytes\0A\00", align 1
@.str.1897 = private unnamed_addr constant [41 x i8] c"Page cache hits:                     %d\0A\00", align 1
@.str.1898 = private unnamed_addr constant [41 x i8] c"Page cache misses:                   %d\0A\00", align 1
@.str.1899 = private unnamed_addr constant [41 x i8] c"Page cache writes:                   %d\0A\00", align 1
@.str.1900 = private unnamed_addr constant [41 x i8] c"Page cache spills:                   %d\0A\00", align 1
@.str.1901 = private unnamed_addr constant [43 x i8] c"Temporary data spilled to disk:      %lld\0A\00", align 1
@.str.1902 = private unnamed_addr constant [47 x i8] c"Schema Heap Usage:                   %d bytes\0A\00", align 1
@.str.1903 = private unnamed_addr constant [47 x i8] c"Statement Heap/Lookaside Usage:      %d bytes\0A\00", align 1
@.str.1904 = private unnamed_addr constant [41 x i8] c"Fullscan Steps:                      %d\0A\00", align 1
@.str.1905 = private unnamed_addr constant [41 x i8] c"Sort Operations:                     %d\0A\00", align 1
@.str.1906 = private unnamed_addr constant [41 x i8] c"Autoindex Inserts:                   %d\0A\00", align 1
@.str.1907 = private unnamed_addr constant [44 x i8] c"Bloom filter bypass taken:           %d/%d\0A\00", align 1
@.str.1908 = private unnamed_addr constant [41 x i8] c"Virtual Machine Steps:               %d\0A\00", align 1
@.str.1909 = private unnamed_addr constant [41 x i8] c"Reprepare operations:                %d\0A\00", align 1
@.str.1910 = private unnamed_addr constant [41 x i8] c"Number of times run:                 %d\0A\00", align 1
@.str.1911 = private unnamed_addr constant [41 x i8] c"Memory used by prepared stmt:        %d\0A\00", align 1
@.str.1912 = private unnamed_addr constant [12 x i8] c"/proc/%d/io\00", align 1
@displayLinuxIoStats.aTrans = internal unnamed_addr constant [7 x %struct.anon.15] [%struct.anon.15 { ptr @.str.1913, ptr @.str.1914 }, %struct.anon.15 { ptr @.str.1915, ptr @.str.1916 }, %struct.anon.15 { ptr @.str.1917, ptr @.str.1918 }, %struct.anon.15 { ptr @.str.1919, ptr @.str.1920 }, %struct.anon.15 { ptr @.str.1921, ptr @.str.1922 }, %struct.anon.15 { ptr @.str.1923, ptr @.str.1924 }, %struct.anon.15 { ptr @.str.1925, ptr @.str.1926 }], align 16
@.str.1913 = private unnamed_addr constant [8 x i8] c"rchar: \00", align 1
@.str.1914 = private unnamed_addr constant [26 x i8] c"Bytes received by read():\00", align 1
@.str.1915 = private unnamed_addr constant [8 x i8] c"wchar: \00", align 1
@.str.1916 = private unnamed_addr constant [23 x i8] c"Bytes sent to write():\00", align 1
@.str.1917 = private unnamed_addr constant [8 x i8] c"syscr: \00", align 1
@.str.1918 = private unnamed_addr constant [21 x i8] c"Read() system calls:\00", align 1
@.str.1919 = private unnamed_addr constant [8 x i8] c"syscw: \00", align 1
@.str.1920 = private unnamed_addr constant [22 x i8] c"Write() system calls:\00", align 1
@.str.1921 = private unnamed_addr constant [13 x i8] c"read_bytes: \00", align 1
@.str.1922 = private unnamed_addr constant [25 x i8] c"Bytes read from storage:\00", align 1
@.str.1923 = private unnamed_addr constant [14 x i8] c"write_bytes: \00", align 1
@.str.1924 = private unnamed_addr constant [26 x i8] c"Bytes written to storage:\00", align 1
@.str.1925 = private unnamed_addr constant [24 x i8] c"cancelled_write_bytes: \00", align 1
@.str.1926 = private unnamed_addr constant [23 x i8] c"Cancelled write bytes:\00", align 1
@.str.1927 = private unnamed_addr constant [9 x i8] c"%-36s %s\00", align 1
@.str.1928 = private unnamed_addr constant [8 x i8] c"%s:%lld\00", align 1
@.str.1929 = private unnamed_addr constant [35 x i8] c"FAULT-SIM id=%d no-fault (cnt=%d)\0A\00", align 1
@.str.1930 = private unnamed_addr constant [28 x i8] c"FAULT-SIM id=%d returns %d\0A\00", align 1
@.str.1931 = private unnamed_addr constant [32 x i8] c"-- closing database connection\0A\00", align 1
@.str.1932 = private unnamed_addr constant [7 x i8] c"%.*s;\0A\00", align 1
@.str.1933 = private unnamed_addr constant [18 x i8] c"%.*s; -- %lld ns\0A\00", align 1
@.str.1934 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1935 = private unnamed_addr constant [13 x i8] c"in prepare, \00", align 1
@.str.1936 = private unnamed_addr constant [12 x i8] c"Parse error\00", align 1
@.str.1937 = private unnamed_addr constant [11 x i8] c"stepping, \00", align 1
@.str.1938 = private unnamed_addr constant [14 x i8] c"Runtime error\00", align 1
@.str.1939 = private unnamed_addr constant [32 x i8] c"%s in %r command line argument:\00", align 1
@.str.1940 = private unnamed_addr constant [17 x i8] c"%s near line %d:\00", align 1
@.str.1941 = private unnamed_addr constant [23 x i8] c"%s near line %d of %s:\00", align 1
@.str.1942 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1943 = private unnamed_addr constant [36 x i8] c"changes: %lld   total_changes: %lld\00", align 1
@sBegin = internal global %struct.rusage zeroinitializer, align 32
@.str.1944 = private unnamed_addr constant [40 x i8] c"Run Time: real %.6f user %.6f sys %.6f\0A\00", align 1
@.str.1947 = private unnamed_addr constant [36 x i8] c"SELECT 1 FROM sqlite_schema LIMIT 1\00", align 1
@.str.1948 = private unnamed_addr constant [12 x i8] c"zipfile(%Q)\00", align 1
@.str.1949 = private unnamed_addr constant [25 x i8] c"-- open database '%s'%s\0A\00", align 1
@.str.1950 = private unnamed_addr constant [17 x i8] c" using 'apndvfs'\00", align 1
@.str.1951 = private unnamed_addr constant [27 x i8] c"cannot open file: %s (%s)\0A\00", align 1
@.str.1952 = private unnamed_addr constant [6 x i8] c"sqlar\00", align 1
@.str.1953 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1954 = private unnamed_addr constant [44 x i8] c"database does not contain an 'sqlar' table\0A\00", align 1
@.str.1955 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1956 = private unnamed_addr constant [8 x i8] c"extract\00", align 1
@.str.1957 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.1958 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.1959 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.1960 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1961 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.1962 = private unnamed_addr constant [7 x i8] c"dryrun\00", align 1
@__const.arParseCommand.aSwitch = private unnamed_addr constant [14 x { ptr, i8, i8, i8, [5 x i8] }] [{ ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1955, i8 99, i8 1, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1956, i8 120, i8 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1957, i8 105, i8 3, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1080, i8 116, i8 5, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1958, i8 114, i8 7, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1959, i8 117, i8 2, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.975, i8 104, i8 6, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1808, i8 118, i8 8, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1960, i8 102, i8 9, i8 1, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1059, i8 97, i8 11, i8 1, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1961, i8 67, i8 10, i8 1, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1962, i8 110, i8 12, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1014, i8 0, i8 14, i8 0, [5 x i8] zeroinitializer }, { ptr, i8, i8, i8, [5 x i8] } { ptr @.str.1385, i8 103, i8 13, i8 0, [5 x i8] zeroinitializer }], align 16
@.str.1963 = private unnamed_addr constant [36 x i8] c"Wrong number of arguments.  Usage:\0A\00", align 1
@.str.1964 = private unnamed_addr constant [24 x i8] c"unrecognized option: %c\00", align 1
@.str.1965 = private unnamed_addr constant [32 x i8] c"option requires an argument: %c\00", align 1
@.str.1966 = private unnamed_addr constant [21 x i8] c"ambiguous option: %s\00", align 1
@.str.1967 = private unnamed_addr constant [24 x i8] c"unrecognized option: %s\00", align 1
@.str.1968 = private unnamed_addr constant [32 x i8] c"option requires an argument: %s\00", align 1
@.str.1969 = private unnamed_addr constant [36 x i8] c"Required argument missing.  Usage:\0A\00", align 1
@.str.1970 = private unnamed_addr constant [24 x i8] c"Use \22-A\22 for more help\0A\00", align 1
@.str.1971 = private unnamed_addr constant [37 x i8] c"Use \22.archive --help\22 for more help\0A\00", align 1
@.str.1972 = private unnamed_addr constant [25 x i8] c"multiple command options\00", align 1
@.str.1973 = private unnamed_addr constant [278 x i8] c"CREATE TABLE IF NOT EXISTS sqlar(\0A  name TEXT PRIMARY KEY,  -- name of the file\0A  mode INT,               -- access permissions\0A  mtime INT,              -- last modification time\0A  sz INT,                 -- original file size\0A  data BLOB               -- compressed content\0A)\00", align 1
@.str.1974 = private unnamed_addr constant [27 x i8] c"DROP TABLE IF EXISTS sqlar\00", align 1
@.str.1975 = private unnamed_addr constant [279 x i8] c"REPLACE INTO %s(name,mode,mtime,sz,data)\0A  SELECT\0A    %s,\0A    mode,\0A    mtime,\0A    CASE substr(lsmode(mode),1,1)\0A      WHEN '-' THEN length(data)\0A      WHEN 'd' THEN 0\0A      ELSE -1 END,\0A    sqlar_compress(data)\0A  FROM fsdir(%Q,%Q) AS disk\0A  WHERE lsmode(mode) NOT LIKE '?%%'%s;\00", align 1
@.str.1976 = private unnamed_addr constant [152 x i8] c"REPLACE INTO %s(name,mode,mtime,data)\0A  SELECT\0A    %s,\0A    mode,\0A    mtime,\0A    data\0A  FROM fsdir(%Q,%Q) AS disk\0A  WHERE lsmode(mode) NOT LIKE '?%%'%s;\00", align 1
@__const.arCreateOrUpdateCommand.zInsertFmt = private unnamed_addr constant [2 x ptr] [ptr @.str.1975, ptr @.str.1976], align 16
@.str.1977 = private unnamed_addr constant [21 x i8] c"PRAGMA page_size=512\00", align 1
@.str.1978 = private unnamed_addr constant [14 x i8] c"SAVEPOINT ar;\00", align 1
@.str.1979 = private unnamed_addr constant [11 x i8] c"zip%016llx\00", align 1
@.str.1980 = private unnamed_addr constant [47 x i8] c"CREATE VIRTUAL TABLE temp.%s USING zipfile(%Q)\00", align 1
@.str.1981 = private unnamed_addr constant [114 x i8] c" AND NOT EXISTS(SELECT 1 FROM %s AS mem WHERE mem.name=disk.name AND mem.mtime=disk.mtime AND mem.mode=disk.mode)\00", align 1
@.str.1982 = private unnamed_addr constant [19 x i8] c"shell_putsnl(name)\00", align 1
@.str.1983 = private unnamed_addr constant [28 x i8] c"ROLLBACK TO ar; RELEASE ar;\00", align 1
@.str.1984 = private unnamed_addr constant [12 x i8] c"RELEASE ar;\00", align 1
@.str.1985 = private unnamed_addr constant [14 x i8] c"DROP TABLE %s\00", align 1
@.str.1986 = private unnamed_addr constant [589 x i8] c"WITH dest(dpath,dlen) AS (\0A  SELECT realpath($dir) || '/',\0A  1+length(realpath($dir))\0A)\0ASELECT\0A    ($dir || name),\0A    CASE $dryrun\0A      WHEN 0 THEN writefile($dir||name, %s, mode, mtime)\0A      WHEN 1 THEN 0\0A      ELSE shell_putsnl(format('writefile(%%Q,%%s,%%0o,%%d)',$dir||name,quote(%s),mode,mtime)) IS NULL\0A      END\0A  FROM dest CROSS JOIN %s\0A WHERE (%s)\0A   AND (CASE $pass WHEN 0 THEN (mode&0xf000)<>0xa000\0A                   WHEN 1 THEN (mode&0xf000)=0xa000\0A                   ELSE data IS NULL END)\0A   AND dpath=substr(realpath($dir||name),1,dlen)\0A   AND name NOT GLOB '*..[/\\]*'\0A\00", align 1
@.str.1987 = private unnamed_addr constant [27 x i8] c"sqlar_uncompress(data, sz)\00", align 1
@.str.1988 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__const.arExtractCommand.azExtraArg = private unnamed_addr constant [2 x ptr] [ptr @.str.1987, ptr @.str.1988], align 16
@.str.1989 = private unnamed_addr constant [5 x i8] c"$dir\00", align 1
@.str.1990 = private unnamed_addr constant [8 x i8] c"$dryrun\00", align 1
@.str.1991 = private unnamed_addr constant [23 x i8] c"*** BEGIN PASS %d ***\0A\00", align 1
@.str.1992 = private unnamed_addr constant [6 x i8] c"$pass\00", align 1
@.str.1993 = private unnamed_addr constant [21 x i8] c"*** END PASS %d ***\0A\00", align 1
@.str.1994 = private unnamed_addr constant [43 x i8] c"SELECT name FROM %s WHERE glob($name,name)\00", align 1
@.str.1995 = private unnamed_addr constant [37 x i8] c"SELECT name FROM %s WHERE name=$name\00", align 1
@.str.1996 = private unnamed_addr constant [6 x i8] c"$name\00", align 1
@.str.1997 = private unnamed_addr constant [26 x i8] c"not found in archive: %s\0A\00", align 1
@.str.1998 = private unnamed_addr constant [9 x i8] c"name IN(\00", align 1
@.str.1999 = private unnamed_addr constant [19 x i8] c"%z%sname GLOB '%q'\00", align 1
@.str.2000 = private unnamed_addr constant [33 x i8] c"%z%ssubstr(name,1,%d) GLOB '%q/'\00", align 1
@.str.2001 = private unnamed_addr constant [9 x i8] c"%z%s'%q'\00", align 1
@.str.2002 = private unnamed_addr constant [30 x i8] c"%z%ssubstr(name,1,%d) = '%q/'\00", align 1
@.str.2003 = private unnamed_addr constant [5 x i8] c" OR \00", align 1
@.str.2004 = private unnamed_addr constant [38 x i8] c"(%s%s OR (name GLOB '*/*' AND (%s))) \00", align 1
@.str.2005 = private unnamed_addr constant [27 x i8] c"SELECT %s FROM %s WHERE %s\00", align 1
@.str.2006 = private unnamed_addr constant [53 x i8] c"lsmode(mode), sz, datetime(mtime, 'unixepoch'), name\00", align 1
@__const.arListCommand.azCols = private unnamed_addr constant [2 x ptr] [ptr @.str.1953, ptr @.str.2006], align 16
@.str.2007 = private unnamed_addr constant [18 x i8] c"%s % 10d  %s  %s\0A\00", align 1
@.str.2008 = private unnamed_addr constant [25 x i8] c"DELETE FROM %s WHERE %s;\00", align 1
@.str.2009 = private unnamed_addr constant [69 x i8] c"%s: Input nesting limit (%d) reached at line %lld. Check recursion.\0A\00", align 1
@.str.2010 = private unnamed_addr constant [6 x i8] c"%,lld\00", align 1
@.str.2011 = private unnamed_addr constant [41 x i8] c"%s:%lld: Input SQL is too big: %s bytes\0A\00", align 1
@dynPrompt = internal global { [128 x i8], [2 x i8], [2 x i8], i32, ptr } zeroinitializer, align 8
@.str.2013 = private unnamed_addr constant [4 x i8] c"(..\00", align 1
@.str.2014 = private unnamed_addr constant [4 x i8] c")x!\00", align 1
@.str.2015 = private unnamed_addr constant [4 x i8] c"(x.\00", align 1
@.str.2016 = private unnamed_addr constant [22 x i8] c"</PRE></BODY></HTML>\0A\00", align 1
@.str.2017 = private unnamed_addr constant [9 x i8] c"xdg-open\00", align 1
@.str.2018 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2019 = private unnamed_addr constant [14 x i8] c"Failed: [%s]\0A\00", align 1
@.str.2020 = private unnamed_addr constant [11 x i8] c"\1B[1m%s\1B[0m\00", align 1
@.str.2021 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@find_home_dir.home_dir = internal unnamed_addr global ptr null, align 8
@.str.2022 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@rl_attempted_completion_over = external local_unnamed_addr global i32, align 4
@readline_completion_generator.pStmt = internal global ptr null, align 8
@.str.2023 = private unnamed_addr constant [73 x i8] c"SELECT DISTINCT candidate COLLATE nocase  FROM completion(%Q) ORDER BY 1\00", align 1
@.str.2024 = private unnamed_addr constant [45 x i8] c"-- Candidates -----------------------------\0A\00", align 1
@.str.2025 = private unnamed_addr constant [18 x i8] c"(no new indexes)\0A\00", align 1
@.str.2026 = private unnamed_addr constant [50 x i8] c"-- Query %d --------------------------------\0A%s\0A\0A\00", align 1
@.str.2027 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@str = private unnamed_addr constant [27 x i8] c"Many .breakpoints have run\00", align 1
@switch.table.sqlite3_format_query_result = private unnamed_addr constant [19 x i8] c"\02\02\01\02\01\01\01\01\01\01\01\01\02\01\01\01\01\01\02", align 1
@switch.table.do_meta_command = private unnamed_addr constant [4 x ptr] [ptr @.str.850, ptr @.str.926, ptr @.str.1204, ptr @.str.1205], align 8
@switch.table.re_subcompile_string = private unnamed_addr constant [52 x i8] [i8 14, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 16, i8 poison, i8 poison, i8 poison, i8 12, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 17, i8 poison, i8 13, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 15, i8 poison, i8 poison, i8 poison, i8 11], align 1
@switch.table.dbdataColumn = private unnamed_addr constant [12 x i8] c"\00\01\02\03\04\06\08\08\00\00\00\00", align 8

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 256) i32 @sqlite3_qrf_wcwidth(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 768
  br i1 %i.a, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.01935 = phi i32 [ %.2, %bb.d ], [ 302, %bb.a ] ; 2 uses
  %.02034 = phi i32 [ %.222, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.b = add nsw i32 %.01935, %.02034
  %i.c = sdiv i32 %i.b, 2                         ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49   ; 2 uses
  %i.h = icmp slt i32 %i.g, %0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = icmp sgt i32 %i.g, %0
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.c, -1
  br label %bb.d

.thread:                                          ; preds = %bb.b
  %i.k = load i8, ptr %i.e, align 8, !tbaa !50
  br label %bb.h

bb.d:                                             ; preds = %bb.c, %.preheader
  %.222 = phi i32 [ %i.c, %.preheader ], [ %.02034, %bb.c ] ; 3 uses
  %.2 = phi i32 [ %.01935, %.preheader ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = add nsw i32 %.2, -1
  %i.m = icmp slt i32 %.222, %i.l
  br i1 %i.m, label %.preheader, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %.2 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49
  %i.r = icmp sgt i32 %i.q, %0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %.222 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.s
  %i.u = load i8, ptr %i.t, align 8, !tbaa !50
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.o, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.a, %bb.g, %bb.f
  %.225.shrunk = phi i8 [ %i.v, %bb.g ], [ %i.k, %.thread ], [ %i.u, %bb.f ], [ 1, %bb.a ]
  %.225 = zext i8 %.225.shrunk to i32
  ret i32 %.225
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 1, 5) i32 @sqlite3_qrf_decode_utf8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !52
  %i.b = zext i8 %i.a to i32                      ; 6 uses
  %i.c = and i32 %i.b, 224
  %i.d = icmp eq i32 %i.c, 192
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 192
  %i.i = icmp eq i32 %i.h, 128
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %i.b, 6
  %i.k = and i32 %i.j, 1984
  %i.l = and i32 %i.g, 63
  %i.m = or disjoint i32 %i.l, %i.k
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = and i32 %i.b, 240
  %i.o = icmp eq i32 %i.n, 224
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 192
  %i.t = icmp eq i32 %i.s, 128
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 192
  %i.y = icmp eq i32 %i.x, 128
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw nsw i32 %i.b, 12
  %i.aa = and i32 %i.z, 61440
  %i.ab = shl nuw nsw i32 %i.r, 6
  %i.ac = and i32 %i.ab, 4032
  %i.ad = or disjoint i32 %i.ac, %i.aa
  %i.ae = and i32 %i.w, 63
  %i.af = or disjoint i32 %i.ad, %i.ae
  br label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = and i32 %i.b, 248
  %i.ah = icmp eq i32 %i.ag, 240
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 192
  %i.am = icmp eq i32 %i.al, 128
  br i1 %i.am, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %i.ar = icmp eq i32 %i.aq, 128
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = shl nuw nsw i32 %i.b, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ak, 12
  %i.ba = and i32 %i.az, 258048
  %i.bb = or disjoint i32 %i.ba, %i.ay
  %i.bc = shl nuw nsw i32 %i.ap, 6
  %i.bd = and i32 %i.bc, 4032
  %i.be = or disjoint i32 %i.bb, %i.bd
  %i.bf = and i32 %i.au, 63
  %i.bg = or disjoint i32 %i.be, %i.bf
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.g, %bb.c
  %.sink = phi i32 [ %i.m, %bb.c ], [ %i.bg, %bb.l ], [ %i.af, %bb.g ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  %.0 = phi i32 [ 2, %bb.c ], [ 4, %bb.l ], [ 3, %bb.g ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ]
  store i32 %.sink, ptr %1, align 4, !tbaa !53
  ret i32 %.0
}
end_hunk_1
begin_hunk_2_@arDotCommand:bb.a
  %i.et = call i32 @deduceDatabaseType(ptr noundef nonnull %i.eg, i32 noundef 1, i32 noundef 0)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !347
  %i.ew = zext i8 %i.ev to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.042 = phi i32 [ %i.et, %bb.cd ], [ %i.ew, %bb.ce ] ; 2 uses
  %i.ex = icmp eq i32 %.042, 3
  br i1 %i.ex, label %bb.cg, label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  %i.ey = load i8, ptr %5, align 8, !tbaa !1001
  %i.ez = and i8 %i.ey, -2
  %or.cond = icmp eq i8 %i.ez, 4
  br i1 %or.cond, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !468 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16
  br i1 %i.fb, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.fd = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1058) #45
  br label %.sink.split

bb.cj:                                            ; preds = %bb.ch
  %i.fe = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1948, ptr noundef nonnull %i.fa) #45
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cj, %bb.ci
  %.sink = phi ptr [ %i.fd, %bb.ci ], [ %i.fe, %bb.cj ]
  store ptr %.sink, ptr %i.fc, align 8, !tbaa !474
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split, %bb.cg
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 1, ptr %i.ff, align 2, !tbaa !475
  br label %bb.cs

bb.cl:                                            ; preds = %bb.cf
  %i.fg = load ptr, ptr %i.es, align 8, !tbaa !468 ; 3 uses
  %.not53 = icmp eq ptr %i.fg, null
  br i1 %.not53, label %bb.cs, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !1002
  %.not54 = icmp eq i8 %i.fi, 0
  %spec.select = select i1 %.not54, i32 %.042, i32 2 ; 2 uses
  %i.fj = load i8, ptr %5, align 8, !tbaa !1001   ; 3 uses
  %i.fk = and i8 %i.fj, -3
  %or.cond7 = icmp eq i8 %i.fk, 1
  %i.fl = icmp eq i8 %i.fj, 7
  %or.cond11 = or i1 %i.fl, %or.cond7
  %i.fm = icmp eq i8 %i.fj, 2
  %or.cond15 = or i1 %i.fm, %or.cond11
  %.041 = select i1 %or.cond15, i32 6, i32 1
  store ptr null, ptr %i.er, align 8, !tbaa !473
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !465
  %.not55 = icmp eq i8 %i.fo, 0
  br i1 %.not55, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fp = load ptr, ptr %i.ep, align 8, !tbaa !472
  %i.fq = icmp eq i32 %spec.select, 2
  %i.fr = select i1 %i.fq, ptr @.str.1950, ptr @.str.48
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fp, ptr noundef nonnull @.str.1949, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fr)
  %.pre = load ptr, ptr %i.es, align 8, !tbaa !468
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.fs = phi ptr [ %.pre, %bb.cn ], [ %i.fg, %bb.cm ]
  %i.ft = icmp eq i32 %spec.select, 2
  %i.fu = select i1 %i.ft, ptr @.str.354, ptr null
  %i.fv = call i32 @sqlite3_open_v2(ptr noundef %i.fs, ptr noundef nonnull %i.er, i32 noundef %.041, ptr noundef %i.fu) #45 ; 2 uses
  %.not56 = icmp eq i32 %i.fv, 0
  br i1 %.not56, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.fw = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.fx = call i32 @sqlite3_fileio_init(ptr noundef %i.fw, ptr poison, ptr poison) ; 0 uses
  %i.fy = load ptr, ptr %i.er, align 8, !tbaa !473 ; 2 uses
  %i.fz = call i32 @sqlite3_create_function(ptr noundef %i.fy, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 2097153, ptr noundef null, ptr noundef nonnull @sqlarCompressFunc, ptr noundef null, ptr noundef null) #45
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.cq, label %.thread89

bb.cq:                                            ; preds = %bb.cp
  %i.gb = call i32 @sqlite3_create_function(ptr noundef %i.fy, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 2097153, ptr noundef null, ptr noundef nonnull @sqlarUncompressFunc, ptr noundef null, ptr noundef null) #45 ; 0 uses
  br label %.thread89

.thread89:                                        ; preds = %bb.cq, %bb.cp
  %i.gc = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.gd = load ptr, ptr %i.em, align 8, !tbaa !1003
  %i.ge = call i32 @sqlite3_create_function(ptr noundef %i.gc, ptr noundef nonnull @.str.783, i32 noundef 1, i32 noundef 1, ptr noundef %i.gd, ptr noundef nonnull @shellPutsFunc, ptr noundef null, ptr noundef null) #45 ; 0 uses
  br label %bb.cs

bb.cr:                                            ; preds = %bb.co
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.gg = load ptr, ptr %i.es, align 8, !tbaa !468
  %i.gh = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.gi = call ptr @sqlite3_errmsg(ptr noundef %i.gh) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gf, ptr noundef nonnull @.str.1951, ptr noundef %i.gg, ptr noundef %i.gi)
  br label %bb.fc

bb.cs:                                            ; preds = %.thread89, %bb.cl, %bb.ck
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !474 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 2
  %i.go = icmp eq i8 %i.gn, 0
  %or.cond19 = select i1 %i.gl, i1 %i.go, i1 false
  %i.gp = load i8, ptr %5, align 8                ; 3 uses
  %i.gq = icmp ne i8 %i.gp, 6
  %or.cond23 = select i1 %or.cond19, i1 %i.gq, i1 false
  br i1 %or.cond23, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %.not57 = icmp eq i8 %i.gp, 1
  br i1 %.not57, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gr = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.gs = call i32 @sqlite3_table_column_metadata(ptr noundef %i.gr, ptr noundef null, ptr noundef nonnull @.str.1952, ptr noundef nonnull @.str.1953, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %.not58 = icmp eq i32 %i.gs, 0
  br i1 %.not58, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gt = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gt, ptr noundef nonnull @.str.1954)
  br label %bb.fc

bb.cw:                                            ; preds = %bb.cu, %bb.ct
  %i.gu = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1952) #45 ; 2 uses
  store ptr %i.gu, ptr %i.gj, align 8, !tbaa !474
  %.pr = load i8, ptr %5, align 8, !tbaa !1001
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cs
  %i.gv = phi ptr [ %i.gu, %bb.cw ], [ %i.gk, %bb.cs ]
  %i.gw = phi i8 [ %.pr, %bb.cw ], [ %i.gp, %bb.cs ]
  switch i8 %i.gw, label %bb.fb [
    i8 1, label %bb.cy
    i8 4, label %bb.cz
    i8 5, label %bb.eh
    i8 6, label %bb.ep
    i8 3, label %bb.eq
    i8 7, label %bb.er
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.gx = call fastcc i32 @arCreateOrUpdateCommand(ptr noundef %5, i32 noundef 0, i32 noundef 0)
  br label %bb.fc

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #45
  store ptr null, ptr %i.g, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  store ptr null, ptr %i.i, align 8, !tbaa !88
  %i.gy = call fastcc i32 @arCheckEntries(ptr noundef nonnull readonly %5)
  store i32 %i.gy, ptr %i.h, align 4, !tbaa !53
  call fastcc void @arWhereClause(ptr noundef %i.h, ptr noundef nonnull readonly %5, ptr noundef %i.i)
  %i.gz = load i32, ptr %i.h, align 4, !tbaa !53
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !469 ; 2 uses
  %.not.i = icmp eq ptr %i.hc, null
  br i1 %.not.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hd = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.375, ptr noundef nonnull %i.hc) #45
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.he = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.032.i = phi ptr [ %i.hd, %bb.db ], [ %i.he, %bb.dc ] ; 2 uses
  %i.hf = icmp eq ptr %.032.i, null
  br i1 %i.hf, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 7, ptr %i.h, align 4, !tbaa !53
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.cz
  %.1.i = phi ptr [ null, %bb.de ], [ %.032.i, %bb.dd ], [ null, %bb.cz ] ; 2 uses
  %i.hg = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.hh = load i8, ptr %i.gm, align 2, !tbaa !475
  %6 = zext i8 %i.hh to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr @__const.arExtractCommand.azExtraArg, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !88       ; 2 uses
  %i.hi = load ptr, ptr %i.gj, align 8, !tbaa !474
  %i.hj = load ptr, ptr %i.i, align 8, !tbaa !88
  call void (ptr, ptr, ptr, ptr, ...) @shellPreparePrintf(ptr noundef %i.hg, ptr noundef %i.h, ptr noundef %i.g, ptr noundef nonnull @.str.1986, ptr noundef %8, ptr noundef %8, ptr noundef %i.hi, ptr noundef %i.hj)
  %i.hk = load i32, ptr %i.h, align 4, !tbaa !53
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.dg, label %arExtractCommand.exit

bb.dg:                                            ; preds = %bb.df
  %i.hm = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.hn = call i32 @sqlite3_bind_parameter_index(ptr noundef %i.hm, ptr noundef nonnull @.str.1989) #45
  %i.ho = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.hp = call i32 @sqlite3_bind_text(ptr noundef %i.ho, i32 noundef %i.hn, ptr noundef %.1.i, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.hr = call i32 @sqlite3_bind_parameter_index(ptr noundef %i.hq, ptr noundef nonnull @.str.1990) #45
  %i.hs = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 11 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.hv = zext i8 %i.hu to i32
  %i.hw = call i32 @sqlite3_bind_int(ptr noundef %i.hs, i32 noundef %i.hr, i32 noundef %i.hv) #45 ; 0 uses
  %.promoted.i = load i32, ptr %i.h, align 4      ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.hy = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.hz = icmp ugt i8 %i.hy, 1
  br i1 %i.hz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ia = load ptr, ptr %i.ep, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ia, ptr noundef nonnull @.str.1991, i32 noundef 1)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ib = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.ic = call i32 @sqlite3_bind_parameter_index(ptr noundef %i.ib, ptr noundef nonnull @.str.1992) #45
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.ie = call i32 @sqlite3_bind_int(ptr noundef %i.id, i32 noundef %i.ic, i32 noundef 0) #45 ; 0 uses
  %i.if = load i8, ptr %i.ht, align 1, !tbaa !465
  %.not58.i = icmp eq i8 %i.if, 0
  br i1 %.not58.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ig = load ptr, ptr %i.ep, align 8, !tbaa !472
  %i.ih = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.ii = call ptr @sqlite3_sql(ptr noundef %i.ih) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ig, ptr noundef nonnull @.str.253, ptr noundef %i.ii)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.ij = icmp eq i32 %.promoted.i, 0             ; 2 uses
  br i1 %i.ij, label %.lr.ph.split.us.split.us.i, label %.critedge.i

.lr.ph.split.us.split.us.i:                       ; preds = %bb.dk
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.il = call i32 @sqlite3_step(ptr noundef %i.ik) #45
  %i.im = icmp eq i32 %i.il, 100
  br i1 %i.im, label %.lr.ph42.i, label %.critedge.i

.lr.ph42.i:                                       ; preds = %.lr.ph.split.us.split.us.i, %bb.dm
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !467
  %.not34.us.us.i = icmp eq i8 %i.in, 0
  br i1 %.not34.us.us.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph42.i
  %i.io = load ptr, ptr %i.ep, align 8, !tbaa !472
  %i.ip = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.iq = call ptr @sqlite3_column_text(ptr noundef %i.ip, i32 noundef 0) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.io, ptr noundef nonnull @.str.253, ptr noundef %i.iq)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph42.i
  %i.ir = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.is = call i32 @sqlite3_step(ptr noundef %i.ir) #45
  %i.it = icmp eq i32 %i.is, 100
  br i1 %i.it, label %.lr.ph42.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.dm, %.lr.ph.split.us.split.us.i, %bb.dk
  %i.iu = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.iv = icmp eq i8 %i.iu, 1
  %.pre51.i = load ptr, ptr %i.g, align 8, !tbaa !109 ; 3 uses
  br i1 %i.iv, label %bb.ec, label %bb.dn

bb.dn:                                            ; preds = %.critedge.i
  %i.iw = call i32 @sqlite3_reset(ptr noundef %.pre51.i) #45 ; 2 uses
  br i1 %i.ij, label %bb.do, label %shellReset.exit.i

bb.do:                                            ; preds = %bb.dn
  %.not.i.i61 = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i61, label %shellReset.exit.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ix = call ptr @sqlite3_db_handle(ptr noundef %.pre51.i) #45
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.iz = call ptr @sqlite3_errmsg(ptr noundef %i.ix) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.iy, ptr noundef nonnull @.str.63, ptr noundef %i.iz)
  br label %shellReset.exit.i

shellReset.exit.i:                                ; preds = %bb.dp, %bb.do, %bb.dn
  %i.ja = phi i32 [ %.promoted.i, %bb.dn ], [ %i.iw, %bb.dp ], [ 0, %bb.do ] ; 3 uses
  %i.jb = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.jc = icmp ugt i8 %i.jb, 1
  br i1 %i.jc, label %bb.dq, label %.thread.i60

bb.dq:                                            ; preds = %shellReset.exit.i
  %i.jd = load ptr, ptr %i.ep, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jd, ptr noundef nonnull @.str.1993, i32 noundef 1)
  %.pre.i = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.je = icmp ugt i8 %.pre.i, 1
  br i1 %i.je, label %bb.dr, label %.thread.i60

bb.dr:                                            ; preds = %bb.dq
  %i.jf = load ptr, ptr %i.ep, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jf, ptr noundef nonnull @.str.1991, i32 noundef 2)
  br label %.thread.i60

.thread.i60:                                      ; preds = %bb.dr, %bb.dq, %shellReset.exit.i
  %i.jg = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.jh = call i32 @sqlite3_bind_parameter_index(ptr noundef %i.jg, ptr noundef nonnull @.str.1992) #45
  %i.ji = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.jj = call i32 @sqlite3_bind_int(ptr noundef %i.ji, i32 noundef %i.jh, i32 noundef 1) #45 ; 0 uses
  %i.jk = icmp eq i32 %i.ja, 0                    ; 2 uses
  br i1 %i.jk, label %.lr.ph.split.split.us.1.i, label %.critedge.1.i

.lr.ph.split.split.us.1.i:                        ; preds = %.thread.i60, %.lr.ph.split.split.us.1.i
  %i.jl = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.jm = call i32 @sqlite3_step(ptr noundef %i.jl) #45
  %i.jn = icmp eq i32 %i.jm, 100
  br i1 %i.jn, label %.lr.ph.split.split.us.1.i, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.lr.ph.split.split.us.1.i, %.thread.i60
  %i.jo = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.jp = icmp eq i8 %i.jo, 1
  %.pre50.i = load ptr, ptr %i.g, align 8, !tbaa !109 ; 3 uses
  br i1 %i.jp, label %bb.ec, label %bb.ds

bb.ds:                                            ; preds = %.critedge.1.i
  %i.jq = call i32 @sqlite3_reset(ptr noundef %.pre50.i) #45 ; 2 uses
  br i1 %i.jk, label %bb.dt, label %shellReset.exit.1.i

bb.dt:                                            ; preds = %bb.ds
  %.not.i.1.i = icmp eq i32 %i.jq, 0
  br i1 %.not.i.1.i, label %shellReset.exit.1.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.jr = call ptr @sqlite3_db_handle(ptr noundef %.pre50.i) #45
  %i.js = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.jt = call ptr @sqlite3_errmsg(ptr noundef %i.jr) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.js, ptr noundef nonnull @.str.63, ptr noundef %i.jt)
  br label %shellReset.exit.1.i

shellReset.exit.1.i:                              ; preds = %bb.du, %bb.dt, %bb.ds
  %i.ju = phi i32 [ %i.ja, %bb.ds ], [ %i.jq, %bb.du ], [ 0, %bb.dt ] ; 3 uses
  %i.jv = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.jw = icmp ugt i8 %i.jv, 1
  br i1 %i.jw, label %bb.dv, label %.thread59.i

bb.dv:                                            ; preds = %shellReset.exit.1.i
  %i.jx = load ptr, ptr %i.ep, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jx, ptr noundef nonnull @.str.1993, i32 noundef 2)
  %.pre47.i = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.jy = icmp ugt i8 %.pre47.i, 1
  br i1 %i.jy, label %bb.dw, label %.thread59.i

bb.dw:                                            ; preds = %bb.dv
  %i.jz = load ptr, ptr %i.ep, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jz, ptr noundef nonnull @.str.1991, i32 noundef 3)
  br label %.thread59.i

.thread59.i:                                      ; preds = %bb.dw, %bb.dv, %shellReset.exit.1.i
  %i.ka = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.kb = call i32 @sqlite3_bind_parameter_index(ptr noundef %i.ka, ptr noundef nonnull @.str.1992) #45
  %i.kc = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.kd = call i32 @sqlite3_bind_int(ptr noundef %i.kc, i32 noundef %i.kb, i32 noundef 2) #45 ; 0 uses
  %i.ke = icmp eq i32 %i.ju, 0                    ; 2 uses
  br i1 %i.ke, label %.lr.ph.split.split.us.2.i, label %.critedge.2.i

.lr.ph.split.split.us.2.i:                        ; preds = %.thread59.i, %.lr.ph.split.split.us.2.i
  %i.kf = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.kg = call i32 @sqlite3_step(ptr noundef %i.kf) #45
  %i.kh = icmp eq i32 %i.kg, 100
  br i1 %i.kh, label %.lr.ph.split.split.us.2.i, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.lr.ph.split.split.us.2.i, %.thread59.i
  %i.ki = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.kj = icmp eq i8 %i.ki, 1
  %.pre49.i = load ptr, ptr %i.g, align 8, !tbaa !109 ; 3 uses
  br i1 %i.kj, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %.critedge.2.i
  %i.kk = call i32 @sqlite3_reset(ptr noundef %.pre49.i) #45 ; 2 uses
  br i1 %i.ke, label %bb.dy, label %shellReset.exit.2.i

bb.dy:                                            ; preds = %bb.dx
  %.not.i.2.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.2.i, label %shellReset.exit.2.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.kl = call ptr @sqlite3_db_handle(ptr noundef %.pre49.i) #45
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.kn = call ptr @sqlite3_errmsg(ptr noundef %i.kl) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.km, ptr noundef nonnull @.str.63, ptr noundef %i.kn)
  br label %shellReset.exit.2.i

shellReset.exit.2.i:                              ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.ko = phi i32 [ %i.ju, %bb.dx ], [ %i.kk, %bb.dz ], [ 0, %bb.dy ]
  %i.kp = load i8, ptr %i.ht, align 1, !tbaa !465
  %i.kq = icmp ugt i8 %i.kp, 1
  br i1 %i.kq, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %shellReset.exit.2.i
  %i.kr = load ptr, ptr %i.ep, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.kr, ptr noundef nonnull @.str.1993, i32 noundef 3)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %shellReset.exit.2.i
  %.pre48.i = load ptr, ptr %i.g, align 8, !tbaa !109
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.critedge.2.i, %.critedge.1.i, %.critedge.i
  %i.ks = phi ptr [ %.pre51.i, %.critedge.i ], [ %.pre48.i, %bb.eb ], [ %.pre50.i, %.critedge.1.i ], [ %.pre49.i, %.critedge.2.i ] ; 3 uses
  %i.kt = phi i32 [ %.promoted.i, %.critedge.i ], [ %i.ko, %bb.eb ], [ %i.ja, %.critedge.1.i ], [ %i.ju, %.critedge.2.i ] ; 2 uses
  store i32 %i.kt, ptr %i.h, align 4
  %.not.i35.i = icmp eq ptr %i.ks, null
  br i1 %.not.i35.i, label %arExtractCommand.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ku = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.ks) #45
  %i.kv = call i32 @sqlite3_finalize(ptr noundef nonnull %i.ks) #45 ; 2 uses
  %i.kw = icmp eq i32 %i.kt, 0
  br i1 %i.kw, label %bb.ee, label %arExtractCommand.exit

bb.ee:                                            ; preds = %bb.ed
  %.not7.i.i = icmp eq i32 %i.kv, 0
  br i1 %.not7.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.kx = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.ky = call ptr @sqlite3_errmsg(ptr noundef %i.ku) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.kx, ptr noundef nonnull @.str.63, ptr noundef %i.ky)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  store i32 %i.kv, ptr %i.h, align 4, !tbaa !53
  br label %arExtractCommand.exit

arExtractCommand.exit:                            ; preds = %bb.df, %bb.ec, %bb.ed, %bb.eg
  call void @sqlite3_free(ptr noundef %.1.i) #45
  %i.kz = load ptr, ptr %i.i, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.kz) #45
  %i.la = load i32, ptr %i.h, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  br label %bb.fc

bb.eh:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  store ptr null, ptr %i.d, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #45
  store ptr null, ptr %i.e, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #45
  %i.lb = call fastcc i32 @arCheckEntries(ptr noundef nonnull readonly %5)
  store i32 %i.lb, ptr %i.f, align 4, !tbaa !53
  call fastcc void @arWhereClause(ptr noundef %i.f, ptr noundef nonnull readonly %5, ptr noundef %i.d)
  %i.lc = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !467
  %9 = zext i8 %i.le to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr @__const.arListCommand.azCols, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %i.lf = load ptr, ptr %i.gj, align 8, !tbaa !474
  %i.lg = load ptr, ptr %i.d, align 8, !tbaa !88  ; 2 uses
  call void (ptr, ptr, ptr, ptr, ...) @shellPreparePrintf(ptr noundef %i.lc, ptr noundef %i.f, ptr noundef %i.e, ptr noundef nonnull @.str.2005, ptr noundef %11, ptr noundef %i.lf, ptr noundef %i.lg)
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !465
  %.not.i62 = icmp eq i8 %i.li, 0
  br i1 %.not.i62, label %.preheader.i67, label %bb.el

.preheader.i67:                                   ; preds = %bb.eh
  %i.lj = load i32, ptr %i.f, align 4, !tbaa !53
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph.i68, label %.critedge.i63

.lr.ph.i68:                                       ; preds = %.preheader.i67
  %i.ll = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.lm = call i32 @sqlite3_step(ptr noundef %i.ll) #45
  %i.ln = icmp eq i32 %i.lm, 100
  br i1 %i.ln, label %.lr.ph13.i, label %.critedge.i63

.lr.ph13.i:                                       ; preds = %.lr.ph.i68, %bb.ek
  %i.lo = load i8, ptr %i.ld, align 1, !tbaa !467
  %.not11.us.i = icmp eq i8 %i.lo, 0
  %i.lp = load ptr, ptr %i.ep, align 8, !tbaa !472 ; 2 uses
  %i.lq = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.lr = call ptr @sqlite3_column_text(ptr noundef %i.lq, i32 noundef 0) #45 ; 2 uses
  br i1 %.not11.us.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph13.i
  %i.ls = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.lt = call i32 @sqlite3_column_int(ptr noundef %i.ls, i32 noundef 1) #45
  %i.lu = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.lv = call ptr @sqlite3_column_text(ptr noundef %i.lu, i32 noundef 2) #45
  %i.lw = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.lx = call ptr @sqlite3_column_text(ptr noundef %i.lw, i32 noundef 3) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.lp, ptr noundef nonnull @.str.2007, ptr noundef %i.lr, i32 noundef %i.lt, ptr noundef %i.lv, ptr noundef %i.lx)
  br label %bb.ek

bb.ej:                                            ; preds = %.lr.ph13.i
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.lp, ptr noundef nonnull @.str.253, ptr noundef %i.lr)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.ly = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.lz = call i32 @sqlite3_step(ptr noundef %i.ly) #45
  %i.ma = icmp eq i32 %i.lz, 100
  br i1 %i.ma, label %.lr.ph13.i, label %.critedge.i63

bb.el:                                            ; preds = %bb.eh
  %i.mb = load ptr, ptr %i.ep, align 8, !tbaa !472
  %i.mc = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.md = call ptr @sqlite3_sql(ptr noundef %i.mc) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.mb, ptr noundef nonnull @.str.253, ptr noundef %i.md)
  br label %.critedge.i63

.critedge.i63:                                    ; preds = %bb.ek, %bb.el, %.lr.ph.i68, %.preheader.i67
  %i.me = load ptr, ptr %i.e, align 8, !tbaa !109 ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.me, null
  br i1 %.not.i.i64, label %.critedge.shellFinalize.exit_crit_edge.i, label %bb.em

.critedge.shellFinalize.exit_crit_edge.i:         ; preds = %.critedge.i63
  %.pre.i66 = load i32, ptr %i.f, align 4, !tbaa !53
  br label %arListCommand.exit

bb.em:                                            ; preds = %.critedge.i63
  %i.mf = call ptr @sqlite3_db_handle(ptr noundef nonnull %i.me) #45
  %i.mg = call i32 @sqlite3_finalize(ptr noundef nonnull %i.me) #45 ; 2 uses
  %i.mh = load i32, ptr %i.f, align 4, !tbaa !53  ; 2 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.en, label %arListCommand.exit

bb.en:                                            ; preds = %bb.em
  %.not7.i.i65 = icmp eq i32 %i.mg, 0
  br i1 %.not7.i.i65, label %arListCommand.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.mj = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.mk = call ptr @sqlite3_errmsg(ptr noundef %i.mf) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.mj, ptr noundef nonnull @.str.63, ptr noundef %i.mk)
  br label %arListCommand.exit

arListCommand.exit:                               ; preds = %.critedge.shellFinalize.exit_crit_edge.i, %bb.em, %bb.en, %bb.eo
  %i.ml = phi i32 [ %.pre.i66, %.critedge.shellFinalize.exit_crit_edge.i ], [ %i.mh, %bb.em ], [ %i.mg, %bb.eo ], [ 0, %bb.en ]
  call void @sqlite3_free(ptr noundef %i.lg) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  br label %bb.fc

bb.ep:                                            ; preds = %bb.cx
  %i.mm = load ptr, ptr %i.en, align 8, !tbaa !351
  %i.mn = call fastcc i32 @showHelp(ptr noundef %i.mm, ptr noundef nonnull @.str.858) ; 0 uses
  br label %bb.fc

bb.eq:                                            ; preds = %bb.cx
  %i.mo = call fastcc i32 @arCreateOrUpdateCommand(ptr noundef %5, i32 noundef 1, i32 noundef 0)
  br label %bb.fc

bb.er:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i32 0, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !470
  %.not.i69 = icmp eq i32 %i.mq, 0
  br i1 %.not.i69, label %.thread.i72, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mr = call fastcc i32 @arCheckEntries(ptr noundef nonnull readonly %5)
  store i32 %i.mr, ptr %i.a, align 4, !tbaa !53
  call fastcc void @arWhereClause(ptr noundef %i.a, ptr noundef nonnull readonly %5, ptr noundef %i.b)
  %.pre.i70 = load i32, ptr %i.a, align 4, !tbaa !53 ; 2 uses
  %.pre17.pre.i = load ptr, ptr %i.b, align 8, !tbaa !88 ; 2 uses
  %i.ms = icmp eq i32 %.pre.i70, 0
  br i1 %i.ms, label %..thread.i72_crit_edge, label %arRemoveCommand.exit

..thread.i72_crit_edge:                           ; preds = %bb.es
  %.pre196 = load ptr, ptr %i.gj, align 8, !tbaa !474
  br label %.thread.i72

.thread.i72:                                      ; preds = %..thread.i72_crit_edge, %bb.er
  %i.mt = phi ptr [ %.pre196, %..thread.i72_crit_edge ], [ %i.gv, %bb.er ]
  %.pre1725.i = phi ptr [ %.pre17.pre.i, %..thread.i72_crit_edge ], [ null, %bb.er ] ; 3 uses
  %i.mu = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2008, ptr noundef %i.mt, ptr noundef %.pre1725.i) #45 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !465
  %.not14.i = icmp eq i8 %i.mw, 0
  br i1 %.not14.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.thread.i72
  %i.mx = load ptr, ptr %i.ep, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.mx, ptr noundef nonnull @.str.253, ptr noundef %i.mu)
  br label %arRemoveCommand.exit

bb.eu:                                            ; preds = %.thread.i72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store ptr null, ptr %i.c, align 8, !tbaa !88
  %i.my = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.mz = call i32 @sqlite3_exec(ptr noundef %i.my, ptr noundef nonnull @.str.1978, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 3 uses
  store i32 %i.mz, ptr %i.a, align 4, !tbaa !53
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.nb = load ptr, ptr %i.er, align 8, !tbaa !473
  %i.nc = call i32 @sqlite3_exec(ptr noundef %i.nb, ptr noundef %i.mu, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c) #45 ; 3 uses
  store i32 %i.nc, ptr %i.a, align 4, !tbaa !53
  %.not15.i = icmp eq i32 %i.nc, 0
  %i.nd = load ptr, ptr %i.er, align 8, !tbaa !473 ; 2 uses
  br i1 %.not15.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ne = call i32 @sqlite3_exec(ptr noundef %i.nd, ptr noundef nonnull @.str.1983, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.nf = call i32 @sqlite3_exec(ptr noundef %i.nd, ptr noundef nonnull @.str.1984, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 2 uses
  store i32 %i.nf, ptr %i.a, align 4, !tbaa !53
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.eu
  %i.ng = phi i32 [ %i.nc, %bb.ew ], [ %i.nf, %bb.ex ], [ %i.mz, %bb.eu ]
  %i.nh = load ptr, ptr %i.c, align 8, !tbaa !88  ; 2 uses
  %.not16.i = icmp eq ptr %i.nh, null
  br i1 %.not16.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ni = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ni, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.nh)
  %i.nj = load ptr, ptr %i.c, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.nj) #45
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  br label %arRemoveCommand.exit

arRemoveCommand.exit:                             ; preds = %bb.es, %bb.et, %bb.fa
  %.pre1724.i = phi ptr [ %.pre1725.i, %bb.et ], [ %.pre1725.i, %bb.fa ], [ %.pre17.pre.i, %bb.es ]
  %i.nk = phi i32 [ 0, %bb.et ], [ %i.ng, %bb.fa ], [ %.pre.i70, %bb.es ]
  %.0.i71 = phi ptr [ %i.mu, %bb.et ], [ %i.mu, %bb.fa ], [ null, %bb.es ]
  call void @sqlite3_free(ptr noundef %.pre1724.i) #45
  call void @sqlite3_free(ptr noundef %.0.i71) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.fc

bb.fb:                                            ; preds = %bb.cx
  %i.nl = call fastcc i32 @arCreateOrUpdateCommand(ptr noundef %5, i32 noundef 1, i32 noundef 1)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.cr, %arParseCommand.exit.thread, %bb.cv, %bb.fb, %arRemoveCommand.exit, %bb.eq, %bb.ep, %arListCommand.exit, %arExtractCommand.exit, %bb.cy
  %.3 = phi i32 [ 1, %arParseCommand.exit.thread ], [ 1, %bb.cv ], [ %i.fv, %bb.cr ], [ %i.nl, %bb.fb ], [ %i.gx, %bb.cy ], [ %i.la, %arExtractCommand.exit ], [ %i.ml, %arListCommand.exit ], [ 0, %bb.ep ], [ %i.mo, %bb.eq ], [ %i.nk, %arRemoveCommand.exit ]
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !473 ; 3 uses
  %i.no = load ptr, ptr %0, align 8, !tbaa !389
  %.not59 = icmp eq ptr %i.nn, %i.no
  br i1 %.not59, label %close_db.exit, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.np = call i32 @sqlite3_close(ptr noundef %i.nn) #45 ; 2 uses
  %.not.i73 = icmp eq i32 %i.np, 0
  br i1 %.not.i73, label %close_db.exit, label %bb.fe
end_hunk_2
begin_hunk_3_@qrfSplitColumn:bb.a
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !53 ; 3 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.2184 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !100
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !90
  %i.do = trunc i32 %i.dk to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 17
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !99
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i8 %.pre211, ptr %i.dq, align 8, !tbaa !95
  %i.dr = or disjoint i64 %.2184, 1               ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !53 ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.dr ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.dt, ptr %i.dv, align 8, !tbaa !100
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !90
  %i.dx = trunc i32 %i.dt to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 17
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !99
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i8 %.pre211, ptr %i.dz, align 8, !tbaa !95
  %i.ea = add nuw nsw i64 %.2184, 2               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge186.loopexit.unr-lcssa, label %bb.u, !llvm.loop !1038

._crit_edge186.loopexit.unr-lcssa:                ; preds = %bb.u
  %i.eb = and i32 %.1.ph, 1
  %lcmp.mod.not = icmp eq i32 %i.eb, 0
  br i1 %lcmp.mod.not, label %._crit_edge186, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge186.loopexit.unr-lcssa
  %lcmp.mod287 = trunc i32 %.1.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.ea
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !53 ; 3 uses
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.ea ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.ed, ptr %i.ef, align 8, !tbaa !100
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 %i.ed, ptr %i.eg, align 4, !tbaa !90
  %i.eh = trunc i32 %i.ed to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 17
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !99
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i8 %.pre211, ptr %i.ej, align 8, !tbaa !95
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %.epil.preheader, %._crit_edge186.loopexit.unr-lcssa, %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !93
  tail call void @sqlite3_free(ptr noundef %i.el) #45
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !94
  tail call void @sqlite3_free(ptr noundef %i.en) #45
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !86
  tail call void @sqlite3_free(ptr noundef %i.ep) #45
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !87
  tail call void @sqlite3_free(ptr noundef %i.er) #45
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #45
  store ptr %i.bj, ptr %i.ek, align 8, !tbaa !93
  store ptr %i.bm, ptr %i.em, align 8, !tbaa !94
  store ptr %i.bp, ptr %i.eo, align 8, !tbaa !86
  store ptr %i.br, ptr %i.eq, align 8, !tbaa !87
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.ph, ptr %i.es, align 8, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bh, ptr %i.et, align 8, !tbaa !92
  store i64 %i.bh, ptr %i.bt, align 8, !tbaa !91
  br i1 %i.cv, label %.lr.ph190.preheader, label %._crit_edge191

.lr.ph190.preheader:                              ; preds = %._crit_edge186
  %min.iters.check255 = icmp ult i32 %.1.ph, 9
  br i1 %min.iters.check255, label %.lr.ph190.preheader267, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph190.preheader
  %i.eu = and i64 %i.bg, 7
  %i.ev = and i32 %.1.ph, 7
  %i.ew = icmp eq i32 %i.ev, 0
  %i.ex = select i1 %i.ew, i64 8, i64 %i.eu
  %n.vec257 = sub nsw i64 %i.bg, %i.ex            ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next262, %vector.body258 ] ; 9 uses
  %vec.phi260 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.ge, %vector.body258 ]
  %vec.phi261 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.gf, %vector.body258 ]
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 152
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 176
  %i.fo = load i32, ptr %i.fg, align 8, !tbaa !100
  %i.fp = load i32, ptr %i.fh, align 8, !tbaa !100
  %i.fq = load i32, ptr %i.fi, align 8, !tbaa !100
  %i.fr = load i32, ptr %i.fj, align 8, !tbaa !100
  %i.fs = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 1
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 2
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fr, i64 3
  %i.fw = load i32, ptr %i.fk, align 8, !tbaa !100
  %i.fx = load i32, ptr %i.fl, align 8, !tbaa !100
  %i.fy = load i32, ptr %i.fm, align 8, !tbaa !100
  %i.fz = load i32, ptr %i.fn, align 8, !tbaa !100
  %i.ga = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.fx, i64 1
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fy, i64 2
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.fz, i64 3
  %i.ge = add <4 x i32> %i.fv, %vec.phi260        ; 2 uses
  %i.gf = add <4 x i32> %i.gd, %vec.phi261        ; 2 uses
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.gg, label %middle.block263, label %vector.body258, !llvm.loop !1039

middle.block263:                                  ; preds = %vector.body258
  %bin.rdx264 = add <4 x i32> %i.gf, %i.ge
  %i.gh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264)
  br label %.lr.ph190.preheader267

.lr.ph190.preheader267:                           ; preds = %.lr.ph190.preheader, %middle.block263
  %.3188.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec257, %middle.block263 ]
  %.0131187.ph = phi i32 [ 0, %.lr.ph190.preheader ], [ %i.gh, %middle.block263 ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader267, %.lr.ph190
  %.3188 = phi i64 [ %i.gm, %.lr.ph190 ], [ %.3188.ph, %.lr.ph190.preheader267 ] ; 2 uses
  %.0131187 = phi i32 [ %i.gl, %.lr.ph190 ], [ %.0131187.ph, %.lr.ph190.preheader267 ]
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.3188
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !100
  %i.gl = add nsw i32 %i.gk, %.0131187            ; 2 uses
  %i.gm = add nuw nsw i64 %.3188, 1               ; 2 uses
  %exitcond210.not = icmp eq i64 %i.gm, %i.bg
  br i1 %exitcond210.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !1040

._crit_edge191:                                   ; preds = %.lr.ph190, %._crit_edge186
  %.0131.lcssa = phi i32 [ 0, %._crit_edge186 ], [ %i.gl, %.lr.ph190 ]
  %i.gn = load i16, ptr %i.a, align 8, !tbaa !74
  %i.go = sext i16 %i.gn to i32
  %i.gp = sub nsw i32 %i.go, %.0131.lcssa
  %i.gq = add nsw i32 %.1.ph, -1
  %i.gr = sdiv i32 %i.gp, %i.gq                   ; 2 uses
  %i.gs = trunc i32 %i.gr to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.gu = and i32 %i.gr, 254
  %i.gv = icmp samesign ugt i32 %i.gu, 5
  %spec.select = select i1 %i.gv, i8 5, i8 %i.gs
  store i8 %spec.select, ptr %i.gt, align 1, !tbaa !101
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge191, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfBoxSeparator(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.f = load i8, ptr %i.e, align 4, !tbaa !102
  %.not = icmp eq i8 %i.f, 1                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %2) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !101
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m                   ; 2 uses
  %i.o = mul nsw i32 %i.n, 3                      ; 2 uses
  %i.p = icmp sgt i32 %i.n, 10
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr @__const.qrfBoxLine.azDash, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !88       ; 4 uses
  br i1 %i.p, label %.lr.ph.i.a, label %qrfBoxLine.exit

.lr.ph.i.a:                                       ; preds = %bb.d, %.lr.ph.i.a
  %.07.i = phi i32 [ %i.q, %.lr.ph.i.a ], [ %i.o, %bb.d ] ; 2 uses
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %8, i32 noundef 30) #45
  %i.q = add nsw i32 %.07.i, -30                  ; 2 uses
  %i.r = icmp sgt i32 %.07.i, 60
  br i1 %i.r, label %.lr.ph.i.a, label %qrfBoxLine.exit, !llvm.loop !1041

qrfBoxLine.exit:                                  ; preds = %.lr.ph.i.a, %bb.d
  %.0.lcssa.i = phi i32 [ %i.o, %bb.d ], [ %i.q, %.lr.ph.i.a ]
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %8, i32 noundef %.0.lcssa.i) #45
  %i.s = load i32, ptr %i.a, align 8, !tbaa !84
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %qrfBoxLine.exit, %qrfBoxLine.exit25
  %indvars.iv = phi i64 [ %indvars.iv.next, %qrfBoxLine.exit25 ], [ 1, %qrfBoxLine.exit ] ; 2 uses
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %3) #45
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !100
  %i.y = load i8, ptr %i.k, align 1, !tbaa !101
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.x, %i.z                  ; 2 uses
  %i.ab = mul nsw i32 %i.aa, 3                    ; 2 uses
  %i.ac = icmp sgt i32 %i.aa, 10
  br i1 %i.ac, label %.lr.ph.i23, label %qrfBoxLine.exit25

.lr.ph.i23:                                       ; preds = %.lr.ph, %.lr.ph.i23
  %.07.i24 = phi i32 [ %i.ad, %.lr.ph.i23 ], [ %i.ab, %.lr.ph ] ; 2 uses
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %8, i32 noundef 30) #45
  %i.ad = add nsw i32 %.07.i24, -30               ; 2 uses
  %i.ae = icmp sgt i32 %.07.i24, 60
  br i1 %i.ae, label %.lr.ph.i23, label %qrfBoxLine.exit25, !llvm.loop !1041

qrfBoxLine.exit25:                                ; preds = %.lr.ph.i23, %.lr.ph
  %.0.lcssa.i22 = phi i32 [ %i.ab, %.lr.ph ], [ %i.ad, %.lr.ph.i23 ]
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %8, i32 noundef %.0.lcssa.i22) #45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !84
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !1042

._crit_edge:                                      ; preds = %qrfBoxLine.exit25, %qrfBoxLine.exit
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %4) #45
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRowSeparator(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i8 noundef signext range(i8 43, 125) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  store i8 %2, ptr %i.a, align 1, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !84
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.g = load i8, ptr %i.f, align 4, !tbaa !102
  %.not = icmp eq i8 %i.g, 1                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !101
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.k, %i.n
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.o, i8 noundef signext 45) #45
  %i.p = load i32, ptr %i.b, align 8, !tbaa !84
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #45
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !100
  %i.v = load i8, ptr %i.l, align 1, !tbaa !101
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.u, %i.w
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.x, i8 noundef signext 45) #45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.b, align 8, !tbaa !84
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !1043

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #45
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  ret void
}

declare i32 @sqlite3_str_errcode(ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qrfWrapLine(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #29 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !52
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader159

.preheader159:                                    ; preds = %bb.a
  %.not171 = icmp slt i32 %1, 0
  br i1 %.not171, label %sqlite3_qrf_wcwidth.exit._crit_edge.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !53
  store i32 0, ptr %4, align 4, !tbaa !53
  br label %bb.am

.lr.ph:                                           ; preds = %.preheader159, %bb.ad
  %.0110173 = phi i32 [ %.3, %bb.ad ], [ 0, %.preheader159 ] ; 12 uses
  %.0115172 = phi i32 [ %i.dj, %bb.ad ], [ 0, %.preheader159 ] ; 13 uses
  %i.c = sext i32 %.0115172 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 10 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !52    ; 6 uses
  %i.f = icmp ugt i8 %i.e, -65
  br i1 %i.f, label %bb.c, label %bb.u

bb.c:                                             ; preds = %.lr.ph
  %i.g = zext i8 %i.e to i32                      ; 6 uses
  %i.h = and i32 %i.g, 224
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 192
  %i.n = icmp eq i32 %i.m, 128
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i32 %i.g, 6
  %i.p = and i32 %i.o, 1984
  %i.q = and i32 %i.l, 63
  %i.r = or disjoint i32 %i.q, %i.p
  br label %sqlite3_qrf_decode_utf8.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.s = and i32 %i.g, 240
  %i.t = icmp eq i32 %i.s, 224
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 192
  %i.y = icmp eq i32 %i.x, 128
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 192
  %i.ad = icmp eq i32 %i.ac, 128
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = shl nuw nsw i32 %i.g, 12
  %i.af = and i32 %i.ae, 61440
  %i.ag = shl nuw nsw i32 %i.w, 6
  %i.ah = and i32 %i.ag, 4032
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = and i32 %i.ab, 63
  %i.ak = or disjoint i32 %i.ai, %i.aj
  br label %sqlite3_qrf_decode_utf8.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.al = and i32 %i.g, 248
  %i.am = icmp eq i32 %i.al, 240
  br i1 %i.am, label %bb.k, label %sqlite3_qrf_wcwidth.exit

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %i.ar = icmp eq i32 %i.aq, 128
  br i1 %i.ar, label %bb.l, label %sqlite3_qrf_wcwidth.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !52
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 192
  %i.bb = icmp eq i32 %i.ba, 128
  br i1 %i.bb, label %bb.n, label %sqlite3_qrf_wcwidth.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = shl nuw nsw i32 %i.g, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.ap, 12
  %i.bf = and i32 %i.be, 258048
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = shl nuw nsw i32 %i.au, 6
  %i.bi = and i32 %i.bh, 4032
end_hunk_3
begin_hunk_4_@arCreateOrUpdateCommand:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  br label %arExecSql.exit

arExecSql.exit:                                   ; preds = %bb.b, %bb.e
  %i.u = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i60 = icmp eq i8 %i.u, 0
  br i1 %.not.i60, label %bb.f, label %arExecSql.exit63.thread

arExecSql.exit63.thread:                          ; preds = %arExecSql.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.w, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1978)
  br label %bb.h

bb.f:                                             ; preds = %arExecSql.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #45
  store ptr null, ptr %i.g, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !473
  %i.z = call i32 @sqlite3_exec(ptr noundef %i.y, ptr noundef nonnull @.str.1978, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.g) #45 ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !88  ; 2 uses
  %.not6.i62 = icmp eq ptr %i.aa, null
  br i1 %.not6.i62, label %arExecSql.exit63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ab, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.aa)
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.ac) #45
  br label %arExecSql.exit63

arExecSql.exit63:                                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.ar

bb.h:                                             ; preds = %arExecSql.exit63.thread, %arExecSql.exit63
  store i8 0, ptr %i.i, align 16, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !475
  %.not52 = icmp eq i8 %i.ae, 0
  br i1 %.not52, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !468
  %.not54 = icmp eq ptr %i.ag, null
  br i1 %.not54, label %arExecSql.exit75, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #45
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef nonnull %i.j) #45
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !130
  %i.ai = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 50, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.1979, i64 noundef %i.ah) #45 ; 0 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !468
  %i.ak = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1980, ptr noundef nonnull %i.i, ptr noundef %i.aj) #45 ; 3 uses
  %i.al = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i64 = icmp eq i8 %i.al, 0
  br i1 %.not.i64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.an, ptr noundef nonnull @.str.253, ptr noundef %i.ak)
  br label %arExecSql.exit67

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #45
  store ptr null, ptr %i.f, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !473
  %i.aq = call i32 @sqlite3_exec(ptr noundef %i.ap, ptr noundef %i.ak, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.f) #45
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !88  ; 2 uses
  %.not6.i66 = icmp eq ptr %i.ar, null
  br i1 %.not6.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.as, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.ar)
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.at) #45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  br label %arExecSql.exit67

arExecSql.exit67:                                 ; preds = %bb.k, %bb.n
  %.0.i65 = phi i32 [ 0, %bb.k ], [ %i.aq, %bb.n ]
  call void @sqlite3_free(ptr noundef %i.ak) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #45
  br label %arExecSql.exit75

bb.o:                                             ; preds = %bb.h
  %i.au = icmp eq i32 %1, 0
  br i1 %i.au, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.av = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i68 = icmp eq i8 %i.av, 0
  br i1 %.not.i68, label %bb.q, label %arExecSql.exit71.thread

arExecSql.exit71.thread:                          ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ax, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1974)
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #45
  store ptr null, ptr %i.e, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !473
  %i.ba = call i32 @sqlite3_exec(ptr noundef %i.az, ptr noundef nonnull @.str.1974, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.e) #45 ; 2 uses
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !88  ; 2 uses
  %.not6.i70 = icmp eq ptr %i.bb, null
  br i1 %.not6.i70, label %arExecSql.exit71, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bc, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.bb)
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.bd) #45
  br label %arExecSql.exit71

arExecSql.exit71:                                 ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  %.not53 = icmp eq i32 %i.ba, 0
  br i1 %.not53, label %bb.s, label %.thread

bb.s:                                             ; preds = %arExecSql.exit71.thread, %arExecSql.exit71, %bb.o
  %i.be = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i72 = icmp eq i8 %i.be, 0
  br i1 %.not.i72, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bg, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1973)
  br label %arExecSql.exit75

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  store ptr null, ptr %i.d, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !473
  %i.bj = call i32 @sqlite3_exec(ptr noundef %i.bi, ptr noundef nonnull @.str.1973, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d) #45
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !88  ; 2 uses
  %.not6.i74 = icmp eq ptr %i.bk, null
  br i1 %.not6.i74, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bl, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.bk)
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.bm) #45
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  br label %arExecSql.exit75

arExecSql.exit75:                                 ; preds = %bb.w, %bb.t, %bb.i, %arExecSql.exit67
  %.046 = phi i32 [ %.0.i65, %arExecSql.exit67 ], [ 0, %bb.i ], [ 0, %bb.t ], [ %i.bj, %bb.w ]
  %.045 = phi ptr [ %i.i, %arExecSql.exit67 ], [ @.str.1058, %bb.i ], [ @.str.1952, %bb.t ], [ @.str.1952, %bb.w ] ; 2 uses
  %.not55 = icmp eq i32 %2, 0
  br i1 %.not55, label %bb.y, label %bb.x

bb.x:                                             ; preds = %arExecSql.exit75
  %i.bn = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1981, ptr noundef nonnull %.045) #45
  br label %bb.z

bb.y:                                             ; preds = %arExecSql.exit75
  %i.bo = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.044 = phi ptr [ %i.bn, %bb.x ], [ %i.bo, %bb.y ] ; 6 uses
  %i.bp = icmp eq ptr %.044, null
  %spec.select = select i1 %i.bp, i32 7, i32 %.046 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !470
  %i.bs = icmp sgt i32 %i.br, 0
  %i.bt = icmp eq i32 %spec.select, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %arExecSql.exit79
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %arExecSql.exit79 ] ; 2 uses
  %i.ca = load i8, ptr %i.ad, align 2, !tbaa !475
  %3 = zext i8 %i.ca to i64
  %4 = getelementptr inbounds nuw [8 x i8], ptr @__const.arCreateOrUpdateCommand.zInsertFmt, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !467
  %.not59 = icmp eq i8 %i.cb, 0
  %i.cc = select i1 %.not59, ptr @.str.1953, ptr @.str.1982
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !471
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !469
  %i.ch = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %5, ptr noundef nonnull %.045, ptr noundef nonnull %i.cc, ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %.044) #45 ; 3 uses
  %i.ci = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i76 = icmp eq i8 %i.ci, 0
  br i1 %.not.i76, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr %i.by, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cj, ptr noundef nonnull @.str.253, ptr noundef %i.ch)
  br label %arExecSql.exit79

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store ptr null, ptr %i.c, align 8, !tbaa !88
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !473
  %i.cl = call i32 @sqlite3_exec(ptr noundef %i.ck, ptr noundef %i.ch, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c) #45
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !88  ; 2 uses
  %.not6.i78 = icmp eq ptr %i.cm, null
  br i1 %.not6.i78, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cn, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.cm)
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.co) #45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  br label %arExecSql.exit79

arExecSql.exit79:                                 ; preds = %bb.ab, %bb.ae
  %.0.i77 = phi i32 [ 0, %bb.ab ], [ %i.cl, %bb.ae ] ; 2 uses
  call void @sqlite3_free(ptr noundef %i.ch) #45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !470
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next, %i.cq
  %i.cs = icmp eq i32 %.0.i77, 0
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.aa, label %._crit_edge, !llvm.loop !1321

._crit_edge:                                      ; preds = %arExecSql.exit79, %bb.z
  %.2.lcssa = phi i32 [ %spec.select, %bb.z ], [ %.0.i77, %arExecSql.exit79 ] ; 2 uses
  %.not56 = icmp eq i32 %.2.lcssa, 0
  br i1 %.not56, label %bb.af, label %.thread

.thread:                                          ; preds = %arExecSql.exit71, %._crit_edge
  %.197 = phi ptr [ %.044, %._crit_edge ], [ null, %arExecSql.exit71 ]
  %.395 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %i.ba, %arExecSql.exit71 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !473
  %i.cw = call i32 @sqlite3_exec(ptr noundef %i.cv, ptr noundef nonnull @.str.1983, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  br label %bb.aq

bb.af:                                            ; preds = %._crit_edge
  %i.cx = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i80 = icmp eq i8 %i.cx, 0
  br i1 %.not.i80, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cz, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.1984)
  br label %arExecSql.exit83

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !473
  %i.dc = call i32 @sqlite3_exec(ptr noundef %i.db, ptr noundef nonnull @.str.1984, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b) #45
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %.not6.i82 = icmp eq ptr %i.dd, null
  br i1 %.not6.i82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.de, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dd)
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.df) #45
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %arExecSql.exit83

arExecSql.exit83:                                 ; preds = %bb.ag, %bb.aj
  %.0.i81 = phi i32 [ 0, %bb.ag ], [ %i.dc, %bb.aj ] ; 3 uses
  %i.dg = load i8, ptr %i.ad, align 2, !tbaa !475
  %.not57 = icmp eq i8 %i.dg, 0
  br i1 %.not57, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %arExecSql.exit83
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !468
  %.not58 = icmp eq ptr %i.di, null
  br i1 %.not58, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1985, ptr noundef nonnull %i.i) #45 ; 3 uses
  %i.dk = load i8, ptr %i.k, align 1, !tbaa !465
  %.not.i84 = icmp eq i8 %i.dk, 0
  br i1 %.not.i84, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !472
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dm, ptr noundef nonnull @.str.253, ptr noundef %i.dj)
  br label %arExecSql.exit87

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !88
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !473
  %i.dp = call i32 @sqlite3_exec(ptr noundef %i.do, ptr noundef %i.dj, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #45 ; 0 uses
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %.not6.i86 = icmp eq ptr %i.dq, null
  br i1 %.not6.i86, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dr, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dq)
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.ds) #45
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %arExecSql.exit87

arExecSql.exit87:                                 ; preds = %bb.am, %bb.ap
  call void @sqlite3_free(ptr noundef %i.dj) #45
  br label %bb.aq

bb.aq:                                            ; preds = %arExecSql.exit83, %bb.ak, %arExecSql.exit87, %.thread
  %.196 = phi ptr [ %.197, %.thread ], [ %.044, %arExecSql.exit87 ], [ %.044, %bb.ak ], [ %.044, %arExecSql.exit83 ]
  %.4 = phi i32 [ %.395, %.thread ], [ %.0.i81, %arExecSql.exit87 ], [ %.0.i81, %bb.ak ], [ %.0.i81, %arExecSql.exit83 ]
  call void @sqlite3_free(ptr noundef %.196) #45
  br label %bb.ar

bb.ar:                                            ; preds = %arExecSql.exit63, %bb.aq
  %.0 = phi i32 [ %.4, %bb.aq ], [ %i.z, %arExecSql.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @arErrorMsg(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.b, ptr noundef nonnull @.str.1088, ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = load i8, ptr %i.c, align 2, !tbaa !464
  %.not = icmp eq i8 %i.d, 0
  %i.e = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 3 uses
  %.not.i4 = icmp eq ptr %i.e, null               ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1970) #45
  br label %cli_puts.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !122
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1970, i64 23, i64 1, ptr %i.f) #50 ; 0 uses
  br label %cli_puts.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1971) #45
  br label %cli_puts.exit

bb.g:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !122
  %fwrite8 = call i64 @fwrite(ptr nonnull @.str.1971, i64 36, i64 1, ptr %i.g) #50 ; 0 uses
  br label %cli_puts.exit

cli_puts.exit:                                    ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  call void @sqlite3_free(ptr noundef %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arCheckEntries(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i32 0, ptr %i.a, align 4, !tbaa !53
end_hunk_4
