Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0
@28 = private unnamed_addr constant [5 x i8] c"\C0\01\0A\C0\00", align 1
@29 = private unnamed_addr constant [24 x i8] c"\09invalid -\C0\0A argument \C0\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\A3\02\00\00+\00\00\00" }>, align 8
@31 = private unnamed_addr constant [22 x i8] c"\13invalid + argument \C0\00", align 1
@32 = private unnamed_addr constant [28 x i8] c"\19invalid --pages argument \C0\00", align 1
@33 = private unnamed_addr constant [32 x i8] c"pr-error-invalid-number-argument", align 1
@34 = private unnamed_addr constant [22 x i8] c"\13invalid - argument \C0\00", align 1
@35 = private unnamed_addr constant [8 x i8] zeroinitializer, align 8
@_RNvNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global { i64, i8, [7 x i8] }
@36 = private unnamed_addr constant [4 x i8] c"\01-\C0\00", align 1
@37 = private unnamed_addr constant [12 x i8] c"number-lines", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\DB\02\00\00\0A\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\E8\02\00\00\0A\00\00\00" }>, align 8
@40 = private unnamed_addr constant [5 x i8] c"pages", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\F4\02\00\00H\00\00\00" }>, align 8
@42 = private unnamed_addr constant [28 x i8] c"invalid --pages argument '0'", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\06\03\00\00\0E\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\13\03\00\00\0E\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\C1\05\00\00!\00\00\00" }>, align 8
@_RNvNvNtNtNtCs3RYoXg2VPb3_6memchr4arch6x86_646memchr11memchr2_raw2FN = external local_unnamed_addr global { { { ptr } } }
@46 = private unnamed_addr constant [16 x i8] c"no-file-warnings", align 1
@47 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@48 = private unnamed_addr constant [1 x i8] c"-", align 1
@49 = private unnamed_addr constant [9 x i8] c"form-feed", align 1
@50 = private unnamed_addr constant [5 x i8] c"merge", align 1
@51 = private unnamed_addr constant [6 x i8] c"column", align 1
@52 = private unnamed_addr constant [6 x i8] c"across", align 1
@53 = private unnamed_addr constant [6 x i8] c"header", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00O\02\00\00!\00\00\00" }>, align 8
@55 = private unnamed_addr constant [17 x i8] c"first-line-number", align 1
@56 = private unnamed_addr constant [11 x i8] c"expand-tabs", align 1
@57 = private unnamed_addr constant [12 x i8] c"double-space", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\C2\02\00\00(\00\00\00" }>, align 8
@59 = private unnamed_addr constant [5 x i8] c"start", align 1
@60 = private unnamed_addr constant [3 x i8] c"end", align 1
@61 = private unnamed_addr constant [28 x i8] c"pr-error-invalid-pages-range", align 1
@62 = private unnamed_addr constant [6 x i8] c"length", align 1
@63 = private unnamed_addr constant [29 x i8] c"invalid --length argument '0'", align 1
@64 = private unnamed_addr constant [11 x i8] c"omit-header", align 1
@65 = private unnamed_addr constant [15 x i8] c"omit-pagination", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00>\03\00\00\22\00\00\00" }>, align 8
@67 = private unnamed_addr constant [10 x i8] c"sep-string", align 1
@68 = private unnamed_addr constant [9 x i8] c"separator", align 1
@69 = private unnamed_addr constant [5 x i8] c"width", align 1
@70 = private unnamed_addr constant [28 x i8] c"invalid --width argument '0'", align 1
@71 = private unnamed_addr constant [10 x i8] c"join-lines", align 1
@72 = private unnamed_addr constant [10 x i8] c"page-width", align 1
@73 = private unnamed_addr constant [33 x i8] c"invalid --page-width argument '0'", align 1
@74 = private unnamed_addr constant [29 x i8] c"invalid --column argument '0'", align 1
@75 = private unnamed_addr constant [6 x i8] c"indent", align 1
@76 = private unnamed_addr constant [36 x i8] c"!'-o MARGIN' invalid line offset: \C0\00", align 1
@77 = private unnamed_addr constant [76 x i8] c"!'-o MARGIN' invalid line offset: \C0': Value too large for defined data type\00", align 1
@78 = private unnamed_addr constant [30 x i8] c"pr-error-across-merge-conflict", align 1
@79 = private unnamed_addr constant [30 x i8] c"pr-error-column-merge-conflict", align 1
@80 = private unnamed_addr constant [7 x i8] c"pr-page", align 1
@81 = private unnamed_addr constant [5 x i8] c"\C0\01 \C0\00", align 1
@82 = private unnamed_addr constant [8 x i8] c"\C0\01 \C0\01 \C0\00", align 1
@83 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@84 = private unnamed_addr constant [22 x i8] c"\C0\D3 \00\00h\02\00\C8\03\00\D3 \00\00h\05\00\C8\06\00\00", align 1
@85 = private unnamed_addr constant [32 x i8] c"Formatting argument out of range", align 1
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\FC\05\00\00\09\00\00\00" }>, align 8
@87 = private unnamed_addr constant [11 x i8] c"date-format", align 1
@88 = private unnamed_addr constant [15 x i8] c"POSIXLY_CORRECT", align 1
@89 = private unnamed_addr constant [7 x i8] c"LC_TIME", align 1
@90 = private unnamed_addr constant [6 x i8] c"LC_ALL", align 1
@_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO = external local_unnamed_addr global { ptr, i64 }
@91 = private unnamed_addr constant [14 x i8] c"%b %e %H:%M %Y", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\EB\03\00\00-\00\00\00" }>, align 8
@93 = private unnamed_addr constant [9 x i8] c"^[^-]\\d*$", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\AE\01\00\00.\00\00\00" }>, align 8
@95 = private unnamed_addr constant [7 x i8] c"^-n\\s*$", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\AF\01\00\00*\00\00\00" }>, align 8
@97 = private unnamed_addr constant [3 x i8] c"^-e", align 1
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\B0\01\00\00&\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\BA\01\00\00'\00\00\00" }>, align 8
@100 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\BB\01\00\00\13\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\BC\01\00\00\13\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\C8\01\00\00\12\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\005\05\00\00\14\00\00\00" }>, align 8
@105 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@106 = private unnamed_addr constant [11 x i8] c"\D3 \00\00(\01\00\C8\02\00\00", align 1
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\D9\05\00\00\0D\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\D7\05\00\007\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00\D7\05\00\00\0D\00\00\00" }>, align 8
@110 = private unnamed_addr constant [5 x i8] c"count", align 1
@111 = private unnamed_addr constant [41 x i8] c"pr-error-starting-page-exceeds-page-count", align 1
@112 = private unnamed_addr constant [2 x i8] c"pr", align 1
@113 = private unnamed_addr constant [25 x i8] c"(uutils coreutils) 0.10.0", align 1
@114 = private unnamed_addr constant [8 x i8] c"pr-about", align 1
@115 = private unnamed_addr constant [13 x i8] c"pr-after-help", align 1
@116 = private unnamed_addr constant [8 x i8] c"pr-usage", align 1
@117 = private unnamed_addr constant [13 x i8] c"pr-help-pages", align 1
@118 = private unnamed_addr constant [22 x i8] c"FIRST_PAGE[:LAST_PAGE]", align 1
@119 = private unnamed_addr constant [14 x i8] c"pr-help-header", align 1
@120 = private unnamed_addr constant [6 x i8] c"STRING", align 1
@121 = private unnamed_addr constant [6 x i8] c"FORMAT", align 1
@122 = private unnamed_addr constant [19 x i8] c"pr-help-date-format", align 1
@123 = private unnamed_addr constant [20 x i8] c"pr-help-double-space", align 1
@124 = private unnamed_addr constant [20 x i8] c"pr-help-number-lines", align 1
@125 = private unnamed_addr constant [13 x i8] c"[char][width]", align 1
@126 = private unnamed_addr constant [25 x i8] c"pr-help-first-line-number", align 1
@127 = private unnamed_addr constant [6 x i8] c"NUMBER", align 1
@128 = private unnamed_addr constant [19 x i8] c"pr-help-omit-header", align 1
@129 = private unnamed_addr constant [23 x i8] c"pr-help-omit-pagination", align 1
@130 = private unnamed_addr constant [19 x i8] c"pr-help-page-length", align 1
@131 = private unnamed_addr constant [11 x i8] c"PAGE_LENGTH", align 1
@132 = private unnamed_addr constant [24 x i8] c"pr-help-no-file-warnings", align 1
@133 = private unnamed_addr constant [17 x i8] c"pr-help-form-feed", align 1
@134 = private unnamed_addr constant [20 x i8] c"pr-help-column-width", align 1
@135 = private unnamed_addr constant [18 x i8] c"pr-help-page-width", align 1
@136 = private unnamed_addr constant [14 x i8] c"pr-help-across", align 1
@137 = private unnamed_addr constant [11 x i8] c"column-down", align 1
@138 = private unnamed_addr constant [14 x i8] c"pr-help-column", align 1
@139 = private unnamed_addr constant [29 x i8] c"pr-help-column-char-separator", align 1
@140 = private unnamed_addr constant [4 x i8] c"char", align 1
@141 = private unnamed_addr constant [1 x i8] c"\09", align 1
@142 = private unnamed_addr constant [31 x i8] c"pr-help-column-string-separator", align 1
@143 = private unnamed_addr constant [6 x i8] c"string", align 1
@144 = private unnamed_addr constant [1 x i8] c" ", align 1
@145 = private unnamed_addr constant [13 x i8] c"pr-help-merge", align 1
@146 = private unnamed_addr constant [14 x i8] c"pr-help-indent", align 1
@147 = private unnamed_addr constant [6 x i8] c"margin", align 1
@148 = private unnamed_addr constant [18 x i8] c"pr-help-join-lines", align 1
@149 = private unnamed_addr constant [4 x i8] c"help", align 1
@150 = private unnamed_addr constant [12 x i8] c"pr-help-help", align 1
@151 = private unnamed_addr constant [5 x i8] c"files", align 1
@152 = private unnamed_addr constant [13 x i8] c"[CHAR][WIDTH]", align 1
@153 = private unnamed_addr constant [19 x i8] c"pr-help-expand-tabs", align 1
@154 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00<\04\00\00\0C\00\00\00" }>, align 8
@155 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00?\04\00\00&\00\00\00" }>, align 8
@156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00D\04\00\00I\00\00\00" }>, align 8
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00Y\04\00\00&\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\13\00\00\00\00\00\00\00^\04\00\00I\00\00\00" }>, align 8
@159 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@160 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECshDScVpnq8df_5uu_pr, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1m_NtCs7tKScEop1B6_5alloc6stringNtB6_13FromUtf8ErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt }>, align 8
@161 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@162 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsipSpXIjCLRi_5regex5error5ErrorECshDScVpnq8df_5uu_pr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsipSpXIjCLRi_5regex5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt }>, align 8
@163 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@164 = private unnamed_addr constant [27 x i8] c"always valid Unix epoch day", align 1
@165 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/jiff-core-0.1.0/src/tz/offset.rs\00", align 1
@166 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @165, [16 x i8] c"e\00\00\00\00\00\00\00\C7\00\00\00\14\00\00\00" }>, align 8
@167 = private unnamed_addr constant [28 x i8] c"always valid civil subsecond", align 1
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @165, [16 x i8] c"e\00\00\00\00\00\00\00\CC\00\00\00\14\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"l\00\00\00\00\00\00\00\16\00\00\000\00\00\00" }>, align 8
@170 = private unnamed_addr constant [12 x i8] c"valid offset", align 1
@171 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/jiff-0.2.35/src/tz/offset.rs\00", align 1
@172 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @171, [16 x i8] c"a\00\00\00\00\00\00\00\18\04\00\00\0D\00\00\00" }>, align 8
@173 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.16/src/util/pool.rs\00", align 1
@174 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @173, [16 x i8] c"k\00\00\00\00\00\00\00=\02\00\00\1C\00\00\00" }>, align 8
@175 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @173, [16 x i8] c"k\00\00\00\00\00\00\00^\02\00\00\1C\00\00\00" }>, align 8
@176 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @173, [16 x i8] c"k\00\00\00\00\00\00\00k\02\00\002\00\00\00" }>, align 8
@_RNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner17THREAD_ID_DROPPED = external global i64
@177 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @173, [16 x i8] c"k\00\00\00\00\00\00\00\01\03\00\00\15\00\00\00" }>, align 8
@_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner7COUNTER = external global { { { i64 } } }
@178 = private unnamed_addr constant [43 x i8] c"regex: thread ID allocation space exhausted", align 1
@179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @173, [16 x i8] c"k\00\00\00\00\00\00\00^\01\00\00\11\00\00\00" }>, align 8
@180 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCshDScVpnq8df_5uu_pr }>, align 8
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCshDScVpnq8df_5uu_pr }>, align 8
@182 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@183 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@184 = private unnamed_addr constant [5 x i8] c"error", align 1
@185 = private unnamed_addr constant [7 x i8] c"\04pr: \C0\00", align 1
@186 = private unnamed_addr constant [11 x i8] c"\04pr: \C0\02: \C0\00", align 1
@187 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@188 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCshDScVpnq8df_5uu_pr }>, align 8
@189 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@190 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@191 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@192 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCshDScVpnq8df_5uu_pr }>, align 8
@193 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@194 = private unnamed_addr constant [76 x i8] c"/rustc/7608eb7b07eaf93f16d7cf5bcb2098eca87503df/library/alloc/src/string.rs\00", align 1
@195 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @194, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@196 = private unnamed_addr constant [5 x i8] c"Error", align 1
@197 = private unnamed_addr constant [4 x i8] c"None", align 1
@198 = private unnamed_addr constant [4 x i8] c"Some", align 1
@llvm.used = appending global [1 x ptr] [ptr @_RNvCshDScVpnq8df_5uu_pr21CAPTURE_STARTUP_STATE], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RINvCshDScVpnq8df_5uu_pr10write_pageNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 192153584101141163) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [20 x i8], align 1                ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.6.i = alloca [8 x i8], align 8           ; 9 uses
  %.sroa.10.i = alloca [8 x i8], align 8          ; 9 uses
  %.sroa.14.i = alloca [8 x i8], align 8          ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 23 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [112 x i8], align 8               ; 17 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %4, ptr %i.ab, align 8, !noalias !8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 313
  %i.am = load i8, ptr %i.al, align 1, !range !10, !alias.scope !5, !noalias !11, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.split.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread

