Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_metrics-417fafe6e713d5c1.libp2p_metrics.b9d19f8435db4bd8-cgu.8?download=true
inline.NumInlined: 270
inline.NumDeleted: 119
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@0 = private unnamed_addr constant [8 x i8] c"identify", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfX6MfzXxCho_14libp2p_metrics8identify5PeersEBF_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCsfX6MfzXxCho_14libp2p_metrics8identifyNtB5_5PeersNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs2_NtCsfX6MfzXxCho_14libp2p_metrics8identifyNtB5_5PeersNtNtCsf6yrgnUmEzM_17prometheus_client9collector9Collector6encode }>, align 8
@2 = private unnamed_addr constant [6 x i8] c"errors", align 1
@3 = private unnamed_addr constant [56 x i8] c"Number of errors while attempting to identify the remote", align 1
@4 = private unnamed_addr constant [6 x i8] c"pushed", align 1
@5 = private unnamed_addr constant [96 x i8] c"Number of times identification information of the local node has been actively pushed to a peer.", align 1
@6 = private unnamed_addr constant [8 x i8] c"received", align 1
@7 = private unnamed_addr constant [72 x i8] c"Number of times identification information has been received from a peer", align 1
@8 = private unnamed_addr constant [4 x i8] c"sent", align 1
@9 = private unnamed_addr constant [125 x i8] c"Number of times identification information of the local node has been sent to a peer in response to an identification request", align 1
@10 = private unnamed_addr constant [9 x i8] c"gossipsub", align 1
@11 = private unnamed_addr constant [8 x i8] c"messages", align 1
@12 = private unnamed_addr constant [27 x i8] c"Number of messages received", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEEECsfX6MfzXxCho_14libp2p_metrics, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@14 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@15 = private unnamed_addr constant [29 x i8] c"misc/metrics/src/identify.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1C\00\00\00\00\00\00\00\95\00\00\00\17\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1C\00\00\00\00\00\00\00\99\00\00\00\17\00\00\00" }>, align 8
@18 = private unnamed_addr constant [4 x i8] c"ping", align 1
@19 = private unnamed_addr constant [3 x i8] c"rtt", align 1
@20 = private unnamed_addr constant [55 x i8] c"Round-trip time sending a 'ping' and receiving a 'pong'", align 1
@21 = private unnamed_addr constant [7 x i8] c"failure", align 1
@22 = private unnamed_addr constant [52 x i8] c"Failure while sending a 'ping' or receiving a 'pong'", align 1
@23 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsfX6MfzXxCho_14libp2p_metrics, align 8
@24 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@25 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @24, [24 x i8] zeroinitializer }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1C\00\00\00\00\00\00\00\A3\00\00\00(\00\00\00" }>, align 8
@27 = private unnamed_addr constant [16 x i8] c"remote_protocols", align 1
@28 = private unnamed_addr constant [137 x i8] c"Number of connected nodes supporting a specific protocol, with \22unrecognized\22 for each peer supporting one or more unrecognized protocols", align 1
@29 = private unnamed_addr constant [23 x i8] c"remote_listen_addresses", align 1
@30 = private unnamed_addr constant [63 x i8] c"Number of connected nodes advertising a specific listen address", align 1
@31 = private unnamed_addr constant [24 x i8] c"local_observed_addresses", align 1
@32 = private unnamed_addr constant [72 x i8] c"Number of connected nodes observing the local node at a specific address", align 1
@33 = private unnamed_addr constant [16 x i8] c"observed_address", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCsf6yrgnUmEzM_17prometheus_client8encodingATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_NtB5_14EncodeLabelSet6encodeCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@35 = private unnamed_addr constant [14 x i8] c"listen_address", align 1
@36 = private unnamed_addr constant [8 x i8] c"protocol", align 1
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtNtB1d_11collections4hash3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsfY02lUNHLPc_15libp2p_identify8protocol4InfoEEENtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@38 = private unnamed_addr constant [5 x i8] c"Peers", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram5InnerEENtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@40 = private unnamed_addr constant [9 x i8] c"Histogram", align 1
@41 = private unnamed_addr constant [5 x i8] c"inner", align 1
@42 = private unnamed_addr constant [6 x i8] c"reason", align 1
@43 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @42, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_5Debug3fmt }>, align 8
@45 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTdyEEECsfX6MfzXxCho_14libp2p_metrics, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdyEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram20NativeHistogramStateENtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@48 = private unnamed_addr constant [5 x i8] c"Inner", align 1
@49 = private unnamed_addr constant [3 x i8] c"sum", align 1
@50 = private unnamed_addr constant [5 x i8] c"count", align 1
@51 = private unnamed_addr constant [7 x i8] c"buckets", align 1
@52 = private unnamed_addr constant [6 x i8] c"native", align 1
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfX6MfzXxCho_14libp2p_metrics4ping7FailureNtB6_5Debug3fmtBA_ }>, align 8
@54 = private unnamed_addr constant [13 x i8] c"FailureLabels", align 1
@55 = private unnamed_addr constant [4 x i8] c"None", align 1
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@57 = private unnamed_addr constant [4 x i8] c"Some", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4time10SystemTimeNtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicyEEECsfX6MfzXxCho_14libp2p_metrics, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEENtNtBN_3fmt5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6marker11PhantomDatayENtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@61 = private unnamed_addr constant [7 x i8] c"Counter", align 1
@62 = private unnamed_addr constant [5 x i8] c"value", align 1
@63 = private unnamed_addr constant [7 x i8] c"phantom", align 1
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsO_NtNtCskKLDkoKarTP_4core3fmt3numaNtB7_5Debug3fmt }>, align 8
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtB7_4time8DurationENtNtB7_3fmt5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeENtNtB7_3fmt5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTlyEEECsfX6MfzXxCho_14libp2p_metrics, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTlyEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecTlyEENtB6_5Debug3fmtCsfX6MfzXxCho_14libp2p_metrics }>, align 8
@71 = private unnamed_addr constant [22 x i8] c"initial_zero_threshold", align 1
@72 = private unnamed_addr constant [14 x i8] c"initial_schema", align 1
@73 = private unnamed_addr constant [14 x i8] c"zero_threshold", align 1
@74 = private unnamed_addr constant [10 x i8] c"zero_count", align 1
@75 = private unnamed_addr constant [6 x i8] c"schema", align 1
@76 = private unnamed_addr constant [11 x i8] c"max_buckets", align 1
@77 = private unnamed_addr constant [18 x i8] c"min_reset_duration", align 1
@78 = private unnamed_addr constant [18 x i8] c"max_zero_threshold", align 1
@79 = private unnamed_addr constant [7 x i8] c"created", align 1
@80 = private unnamed_addr constant [15 x i8] c"scheduled_reset", align 1
@81 = private unnamed_addr constant [8 x i8] c"positive", align 1
@82 = private unnamed_addr constant [8 x i8] c"negative", align 1
@83 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @71, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @77, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @78, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @79, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @80, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @81, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @82, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@84 = private unnamed_addr constant [20 x i8] c"NativeHistogramState", align 1
@85 = private unnamed_addr constant [7 x i8] c"Timeout", align 1
@86 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1
@87 = private unnamed_addr constant [5 x i8] c"Other", align 1
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfX6MfzXxCho_14libp2p_metrics4ping7FailureNtB6_5Debug3fmtBA_ = private unnamed_addr constant [3 x i8] c"\07\0B\05", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsfX6MfzXxCho_14libp2p_metrics4ping7FailureNtB6_5Debug3fmtBA_.50 = private unnamed_addr constant [3 x ptr] [ptr @85, ptr @86, ptr @87], align 8

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvMs2_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogramNtB6_9Histogram3newINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB1n_3map3MapINtNtB1n_9enumerate9EnumerateINtNtNtB1p_7sources6repeat6RepeatuEENCNvB6_19exponential_buckets0EEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 10 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.05.sroa.4 = alloca [31 x i8], align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double f0x7FEFFFFFFFFFFFFF, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTdyEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1r_5chain5ChainINtNtB1r_4take4TakeIB1n_INtNtB1r_9enumerate9EnumerateINtNtNtB1t_7sources6repeat6RepeatuEENCNvNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram19exponential_buckets0EEINtNtB3r_4once4OncedEENCINvMs2_B40_NtB40_9Histogram3newB2v_E0EE9from_iterCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.05.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.05.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.d, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.05.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.05.sroa.4, i64 31, i1 false)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.78.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !19
  %i.e = call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 208, i64 noundef 8) #28, !noalias !19 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram5InnerEEE3newCsfX6MfzXxCho_14libp2p_metrics.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram5InnerEEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.a) #30
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram5InnerEEE3newCsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.sroa.4)
  ret ptr %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATReNtNtCsexYYUdYSQU6_5alloc6string6StringEj1_ECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.a, align 8, !range !6, !alias.scope !34, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfX6MfzXxCho_14libp2p_metrics.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !35, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfX6MfzXxCho_14libp2p_metrics.exit.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !range !6, !alias.scope !34, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTReNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfX6MfzXxCho_14libp2p_metrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !35, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !37
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTReNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfX6MfzXxCho_14libp2p_metrics.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsfX6MfzXxCho_14libp2p_metrics.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTReNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !7
  switch i64 %i.a, label %bb.b [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsfX6MfzXxCho_14libp2p_metrics.exit
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfX6MfzXxCho_14libp2p_metrics.exit.i
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %bb.a, %bb.r, %bb.q
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !78, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.d, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !79, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !80
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !6, !alias.scope !78, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfX6MfzXxCho_14libp2p_metrics.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !79, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !81
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfX6MfzXxCho_14libp2p_metrics.exit.i

.body.i:                                          ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #30
          to label %.body4.i unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfX6MfzXxCho_14libp2p_metrics.exit.i: ; preds = %bb.a, %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfX6MfzXxCho_14libp2p_metrics.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.i, align 8, !range !6, !alias.scope !82, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %.val2.i.i, 0
  br i1 %i.k, label %.body4.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val3.i.i = load ptr, ptr %i.l, align 8, !alias.scope !83, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !84
  br label %.body4.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsfX6MfzXxCho_14libp2p_metrics.exit.i
  %.val.i.i = load i64, ptr %i.i, align 8, !range !6, !alias.scope !82, !noundef !7 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !83, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !85
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit.i

.body4.i:                                         ; preds = %bb.h, %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.c, %.body.i ], [ %i.j, %bb.g ], [ %i.j, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #30
          to label %.body11.i unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit.i: ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i6.i = load i64, ptr %i.p, align 8, !range !6, !alias.scope !86, !noundef !7 ; 2 uses
  %i.r = icmp eq i64 %.val2.i6.i, 0
  br i1 %i.r, label %.body11.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val3.i7.i = load ptr, ptr %i.s, align 8, !alias.scope !87, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i7.i, i64 noundef %.val2.i6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !88
  br label %.body11.i

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit.i
  %.val.i9.i = load i64, ptr %i.p, align 8, !range !6, !alias.scope !86, !noundef !7 ; 2 uses
  %i.t = icmp eq i64 %.val.i9.i, 0
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit13.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val1.i10.i = load ptr, ptr %i.u, align 8, !alias.scope !87, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10.i, i64 noundef %.val.i9.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit13.i

.body11.i:                                        ; preds = %bb.l, %bb.k, %.body4.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body4.i ], [ %i.q, %bb.k ], [ %i.q, %bb.l ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #30
          to label %common.resume.i unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit13.i: ; preds = %bb.n, %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit13.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i14.i = load i64, ptr %i.w, align 8, !range !6, !alias.scope !90, !noundef !7 ; 2 uses
  %i.y = icmp eq i64 %.val2.i14.i, 0
  br i1 %i.y, label %common.resume.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val3.i15.i = load ptr, ptr %i.z, align 8, !alias.scope !91, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i15.i, i64 noundef %.val2.i14.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !92
  br label %common.resume.i

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfX6MfzXxCho_14libp2p_metrics.exit13.i
  %.val.i17.i = load i64, ptr %i.w, align 8, !range !6, !alias.scope !90, !noundef !7 ; 2 uses
  %i.aa = icmp eq i64 %.val.i17.i, 0
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsfX6MfzXxCho_14libp2p_metrics.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val1.i18.i = load ptr, ptr %i.ab, align 8, !alias.scope !91, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i18.i, i64 noundef %.val.i17.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !93
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsfX6MfzXxCho_14libp2p_metrics.exit

common.resume.i:                                  ; preds = %bb.p, %bb.o, %.body11.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.x, %bb.p ], [ %.pn2.i, %.body11.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.s:                                             ; preds = %.body11.i, %.body4.i, %.body.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram20NativeHistogramStateEECsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram20NativeHistogramStateECsfX6MfzXxCho_14libp2p_metrics.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf6yrgnUmEzM_17prometheus_client7metrics9histogram20NativeHistogramStateECsfX6MfzXxCho_14libp2p_metrics.exit: ; preds = %bb.j, %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTlyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfX6MfzXxCho_14libp2p_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !100, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !100, !nonnull !7, !noundef !7
  %i.f = shl nuw i64 %.val2.i.i, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #28
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !100, !noundef !7 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTlyEEECsfX6MfzXxCho_14libp2p_metrics.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
