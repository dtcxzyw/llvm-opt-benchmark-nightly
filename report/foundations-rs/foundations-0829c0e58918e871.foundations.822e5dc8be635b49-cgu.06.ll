Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.06?download=true
inline.NumInlined: 971
inline.NumDeleted: 410
begin_hunk_0
@64 = private unnamed_addr constant [26 x i8] c"dropping cancelled request", align 1
@65 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-0.5.3/src/buffer/worker.rs\00", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"e\00\00\00\00\00\00\00y\00\00\002\00\00\00" }>, align 8
@67 = private unnamed_addr constant [41 x i8] c"assertion failed: (*tail).value.is_none()", align 1
@68 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-channel-0.3.34/src/mpsc/queue.rs\00", align 1
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"m\00\00\00\00\00\00\00{\00\00\00\11\00\00\00" }>, align 8
@70 = private unnamed_addr constant [41 x i8] c"assertion failed: (*next).value.is_some()", align 1
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"m\00\00\00\00\00\00\00|\00\00\00\11\00\00\00" }>, align 8
@72 = private unnamed_addr constant [12 x i8] c"codec closed", align 1
@73 = private unnamed_addr constant [14 x i8] c"mutex poisoned", align 1
@74 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/h2-0.4.19/src/proto/connection.rs\00", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"f\00\00\00\00\00\00\00S\02\00\00.\00\00\00" }>, align 8
@76 = private unnamed_addr constant [9 x i8] c"recv DATA", align 1
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame4data4DataENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@78 = private unnamed_addr constant [12 x i8] c"recv HEADERS", align 1
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame7headers7HeadersENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@80 = private unnamed_addr constant [13 x i8] c"recv PRIORITY", align 1
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame8priority8PriorityENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@82 = private unnamed_addr constant [17 x i8] c"recv PUSH_PROMISE", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame7headers11PushPromiseENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@84 = private unnamed_addr constant [13 x i8] c"recv SETTINGS", align 1
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame8settings8SettingsENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@86 = private unnamed_addr constant [9 x i8] c"recv PING", align 1
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame4ping4PingENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@88 = private unnamed_addr constant [33 x i8] c"received unexpected shutdown ping", align 1
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c"f\00\00\00\00\00\00\00@\02\00\00\15\00\00\00" }>, align 8
@90 = private unnamed_addr constant [11 x i8] c"recv GOAWAY", align 1
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame7go_away6GoAwayENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@92 = private unnamed_addr constant [18 x i8] c"recv WINDOW_UPDATE", align 1
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame13window_update12WindowUpdateENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@94 = private unnamed_addr constant [15 x i8] c"recv RST_STREAM", align 1
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame5reset5ResetENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE14handle_go_away10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@96 = private unnamed_addr constant [34 x i8] c"Connection::poll; connection error", align 1
@97 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25proto5error5ErrorENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE14handle_go_aways_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@98 = private unnamed_addr constant [25 x i8] c"    -> already going away", align 1
@_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@99 = private unnamed_addr constant [12 x i8] c"stream error", align 1
@100 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25frame6reason6ReasonENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@101 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25proto5error9InitiatorENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_result10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@102 = private unnamed_addr constant [12 x i8] c"stream reset", align 1
@_RNvNvMs1_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB7_13DynConnectionpE19handle_poll2_results0_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@103 = private unnamed_addr constant [26 x i8] c"Connection::poll; IO error", align 1
@104 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs3oUPovFnLWP_4core2io5error9ErrorKindENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNtCs8QTyv2gZm5j_5bytes9bytes_mut13SHARED_VTABLE = external global { ptr, ptr, ptr, ptr, ptr }
@105 = private unnamed_addr constant [37 x i8] c"assertion failed: self.has_capacity()", align 1
@106 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/h2-0.4.19/src/codec/framed_write.rs\00", align 1
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @106, [16 x i8] c"h\00\00\00\00\00\00\00\E1\00\00\00\09\00\00\00" }>, align 8
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB6_7EncoderpE6buffer10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB6_7EncoderpE6buffers_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@108 = private unnamed_addr constant [4 x i8] c"send", align 1
@109 = private unnamed_addr constant [8 x i8] zeroinitializer, align 8
@110 = private unnamed_addr constant [23 x i8] c"chunk not fully encoded", align 1
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @106, [16 x i8] c"h\00\00\00\00\00\00\00\02\01\00\00\15\00\00\00" }>, align 8
@112 = private unnamed_addr constant [15 x i8] c"not implemented", align 1
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @106, [16 x i8] c"h\00\00\00\00\00\00\00*\01\00\00\11\00\00\00" }>, align 8
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB6_7EncoderpE6buffers0_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@114 = private unnamed_addr constant [16 x i8] c"encoded settings", align 1
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB6_7EncoderpE6buffers2_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@115 = private unnamed_addr constant [12 x i8] c"encoded ping", align 1
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB6_7EncoderpE6buffers1_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@116 = private unnamed_addr constant [15 x i8] c"encoded go_away", align 1
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB6_7EncoderpE6buffers3_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@117 = private unnamed_addr constant [21 x i8] c"encoded window_update", align 1
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25codec12framed_writeINtB6_7EncoderpE6buffers4_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@118 = private unnamed_addr constant [13 x i8] c"encoded reset", align 1
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE10poll_ready10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE3new10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@119 = private unnamed_addr constant [6 x i8] c"Client", align 1
@120 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @119, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_12DisplayValueRReENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNvMs_NtNtCsb6T6P0NKlCh_2h25proto10connectionINtB6_10ConnectionpppE4poll10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsb6T6P0NKlCh_2h25proto10connection5StateENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@123 = private unnamed_addr constant [30 x i8] c"connection closing after flush", align 1
@124 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCsb6T6P0NKlCh_2h25frame9stream_idNtB5_8StreamIdNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@125 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@126 = private unnamed_addr constant [12 x i8] c"WindowUpdate", align 1
@127 = private unnamed_addr constant [9 x i8] c"stream_id", align 1
@128 = private unnamed_addr constant [14 x i8] c"size_increment", align 1
@129 = private unnamed_addr constant [81 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/ops/function.rs\00", align 1
@130 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @129, [16 x i8] c"P\00\00\00\00\00\00\00\FA\00\00\00\05\00\00\00" }>, align 8
@131 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCsfUalJnHtWpm_5tonic6statusNtB5_14TimeoutExpiredNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@132 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXso_NtCsfUalJnHtWpm_5tonic6statusNtB5_14TimeoutExpiredNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXsa_NtCsfUalJnHtWpm_5tonic6statusNtB5_14TimeoutExpiredNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @131, ptr @_RNvYNtNtCsfUalJnHtWpm_5tonic6status14TimeoutExpiredNtNtCs3oUPovFnLWP_4core5error5Error6sourceCsbaWXNhtWAp9_11foundations, ptr @_RNvYNtNtCsfUalJnHtWpm_5tonic6status14TimeoutExpiredNtNtCs3oUPovFnLWP_4core5error5Error7type_idCsbaWXNhtWAp9_11foundations, ptr @_RNvYNtNtCsfUalJnHtWpm_5tonic6status14TimeoutExpiredNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCsbaWXNhtWAp9_11foundations, ptr @_RNvYNtNtCsfUalJnHtWpm_5tonic6status14TimeoutExpiredNtNtCs3oUPovFnLWP_4core5error5Error5causeCsbaWXNhtWAp9_11foundations, ptr @_RNvYNtNtCsfUalJnHtWpm_5tonic6status14TimeoutExpiredNtNtCs3oUPovFnLWP_4core5error5Error7provideCsbaWXNhtWAp9_11foundations }>, align 8
@133 = private unnamed_addr constant [8 x i8] c"StreamId", align 1
@134 = private unnamed_addr constant [42 x i8] c"!cannot advance past `remaining`: \C0\04 <= \C0\00", align 1
@135 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/bytes.rs\00", align 1
@136 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @135, [16 x i8] c"^\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@_RNvNvXs5_NtNtCsb6T6P0NKlCh_2h25codec5errorNtB7_9UserErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXs5_NtNtCsb6T6P0NKlCh_2h25codec5errorNtB7_9UserErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET = external global [14 x i64]
@137 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsb6T6P0NKlCh_2h25frame8priority16StreamDependencyNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@138 = private unnamed_addr constant [8 x i8] c"Priority", align 1
@139 = private unnamed_addr constant [10 x i8] c"dependency", align 1
@140 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs3oUPovFnLWP_4core3fmtbNtB5_5Debug3fmt }>, align 8
@141 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRAhj8_NtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@142 = private unnamed_addr constant [4 x i8] c"Ping", align 1
@143 = private unnamed_addr constant [3 x i8] c"ack", align 1
@144 = private unnamed_addr constant [7 x i8] c"payload", align 1
@145 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsb6T6P0NKlCh_2h25frame6reason6ReasonNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@146 = private unnamed_addr constant [5 x i8] c"Reset", align 1
@147 = private unnamed_addr constant [10 x i8] c"error_code", align 1
@148 = private unnamed_addr constant [40 x i8] c"send stream capacity unexpectedly closed", align 1
@149 = private unnamed_addr constant [21 x i8] c"checked is_some above", align 1
@150 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"e\00\00\00\00\00\00\00\B1\00\00\006\00\00\00" }>, align 8
@151 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@_RNvNvXs_NtNtCsb6T6P0NKlCh_2h25codec11framed_readINtB6_10FramedReadpENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_next10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@152 = private unnamed_addr constant [4 x i8] c"poll", align 1
@153 = private unnamed_addr constant [8 x i8] c"received", align 1
@154 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtCsb6T6P0NKlCh_2h25frame5FrameENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNvXs_NtNtCsdBNFPP92xfl_5tower6buffer6workerINtB6_6WorkerppENtNtNtCs3oUPovFnLWP_4core6future6future6Future4poll10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@155 = private unnamed_addr constant [37 x i8] c"notifying caller about worker failure", align 1
@_RNvNvXs_NtNtCsdBNFPP92xfl_5tower6buffer6workerINtB6_6WorkerppENtNtNtCs3oUPovFnLWP_4core6future6future6Future4polls_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@156 = private unnamed_addr constant [54 x i8] c"worker received request; waiting for service readiness", align 1
@157 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @156, [8 x i8] c"6\00\00\00\00\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsh_NtCshtG1HG2JiYb_12tracing_core5fieldReNtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@_RNvNvXs_NtNtCsdBNFPP92xfl_5tower6buffer6workerINtB6_6WorkerppENtNtNtCs3oUPovFnLWP_4core6future6future6Future4polls0_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@159 = private unnamed_addr constant [18 x i8] c"processing request", align 1
@160 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @159, [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
@161 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr }> <{ ptr @53, ptr @24, ptr @160, ptr @158 }>, align 8
@_RNvNvXs_NtNtCsdBNFPP92xfl_5tower6buffer6workerINtB6_6WorkerppENtNtNtCs3oUPovFnLWP_4core6future6future6Future4polls1_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@162 = private unnamed_addr constant [25 x i8] c"returning response future", align 1
@_RNvNvXs_NtNtCsdBNFPP92xfl_5tower6buffer6workerINtB6_6WorkerppENtNtNtCs3oUPovFnLWP_4core6future6future6Future4polls3_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@163 = private unnamed_addr constant [14 x i8] c"service failed", align 1
@164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXst_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_12DisplayValueRINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB1E_6marker4SendNtB2b_4SyncEL_EENtB5_5Value6recordCsbaWXNhtWAp9_11foundations }>, align 8
@165 = private unnamed_addr constant [39 x i8] c"Worker::failed did not set self.failed?", align 1
@166 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"e\00\00\00\00\00\00\00\C2\00\00\00\22\00\00\00" }>, align 8
@_RNvNvXs_NtNtCsdBNFPP92xfl_5tower6buffer6workerINtB6_6WorkerppENtNtNtCs3oUPovFnLWP_4core6future6future6Future4polls2_10___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@167 = private unnamed_addr constant [5 x i8] c"delay", align 1
@168 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @167, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr }> <{ ptr @55, ptr @24, ptr @168, ptr @158 }>, align 8
@170 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core6future6futureINtNtB8_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsbaWXNhtWAp9_11foundations }>, align 8
@171 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdBNFPP92xfl_5tower6buffer6worker6WorkerNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB1x_4body4BodyEEECsbaWXNhtWAp9_11foundations, [16 x i8] c"P\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsdBNFPP92xfl_5tower6buffer6workerINtB4_6WorkerNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB13_4body4BodyEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations }>, align 8
@172 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaCYLheajBls_5hyper5proto2h26client14H2ClientFutureNtNtCsfUalJnHtWpm_5tonic4body4BodyNtNtNtNtNtB1E_9transport7channel7service2io7BoxedIoNtNtB2c_8executor10SharedExecEECsbaWXNhtWAp9_11foundations, [16 x i8] c"\98\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtNtCsaCYLheajBls_5hyper5proto2h26clientINtB5_14H2ClientFutureNtNtCsfUalJnHtWpm_5tonic4body4BodyNtNtNtNtNtB1b_9transport7channel7service2io7BoxedIoNtNtB1J_8executor10SharedExecENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations }>, align 8
@173 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaCYLheajBls_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEECsbaWXNhtWAp9_11foundations, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeINtB5_22UpgradedSendStreamTaskNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations }>, align 8
@174 = private unnamed_addr constant [4 x i8] c"Open", align 1
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCsb6T6P0NKlCh_2h25frame6reasonNtB5_6ReasonNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsb6T6P0NKlCh_2h25proto5error9InitiatorNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@177 = private unnamed_addr constant [7 x i8] c"Closing", align 1
@178 = private unnamed_addr constant [6 x i8] c"Closed", align 1
@179 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations }>, align 8
@180 = private unnamed_addr constant [14 x i8] c"TimeoutExpired", align 1
@181 = private unnamed_addr constant [2 x i8] c"()", align 1
@182 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@183 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -635405531565282632 to ptr), ptr inttoptr (i64 -5253627749016432522 to ptr) }>, align 8
@184 = private unnamed_addr constant [25 x i8] c"bytes remaining on stream", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsb6T6P0NKlCh_2h25frame4headNtB3_4Head6encodeNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 !dbg !8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16, !noalias !25
  %i.e = tail call i64 @llvm.bswap.i64(i64 %1), !dbg !28
  store i64 %i.e, ptr %i.d, align 8, !dbg !39, !noalias !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 5, !dbg !42
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 3), !dbg !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !62, !noalias !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5, !dbg !63
  %i.h = load i8, ptr %i.g, align 1, !dbg !63, !range !64, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65, !noalias !68
  store i8 %i.h, ptr %i.c, align 1, !dbg !71, !noalias !68
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !dbg !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !74, !noalias !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !75
  %i.j = load i8, ptr %i.i, align 4, !dbg !75, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !76, !noalias !78
  store i8 %i.j, ptr %i.b, align 1, !dbg !81, !noalias !78
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !dbg !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !83, !noalias !78
  %i.k = load i32, ptr %0, align 4, !dbg !84, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85, !noalias !88
  %i.l = call i32 @llvm.bswap.i32(i32 %i.k), !dbg !91
  store i32 %i.l, ptr %i.a, align 4, !dbg !99, !noalias !88
  call void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4), !dbg !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !103, !noalias !88
  ret void, !dbg !104
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsdBNFPP92xfl_5tower6buffer7serviceINtB3_6BufferINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtBY_8response8ResponseB1x_EIB2D_DNtNtB2b_5error5ErrorNtNtB2b_6marker4SendNtB59_4SyncEL_EEB57_EL_EEE4pairNtNtNtNtNtB1B_9transport7channel7service10connection10ConnectionECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 8 captures(none) dereferenceable(384) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !105 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [336 x i8], align 8               ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = invoke { ptr, ptr } @_RINvNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7bounded7channelINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2Y_6future6future6Futurep6OutputINtNtB2Y_6result6ResultINtNtB1L_8response8ResponseB2k_EIB3q_DNtNtB2Y_5error5ErrorNtNtB2Y_6marker4SendNtB5X_4SyncEL_EEB5V_EL_EEEECsbaWXNhtWAp9_11foundations(i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %bb.b unwind label %bb.n, !dbg !111 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0, !dbg !111 ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1, !dbg !111 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !112
  store ptr %i.g, ptr %i.e, align 8, !dbg !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8, !noalias !113
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !117, !noalias !150
  %i.i = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1433) 32, i64 noundef range(i64 1, 129) 8) #29, !dbg !153, !noalias !150 ; 11 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !154
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !155, !prof !156

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30
          to label %.noexc.i unwind label %.body.i, !dbg !157, !noalias !113