.split.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %i.ao, ptr %i.aa, align 8, !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.ap, ptr %i.z, align 8, !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 7) #30, !noalias !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8
  store ptr %i.w, ptr %i.v, align 8, !noalias !8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.ab, ptr %i.aq, align 8, !noalias !8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @81, ptr noundef nonnull %i.v) #30, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %.val.i.i.i = load i64, ptr %i.w, align 8, !range !18, !alias.scope !19, !noalias !8, !noundef !4 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i, label %bb.b

bb.b:                                             ; preds = %.split.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !19, !noalias !8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !20
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i: ; preds = %bb.b, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = load i64, ptr %i.at, align 8, !range !21, !alias.scope !5, !noalias !11, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !5, !noalias !11
  %.sroa.0.0.i = select i1 %i.av, i64 %i.ax, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !5, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !5, !noalias !11, !noundef !4 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 32
  br i1 %i.bc, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i
  %i.bd = call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb) #30, !noalias !11
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i
  %i.be = call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb) #30, !noalias !11
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.be, %bb.d ], [ %i.bd, %bb.c ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !5, !noalias !11, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !5, !noalias !11, !noundef !4 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 32
  br i1 %i.bj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i
  %i.bk = call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi) #30, !noalias !11
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit95.i

bb.f:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit.i
  %i.bl = call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi) #30, !noalias !11
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit95.i

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit95.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i94.i = phi i64 [ %i.bl, %bb.f ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !8, !noundef !4 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 32
  br i1 %i.bq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit95.i
  %i.br = call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp) #30, !noalias !11
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit97.i

bb.h:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit95.i
  %i.bs = call noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp) #30, !noalias !11
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit97.i

_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit97.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i96.i = phi i64 [ %i.bs, %bb.h ], [ %i.br, %bb.g ] ; 2 uses
  %i.bt = add i64 %.sroa.0.0.i.i, 2
  %i.bu = add i64 %i.bt, %.sroa.0.0.i94.i
  %i.bv = add i64 %i.bu, %.sroa.0.0.i96.i
  %i.bw = icmp ult i64 %i.bv, %.sroa.0.0.i
  br i1 %i.bw, label %bb.i, label %.split81.i

.split81.i:                                       ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit97.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8
  store ptr %i.aa, ptr %i.s, align 8, !noalias !8
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.z, ptr %i.bx, align 8, !noalias !8
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.y, ptr %i.by, align 8, !noalias !8
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @82, ptr noundef nonnull %i.s) #30, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8
  br label %bb.j

bb.i:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit97.i
  %i.bz = add i64 %.sroa.0.0.i.i, %.sroa.0.0.i94.i
  %i.ca = add i64 %i.bz, %.sroa.0.0.i96.i
  %i.cb = sub i64 %.sroa.0.0.i, %i.ca             ; 3 uses
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  %i.cd = sub nuw nsw i64 %i.cb, %i.cc            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8
  %i.ce = icmp ugt i64 %i.cb, 131071
  br i1 %i.ce, label %bb.n, label %bb.m, !prof !22

bb.j:                                             ; preds = %.split85.i, %.split81.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !11
  %i.cf = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 120, i64 noundef range(i64 1, 9) 8) #30, !noalias !11 ; 34 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.k, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !22

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #31, !noalias !11
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.j
  store i64 0, ptr %i.cf, align 8, !noalias !11
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !11
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.7.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !11
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx66.i, align 8, !noalias !11
  %.sroa.8.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx72.i, align 8, !noalias !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  store i64 0, ptr %i.ci, align 8, !noalias !11
  %.sroa.7.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx68.i, align 8, !noalias !11
  %.sroa.8.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %.sroa.7.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx74.i, i8 0, i64 16, i1 false), !noalias !11
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.0..sroa_idx70.i, align 8, !noalias !11
  %.sroa.8.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  store i64 0, ptr %.sroa.8.0..sroa_idx76.i, align 8, !noalias !11
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %.val.i.i98.i = load i64, ptr %i.y, align 8, !range !18, !alias.scope !29, !noalias !8, !noundef !4 ; 2 uses
  %i.cj = icmp eq i64 %.val.i.i98.i, 0
  br i1 %i.cj, label %_RNvCshDScVpnq8df_5uu_pr14header_content.exit, label %bb.l

bb.l:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.val1.i.i99.i = load ptr, ptr %i.bm, align 8, !alias.scope !29, !noalias !8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i99.i, i64 noundef %.val.i.i98.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !30
  br label %_RNvCshDScVpnq8df_5uu_pr14header_content.exit

bb.m:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_RINvCshDScVpnq8df_5uu_pr10write_pageNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_:bb.a
  br i1 %i.ko, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !284
  %i.kp = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.kn, i64 noundef range(i64 1, 9) 8) #30, !noalias !284 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.av, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i

bb.av:                                            ; preds = %bb.au, %bb.as
  %.sroa.4.0.ph.i.i.i160.i = phi i64 [ 8, %bb.au ], [ 0, %bb.as ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i160.i, i64 %i.kn) #31, !noalias !293
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i: ; preds = %bb.au, %bb.at
  %.sroa.10.0.i.i.i136.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.at ], [ %i.kp, %bb.au ] ; 10 uses
  %.sroa.4.0.i.i.i137.i = phi i64 [ 0, %bb.at ], [ %.sroa.02.0.i, %bb.au ] ; 5 uses
  %i.kr = icmp samesign ule i64 %.sroa.02.0.i, %.sroa.4.0.i.i.i137.i
  call void @llvm.assume(i1 %i.kr)
  %.not.i138.i = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %.not.i138.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.preheader.i139.i

.lr.ph.i.i.i.i.i.i.preheader.i139.i:              ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i
  %i.ks = shl i64 %.sroa.09.0.i, 3                ; 4 uses
  %i.kt = icmp ugt i64 %.sroa.09.0.i, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i.i.i140.i = icmp ugt i64 %i.ks, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i141.i = or i1 %i.kt, %.not.i.i.i.i.i.i.i.i.i.i.i.i140.i
  %i.ku = icmp ne i64 %i.ks, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i141.i, label %.split.i154.i, label %.lr.ph.i.i.i.i.i.i.preheader.split.i142.i, !prof !132

.lr.ph.i.i.i.i.i.i.preheader.split.i142.i:        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i139.i
  %.not.i.i.i.i.i.i.i.i.i143.i = icmp eq i64 %.sroa.09.0.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i143.i, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i

.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader:        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.split.i142.i
  %xtraiter571 = and i64 %.sroa.02.0.i, 3         ; 3 uses
  %i.kv = icmp ult i64 %.sroa.02.0.i, 4
  br i1 %i.kv, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new

.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new:    ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader
  %unroll_iter577 = and i64 %.sroa.02.0.i, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.us.us.i156.i

.lr.ph.i.i.i.i.i.i.us.us.i156.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i156.i, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new
  %i.kw = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new ], [ %i.lc, %.lr.ph.i.i.i.i.i.i.us.us.i156.i ] ; 5 uses
  %niter578 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new ], [ %niter578.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i156.i ]
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  store i64 0, ptr %i.kx, align 8, !noalias !294
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i, align 8, !noalias !294
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i, align 8, !noalias !294
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store i64 0, ptr %i.kz, align 8, !noalias !294
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.1 = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.1, align 8, !noalias !294
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.1 = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.1, align 8, !noalias !294
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  store i64 0, ptr %i.lb, align 8, !noalias !294
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.2 = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.2, align 8, !noalias !294
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.2 = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.2, align 8, !noalias !294
  %i.lc = add nuw i64 %i.kw, 4                    ; 2 uses
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  store i64 0, ptr %i.le, align 8, !noalias !294
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.3 = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.3, align 8, !noalias !294
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.3 = getelementptr inbounds nuw i8, ptr %i.ld, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.3, align 8, !noalias !294
  %niter578.next.3 = add i64 %niter578, 4         ; 2 uses
  %niter578.ncmp.3 = icmp eq i64 %niter578.next.3, %unroll_iter577
  br i1 %niter578.ncmp.3, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i

.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i:  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.split.i142.i
  call void @llvm.assume(i1 %i.ku)
  %xtraiter563 = and i64 %.sroa.09.0.i, 1
  %i.lf = icmp eq i64 %.sroa.09.0.i, 1
  %unroll_iter569 = and i64 %.sroa.09.0.i, 2305843009213693950
  %lcmp.mod567.not = icmp eq i64 %xtraiter563, 0
  %lcmp.mod568 = trunc i64 %.sroa.09.0.i to i1
  br label %.lr.ph.i.i.i.i.i.i.i145.i