.noexc.i:                                         ; preds = %bb.c
  unreachable, !dbg !157

.body.i:                                          ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7bounded8ReceiverINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2o_8response8ResponseB2X_EIB3N_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6h_4SyncEL_EEB6f_EL_EEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #31
          to label %bb.g unwind label %bb.f, !dbg !158, !noalias !113

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %i.i, align 8, !dbg !159, !noalias !113
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !159
  store i64 1, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !159, !noalias !113
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !159
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !159, !noalias !113
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 20, !dbg !159
  store i8 0, ptr %.sroa.612.0..sroa_idx, align 4, !dbg !159, !noalias !113
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !159
  store ptr null, ptr %.sroa.714.0..sroa_idx, align 8, !dbg !159, !noalias !113
  %i.l = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !dbg !161, !noalias !113
  %i.m = icmp slt i64 %i.l, 0, !dbg !177
  br i1 %i.m, label %bb.e, label %bb.h, !dbg !177

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !179
  unreachable, !dbg !179

bb.f:                                             ; preds = %bb.g, %.body.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !180, !noalias !113
  unreachable, !dbg !180

bb.g:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionECsbaWXNhtWAp9_11foundations(ptr nonnull %1, ptr nonnull readonly align 8 dereferenceable(40) %2) #31
          to label %.thread15 unwind label %bb.f, !dbg !158, !noalias !181

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !183
  store ptr %i.i, ptr %i.d, align 8, !dbg !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !184
  store i64 -1, ptr %i.c, align 8, !dbg !184
  %.sroa.69.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 288, !dbg !184
  store ptr %i.h, ptr %.sroa.69.8..sroa_idx, align 8, !dbg !184
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 296, !dbg !184
  store ptr %1, ptr %.sroa.7.8..sroa_idx, align 8, !dbg !184
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 304, !dbg !184
  store ptr %2, ptr %.sroa.8.8..sroa_idx, align 8, !dbg !184
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 312, !dbg !184
  store ptr %i.i, ptr %.sroa.9.8..sroa_idx, align 8, !dbg !184
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 320, !dbg !184
  store ptr null, ptr %.sroa.10.8..sroa_idx, align 8, !dbg !184
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 328, !dbg !184
  store i8 0, ptr %.sroa.11.8..sroa_idx, align 8, !dbg !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !185
  invoke void @_RNvMs3_NtNtCsgI8t0psmkwo_10tokio_util4sync4mpscINtB5_10PollSenderINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB37_6future6future6Futurep6OutputINtNtB37_6result6ResultINtNtB1U_8response8ResponseB2t_EIB3z_DNtNtB37_5error5ErrorNtNtB37_6marker4SendNtB66_4SyncEL_EEB64_EL_EEEE3newCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noundef nonnull %i.g)
          to label %bb.j unwind label %bb.i, !dbg !185

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdBNFPP92xfl_5tower6buffer6worker6WorkerNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB1x_4body4BodyEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %i.c) #31
          to label %bb.l unwind label %bb.k, !dbg !187

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !189
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.p, ptr noundef nonnull align 8 dereferenceable(336) %i.c, i64 336, i1 false), !dbg !192
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !190
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !193
  ret void, !dbg !194