.lr.ph.i.i.i.i.i.i.i145.i:                        ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, %.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i
  %i.lg = phi i64 [ %i.lh, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i ] ; 3 uses
  %i.lh = add nuw i64 %i.lg, 1                    ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !315
  %i.li = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ks, i64 noundef range(i64 1, 9) 8) #30, !noalias !315 ; 5 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %.split.i154.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i154.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i145.i, %.lr.ph.i.i.i.i.i.i.preheader.i139.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.split.i155.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i139.i ], [ 8, %.lr.ph.i.i.i.i.i.i.i145.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.split.i155.i, i64 %i.ks) #31, !noalias !324
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i145.i
  %i.lk = mul i64 %i.lg, %.sroa.09.0.i            ; 3 uses
  br i1 %i.lf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i:        ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i
  %i.ll = phi i64 [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter570 = phi i64 [ %niter570.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.lm = or disjoint i64 %i.ll, 1                ; 2 uses
  %i.ln = add i64 %i.ll, %i.lk                    ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %2
  %i.lp = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ln
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i = select i1 %i.lo, ptr %i.lp, ptr null
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.ll
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i, ptr %i.lq, align 8, !noalias !325
  %i.lr = add nuw nsw i64 %i.ll, 2                ; 2 uses
  %i.ls = add i64 %i.lm, %i.lk                    ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %2
  %i.lu = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ls
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.1 = select i1 %i.lt, ptr %i.lu, ptr null
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lm
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.1, ptr %i.lv, align 8, !noalias !325
  %niter570.next.1 = add nuw nsw i64 %niter570, 2 ; 2 uses
  %niter570.ncmp.1 = icmp eq i64 %niter570.next.1, %unroll_iter569
  br i1 %niter570.ncmp.1, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i
  br i1 %lcmp.mod567.not, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.epil.init566 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod568)
  %i.lw = add i64 %.epil.init566, %i.lk           ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %2
  %i.ly = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.lw
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.epil = select i1 %i.lx, ptr %i.ly, ptr null
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %.epil.init566
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.epil, ptr %i.lz, align 8, !noalias !325
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.lg ; 3 uses
  store i64 %.sroa.09.0.i, ptr %i.ma, align 8, !noalias !348
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i149.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.li, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i149.i, align 8, !noalias !348
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i150.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store i64 %.sroa.09.0.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i150.i, align 8, !noalias !348
  %exitcond.not.i.i.i.i.i.i.i151.i = icmp eq i64 %i.lh, %.sroa.02.0.i
  br i1 %exitcond.not.i.i.i.i.i.i.i151.i, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.i145.i

_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.i
  %lcmp.mod591.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod591.not, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader:      ; preds = %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader
  %.epil.init590 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader ], [ %i.hb, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod592 = icmp ne i64 %xtraiter587, 0
  call void @llvm.assume(i1 %lcmp.mod592)
  br label %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil

.lr.ph.i.i.i.i.i.i.us.us.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader
  %i.mb = phi i64 [ %i.mc, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil ], [ %.epil.init590, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter588 = phi i64 [ %epil.iter588.next, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader ]
  %i.mc = add nuw i64 %i.mb, 1
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.mb ; 3 uses
  store i64 0, ptr %i.md, align 8, !noalias !158
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil, align 8, !noalias !158
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil, align 8, !noalias !158
  %epil.iter588.next = add i64 %epil.iter588, 1   ; 2 uses
  %epil.iter588.cmp.not = icmp eq i64 %epil.iter588.next, %xtraiter587
  br i1 %epil.iter588.cmp.not, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil, !llvm.loop !349

_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i156.i
  %lcmp.mod575.not = icmp eq i64 %xtraiter571, 0
  br i1 %lcmp.mod575.not, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader:   ; preds = %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader
  %.epil.init574 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader ], [ %i.lc, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa ]
  %lcmp.mod576 = icmp ne i64 %xtraiter571, 0
  call void @llvm.assume(i1 %lcmp.mod576)
  br label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil

.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil:             ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader
  %i.me = phi i64 [ %i.mf, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil ], [ %.epil.init574, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader ] ; 2 uses
  %epil.iter572 = phi i64 [ %epil.iter572.next, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader ]
  %i.mf = add nuw i64 %i.me, 1
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.me ; 3 uses
  store i64 0, ptr %i.mg, align 8, !noalias !294
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.epil = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.epil, align 8, !noalias !294
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.epil = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.epil, align 8, !noalias !294
  %epil.iter572.next = add i64 %epil.iter572, 1   ; 2 uses
  %epil.iter572.cmp.not = icmp eq i64 %epil.iter572.next, %xtraiter571
  br i1 %epil.iter572.cmp.not, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil, !llvm.loop !350

_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i:  ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_8to_table0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil
  %.idx435.i.pre-phi = phi i64 [ %i.kn, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa ], [ %i.gl, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_8to_table0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ], [ %i.gl, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil ], [ %i.kn, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ]
  %.sroa.9.0.ph.i = phi ptr [ %.sroa.10.0.i.i.i136.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa ], [ %.sroa.10.0.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_8to_table0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ], [ %.sroa.10.0.i.i.i.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa ], [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil ], [ %.sroa.10.0.i.i.i136.i, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil ], [ %.sroa.10.0.i.i.i136.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ] ; 3 uses
  %.sroa.0.0204.ph.i = phi i64 [ %.sroa.4.0.i.i.i137.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa ], [ %.sroa.4.0.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_8to_table0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ], [ %.sroa.4.0.i.i.i.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa ], [ %.sroa.4.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil ], [ %.sroa.4.0.i.i.i137.i, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil ], [ %.sroa.4.0.i.i.i137.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  store i64 0, ptr %.sroa.14.i, align 8, !noalias !64
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.i, align 8, !noalias !64
  store i64 0, ptr %.sroa.10.i, align 8, !noalias !64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.ph.i) ]
  %i.mh = icmp ult i64 %.sroa.02.0.i, 384307168202282326
  call void @llvm.assume(i1 %i.mh)
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.9.0.ph.i, i64 %.idx435.i.pre-phi
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.lr.ph.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i.i
  %.sroa.9.0.ph443.i = phi ptr [ %.sroa.10.0.i.i.i136.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i ], [ %.sroa.10.0.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0204.ph444.i = phi i64 [ %.sroa.4.0.i.i.i137.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i ], [ %.sroa.4.0.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  store i64 0, ptr %.sroa.14.i, align 8, !noalias !64
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.i, align 8, !noalias !64
  store i64 0, ptr %.sroa.10.i, align 8, !noalias !64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.ph443.i) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i.i

_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i:         ; preds = %bb.ap, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i
  %.idx.i.pre-phi = phi i64 [ %i.ic, %bb.ap ], [ %i.ic, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i ], [ %.pre243, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i ]
  %.sroa.13.0.i = phi i64 [ %.sroa.02.0.i, %bb.ap ], [ %.sroa.02.0.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i ], [ %.sroa.13.0.copyload.i, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.10.0.i.i.i114.i, %bb.ap ], [ %.sroa.10.0.i.i.i114.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i ], [ %.sroa.9.0.copyload.i, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i ] ; 5 uses
  %.sroa.0.0204.i = phi i64 [ %.sroa.4.0.i.i.i115.i, %bb.ap ], [ %.sroa.4.0.i.i.i115.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i ], [ %.sroa.0.0.copyload.i, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i ] ; 2 uses
  %.sroa.061.4.i = phi i1 [ false, %bb.ap ], [ false, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i ], [ true, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  store i64 0, ptr %.sroa.14.i, align 8, !noalias !64
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.i, align 8, !noalias !64
  store i64 0, ptr %.sroa.10.i, align 8, !noalias !64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i) ]
  %i.mj = icmp ult i64 %.sroa.13.0.i, 384307168202282326
  call void @llvm.assume(i1 %i.mj)
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 %.idx.i.pre-phi ; 2 uses
  %i.ml = icmp eq i64 %.sroa.13.0.i, 0
  br i1 %i.ml, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.lr.ph.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.lr.ph.i: ; preds = %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i
  %i.mm = phi ptr [ %i.mi, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i ], [ %i.mk, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ] ; 7 uses
  %.sroa.061.4440.i = phi i1 [ true, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i ], [ %.sroa.061.4.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ] ; 5 uses
  %.sroa.0.0204438.i = phi i64 [ %.sroa.0.0204.ph.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i ], [ %.sroa.0.0204.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ] ; 6 uses
  %.sroa.9.0436.i = phi ptr [ %.sroa.9.0.ph.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i ], [ %.sroa.9.0.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ] ; 6 uses
  %.not83.i = icmp ne i64 %i.dv, 0
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !56, !noalias !58 ; 2 uses
  %.not8.i.i = icmp eq i64 %i.mo, 0
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i178.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !range !60, !alias.scope !56, !noalias !58
  %.not48.i.i.i = icmp eq i64 %i.mq, -1
  %.not49.i.i.i = icmp eq i64 %i.dv, 0
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i179.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.ms = load i64, ptr %i.mr, align 8, !alias.scope !56, !noalias !58 ; 7 uses
  %.not.i56.not.i.i.i = icmp eq i64 %i.ms, 0
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mu = icmp ugt i64 %i.ms, 65535               ; 2 uses
  %i.mv = trunc nuw i64 %i.ms to i16              ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.435.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.540.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 315
  %i.nc = load i8, ptr %i.nb, align 1, !range !10, !alias.scope !56, !noalias !58
  %i.nd = trunc nuw i8 %i.nc to i1
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.nf = trunc nuw i64 %i.ee to i1
  %.sroa.754.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx61.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ng = icmp eq i64 %.sroa.09.0.i, 0
  %reass.sub.i.i = sub i64 %i.eg, %.sroa.09.0.i
  %i.nh = add i64 %reass.sub.i.i, 1               ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.ni = icmp ugt i64 %.sroa.09.0.i, %i.nh
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.nk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.lr.ph.i
  %.sroa.019.0288.i = phi i8 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.lr.ph.i ], [ %.sroa.019.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i ] ; 2 uses
  %.sroa.6193.0287.i = phi ptr [ %.sroa.9.0436.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.lr.ph.i ], [ %i.nn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i ] ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.6193.0287.i, i64 24 ; 9 uses
  %.sroa.0195.0.copyload196.i = load i64, ptr %.sroa.6193.0287.i, align 8, !noalias !351 ; 7 uses
  %.sroa.8.0..sroa.6193.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6193.0287.i, i64 8
  %.sroa.8.sroa.0.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa.6193.8..sroa_idx.i, align 8, !noalias !351 ; 6 uses
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.6193.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6193.0287.i, i64 16
  %.sroa.8.sroa.6.0.copyload.i = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.6193.8..sroa_idx.sroa_idx.i, align 8, !noalias !351 ; 4 uses
  %.not80.i = icmp eq i64 %.sroa.0195.0.copyload196.i, -1
  br i1 %.not80.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i
  %i.no = icmp ult i64 %.sroa.8.sroa.6.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.no)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.i) ]
  %.idx292.i = shl nuw nsw i64 %.sroa.8.sroa.6.0.copyload.i, 3
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.copyload.i, i64 %.idx292.i
  %i.nq = icmp eq i64 %.sroa.8.sroa.6.0.copyload.i, 0
  br i1 %i.nq, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i, %bb.bc, %bb.bb, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i
  %i.nr = phi ptr [ %i.mm, %bb.bc ], [ %i.mm, %bb.bb ], [ %i.mk, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ], [ %i.mm, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i ], [ %i.mm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i ] ; 2 uses
  %.sroa.061.4441.i = phi i1 [ %.sroa.061.4440.i, %bb.bc ], [ %.sroa.061.4440.i, %bb.bb ], [ %.sroa.061.4.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ], [ %.sroa.061.4440.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i ], [ %.sroa.061.4440.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i ] ; 2 uses
  %.sroa.0.0204439.i = phi i64 [ %.sroa.0.0204438.i, %bb.bc ], [ %.sroa.0.0204438.i, %bb.bb ], [ %.sroa.0.0204.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ], [ %.sroa.0.0204438.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i ], [ %.sroa.0.0204438.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i ] ; 2 uses
  %.sroa.9.0437.i = phi ptr [ %.sroa.9.0436.i, %bb.bc ], [ %.sroa.9.0436.i, %bb.bb ], [ %.sroa.9.0.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ], [ %.sroa.9.0436.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i ], [ %.sroa.9.0436.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i ] ; 2 uses
  %.sroa.6193.1215.i = phi ptr [ %i.nn, %bb.bc ], [ %i.nn, %bb.bb ], [ %.sroa.9.0.i, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i ], [ %i.nn, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i ], [ %i.nn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i ] ; 3 uses
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %.sroa.6193.1215.i to i64
  %i.nu = sub nuw i64 %i.ns, %i.nt
  %i.nv = udiv exact i64 %i.nu, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.nw = icmp eq ptr %i.nr, %.sroa.6193.1215.i
  br i1 %i.nw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.ny, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6193.1215.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.ny = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.nx, align 8, !range !18, !alias.scope !354, !noalias !357, !noundef !4 ; 2 uses
  %i.nz = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.nz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oa = getelementptr i8, ptr %i.nx, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.oa, align 8, !alias.scope !354, !noalias !357, !nonnull !4, !noundef !4
  %i.ob = shl nuw i64 %.val.i.i.i.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !362
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i: ; preds = %bb.ax, %.lr.ph.i.i.i.i
  %i.oc = icmp eq i64 %i.ny, %i.nv
  br i1 %i.oc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i
  %.sroa.9.0437457.i = phi ptr [ %.sroa.9.0.ph443.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i ], [ %.sroa.9.0437.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i ], [ %.sroa.9.0437.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i ]
  %.sroa.0.0204439456.i = phi i64 [ %.sroa.0.0204.ph444.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i ], [ %.sroa.0.0204439.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i ], [ %.sroa.0.0204439.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i ] ; 2 uses
  %.sroa.061.4441455.i = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i ], [ %.sroa.061.4441.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i ], [ %.sroa.061.4441.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i.i ]
  %i.od = icmp eq i64 %.sroa.0.0204439456.i, 0
  br i1 %i.od, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i.i
  %i.oe = mul nuw i64 %.sroa.0.0204439456.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0437457.i, i64 noundef %i.oe, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !357
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i: ; preds = %bb.ay, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %.val93.i = load i64, ptr %i.r, align 8, !range !18, !noalias !64 ; 2 uses
  %i.of = icmp ne i64 %.val93.i, 0
  %or.cond516.not.i = select i1 %.sroa.061.4441455.i, i1 %i.of, i1 false
  br i1 %or.cond516.not.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit187.sink.split.i, label %_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.thread

_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !64
  br label %bb.dj

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i: ; preds = %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit186.i
  %.sroa.0202.0286.i = phi ptr [ %i.og, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit186.i ], [ %.sroa.8.sroa.0.0.copyload.i, %bb.aw ] ; 2 uses
  %.sroa.9203.0285.i = phi i64 [ %i.oh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit186.i ], [ 0, %bb.aw ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0202.0286.i, i64 8 ; 2 uses
  %i.oh = add nuw nsw i64 %.sroa.9203.0285.i, 1   ; 2 uses
  %i.oi = load ptr, ptr %.sroa.0202.0286.i, align 8, !align !273, !noundef !4 ; 4 uses
  %.not82.i = icmp ne ptr %i.oi, null             ; 4 uses
  %brmerge.i = or i1 %.not83.i, %.not82.i
  br i1 %brmerge.i, label %bb.bi, label %bb.ba

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit186.i, %bb.aw
  %i.oj = and i8 %.sroa.019.0288.i, %.val3788328350356
  %.not.i45 = icmp eq i8 %i.oj, 0
  br i1 %.not.i45, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ba, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i
  %.sroa.019.1.i = phi i8 [ 1, %bb.ba ], [ %.sroa.019.0288.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i ]
  %i.ok = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.do) #30 ; 2 uses
  %.not84.i = icmp eq ptr %i.ok, null
  br i1 %.not84.i, label %bb.bd, label %_RINvCshDScVpnq8df_5uu_pr19write_offset_spacesNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.i

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i
  br i1 %i.dk, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i
  %i.ol = icmp eq i64 %.sroa.0195.0.copyload196.i, 0
  br i1 %i.ol, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.om = shl nuw i64 %.sroa.0195.0.copyload196.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i, i64 noundef %i.om, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i