bb.k:                                             ; preds = %bb.m, %bb.n, %.thread15, %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !dbg !195
  unreachable, !dbg !195

bb.l:                                             ; preds = %bb.i
  %i.r = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !196, !noalias !210
  %i.s = icmp eq i64 %i.r, 1, !dbg !217
  br i1 %i.s, label %bb.m, label %.thread, !dbg !217

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !218
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdBNFPP92xfl_5tower6buffer5error12ServiceErrorEEE9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %.thread unwind label %bb.k, !dbg !221

.thread15:                                        ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7bounded6SenderINtNtNtCsdBNFPP92xfl_5tower6buffer7message7MessageINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2m_8response8ResponseB2V_EIB3L_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6f_4SyncEL_EEB6d_EL_EEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #31
          to label %.thread unwind label %bb.k, !dbg !193

.thread:                                          ; preds = %bb.m, %bb.l, %.thread15, %bb.n
  %.pn.pn14 = phi { ptr, i32 } [ %i.t, %bb.n ], [ %i.k, %.thread15 ], [ %i.o, %bb.l ], [ %i.o, %bb.m ]
  resume { ptr, i32 } %.pn.pn14, !dbg !195

bb.n:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionECsbaWXNhtWAp9_11foundations(ptr nonnull %1, ptr nonnull %2) #31
          to label %.thread unwind label %bb.k, !dbg !193
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsfUalJnHtWpm_5tonic9transport7channelNtB3_7Channel11from_sharedNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 8 captures(none) dereferenceable(544) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !222 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !229
  call void @_RNvXsH_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1), !dbg !230
  call void @_RINvMNtCs74LoFwSioHw_4http3uriNtB3_3Uri17from_maybe_sharedNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !237
  %i.d = load i8, ptr %i.c, align 8, !dbg !238, !range !243, !noundef !15 ; 2 uses
  %i.e = icmp eq i8 %i.d, -1, !dbg !238
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !244
  %i.g = load i8, ptr %i.f, align 1, !dbg !244    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !245

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !246
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !247
  store i8 %i.g, ptr %i.h, align 8, !dbg !247
  store i64 2, ptr %0, align 8, !dbg !247
  br label %bb.d, !dbg !255

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2, !dbg !256
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(86) %.sroa.8.0..sroa_idx4, ptr noundef nonnull align 2 dereferenceable(86) %.sroa.5.0..sroa_idx, i64 86, i1 false), !dbg !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !246
  store i8 %i.d, ptr %i.a, align 8, !dbg !228
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !228
  store i8 %i.g, ptr %.sroa.6.0..sroa_idx2, align 1, !dbg !228
  call void @_RNvMNtNtCsfUalJnHtWpm_5tonic9transport7channelNtB2_7Channel7builder(ptr noalias nofree noundef nonnull sret([544 x i8]) align 8 captures(address) dereferenceable(544) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !dbg !257
  br label %bb.d, !dbg !255

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !259
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams10prioritizeNtB3_10Prioritize11clear_queueINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !260 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [296 x i8], align 8               ; 6 uses
  %i.f = alloca [296 x i8], align 8               ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !266
  %i.k = load atomic i64, ptr @_RNvNtCshtG1HG2JiYb_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !dbg !267
  %i.l = icmp eq i64 %i.k, 0, !dbg !282
  br i1 %i.l, label %bb.b, label %.thread, !dbg !283

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams10prioritizeNtB4_10Prioritize11clear_queue10___CALLSITE, i64 16) monotonic, align 8, !dbg !284 ; 3 uses
  switch i8 %i.m, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !dbg !295, !prof !296

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  store i64 2, ptr %i.j, align 8, !dbg !297
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !297
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !297
  br label %bb.g, !dbg !300

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i8 @_RNvMNtCshtG1HG2JiYb_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams10prioritizeNtB4_10Prioritize11clear_queue10___CALLSITE) #33, !dbg !316 ; 2 uses
  %.not = icmp eq i8 %i.n, 0, !dbg !317
  br i1 %.not, label %.thread, label %bb.d, !dbg !283

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.05.0 = phi i8 [ %i.n, %bb.c ], [ %i.m, %bb.b ], [ %i.m, %bb.b ], !dbg !327
  %i.o = load ptr, ptr @_RNvNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams10prioritizeNtB4_10Prioritize11clear_queue10___CALLSITE, align 8, !dbg !328, !nonnull !15, !align !333, !noundef !15
  %i.p = tail call noundef zeroext i1 @_RNvNtCs2xfK085Iyqb_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.o, i8 noundef %.sroa.05.0), !dbg !283
  br i1 %i.p, label %bb.e, label %.thread, !dbg !283

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @_RNvNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams10prioritizeNtB4_10Prioritize11clear_queue10___CALLSITE, align 8, !dbg !334, !nonnull !15, !align !333, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !337
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48, !dbg !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !337
  %i.s = tail call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !337
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 300, !dbg !337
  store ptr %i.t, ptr %i.g, align 8, !dbg !345
  store ptr %i.g, ptr %i.h, align 8, !dbg !337
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !337
  store ptr @7, ptr %i.u, align 8, !dbg !337
  store i64 1, ptr %i.i, align 8, !dbg !351
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !351
  store ptr %i.h, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !351
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !351
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !351
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !351
  store ptr %i.r, ptr %i.v, align 8, !dbg !351
  call void @_RNvMNtCs2xfK085Iyqb_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !dbg !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !283
  %.pr = load i64, ptr %i.j, align 8, !dbg !356
  %.not32 = icmp eq i64 %.pr, 2, !dbg !356
  br i1 %.not32, label %bb.g, label %bb.f, !dbg !300

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !357
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsb6T6P0NKlCh_2h25frame8priority16StreamDependencyNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsb6T6P0NKlCh_2h25frame8priority16StreamDependencyNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsb6T6P0NKlCh_2h25frame8settingsNtB5_8SettingsNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(60), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRAhj8_NtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsb6T6P0NKlCh_2h25frame7go_awayNtB5_6GoAwayNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsb6T6P0NKlCh_2h25frame6reason6ReasonNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsb6T6P0NKlCh_2h25frame4dataINtB5_4DataINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsb6T6P0NKlCh_2h25frame4dataNtB5_4DataNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB5_9StreamRefINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_resetCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtCsaCYLheajBls_5hyper5errorNtB3_5Error14new_body_writeNtNtCsb6T6P0NKlCh_2h25error5ErrorECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsfUalJnHtWpm_5tonic4bodyNtB5_4BodyNtCshXnn1MjyudA_9http_body4Body10poll_frame(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs0_NtNtCsaCYLheajBls_5hyper5proto2h2INtNtCsb6T6P0NKlCh_2h25share10SendStreamINtB5_7SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEENtB5_13SendStreamExt14send_eos_frameCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB5_9StreamRefINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE16reserve_capacityCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 13) i8 @_RNvMs5_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB5_9StreamRefINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE13send_trailersCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsfUalJnHtWpm_5tonic4bodyNtB5_4BodyNtCshXnn1MjyudA_9http_body4Body13is_end_stream(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 13) i8 @_RNvMs5_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB5_9StreamRefINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE9send_dataCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvXs0_NtNtCsaCYLheajBls_5hyper5proto2h2INtNtCsb6T6P0NKlCh_2h25share10SendStreamINtB6_7SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEENtB6_13SendStreamExt11on_user_errNtNtCsfUalJnHtWpm_5tonic6status6StatusECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs5_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB5_9StreamRefINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE8capacityCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsb6T6P0NKlCh_2h25shareINtB4_10SendStreamINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE13poll_capacityCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtCsaCYLheajBls_5hyper5errorNtB3_5Error14new_body_writeReECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCsgI8t0psmkwo_10tokio_util5codec11framed_implINtB5_10FramedImplINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1h_5proto7streams10prioritize11PrioritizedINtNtNtB2e_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtB7_16length_delimited20LengthDelimitedCodecNtB5_9ReadFrameENtNtCs9Hva1InW082_12futures_core6stream6Stream9poll_nextCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(496), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsb6T6P0NKlCh_2h25codec11framed_read12decode_frame(ptr dead_on_unwind noalias nofree noundef writable sret([296 x i8]) align 8 captures(none) dereferenceable(296), ptr noalias nofree noundef align 8 dereferenceable(104), i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(336), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_10DebugValueRNtNtCsb6T6P0NKlCh_2h25frame5FrameENtB5_5Value6recordCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsb6T6P0NKlCh_2h25codec11framed_read7map_err(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB4_9AddOriginINtNtB6_10user_agent9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2I_5limit11concurrency7service16ConcurrencyLimitIB2C_INtNtNtB3s_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4U_EEB4h_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7c_7request7RequestNtNtBc_4body4BodyEE10poll_readyCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(568), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB4_9AddOriginINtNtB6_10user_agent9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2I_5limit11concurrency7service16ConcurrencyLimitIB2C_INtNtNtB3s_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtB8_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4U_EEB4h_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7c_7request7RequestNtNtBc_4body4BodyEE4callCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(568), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB4_9AddOriginINtNtB6_10user_agent9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2I_5limit11concurrency7service16ConcurrencyLimitIB2C_INtNtNtB3s_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4U_EEB4h_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7S_7request7RequestNtNtBc_4body4BodyEE10poll_readyCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(552), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB4_9AddOriginINtNtB6_10user_agent9UserAgentINtNtNtBa_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2I_5limit11concurrency7service16ConcurrencyLimitIB2C_INtNtNtB3s_4rate7service9RateLimitINtNtB6_9reconnect9ReconnectINtNtB6_10connection22MakeSendRequestServiceINtNtB6_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4U_EEB4h_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7S_7request7RequestNtNtBc_4body4BodyEE4callCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(552), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB4_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtBX_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBX_6future6future6Futurep6OutputIBT_INtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEIB1L_DNtNtBX_5error5ErrorNtNtBX_6marker4SendNtB4G_4SyncEL_EEB4E_EL_EENtNtNtCsdBNFPP92xfl_5tower6buffer5error12ServiceErrorEE4sendCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCshtG1HG2JiYb_12tracing_core5fieldReNtB5_5Value6recordCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtB4_10ConnectionINtCs694hLx9Nhnx_13tower_service7ServiceINtNtCs74LoFwSioHw_4http7request7RequestNtNtBc_4body4BodyEE10poll_ready(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtB4_10ConnectionINtCs694hLx9Nhnx_13tower_service7ServiceINtNtCs74LoFwSioHw_4http7request7RequestNtNtBc_4body4BodyEE4call(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCshtG1HG2JiYb_12tracing_core5fieldINtB5_12DisplayValueRINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB1E_6marker4SendNtB2b_4SyncEL_EENtB5_5Value6recordCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NtNtCs8QTyv2gZm5j_5bytes3buf4takeINtB4_4TakeINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf15chunks_vectoredCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs_NtNtCs8QTyv2gZm5j_5bytes3buf4takeINtB4_4TakeINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs8QTyv2gZm5j_5bytes3buf4takeINtB4_4TakeINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsdBNFPP92xfl_5tower4util6eitherINtB2_6EitherINtNtNtNtB6_5limit11concurrency7service16ConcurrencyLimitIBD_INtNtNtBW_4rate7service9RateLimitINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtB2q_10connection22MakeSendRequestServiceINtNtB2q_9connector9ConnectorNtNtB2s_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB2l_EEB1K_EINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB5t_7request7RequestNtNtB2w_4body4BodyEE10poll_readyCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(464), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeout22try_parse_grpc_timeout(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsdBNFPP92xfl_5tower4util6eitherINtB2_6EitherINtNtNtNtB6_5limit11concurrency7service16ConcurrencyLimitIBD_INtNtNtBW_4rate7service9RateLimitINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtB2q_10connection22MakeSendRequestServiceINtNtB2q_9connector9ConnectorNtNtB2s_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB2l_EEB1K_EINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB5t_7request7RequestNtNtB2w_4body4BodyEE4callCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(464), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3zuhHmEJ01l_5tokio4time5sleep5sleep(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsdBNFPP92xfl_5tower4util6eitherINtB2_6EitherINtNtNtNtB6_5limit11concurrency7service16ConcurrencyLimitIBD_INtNtNtBW_4rate7service9RateLimitINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtB2q_10connection22MakeSendRequestServiceINtNtB2q_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB2l_EEB1K_EINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB68_7request7RequestNtNtB2w_4body4BodyEE10poll_readyCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(448), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsdBNFPP92xfl_5tower4util6eitherINtB2_6EitherINtNtNtNtB6_5limit11concurrency7service16ConcurrencyLimitIBD_INtNtNtBW_4rate7service9RateLimitINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9reconnect9ReconnectINtNtB2q_10connection22MakeSendRequestServiceINtNtB2q_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB2l_EEB1K_EINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB68_7request7RequestNtNtB2w_4body4BodyEE4callCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(448), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core6future6futureINtNtB8_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs5_NtNtNtCsaCYLheajBls_5hyper5proto2h26clientINtB5_14H2ClientFutureNtNtCsfUalJnHtWpm_5tonic4body4BodyNtNtNtNtNtB1b_9transport7channel7service2io7BoxedIoNtNtB1J_8executor10SharedExecENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(1432), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsaCYLheajBls_5hyper5proto2h27upgradeINtB5_22UpgradedSendStreamTaskNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsb6T6P0NKlCh_2h25frame6reasonNtB5_6ReasonNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsb6T6P0NKlCh_2h25proto5error9InitiatorNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCshtG1HG2JiYb_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCs8QTyv2gZm5j_5bytes13panic_advance(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsgI8t0psmkwo_10tokio_util5codec16length_delimitedNtB4_20LengthDelimitedCodecNtNtB6_7decoder7Decoder6decode(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtCs8QTyv2gZm5j_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQRShEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #28

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noinline }
attributes #34 = { inlinehint }
attributes #35 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.dbg.cu = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!6 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !7, producer: "clang LLVM (rustc version 1.100.0-nightly (787af2b8c 2026-08-25))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "foundations/src/lib.rs/@/foundations.822e5dc8be635b49-cgu.06", directory: "/opt-bench/work/foundations-rs/foundations")
!8 = distinct !DISubprogram(name: "encode<bytes::bytes_mut::BytesMut>", linkageName: "_RINvMNtNtCsb6T6P0NKlCh_2h25frame4headNtB3_4Head6encodeNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutECsbaWXNhtWAp9_11foundations", scope: !10, file: !9, line: 66, type: !14, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!9 = !DIFile(filename: "src/frame/head.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/h2-0.4.19", checksumkind: CSK_MD5, checksum: "814799b3fb82bc8c59160ec3b36dda9f")
!10 = !DINamespace(name: "Head", scope: !11)
!11 = !DINamespace(name: "head", scope: !12)
!12 = !DINamespace(name: "frame", scope: !13)
!13 = !DINamespace(name: "h2", scope: null)
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 968, column: 25, scope: !17, inlinedAt: !24)
!17 = distinct !DILexicalBlock(scope: !19, file: !18, line: 963, column: 9)
!18 = !DIFile(filename: "src/buf/buf_mut.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1", checksumkind: CSK_MD5, checksum: "0b026da1a2f9312777466397f692ffa3")
!19 = distinct !DISubprogram(name: "put_uint<bytes::bytes_mut::BytesMut>", linkageName: "_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsbaWXNhtWAp9_11foundations", scope: !20, file: !18, line: 962, type: !14, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!20 = !DINamespace(name: "BufMut", scope: !21)
!21 = !DINamespace(name: "buf_mut", scope: !22)
!22 = !DINamespace(name: "buf", scope: !23)
!23 = !DINamespace(name: "bytes", scope: null)
!24 = distinct !DILocation(line: 69, column: 13, scope: !8)
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsbaWXNhtWAp9_11foundations: argument 0"}
!27 = distinct !{!27, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut8put_uintCsbaWXNhtWAp9_11foundations"}
!28 = !DILocation(line: 773, column: 13, scope: !29, inlinedAt: !34)
!29 = distinct !DISubprogram(name: "swap_bytes", linkageName: "_RNvMs7_NtCs3oUPovFnLWP_4core3numy10swap_bytes", scope: !31, file: !30, line: 772, type: !14, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!30 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "346a9515419f6590f35e1630dc7e24c4")
!31 = !DINamespace(name: "{impl#9}", scope: !32)
!32 = !DINamespace(name: "num", scope: !33)
!33 = !DINamespace(name: "core", scope: null)
!34 = distinct !DILocation(line: 911, column: 27, scope: !35, inlinedAt: !36)
!35 = distinct !DISubprogram(name: "to_be", linkageName: "_RNvMs7_NtCs3oUPovFnLWP_4core3numy5to_be", scope: !31, file: !30, line: 908, type: !14, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!36 = distinct !DILocation(line: 4029, column: 18, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "to_be_bytes", linkageName: "_RNvMs7_NtCs3oUPovFnLWP_4core3numy11to_be_bytes", scope: !31, file: !30, line: 4028, type: !14, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!38 = distinct !DILocation(line: 968, column: 27, scope: !17, inlinedAt: !24)
!39 = !DILocation(line: 4088, column: 22, scope: !40, inlinedAt: !41)
!40 = distinct !DISubprogram(name: "to_ne_bytes", linkageName: "_RNvMs7_NtCs3oUPovFnLWP_4core3numy11to_ne_bytes", scope: !31, file: !30, line: 4085, type: !14, scopeLine: 4085, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!41 = distinct !DILocation(line: 4029, column: 26, scope: !37, inlinedAt: !38)
!42 = !DILocation(line: 90, column: 24, scope: !43, inlinedAt: !48)
!43 = distinct !DILexicalBlock(scope: !45, file: !44, line: 88, column: 5)
!44 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "a6478e6d30216db9f8cdcb9288808b92")
!45 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core5slice5index24get_offset_len_noubcheckhECsbaWXNhtWAp9_11foundations", scope: !46, file: !44, line: 83, type: !14, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!46 = !DINamespace(name: "index", scope: !47)
!47 = !DINamespace(name: "slice", scope: !33)
!48 = distinct !DILocation(line: 550, column: 15, scope: !49, inlinedAt: !52)
!49 = distinct !DILexicalBlock(scope: !50, file: !44, line: 549, column: 13)
!50 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsbaWXNhtWAp9_11foundations", scope: !51, file: !44, line: 543, type: !14, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!51 = !DINamespace(name: "{impl#7}", scope: !46)
!52 = distinct !DILocation(line: 19, column: 15, scope: !53, inlinedAt: !55)
!53 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCs3oUPovFnLWP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsbaWXNhtWAp9_11foundations", scope: !54, file: !44, line: 18, type: !14, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!54 = !DINamespace(name: "{impl#0}", scope: !46)
!55 = distinct !DILocation(line: 391, column: 9, scope: !56, inlinedAt: !60)
!56 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>, 8>", linkageName: "_RNvXsd_NtCs3oUPovFnLWP_4core5arrayAhj8_INtNtNtB7_3ops5index5IndexINtNtBG_5range9RangeFromjEE5indexCsbaWXNhtWAp9_11foundations", scope: !58, file: !57, line: 390, type: !14, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!57 = !DIFile(filename: "library/core/src/array/mod.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "17c3352141fad635318d0774997499cb")
!58 = !DINamespace(name: "{impl#15}", scope: !59)
!59 = !DINamespace(name: "array", scope: !33)
!60 = distinct !DILocation(line: 968, column: 40, scope: !17, inlinedAt: !24)
!61 = !DILocation(line: 968, column: 14, scope: !17, inlinedAt: !24)
!62 = !DILocation(line: 968, column: 50, scope: !17, inlinedAt: !24)
!63 = !DILocation(line: 70, column: 20, scope: !8)
!64 = !{i8 0, i8 11}
!65 = !DILocation(line: 331, column: 13, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "put_u8<bytes::bytes_mut::BytesMut>", linkageName: "_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CsbaWXNhtWAp9_11foundations", scope: !20, file: !18, line: 330, type: !14, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!67 = distinct !DILocation(line: 70, column: 13, scope: !8)
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CsbaWXNhtWAp9_11foundations: argument 0"}
!70 = distinct !{!70, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CsbaWXNhtWAp9_11foundations"}
!71 = !DILocation(line: 331, column: 19, scope: !66, inlinedAt: !67)
!72 = !DILocation(line: 332, column: 14, scope: !73, inlinedAt: !67)
!73 = distinct !DILexicalBlock(scope: !66, file: !18, line: 331, column: 9)
!74 = !DILocation(line: 333, column: 5, scope: !66, inlinedAt: !67)
!75 = !DILocation(line: 71, column: 20, scope: !8)
!76 = !DILocation(line: 331, column: 13, scope: !66, inlinedAt: !77)
!77 = distinct !DILocation(line: 71, column: 13, scope: !8)
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CsbaWXNhtWAp9_11foundations: argument 0"}
!80 = distinct !{!80, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut6put_u8CsbaWXNhtWAp9_11foundations"}
!81 = !DILocation(line: 331, column: 19, scope: !66, inlinedAt: !77)
!82 = !DILocation(line: 332, column: 14, scope: !73, inlinedAt: !77)
!83 = !DILocation(line: 333, column: 5, scope: !66, inlinedAt: !77)
!84 = !DILocation(line: 72, column: 21, scope: !8)
!85 = !DILocation(line: 525, column: 25, scope: !86, inlinedAt: !87)
!86 = distinct !DISubprogram(name: "put_u32<bytes::bytes_mut::BytesMut>", linkageName: "_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CsbaWXNhtWAp9_11foundations", scope: !20, file: !18, line: 524, type: !14, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!87 = distinct !DILocation(line: 72, column: 13, scope: !8)
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CsbaWXNhtWAp9_11foundations: argument 0"}
!90 = distinct !{!90, !"_RNvYNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutNtNtNtB6_3buf7buf_mut6BufMut7put_u32CsbaWXNhtWAp9_11foundations"}
!91 = !DILocation(line: 773, column: 13, scope: !92, inlinedAt: !94)
!92 = distinct !DISubprogram(name: "swap_bytes", linkageName: "_RNvMs6_NtCs3oUPovFnLWP_4core3numm10swap_bytes", scope: !93, file: !30, line: 772, type: !14, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!93 = !DINamespace(name: "{impl#8}", scope: !32)
!94 = distinct !DILocation(line: 911, column: 27, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "to_be", linkageName: "_RNvMs6_NtCs3oUPovFnLWP_4core3numm5to_be", scope: !93, file: !30, line: 908, type: !14, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!96 = distinct !DILocation(line: 4029, column: 18, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "to_be_bytes", linkageName: "_RNvMs6_NtCs3oUPovFnLWP_4core3numm11to_be_bytes", scope: !93, file: !30, line: 4028, type: !14, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!98 = distinct !DILocation(line: 525, column: 27, scope: !86, inlinedAt: !87)
!99 = !DILocation(line: 4088, column: 22, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "to_ne_bytes", linkageName: "_RNvMs6_NtCs3oUPovFnLWP_4core3numm11to_ne_bytes", scope: !93, file: !30, line: 4085, type: !14, scopeLine: 4085, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!101 = distinct !DILocation(line: 4029, column: 26, scope: !97, inlinedAt: !98)
!102 = !DILocation(line: 525, column: 14, scope: !86, inlinedAt: !87)
!103 = !DILocation(line: 526, column: 5, scope: !86, inlinedAt: !87)
!104 = !DILocation(line: 73, column: 6, scope: !8)
!105 = distinct !DISubprogram(name: "pair<http::request::Request<tonic::body::Body>, core::pin::Pin<alloc::boxed::Box<(dyn core::future::future::Future<Output=core::result::Result<http::response::Response<tonic::body::Body>, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>> + core::marker::Send), alloc::alloc::Global>>, tonic::transport::channel::service::connection::Connection>", linkageName: "_RINvMNtNtCsdBNFPP92xfl_5tower6buffer7serviceINtB3_6BufferINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtBY_8response8ResponseB1x_EIB2D_DNtNtB2b_5error5ErrorNtNtB2b_6marker4SendNtB59_4SyncEL_EEB57_EL_EEE4pairNtNtNtNtNtB1B_9transport7channel7service10connection10ConnectionECsbaWXNhtWAp9_11foundations", scope: !107, file: !106, line: 66, type: !14, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!106 = !DIFile(filename: "src/buffer/service.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-0.5.3", checksumkind: CSK_MD5, checksum: "3b7a3202e7b28f92ca2b402ccce87b59")
!107 = !DINamespace(name: "Buffer", scope: !108)
!108 = !DINamespace(name: "service", scope: !109)
!109 = !DINamespace(name: "buffer", scope: !110)
!110 = !DINamespace(name: "tower", scope: null)
!111 = !DILocation(line: 73, column: 24, scope: !105)
!112 = !DILocation(line: 73, column: 14, scope: !105)
!113 = !{!114, !116}
!114 = distinct !{!114, !115, !"_RNvMNtNtCsdBNFPP92xfl_5tower6buffer6workerINtB2_6WorkerNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB11_4body4BodyEE3newCsbaWXNhtWAp9_11foundations: argument 0"}
!115 = distinct !{!115, !"_RNvMNtNtCsdBNFPP92xfl_5tower6buffer6workerINtB2_6WorkerNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB11_4body4BodyEE3newCsbaWXNhtWAp9_11foundations"}
!116 = distinct !{!116, !115, !"_RNvMNtNtCsdBNFPP92xfl_5tower6buffer6workerINtB2_6WorkerNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB11_4body4BodyEE3newCsbaWXNhtWAp9_11foundations: argument 1"}
!117 = !DILocation(line: 128, column: 9, scope: !118, inlinedAt: !122)
!118 = distinct !DISubprogram(name: "alloc", linkageName: "_RNvNtCs1xwejQucwHj_5alloc5alloc5alloc", scope: !120, file: !119, line: 124, type: !14, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!119 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "87b4d0ba26e1dfe94542079de6981d97")
!120 = !DINamespace(name: "alloc", scope: !121)
!121 = !DINamespace(name: "alloc", scope: null)
!122 = distinct !DILocation(line: 302, column: 73, scope: !123, inlinedAt: !126)
!123 = distinct !DILexicalBlock(scope: !124, file: !119, line: 301, column: 13)
!124 = distinct !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime", scope: !125, file: !119, line: 297, type: !14, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!125 = !DINamespace(name: "Global", scope: !120)
!126 = distinct !DILocation(line: 424, column: 9, scope: !127, inlinedAt: !128)
!127 = distinct !DISubprogram(name: "alloc_impl", linkageName: "_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global10alloc_impl", scope: !125, file: !119, line: 423, type: !14, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!128 = distinct !DILocation(line: 541, column: 14, scope: !129, inlinedAt: !131)
!129 = distinct !DISubprogram(name: "allocate", linkageName: "_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate", scope: !130, file: !119, line: 540, type: !14, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!130 = !DINamespace(name: "{impl#3}", scope: !120)
!131 = distinct !DILocation(line: 251, column: 18, scope: !132, inlinedAt: !135)
!132 = distinct !DISubprogram(name: "box_new_uninit", linkageName: "_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit", scope: !134, file: !133, line: 250, type: !14, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!133 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "65407215dcd5339fcbd8a1149aa3d75e")
!134 = !DINamespace(name: "boxed", scope: !121)
!135 = distinct !DILocation(line: 290, column: 19, scope: !136, inlinedAt: !138)
!136 = distinct !DISubprogram(name: "new<alloc::sync::ArcInner<std::sync::poison::mutex::Mutex<core::option::Option<tower::buffer::error::ServiceError>>>>", linkageName: "_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdBNFPP92xfl_5tower6buffer5error12ServiceErrorEEEE3newCsbaWXNhtWAp9_11foundations", scope: !137, file: !133, line: 288, type: !14, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!137 = !DINamespace(name: "{impl#0}", scope: !134)
!138 = distinct !DILocation(line: 443, column: 25, scope: !139, inlinedAt: !143)
!139 = distinct !DISubprogram(name: "new<std::sync::poison::mutex::Mutex<core::option::Option<tower::buffer::error::ServiceError>>>", linkageName: "_RNvMse_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdBNFPP92xfl_5tower6buffer5error12ServiceErrorEEE3newCsbaWXNhtWAp9_11foundations", scope: !141, file: !140, line: 440, type: !14, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!140 = !DIFile(filename: "library/alloc/src/sync.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "7ddb969a85f54b0aa2c2130ee924976d")
!141 = !DINamespace(name: "Arc", scope: !142)
!142 = !DINamespace(name: "sync", scope: !121)
!143 = distinct !DILocation(line: 52, column: 20, scope: !144, inlinedAt: !148)
!144 = distinct !DISubprogram(name: "new<tonic::transport::channel::service::connection::Connection, http::request::Request<tonic::body::Body>>", linkageName: "_RNvMNtNtCsdBNFPP92xfl_5tower6buffer6workerINtB2_6WorkerNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB11_4body4BodyEE3newCsbaWXNhtWAp9_11foundations", scope: !146, file: !145, line: 47, type: !14, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!145 = !DIFile(filename: "src/buffer/worker.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tower-0.5.3", checksumkind: CSK_MD5, checksum: "adebcee19d7d8bfc3687f5fbf2b1472c")
!146 = !DINamespace(name: "Worker", scope: !147)
!147 = !DINamespace(name: "worker", scope: !109)
!148 = distinct !DILocation(line: 74, column: 32, scope: !149)
!149 = distinct !DILexicalBlock(scope: !105, file: !106, line: 73, column: 9)
!150 = !{!151, !114, !116}
!151 = distinct !{!151, !152, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdBNFPP92xfl_5tower6buffer5error12ServiceErrorEEEE3newCsbaWXNhtWAp9_11foundations: argument 0"}
!152 = distinct !{!152, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdBNFPP92xfl_5tower6buffer5error12ServiceErrorEEEE3newCsbaWXNhtWAp9_11foundations"}
!153 = !DILocation(line: 130, column: 9, scope: !118, inlinedAt: !122)
!154 = !DILocation(line: 251, column: 11, scope: !132, inlinedAt: !135)
!155 = !DILocation(line: 251, column: 5, scope: !132, inlinedAt: !135)
!156 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!157 = !DILocation(line: 253, column: 19, scope: !132, inlinedAt: !135)
!158 = !DILocation(line: 65, column: 5, scope: !144, inlinedAt: !148)
end_hunk_1