bb.bd:                                            ; preds = %bb.az
  %i.on = icmp eq i64 %.sroa.0195.0.copyload196.i, 0
  br i1 %i.on, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oo = shl nuw i64 %.sroa.0195.0.copyload196.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i, i64 noundef %i.oo, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit162.i: ; preds = %bb.be, %bb.bd
  %i.op = icmp eq ptr %i.nn, %i.mm
  br i1 %i.op, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtB1b_4iter6traits8iterator8Iterator4nextB1L_.exit.i

_RINvCshDScVpnq8df_5uu_pr19write_offset_spacesNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.i: ; preds = %bb.az, %.lr.ph.i175.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i44
  %.sroa.0.0.i40 = phi ptr [ %i.pj, %.lr.ph.i175.i ], [ %i.vt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i44 ], [ %i.ok, %bb.az ] ; 2 uses
  %i.oq = icmp eq i64 %.sroa.0195.0.copyload196.i, 0
  br i1 %i.oq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit163.i, label %bb.bf

bb.bf:                                            ; preds = %_RINvCshDScVpnq8df_5uu_pr19write_offset_spacesNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.i
  %i.or = shl nuw i64 %.sroa.0195.0.copyload196.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.i, i64 noundef %i.or, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit163.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit163.i: ; preds = %bb.bf, %_RINvCshDScVpnq8df_5uu_pr19write_offset_spacesNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.i
  %i.os = ptrtoint ptr %i.mm to i64
  %i.ot = ptrtoint ptr %i.nn to i64
  %i.ou = sub nuw i64 %i.os, %i.ot
  %i.ov = udiv exact i64 %i.ou, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.ow = icmp eq ptr %i.mm, %i.nn
  br i1 %i.ow, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i171.i, label %.lr.ph.i.i.i166.i

.lr.ph.i.i.i166.i:                                ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit163.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i170.i
  %.sroa.0.04.i.i.i167.i = phi i64 [ %i.oy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i170.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit163.i ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %.sroa.0.04.i.i.i167.i ; 2 uses
  %i.oy = add nuw nsw i64 %.sroa.0.04.i.i.i167.i, 1 ; 2 uses
  %.val.i.i.i168.i = load i64, ptr %i.ox, align 8, !range !18, !alias.scope !363, !noalias !366, !noundef !4 ; 2 uses
  %i.oz = icmp eq i64 %.val.i.i.i168.i, 0
  br i1 %i.oz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i170.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i166.i
  %i.pa = getelementptr i8, ptr %i.ox, i64 8
  %.val3.i.i.i169.i = load ptr, ptr %i.pa, align 8, !alias.scope !363, !noalias !366, !nonnull !4, !noundef !4
  %i.pb = shl nuw i64 %.val.i.i.i168.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i169.i, i64 noundef %i.pb, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !371
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i170.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i170.i: ; preds = %bb.bg, %.lr.ph.i.i.i166.i
  %i.pc = icmp eq i64 %i.oy, %i.ov
  br i1 %i.pc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i171.i, label %.lr.ph.i.i.i166.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i171.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.i.i.i170.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit163.i
  %i.pd = icmp eq i64 %.sroa.0.0204438.i, 0
  br i1 %i.pd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i171.i
  %i.pe = mul nuw i64 %.sroa.0.0204438.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0436.i, i64 noundef %i.pe, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !366
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i: ; preds = %bb.bh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1y_.exit.i.i171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %.val91.i = load i64, ptr %i.r, align 8, !range !18, !noalias !64 ; 2 uses
  %i.pf = icmp ne i64 %.val91.i, 0
  %or.cond.not.i = select i1 %.sroa.061.4440.i, i1 %i.pf, i1 false
  br i1 %or.cond.not.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit187.sink.split.i, label %_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit187.sink.split.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i
  %.val93.sink.i = phi i64 [ %.val91.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i ], [ %.val93.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i ]
  %.sroa.0.1.ph.i = phi ptr [ %.sroa.0.0.i40, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit.i ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val94.i = load ptr, ptr %i.pg, align 8, !noalias !64, !nonnull !4, !noundef !4
  %i.ph = shl nuw i64 %.val93.sink.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val94.i, i64 noundef %i.ph, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

bb.bi:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i175.i

bb.bj:                                            ; preds = %.lr.ph.i175.i
  %i.pi = sub nuw i64 %.sroa.0.09.i.i, %..i.i.i   ; 2 uses
  %.not.i176.i = icmp eq i64 %i.pi, 0
  br i1 %.not.i176.i, label %.loopexit.i, label %.lr.ph.i175.i

.lr.ph.i175.i:                                    ; preds = %bb.bi, %bb.bj
  %.sroa.0.09.i.i = phi i64 [ %i.pi, %bb.bj ], [ %i.mo, %bb.bi ] ; 2 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.09.i.i, i64 256) ; 2 uses
  %i.pj = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef %..i.i.i) #30 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.pj, null
  br i1 %.not7.i.i, label %bb.bj, label %_RINvCshDScVpnq8df_5uu_pr19write_offset_spacesNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.i

.loopexit.i:                                      ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !64
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !375
  store i64 0, ptr %i.o, align 8, !noalias !375
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !375
  store i64 0, ptr %.sroa.5.0..sroa_idx.i178.i, align 8, !noalias !375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !375
  %.sroa.gep351.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 40
  %.mux.sroa.sel353.i = select i1 %.not82.i, ptr %.sroa.gep351.i, ptr %.sroa.14.i
  %5 = load i64, ptr %.mux.sroa.sel353.i, align 8, !alias.scope !372, !noalias !378, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  br i1 %.not48.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i
  br i1 %.not49.i.i.i, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %bb.bn, %bb.bm, %.loopexit.i
  store i64 0, ptr %i.n, align 8, !alias.scope !379, !noalias !382
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !379, !noalias !382
  store i64 0, ptr %.sroa.540.0..sroa_idx.i.i.i, align 8, !alias.scope !379, !noalias !382
  br label %_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i

bb.bm:                                            ; preds = %bb.bk
  %i.pk = icmp ne i64 %.sroa.9203.0285.i, 0
  %i.pl = icmp eq i64 %5, 0
  %or.cond.i.i.i = or i1 %i.pk, %i.pl
  br i1 %or.cond.i.i.i, label %bb.bl, label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %.old.i.i.i = icmp eq i64 %5, 0
  br i1 %.old.i.i.i, label %bb.bl, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !384
  %i.pm = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %5, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) #30, !noalias !385 ; 2 uses
  %i.pn = extractvalue { ptr, i64 } %i.pm, 0
  %i.po = extractvalue { ptr, i64 } %i.pm, 1      ; 13 uses
  %.not.i.i.i.i = icmp slt i64 %i.po, 0
  br i1 %.not.i.i.i.i, label %bb.br, label %bb.bp, !prof !132

bb.bp:                                            ; preds = %bb.bo
  %i.pp = icmp eq i64 %i.po, 0
  br i1 %i.pp, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !386
  %i.pq = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.po, i64 noundef range(i64 1, 9) 1) #30, !noalias !386 ; 3 uses
  %i.pr = icmp eq ptr %i.pq, null
  br i1 %i.pr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.bq ], [ 0, %bb.bo ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.po) #31, !noalias !385
  unreachable

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pq, ptr align 1 %i.pn, i64 %i.po, i1 false), !noalias !385
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66.i.i.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66.i.i.i: ; preds = %bb.bs, %bb.bp
  %i.ps = phi ptr [ %i.pq, %bb.bs ], [ inttoptr (i64 1 to ptr), %bb.bp ] ; 4 uses
  store i64 %i.po, ptr %i.g, align 8, !noalias !384
  store ptr %i.ps, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !384
  store i64 %i.po, ptr %.sroa.6.0..sroa_idx.i.i179.i, align 8, !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !384
  store ptr %i.mp, ptr %i.f, align 8, !noalias !384
  %.not51.i.i.i = icmp ult i64 %i.po, %i.ms
  br i1 %.not51.i.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !384
  br i1 %i.mu, label %bb.bw, label %.split.i.i.i, !prof !22

bb.bu:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !384
  %i.pt = sub nuw nsw i64 %i.po, %i.ms            ; 3 uses
  %i.pu = icmp eq i64 %i.po, %i.ms
  %or.cond74.i.i.i = or i1 %.not.i56.not.i.i.i, %i.pu
  br i1 %or.cond74.i.i.i, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pt
  %i.pw = load i8, ptr %i.pv, align 1, !alias.scope !389, !noalias !392, !noundef !4
  %i.px = icmp sgt i8 %i.pw, -65
  br i1 %i.px, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.bt
  store ptr %i.g, ptr %i.c, align 8, !noalias !384
  store <2 x ptr> <ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr null>, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !noalias !384
  store i16 %i.mv, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !384
  store ptr %i.f, ptr %i.mx, align 8, !noalias !384
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.435.0..sroa_idx.i.i.i, align 8, !noalias !384
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @106, ptr noundef nonnull %i.c) #30, !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !384
  %.val.i.i.pre.i.i.i = load i64, ptr %i.g, align 8, !range !18, !alias.scope !394, !noalias !384
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bt
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @85, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #32, !noalias !392
  unreachable

bb.bx:                                            ; preds = %.split44.i.i.i, %.split.i.i.i
  %.val.i.i.i.i.i41 = phi i64 [ %i.po, %.split44.i.i.i ], [ %.val.i.i.pre.i.i.i, %.split.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !384
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.py = icmp eq i64 %.val.i.i.i.i.i41, 0
  br i1 %i.py, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i43, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.val1.i.i.i.i.i42 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !394, !noalias !384, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i42, i64 noundef %.val.i.i.i.i.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !401
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i43

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i43: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !384
  br label %_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i: ; preds = %bb.bv, %bb.bu
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pt
  store ptr %i.pz, ptr %i.e, align 8, !noalias !384, !captures !402
  store i64 %i.ms, ptr %i.mt, align 8, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !384
  br i1 %i.mu, label %bb.bz, label %.split44.i.i.i, !prof !22

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i: ; preds = %bb.bv
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ps, i64 noundef %i.po, i64 noundef %i.pt, i64 noundef %i.po, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #32, !noalias !392
  unreachable

.split44.i.i.i:                                   ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i
  store ptr %i.e, ptr %i.d, align 8, !noalias !384
  store <2 x ptr> <ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr null>, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !384
  store i16 %i.mv, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !384
  store ptr %i.f, ptr %i.mw, align 8, !noalias !384
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !384
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @106, ptr noundef nonnull %i.d) #30, !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !384
  br label %bb.bx

bb.bz:                                            ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @85, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #32, !noalias !392
  unreachable

_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i43, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !375
  %.sroa.gep348.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %.mux.sroa.sel350.i = select i1 %.not82.i, ptr %.sroa.gep348.i, ptr %.sroa.6.i
  %6 = load ptr, ptr %.mux.sroa.sel350.i, align 8, !alias.scope !372, !noalias !378, !nonnull !4, !noundef !4
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %.mux.sroa.sel.i = select i1 %.not82.i, ptr %.sroa.gep.i, ptr %.sroa.10.i
  %7 = load i64, ptr %.mux.sroa.sel.i, align 8, !alias.scope !372, !noalias !378, !noundef !4
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7) #30, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !375
  store ptr %i.n, ptr %i.k, align 8, !noalias !375
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !375
  store ptr %i.m, ptr %i.my, align 8, !noalias !375
  store ptr @_RNvXsb_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !375
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @105, ptr noundef nonnull %i.k) #30, !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !375
  %i.qa = load ptr, ptr %i.mz, align 8, !noalias !375, !nonnull !4, !noundef !4 ; 5 uses
  %i.qb = load i64, ptr %i.na, align 8, !noalias !375, !noundef !4 ; 7 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qb ; 4 uses
  %.not.i11.i.i.i.i = icmp samesign eq i64 %i.qb, 0
  br i1 %.not.i11.i.i.i.i, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.i.i, label %.lr.ph.i.i.i180.i

.lr.ph.i.i.i180.i:                                ; preds = %_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i, %bb.cb
  %.sroa.0.013.i.i.i.i = phi i64 [ %i.rn, %bb.cb ], [ 0, %_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i ]
  %.sroa.0.0512.i.i.i.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i, %bb.cb ], [ %i.qa, %_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i ] ; 5 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i.i, i64 1 ; 3 uses
  %i.qe = load i8, ptr %.sroa.0.0512.i.i.i.i, align 1, !noalias !403, !noundef !4 ; 5 uses
  %i.qf = icmp sgt i8 %i.qe, -1
  br i1 %i.qf, label %bb.ca, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i180.i
  %i.qg = and i8 %i.qe, 31
  %i.qh = zext nneg i8 %i.qg to i32               ; 3 uses
  %i.qi = icmp ne ptr %i.qd, %i.qc
  call void @llvm.assume(i1 %i.qi)
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i.i, i64 2 ; 3 uses
  %i.qk = load i8, ptr %i.qd, align 1, !noalias !403, !noundef !4
  %i.ql = shl nuw nsw i32 %i.qh, 6
  %i.qm = and i8 %i.qk, 63
  %i.qn = zext nneg i8 %i.qm to i32               ; 2 uses
  %i.qo = or disjoint i32 %i.ql, %i.qn
  %i.qp = icmp samesign ugt i8 %i.qe, -33
  br i1 %i.qp, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i.i.i180.i
  %i.qq = zext nneg i8 %i.qe to i32
  br label %bb.cb

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i
  %i.qr = icmp ne ptr %i.qj, %i.qc
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i.i, i64 3 ; 3 uses
  %i.qt = load i8, ptr %i.qj, align 1, !noalias !403, !noundef !4
  %i.qu = shl nuw nsw i32 %i.qn, 6
  %i.qv = and i8 %i.qt, 63
  %i.qw = zext nneg i8 %i.qv to i32
  %i.qx = or disjoint i32 %i.qu, %i.qw            ; 2 uses
  %i.qy = shl nuw nsw i32 %i.qh, 12
  %i.qz = or disjoint i32 %i.qx, %i.qy
  %i.ra = icmp samesign ugt i8 %i.qe, -17
  br i1 %i.ra, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i, label %bb.cb

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i
  %i.rb = icmp ne ptr %i.qs, %i.qc
  call void @llvm.assume(i1 %i.rb)
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0.0512.i.i.i.i, i64 4
  %i.rd = load i8, ptr %i.qs, align 1, !noalias !403, !noundef !4
  %i.re = shl nuw nsw i32 %i.qh, 18
  %i.rf = and i32 %i.re, 1835008
  %i.rg = shl nuw nsw i32 %i.qx, 6
  %i.rh = and i8 %i.rd, 63
  %i.ri = zext nneg i8 %i.rh to i32
  %i.rj = or disjoint i32 %i.rg, %i.ri
  %i.rk = or disjoint i32 %i.rj, %i.rf
  br label %bb.cb

bb.cb:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i, %bb.ca, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i = phi ptr [ %i.qj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i ], [ %i.qs, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i ], [ %i.rc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i ], [ %i.qd, %bb.ca ] ; 2 uses
  %spec.select.i.ph.i.i.i.i = phi i32 [ %i.qo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i ], [ %i.qz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i ], [ %i.rk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i ], [ %i.qq, %bb.ca ]
  %i.rl = icmp eq i32 %spec.select.i.ph.i.i.i.i, 9
  %i.rm = zext i1 %i.rl to i64
  %i.rn = add i64 %.sroa.0.013.i.i.i.i, %i.rm     ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i, %i.qc
  br i1 %.not.i.i.i.i.i, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.loopexit.i.i, label %.lr.ph.i.i.i180.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.loopexit.i.i: ; preds = %bb.cb
  %i.ro = mul i64 %i.rn, 7
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.loopexit.i.i, %_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ 0, %_RNvCshDScVpnq8df_5uu_pr25get_formatted_line_number.exit.i.cont.i ], [ %i.ro, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.loopexit.i.i ]
  %i.rp = icmp sgt i64 %i.qb, -1
  call void @llvm.assume(i1 %i.rp)
  %i.rq = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.qb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !375
  %i.rr = icmp eq i64 %i.oh, %.sroa.8.sroa.6.0.copyload.i
  %or.cond.i.i = select i1 %i.rr, i1 true, i1 %i.nd
  %storemerge.i.i = select i1 %or.cond.i.i, ptr %i.o, ptr %i.ne
  store ptr %storemerge.i.i, ptr %i.j, align 8, !noalias !375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !375
  br i1 %i.nf, label %bb.cc, label %bb.cw

bb.cc:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.i.i
  br i1 %i.ng, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rs = udiv i64 %i.nh, %.sroa.09.0.i           ; 4 uses
  %i.rt = icmp ult i64 %i.rq, %i.rs
  br i1 %i.rt, label %.lr.ph.i.i.i46, label %.loopexit.i.i.i

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32, !noalias !408
  unreachable

.loopexit.i.loopexit.i.i:                         ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i
  %.pre68.i.i = load ptr, ptr %i.mz, align 8, !noalias !412
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.loopexit.i.i, %bb.cd
  %i.ru = phi ptr [ %.pre68.i.i, %.loopexit.i.loopexit.i.i ], [ %i.qa, %bb.cd ] ; 3 uses
  %i.rv = phi i64 [ %i.vk, %.loopexit.i.loopexit.i.i ], [ %i.qb, %bb.cd ] ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rv ; 4 uses
  store i64 0, ptr %i.a, align 8, !noalias !375
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !375
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !375
  br i1 %i.ni, label %_RNCNvCshDScVpnq8df_5uu_pr21get_line_for_printings_0B3_.exit.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i: ; preds = %.loopexit.i.i.i
  %.not.i.i36.i.i = icmp samesign eq i64 %i.rv, 0
  br i1 %.not.i.i36.i.i, label %.preheader, label %bb.cf, !prof !413

bb.cf:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i
  %i.rx = lshr i64 %i.rv, 2
  %i.ry = and i64 %i.rv, 3
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ry, 0
  %i.rz = zext i1 %.not.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.rx, %i.rz
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.rs, i64 %.sroa.0.0.i.i.i.i.i.i.i)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1) #30, !noalias !393
  br label %.preheader

.preheader:                                       ; preds = %bb.cf, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader, %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i
  %i.sa = phi ptr [ %i.tr, %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i ], [ %i.ru, %.preheader ] ; 6 uses
  %.sroa.01.0.i.in.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i, %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i ], [ %i.rs, %.preheader ]
  %.sroa.01.0.i.i.i.i.i.i.i.i = add i64 %.sroa.01.0.i.in.i.i.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.sa, %i.rw
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr21get_line_for_printings_0B3_.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 1 ; 3 uses
  %i.sc = load i8, ptr %i.sa, align 1, !noalias !414, !noundef !4 ; 5 uses
  %i.sd = icmp sgt i8 %i.sc, -1
  br i1 %i.sd, label %.thread.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch
  %i.se = and i8 %i.sc, 31
  %i.sf = zext nneg i8 %i.se to i32               ; 3 uses
  %i.sg = icmp ne ptr %i.sb, %i.rw
  call void @llvm.assume(i1 %i.sg)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 2 ; 3 uses
  %i.si = load i8, ptr %i.sb, align 1, !noalias !414, !noundef !4
  %i.sj = shl nuw nsw i32 %i.sf, 6
  %i.sk = and i8 %i.si, 63
  %i.sl = zext nneg i8 %i.sk to i32               ; 2 uses
  %i.sm = or disjoint i32 %i.sj, %i.sl
  %i.sn = icmp samesign ugt i8 %i.sc, -33
  br i1 %i.sn, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i.i.i.i.i, label %bb.ci

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.ch
  %i.so = zext nneg i8 %i.sc to i32
  %i.sp = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !375, !noundef !4 ; 2 uses
  %i.sq = icmp sgt i64 %i.sp, -1
  call void @llvm.assume(i1 %i.sq)
  br label %bb.cl

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i.i.i.i.i
  %i.sr = icmp ne ptr %i.sh, %i.rw
  call void @llvm.assume(i1 %i.sr)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sa, i64 3 ; 3 uses
  %i.st = load i8, ptr %i.sh, align 1, !noalias !414, !noundef !4
  %i.su = shl nuw nsw i32 %i.sl, 6
  %i.sv = and i8 %i.st, 63
  %i.sw = zext nneg i8 %i.sv to i32
  %i.sx = or disjoint i32 %i.su, %i.sw            ; 2 uses
  %i.sy = shl nuw nsw i32 %i.sf, 12
  %i.sz = or disjoint i32 %i.sx, %i.sy
  %i.ta = icmp samesign ugt i8 %i.sc, -17
  br i1 %i.ta, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i.i.i.i.i, label %bb.ci

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i.i.i.i.i
  %i.tb = icmp ne ptr %i.ss, %i.rw
  call void @llvm.assume(i1 %i.tb)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %i.td = load i8, ptr %i.ss, align 1, !noalias !414, !noundef !4
  %i.te = shl nuw nsw i32 %i.sf, 18
  %i.tf = and i32 %i.te, 1835008
  %i.tg = shl nuw nsw i32 %i.sx, 6
  %i.th = and i8 %i.td, 63
  %i.ti = zext nneg i8 %i.th to i32
  %i.tj = or disjoint i32 %i.tg, %i.ti
  %i.tk = or disjoint i32 %i.tj, %i.tf
  br label %bb.ci

bb.ci:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i.i.i.i.i.i.i.i.i
end_hunk_1
