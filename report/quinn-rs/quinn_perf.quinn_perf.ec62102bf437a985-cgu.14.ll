Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.14?download=true
inline.NumInlined: 463
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@_RNvNtCsgb4gPAseikh_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@33 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsh_NtCshovLROGBtMy_11quinn_proto15transport_errorNtB5_4CodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3267
@34 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCshovLROGBtMy_11quinn_proto5frame9FrameTypeENtNtB7_3fmt5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3268
@35 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdIYt8sV98we_5bytes5bytes5BytesNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3269
@36 = private unnamed_addr constant [15 x i8] c"ConnectionClose", align 1
@37 = private unnamed_addr constant [10 x i8] c"error_code", align 1
@38 = private unnamed_addr constant [10 x i8] c"frame_type", align 1
@39 = private unnamed_addr constant [6 x i8] c"reason", align 1
@40 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3270
@41 = private unnamed_addr constant [16 x i8] c"ApplicationClose", align 1
@42 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt }>, align 8, !dbg !3271
@43 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3272
@44 = private unnamed_addr constant [8 x i8] c"UdpStats", align 1
@45 = private unnamed_addr constant [9 x i8] c"datagrams", align 1
@46 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@47 = private unnamed_addr constant [3 x i8] c"ios", align 1
@48 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3273
@49 = private unnamed_addr constant [10 x i8] c"OtherError", align 1
@50 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@51 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @50, [24 x i8] zeroinitializer }>, align 8
@_RNvNvXs5_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB7_9DataInnerNtNtCskKLDkoKarTP_4core7default7Default7default13NULL_METADATA = external global { i64, { i32, [1 x i32] }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { { ptr, ptr } } }, { ptr, [1 x i64] }, { ptr, [1 x i64] }, i8, [7 x i8] }
@52 = private unnamed_addr constant [4 x i8] c"None", align 1
@53 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto5frame9FrameTypeNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3274
@54 = private unnamed_addr constant [4 x i8] c"Some", align 1
@55 = private unnamed_addr constant [34 x i8] c"MaybeDone polled after value taken", align 1
@56 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/future/maybe_done.rs\00", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @56, [16 x i8] c"j\00\00\00\00\00\00\00C\00\00\00$\00\00\00" }>, align 8
@58 = private unnamed_addr constant [2 x i8] c"..", align 1
@59 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCshovLROGBtMy_11quinn_proto10connection5statsNtB5_8UdpStatsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3275
@60 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10connection5statsNtB5_10FrameStatsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3276
@61 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCshovLROGBtMy_11quinn_proto10connection5stats9PathStatsNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3277
@62 = private unnamed_addr constant [15 x i8] c"ConnectionStats", align 1
@63 = private unnamed_addr constant [6 x i8] c"udp_tx", align 1
@64 = private unnamed_addr constant [6 x i8] c"udp_rx", align 1
@65 = private unnamed_addr constant [8 x i8] c"frame_tx", align 1
@66 = private unnamed_addr constant [8 x i8] c"frame_rx", align 1
@67 = private unnamed_addr constant [4 x i8] c"path", align 1
@68 = private unnamed_addr constant [65 x i8] c":internal error: entered unreachable code: weird lifecycle \C1 \00\80`\00", align 1
@69 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/page/slot.rs\00", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"h\00\00\00\00\00\00\00\94\02\00\00\18\00\00\00" }>, align 8
@71 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRuNtB6_5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3278
@72 = private unnamed_addr constant [12 x i8] c"AcquireError", align 1
@73 = private unnamed_addr constant [2 x i8] c"()", align 1
@74 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCsgb4gPAseikh_12tracing_core5fieldINtB5_12DisplayValueNtNtNtCs7n8GKOt6esj_18tracing_subscriber3fmt6format13TimingDisplayENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCskigd7sy4fqX_10quinn_perf }>, align 8, !dbg !3279

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvCskigd7sy4fqX_10quinn_perf4main0EB17_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(3096) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12652 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [3096 x i8], align 8              ; 4 uses
    #dbg_value(ptr %0, !12873, !DIExpression(), !12877)
    #dbg_declare(ptr %1, !12874, !DIExpression(), !12878)
    #dbg_value(i64 3096, !12875, !DIExpression(), !12879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3096) %i.b, ptr noundef nonnull align 8 dereferenceable(3096) %1, i64 3096, i1 false), !dbg !12905
    #dbg_value(ptr %0, !12880, !DIExpression(), !12659)
    #dbg_declare(ptr %i.b, !12889, !DIExpression(), !12660)
    #dbg_declare(ptr poison, !12894, !DIExpression(), !12661)
    #dbg_declare(ptr %i.a, !12891, !DIExpression(), !12662)
    #dbg_declare(ptr poison, !12890, !DIExpression(), !12661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12906, !noalias !12896
  %i.c = invoke { ptr, i64 } @_RNvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noundef nonnull align 8 %0)
          to label %bb.b unwind label %bb.m, !dbg !12907, !noalias !12896 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.c, 0, !dbg !12908
  %i.e = extractvalue { ptr, i64 } %i.c, 1, !dbg !12908
  store ptr %i.d, ptr %i.a, align 8, !dbg !12908, !noalias !12896
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12908
  store i64 %i.e, ptr %i.f, align 8, !dbg !12908, !noalias !12896
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12909
    #dbg_value(ptr %i.g, !12893, !DIExpression(), !12666)
  invoke void @_RINvMNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNvCskigd7sy4fqX_10quinn_perf4main0EB1y_(ptr noundef nonnull align 8 %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3096) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.d unwind label %bb.c, !dbg !12910

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime6handle10EnterGuardECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #23
          to label %.thread.i unwind label %bb.l, !dbg !12911, !noalias !12897

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.a, !10433, !DIExpression(), !12668)
    #dbg_value(ptr %i.a, !10440, !DIExpression(), !12670)
  invoke void @_RNvXs0_NtNtNtCsar2VadbF9t7_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.h unwind label %bb.e, !dbg !12912, !noalias !12897

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12898), !dbg !12912
    #dbg_value(ptr %i.a, !10447, !DIExpression(), !12674)
  %i.j = load ptr, ptr %i.a, align 8, !dbg !12913, !alias.scope !12899, !noalias !12896, !noundef !3297 ; 2 uses
  %i.k = icmp eq ptr %i.j, null, !dbg !12913
  br i1 %i.k, label %.thread.i, label %bb.f, !dbg !12913

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.a, !10454, !DIExpression(), !12680)
    #dbg_value(ptr %i.a, !10459, !DIExpression(), !12682)
    #dbg_value(ptr %i.a, !10464, !DIExpression(), !12684)
    #dbg_value(i64 1, !10468, !DIExpression(), !12686)
    #dbg_value(i8 1, !10474, !DIExpression(), !12686)
    #dbg_value(i64 1, !10476, !DIExpression(), !12688)
    #dbg_value(i8 1, !10481, !DIExpression(), !12688)
    #dbg_value(ptr %i.j, !10473, !DIExpression(), !12689)
    #dbg_value(ptr %i.j, !10480, !DIExpression(), !12688)
  %i.l = atomicrmw add ptr %i.j, i64 -1 release, align 8, !dbg !12914, !noalias !12900
  %i.m = icmp eq i64 %i.l, 1, !dbg !12915
  br i1 %i.m, label %bb.g, label %.thread.i, !dbg !12915

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !10485, !DIExpression(), !12697)
  fence acquire, !dbg !12916
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %.thread.i unwind label %bb.k, !dbg !12917, !noalias !12897

bb.h:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !12901), !dbg !12912
    #dbg_value(ptr %i.a, !10447, !DIExpression(), !12701)
  %i.n = load ptr, ptr %i.a, align 8, !dbg !12918, !alias.scope !12902, !noalias !12896, !noundef !3297 ; 2 uses
  %i.o = icmp eq ptr %i.n, null, !dbg !12918
  br i1 %i.o, label %_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCskigd7sy4fqX_10quinn_perf4main0EB1e_.exit, label %bb.i, !dbg !12918

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.a, !10454, !DIExpression(), !12703)
    #dbg_value(ptr %i.a, !10459, !DIExpression(), !12705)
    #dbg_value(ptr %i.a, !10464, !DIExpression(), !12707)
    #dbg_value(i64 1, !10468, !DIExpression(), !12709)
    #dbg_value(i8 1, !10474, !DIExpression(), !12709)
    #dbg_value(i64 1, !10476, !DIExpression(), !12711)
    #dbg_value(i8 1, !10481, !DIExpression(), !12711)
    #dbg_value(ptr %i.n, !10473, !DIExpression(), !12712)
    #dbg_value(ptr %i.n, !10480, !DIExpression(), !12711)
  %i.p = atomicrmw add ptr %i.n, i64 -1 release, align 8, !dbg !12919, !noalias !12903
  %i.q = icmp eq i64 %i.p, 1, !dbg !12920
  br i1 %i.q, label %bb.j, label %_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCskigd7sy4fqX_10quinn_perf4main0EB1e_.exit, !dbg !12920

bb.j:                                             ; preds = %bb.i
    #dbg_value(i8 2, !10485, !DIExpression(), !12720)
  fence acquire, !dbg !12921
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24, !dbg !12922, !noalias !12897
  br label %_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCskigd7sy4fqX_10quinn_perf4main0EB1e_.exit, !dbg !12922

bb.k:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !12912, !noalias !12897
  unreachable, !dbg !12912

bb.l:                                             ; preds = %bb.m, %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !12923
  unreachable, !dbg !12923

.thread.i:                                        ; preds = %bb.m, %bb.g, %bb.f, %bb.e, %bb.c
  %.pn7.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.t, %bb.m ], [ %i.i, %bb.g ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn7.i, !dbg !12923

bb.m:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCskigd7sy4fqX_10quinn_perf4main0EBF_(ptr noundef nonnull align 8 dereferenceable(3096) %i.b) #23
          to label %.thread.i unwind label %bb.l, !dbg !12911, !noalias !12904

_RINvMNtNtCsar2VadbF9t7_5tokio7runtime7runtimeNtB3_7Runtime14block_on_innerNCNvCskigd7sy4fqX_10quinn_perf4main0EB1e_.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12911, !noalias !12896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12924
  ret void, !dbg !12925
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCskXT5ShPYifM_12sharded_slab4page4slotINtB6_4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtBa_3cfg13DefaultConfigE12release_withNtB8_5LocalNCINvMs2_B6_BM_13clear_storageB2H_E0bECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12960 {
bb.a:
    #dbg_value(ptr poison, !10573, !DIExpression(), !12962)
    #dbg_value(ptr %0, !13075, !DIExpression(), !13138)
    #dbg_value(i64 %1, !13076, !DIExpression(), !13138)
    #dbg_value(i64 %2, !13077, !DIExpression(), !13138)
    #dbg_value(ptr %3, !13078, !DIExpression(), !13138)
    #dbg_declare(ptr poison, !13079, !DIExpression(), !13139)
    #dbg_declare(ptr poison, !13140, !DIExpression(), !13149)
    #dbg_value(i8 2, !13158, !DIExpression(), !13162)
    #dbg_value(i8 0, !13158, !DIExpression(), !13168)
    #dbg_value(i8 0, !13158, !DIExpression(), !13177)
    #dbg_value(i8 3, !13178, !DIExpression(), !13185)
    #dbg_value(i8 2, !13182, !DIExpression(), !13185)
    #dbg_value(i8 0, !13158, !DIExpression(), !13195)
    #dbg_value(i8 0, !13158, !DIExpression(), !13204)
    #dbg_value(i8 0, !13158, !DIExpression(), !13213)
    #dbg_value(i8 0, !13158, !DIExpression(), !13223)
    #dbg_value(ptr %0, !13159, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13224)
    #dbg_value(ptr %0, !13225, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13228)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !13373 ; 2 uses
    #dbg_value(ptr %i.a, !10623, !DIExpression(), !12974)
    #dbg_value(i8 2, !10626, !DIExpression(), !12974)
  %i.b = load atomic i64, ptr %i.a acquire, align 8, !dbg !13374 ; 2 uses
    #dbg_value(i64 0, !13082, !DIExpression(), !13230)
    #dbg_value(i64 %1, !13231, !DIExpression(), !13234)
    #dbg_value(i64 poison, !13235, !DIExpression(), !13240)
    #dbg_value(i64 poison, !13083, !DIExpression(), !13241)
    #dbg_value(i8 poison, !13081, !DIExpression(), !13242)
    #dbg_value(i64 %i.b, !13080, !DIExpression(), !13243)
    #dbg_value(i64 %i.b, !13244, !DIExpression(), !13248)
  %i.c = lshr i64 %i.b, 51, !dbg !13375
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %.lr.ph49, label %.loopexit, !dbg !13376

.lr.ph49:                                         ; preds = %bb.a
  %.cmp = icmp ult i64 %1, 8190, !dbg !13377
  %.v = select i1 %.cmp, i64 1, i64 -8190, !dbg !13377
  %i.e = add i64 %1, %.v, !dbg !13377
    #dbg_value(i64 %i.e, !13083, !DIExpression(), !13241)
    #dbg_value(i64 %i.e, !13235, !DIExpression(), !13240)
  %i.f = shl nuw i64 %i.e, 51
  br label %bb.b, !dbg !13376

bb.b:                                             ; preds = %.lr.ph49, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit
  %.sroa.02.046 = phi i1 [ false, %.lr.ph49 ], [ %.sroa.02.1, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ]
  %.sroa.06.045 = phi i64 [ %i.b, %.lr.ph49 ], [ %.sroa.06.1, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %.sroa.0.044 = phi i64 [ 0, %.lr.ph49 ], [ %.sroa.0.1, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
    #dbg_value(ptr %0, !13179, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13249)
    #dbg_value(ptr %0, !13225, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13251)
    #dbg_value(i64 %.sroa.06.045, !13180, !DIExpression(), !13185)
    #dbg_value(ptr poison, !13236, !DIExpression(), !13252)
    #dbg_value(i64 %.sroa.06.045, !13237, !DIExpression(), !13253)
  %i.g = and i64 %.sroa.06.045, 2251799813685247, !dbg !13378
  %i.h = or disjoint i64 %i.g, %i.f, !dbg !13378
    #dbg_value(i64 %i.h, !13181, !DIExpression(), !13185)
    #dbg_value(ptr %i.a, !10642, !DIExpression(), !12981)
    #dbg_value(i64 %.sroa.06.045, !10645, !DIExpression(), !12981)
    #dbg_value(i64 %i.h, !10646, !DIExpression(), !12981)
    #dbg_value(i8 3, !10647, !DIExpression(), !12981)
    #dbg_value(i8 2, !10648, !DIExpression(), !12981)
  %i.i = cmpxchg ptr %i.a, i64 %.sroa.06.045, i64 %i.h acq_rel acquire, align 8, !dbg !13379 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !13379
  %i.k = extractvalue { i64, i1 } %i.i, 0, !dbg !13379 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, !dbg !13380

.loopexit:                                        ; preds = %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, %bb.a, %bb.d
  %or.cond.not42 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ]
  ret i1 %or.cond.not42, !dbg !13381

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.k, !13101, !DIExpression(), !13254)
    #dbg_value(i8 1, !13081, !DIExpression(), !13242)
    #dbg_value(i64 %i.k, !13102, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 562949953421311, DW_OP_and, DW_OP_stack_value), !13255)
  %i.l = and i64 %i.k, 2251799813685244, !dbg !13382
  %i.m = icmp eq i64 %i.l, 0, !dbg !13382
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !13382

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !13155, !DIExpression(), !13256)
    #dbg_value(ptr %0, !13145, !DIExpression(), !13257)
    #dbg_value(ptr %0, !13258, !DIExpression(), !12989)
    #dbg_value(ptr %0, !13273, !DIExpression(), !12994)
    #dbg_declare(ptr poison, !13270, !DIExpression(), !12995)
    #dbg_declare(ptr poison, !13279, !DIExpression(), !12996)
    #dbg_value(ptr %0, !13280, !DIExpression(), !12997)
    #dbg_value(ptr %0, !13282, !DIExpression(), !13000)
  tail call void @_RNvXs6_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCskXT5ShPYifM_12sharded_slab5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %0), !dbg !13383
    #dbg_value(i1 true, !13119, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13286)
    #dbg_value(ptr %3, !13288, !DIExpression(), !13003)
    #dbg_value(ptr %3, !13296, !DIExpression(), !13006)
    #dbg_value(ptr %3, !13301, !DIExpression(), !13009)
    #dbg_value(i64 %2, !13292, !DIExpression(), !13003)
    #dbg_value(i64 %2, !13305, !DIExpression(), !13009)
    #dbg_value(ptr %0, !13293, !DIExpression(), !13003)
    #dbg_value(ptr %0, !13307, !DIExpression(), !13012)
    #dbg_declare(ptr poison, !13313, !DIExpression(), !13016)
    #dbg_value(ptr %3, !13323, !DIExpression(), !13017)
    #dbg_value(ptr %3, !13326, !DIExpression(), !13020)
    #dbg_value(ptr %3, !13331, !DIExpression(), !13023)
  %i.n = load i64, ptr %3, align 8, !dbg !13384, !noundef !3297
    #dbg_value(i64 %i.n, !13311, !DIExpression(), !13012)
    #dbg_value(ptr %0, !13336, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !13027)
    #dbg_value(ptr poison, !13346, !DIExpression(), !13028)
    #dbg_value(ptr poison, !13348, !DIExpression(), !13031)
    #dbg_value(ptr %0, !13326, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !13033)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !13385
    #dbg_value(ptr %i.o, !13351, !DIExpression(), !13034)
  store i64 %i.n, ptr %i.o, align 8, !dbg !13386
    #dbg_value(ptr %3, !13353, !DIExpression(), !13038)
    #dbg_value(ptr poison, !13362, !DIExpression(), !13039)
    #dbg_value(ptr poison, !13364, !DIExpression(), !13042)
    #dbg_value(ptr %3, !13326, !DIExpression(), !13044)
    #dbg_value(ptr %3, !13367, !DIExpression(), !13045)
  store i64 %2, ptr %3, align 8, !dbg !13387
  br label %.loopexit, !dbg !13388

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !13082, !DIExpression(DW_OP_deref), !13230)
    #dbg_value(ptr poison, !10680, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13049)
    #dbg_value(ptr poison, !10680, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13049)
    #dbg_value(ptr poison, !10703, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13050)
    #dbg_value(ptr poison, !10703, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13050)
    #dbg_value(ptr poison, !10707, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13051)
    #dbg_value(ptr poison, !10707, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13051)
    #dbg_value(ptr undef, !10573, !DIExpression(), !12962)
    #dbg_value(i64 1, !10713, !DIExpression(), !13053)
    #dbg_value(i32 1, !10720, !DIExpression(), !13055)
    #dbg_value(i32 1, !10728, !DIExpression(), !13057)
  %i.p = trunc i64 %.sroa.0.044 to i32, !dbg !13389
  %i.q = and i32 %i.p, 31, !dbg !13389            ; 2 uses
    #dbg_value(i32 0, !10576, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13058)
    #dbg_value(!DIArgList(i32 1, i32 %i.q), !10576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13058)
    #dbg_value(ptr undef, !10707, !DIExpression(), !13051)
    #dbg_value(ptr undef, !10703, !DIExpression(), !13050)
    #dbg_value(ptr undef, !10680, !DIExpression(), !13049)
    #dbg_value(ptr undef, !10685, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13059)
  %.not.a = icmp eq i32 %i.q, 31, !dbg !13390
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.preheader, !dbg !13391

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.r = shl nuw nsw i32 1, %i.q, !dbg !13389
    #dbg_value(i32 %i.r, !10576, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13058)
  %i.s = freeze i32 %i.r, !dbg !13391             ; 3 uses
  %i.t = add i32 %i.s, -1, !dbg !13391
  %xtraiter = and i32 %i.s, 7, !dbg !13391        ; 3 uses
  %i.u = icmp ult i32 %i.t, 7, !dbg !13391
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !13391

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.s, -8, !dbg !13391
  br label %.lr.ph, !dbg !13391

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !13391
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !13391

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %lcmp.mod50 = icmp ne i32 %xtraiter, 0, !dbg !13391
  tail call void @llvm.assume(i1 %lcmp.mod50), !dbg !13391
  br label %.lr.ph.epil, !dbg !13391

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
    #dbg_value(i32 poison, !10704, !DIExpression(), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(ptr undef, !10707, !DIExpression(), !13051)
    #dbg_value(ptr undef, !10703, !DIExpression(), !13050)
    #dbg_value(ptr undef, !10680, !DIExpression(), !13049)
    #dbg_value(ptr undef, !10685, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13059)
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !13391 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !13391
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !dbg !13391, !llvm.loop !13067

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %i.v = icmp ugt i64 %.sroa.0.044, 7, !dbg !13393
  br i1 %i.v, label %bb.g, label %bb.f, !dbg !13393

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
    #dbg_value(i32 poison, !10704, !DIExpression(), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(ptr undef, !10707, !DIExpression(), !13051)
    #dbg_value(ptr undef, !10703, !DIExpression(), !13050)
    #dbg_value(ptr undef, !10680, !DIExpression(), !13049)
    #dbg_value(ptr undef, !10685, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13059)
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13060)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13053)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13055)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13057)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13058)
  tail call void @llvm.x86.sse2.pause(), !dbg !13392, !noalias !13371
  %niter.next.7 = add i32 %niter, 8, !dbg !13391  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !13391
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !13391

bb.f:                                             ; preds = %._crit_edge
  %i.w = add nuw nsw i64 %.sroa.0.044, 1, !dbg !13394
  br label %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, !dbg !13395

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !13396, !noalias !13371
  br label %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, !dbg !13396

_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.g, %bb.f, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.044, %bb.g ], [ %i.w, %bb.f ], !dbg !13242
  %.sroa.06.1 = phi i64 [ %i.k, %bb.b ], [ %.sroa.06.045, %bb.g ], [ %.sroa.06.045, %bb.f ], !dbg !13138 ; 2 uses
  %.sroa.02.1 = phi i1 [ %.sroa.02.046, %bb.b ], [ true, %bb.g ], [ true, %bb.f ], !dbg !13243 ; 2 uses
    #dbg_value(i8 poison, !13081, !DIExpression(), !13242)
    #dbg_value(i64 %.sroa.06.1, !13080, !DIExpression(), !13243)
    #dbg_value(i64 %.sroa.06.1, !13244, !DIExpression(), !13248)
  %i.x = lshr i64 %.sroa.06.1, 51, !dbg !13375
    #dbg_value(i64 %i.x, !13084, !DIExpression(), !13372)
  %i.y = icmp eq i64 %1, %i.x
  %or.cond.not = or i1 %.sroa.02.1, %i.y, !dbg !13376
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !dbg !13376
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCskXT5ShPYifM_12sharded_slab4page4slotINtB6_4SlotNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtBa_3cfg13DefaultConfigE12release_withNtNtB8_5stack13TransferStackNCINvMs2_B6_BM_13clear_storageB2H_E0bECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13431 {
bb.a:
    #dbg_value(ptr poison, !10573, !DIExpression(), !13433)
    #dbg_value(ptr %0, !13501, !DIExpression(), !13564)
    #dbg_value(i64 %1, !13502, !DIExpression(), !13564)
    #dbg_value(i64 %2, !13503, !DIExpression(), !13564)
    #dbg_value(ptr %3, !13504, !DIExpression(), !13564)
    #dbg_declare(ptr poison, !13505, !DIExpression(), !13565)
    #dbg_declare(ptr poison, !13566, !DIExpression(), !13575)
    #dbg_value(i8 2, !13584, !DIExpression(), !13588)
    #dbg_value(i8 0, !13584, !DIExpression(), !13594)
    #dbg_value(i8 0, !13584, !DIExpression(), !13603)
    #dbg_value(i8 3, !13604, !DIExpression(), !13611)
    #dbg_value(i8 2, !13608, !DIExpression(), !13611)
    #dbg_value(i8 0, !13584, !DIExpression(), !13621)
    #dbg_value(i8 0, !13584, !DIExpression(), !13630)
    #dbg_value(i8 0, !13584, !DIExpression(), !13639)
    #dbg_value(i8 0, !13584, !DIExpression(), !13649)
    #dbg_value(ptr %0, !13585, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13650)
    #dbg_value(ptr %0, !13651, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13654)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !13716 ; 2 uses
    #dbg_value(ptr %i.a, !10623, !DIExpression(), !13445)
    #dbg_value(i8 2, !10626, !DIExpression(), !13445)
  %i.b = load atomic i64, ptr %i.a acquire, align 8, !dbg !13717 ; 2 uses
    #dbg_value(i64 0, !13508, !DIExpression(), !13656)
    #dbg_value(i64 %1, !13657, !DIExpression(), !13660)
    #dbg_value(i64 poison, !13661, !DIExpression(), !13666)
    #dbg_value(i64 poison, !13509, !DIExpression(), !13667)
    #dbg_value(i8 poison, !13507, !DIExpression(), !13668)
    #dbg_value(i64 %i.b, !13506, !DIExpression(), !13669)
    #dbg_value(i64 %i.b, !13670, !DIExpression(), !13674)
  %i.c = lshr i64 %i.b, 51, !dbg !13718
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %.lr.ph49, label %.loopexit, !dbg !13719

.lr.ph49:                                         ; preds = %bb.a
  %.cmp = icmp ult i64 %1, 8190, !dbg !13720
  %.v = select i1 %.cmp, i64 1, i64 -8190, !dbg !13720
  %i.e = add i64 %1, %.v, !dbg !13720
    #dbg_value(i64 %i.e, !13509, !DIExpression(), !13667)
    #dbg_value(i64 %i.e, !13661, !DIExpression(), !13666)
  %i.f = shl nuw i64 %i.e, 51
  br label %bb.b, !dbg !13719

bb.b:                                             ; preds = %.lr.ph49, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit
  %.sroa.02.046 = phi i1 [ false, %.lr.ph49 ], [ %.sroa.02.1, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ]
  %.sroa.06.045 = phi i64 [ %i.b, %.lr.ph49 ], [ %.sroa.06.1, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %.sroa.0.044 = phi i64 [ 0, %.lr.ph49 ], [ %.sroa.0.1, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
    #dbg_value(ptr %0, !13605, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13675)
    #dbg_value(ptr %0, !13651, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !13677)
    #dbg_value(i64 %.sroa.06.045, !13606, !DIExpression(), !13611)
    #dbg_value(ptr poison, !13662, !DIExpression(), !13678)
    #dbg_value(i64 %.sroa.06.045, !13663, !DIExpression(), !13679)
  %i.g = and i64 %.sroa.06.045, 2251799813685247, !dbg !13721
  %i.h = or disjoint i64 %i.g, %i.f, !dbg !13721
    #dbg_value(i64 %i.h, !13607, !DIExpression(), !13611)
    #dbg_value(ptr %i.a, !10642, !DIExpression(), !13452)
    #dbg_value(i64 %.sroa.06.045, !10645, !DIExpression(), !13452)
    #dbg_value(i64 %i.h, !10646, !DIExpression(), !13452)
    #dbg_value(i8 3, !10647, !DIExpression(), !13452)
    #dbg_value(i8 2, !10648, !DIExpression(), !13452)
  %i.i = cmpxchg ptr %i.a, i64 %.sroa.06.045, i64 %i.h acq_rel acquire, align 8, !dbg !13722 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !13722
  %i.k = extractvalue { i64, i1 } %i.i, 0, !dbg !13722 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, !dbg !13723

.loopexit:                                        ; preds = %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, %bb.a, %bb.d
  %or.cond.not42 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit ]
  ret i1 %or.cond.not42, !dbg !13724

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.k, !13527, !DIExpression(), !13680)
    #dbg_value(i8 1, !13507, !DIExpression(), !13668)
    #dbg_value(i64 %i.k, !13528, !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 562949953421311, DW_OP_and, DW_OP_stack_value), !13681)
  %i.l = and i64 %i.k, 2251799813685244, !dbg !13725
  %i.m = icmp eq i64 %i.l, 0, !dbg !13725
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !13725

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !13581, !DIExpression(), !13682)
    #dbg_value(ptr %0, !13571, !DIExpression(), !13683)
    #dbg_value(ptr %0, !13684, !DIExpression(), !13460)
    #dbg_value(ptr %0, !13699, !DIExpression(), !13465)
    #dbg_declare(ptr poison, !13696, !DIExpression(), !13466)
    #dbg_declare(ptr poison, !13705, !DIExpression(), !13467)
    #dbg_value(ptr %0, !13706, !DIExpression(), !13468)
    #dbg_value(ptr %0, !13708, !DIExpression(), !13471)
  tail call void @_RNvXs6_NtNtCs7n8GKOt6esj_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCskXT5ShPYifM_12sharded_slab5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %0), !dbg !13726
    #dbg_value(i1 true, !13545, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13712)
  tail call void @_RINvXs_NtNtCskXT5ShPYifM_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %3, i64 noundef %2, ptr noundef nonnull align 8 %0), !dbg !13727
  br label %.loopexit, !dbg !13728

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr undef, !13508, !DIExpression(DW_OP_deref), !13656)
    #dbg_value(ptr poison, !10680, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13475)
    #dbg_value(ptr poison, !10680, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13475)
    #dbg_value(ptr poison, !10703, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13476)
    #dbg_value(ptr poison, !10703, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13476)
    #dbg_value(ptr poison, !10707, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13477)
    #dbg_value(ptr poison, !10707, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13477)
    #dbg_value(ptr undef, !10573, !DIExpression(), !13433)
    #dbg_value(i64 1, !10713, !DIExpression(), !13479)
    #dbg_value(i32 1, !10720, !DIExpression(), !13481)
    #dbg_value(i32 1, !10728, !DIExpression(), !13483)
  %i.n = trunc i64 %.sroa.0.044 to i32, !dbg !13729
  %i.o = and i32 %i.n, 31, !dbg !13729            ; 2 uses
    #dbg_value(i32 0, !10576, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13484)
    #dbg_value(!DIArgList(i32 1, i32 %i.o), !10576, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13484)
    #dbg_value(ptr undef, !10707, !DIExpression(), !13477)
    #dbg_value(ptr undef, !10703, !DIExpression(), !13476)
    #dbg_value(ptr undef, !10680, !DIExpression(), !13475)
    #dbg_value(ptr undef, !10685, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13485)
  %.not.a = icmp eq i32 %i.o, 31, !dbg !13730
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.preheader, !dbg !13731

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.p = shl nuw nsw i32 1, %i.o, !dbg !13729
    #dbg_value(i32 %i.p, !10576, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13484)
  %i.q = freeze i32 %i.p, !dbg !13731             ; 3 uses
  %i.r = add i32 %i.q, -1, !dbg !13731
  %xtraiter = and i32 %i.q, 7, !dbg !13731        ; 3 uses
  %i.s = icmp ult i32 %i.r, 7, !dbg !13731
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !13731

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.q, -8, !dbg !13731
  br label %.lr.ph, !dbg !13731

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !13731
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !13731

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %lcmp.mod50 = icmp ne i32 %xtraiter, 0, !dbg !13731
  tail call void @llvm.assume(i1 %lcmp.mod50), !dbg !13731
  br label %.lr.ph.epil, !dbg !13731

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
    #dbg_value(i32 poison, !10704, !DIExpression(), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(ptr undef, !10707, !DIExpression(), !13477)
    #dbg_value(ptr undef, !10703, !DIExpression(), !13476)
    #dbg_value(ptr undef, !10680, !DIExpression(), !13475)
    #dbg_value(ptr undef, !10685, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13485)
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !13731 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !13731
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !dbg !13731, !llvm.loop !13493

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %i.t = icmp ugt i64 %.sroa.0.044, 7, !dbg !13733
  br i1 %i.t, label %bb.g, label %bb.f, !dbg !13733

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
    #dbg_value(i32 poison, !10704, !DIExpression(), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(ptr undef, !10707, !DIExpression(), !13477)
    #dbg_value(ptr undef, !10703, !DIExpression(), !13476)
    #dbg_value(ptr undef, !10680, !DIExpression(), !13475)
    #dbg_value(ptr undef, !10685, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13485)
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
    #dbg_value(i32 poison, !10704, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13486)
    #dbg_value(i32 poison, !10717, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13479)
    #dbg_value(i32 poison, !10724, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13481)
    #dbg_value(i32 poison, !10734, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !13483)
    #dbg_value(i32 poison, !10576, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !13484)
  tail call void @llvm.x86.sse2.pause(), !dbg !13732, !noalias !13714
  %niter.next.7 = add i32 %niter, 8, !dbg !13731  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !13731
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !dbg !13731

bb.f:                                             ; preds = %._crit_edge
  %i.u = add nuw nsw i64 %.sroa.0.044, 1, !dbg !13734
  br label %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, !dbg !13735

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !13736, !noalias !13714
  br label %_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit, !dbg !13736

_RNvNtNtCskXT5ShPYifM_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.g, %bb.f, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.044, %bb.g ], [ %i.u, %bb.f ], !dbg !13668
  %.sroa.06.1 = phi i64 [ %i.k, %bb.b ], [ %.sroa.06.045, %bb.g ], [ %.sroa.06.045, %bb.f ], !dbg !13564 ; 2 uses
  %.sroa.02.1 = phi i1 [ %.sroa.02.046, %bb.b ], [ true, %bb.g ], [ true, %bb.f ], !dbg !13669 ; 2 uses
    #dbg_value(i8 poison, !13507, !DIExpression(), !13668)
    #dbg_value(i64 %.sroa.06.1, !13506, !DIExpression(), !13669)
    #dbg_value(i64 %.sroa.06.1, !13670, !DIExpression(), !13674)
  %i.v = lshr i64 %.sroa.06.1, 51, !dbg !13718
    #dbg_value(i64 %i.v, !13510, !DIExpression(), !13715)
  %i.w = icmp eq i64 %1, %i.v
  %or.cond.not = or i1 %.sroa.02.1, %i.w, !dbg !13719
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !dbg !13719
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs_NtCskXT5ShPYifM_12sharded_slab4poolINtB5_4PoolNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerE11create_withNCNvXs0_BR_NtBR_8RegistryNtNtCsgb4gPAseikh_12tracing_core10subscriber10Subscriber8new_spans0_0ECskigd7sy4fqX_10quinn_perf(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13751 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !14180, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !14206)
    #dbg_declare(ptr poison, !14180, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !14206)
    #dbg_declare(ptr poison, !14177, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !14208)
    #dbg_declare(ptr poison, !14177, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !14208)
    #dbg_declare(ptr poison, !14203, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !14209)
    #dbg_declare(ptr poison, !14203, !DIExpression(DW_OP_LLVM_fragment, 264, 56), !14209)
  %i.h = alloca [40 x i8], align 8                ; 9 uses
    #dbg_value(ptr %0, !14165, !DIExpression(), !14210)
    #dbg_value(ptr %1, !14166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14210)
    #dbg_value(i64 %2, !14166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14210)
    #dbg_declare(ptr %i.h, !14175, !DIExpression(), !14211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14792
    #dbg_value(ptr poison, !14212, !DIExpression(), !13777)
    #dbg_value(ptr %0, !14223, !DIExpression(), !13778)
    #dbg_declare(ptr %i.g, !14248, !DIExpression(), !13786)
    #dbg_declare(ptr poison, !14235, !DIExpression(), !13787)
    #dbg_value(ptr poison, !14265, !DIExpression(), !13803)
    #dbg_value(ptr poison, !14298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13812)
    #dbg_value(ptr %0, !14278, !DIExpression(), !13813)
    #dbg_declare(ptr poison, !14322, !DIExpression(), !13832)
    #dbg_declare(ptr poison, !14322, !DIExpression(), !13835)
    #dbg_value(i8 0, !14358, !DIExpression(), !13850)
    #dbg_value(i8 0, !14396, !DIExpression(), !13853)
    #dbg_declare(ptr poison, !14322, !DIExpression(), !13856)
    #dbg_declare(ptr poison, !14322, !DIExpression(), !13859)
    #dbg_value(ptr poison, !14410, !DIExpression(), !13881)
    #dbg_declare(ptr poison, !14455, !DIExpression(), !13882)
    #dbg_value(ptr null, !14469, !DIExpression(), !13887)
    #dbg_declare(ptr poison, !14476, !DIExpression(), !13888)
    #dbg_value(ptr poison, !14482, !DIExpression(), !13891)
    #dbg_value(ptr null, !14485, !DIExpression(), !13891)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION0023___RUST_STD_INTERNAL_VAL), !dbg !14793 ; 3 uses
    #dbg_value(ptr %i.i, !14489, !DIExpression(), !13906)
    #dbg_value(ptr null, !14534, !DIExpression(), !13906)
    #dbg_declare(ptr poison, !14535, !DIExpression(), !13907)
    #dbg_value(ptr %i.i, !14538, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !13910)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !14794
  %i.k = load i8, ptr %i.j, align 8, !dbg !14795, !range !14548, !noalias !14549, !noundef !3297
  %i.l = icmp eq i8 %i.k, 1, !dbg !14796
  br i1 %i.l, label %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.thread.i.i.i, label %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.i.i.i, !dbg !14796, !prof !14550

_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCskXT5ShPYifM_12sharded_slab3tid12RegistrationuE16get_or_init_slowNvNvB1f_12REGISTRATION27___rust_std_internal_init_fnECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !dbg !14797, !noalias !14551 ; 2 uses
    #dbg_value(ptr %i.m, !14553, !DIExpression(), !13927)
    #dbg_value(ptr %i.m, !14568, !DIExpression(), !13930)
  %i.n = icmp eq ptr %i.m, null, !dbg !14798
  br i1 %i.n, label %.thread.i.i, label %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.thread.i.i.i, !dbg !14799

_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.i.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.m, %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.i.i.i ], [ %i.i, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.0.0.i.i.i2.i.i.i, !14456, !DIExpression(), !13933)
    #dbg_value(ptr %.sroa.0.0.i.i.i2.i.i.i, !14578, !DIExpression(), !13937)
    #dbg_declare(ptr poison, !14583, !DIExpression(), !13938)
    #dbg_value(ptr %.sroa.0.0.i.i.i2.i.i.i, !14588, !DIExpression(), !13942)
    #dbg_declare(ptr poison, !14595, !DIExpression(), !13950)
    #dbg_value(ptr %.sroa.0.0.i.i.i2.i.i.i, !14614, !DIExpression(), !13953)
  %i.o = load i64, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !14800, !range !10879, !noalias !14551, !noundef !3297
    #dbg_value(i64 %i.o, !14610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13954)
    #dbg_value(i64 poison, !14610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13954)
  %i.p = trunc nuw i64 %i.o to i1, !dbg !14801
  br i1 %i.p, label %bb.b, label %bb.c, !dbg !14801, !prof !14550

bb.b:                                             ; preds = %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.thread.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i.i, i64 8, !dbg !14800
  %i.r = load i64, ptr %i.q, align 8, !dbg !14800, !noalias !14551
    #dbg_value(i64 %i.r, !14610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13954)
    #dbg_value(i64 %i.r, !14590, !DIExpression(), !13955)
  br label %bb.d, !dbg !14802

bb.c:                                             ; preds = %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.thread.i.i.i
  %i.s = tail call noundef i64 @_RINvMs6_NtCskXT5ShPYifM_12sharded_slab3tidNtB6_12Registration8registerNtNtB8_3cfg13DefaultConfigECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i2.i.i.i), !dbg !14803, !noalias !14551
    #dbg_value(i64 %i.s, !14590, !DIExpression(), !13955)
  br label %bb.d, !dbg !14803

.thread.i.i:                                      ; preds = %_RNvYNCNKNvNtCskXT5ShPYifM_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskigd7sy4fqX_10quinn_perf.exit.i.i.i
    #dbg_value(i64 1, !14343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13956)
    #dbg_value(i64 poison, !14343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13956)
    #dbg_value(i64 -1, !14279, !DIExpression(), !13957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14804, !noalias !14551
    #dbg_value(ptr undef, !14265, !DIExpression(), !13803)
    #dbg_value(i64 -1, !14288, !DIExpression(), !13958)
  store i64 -1, ptr %i.f, align 8, !dbg !14805, !noalias !14551
  br label %bb.e, !dbg !14806

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.r, %bb.b ], [ %i.s, %bb.c ], !dbg !14807 ; 10 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !14279, !DIExpression(), !13957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14804, !noalias !14551
    #dbg_value(ptr undef, !14265, !DIExpression(), !13803)
    #dbg_value(i64 %.sroa.0.0.i.i, !14288, !DIExpression(), !13958)
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !dbg !14805, !noalias !14551
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14808 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !14808, !noalias !14551, !noundef !3297
  %i.v = icmp ult i64 %.sroa.0.0.i.i, %i.u, !dbg !14806
  br i1 %i.v, label %bb.f, label %bb.e, !dbg !14806, !prof !14619

bb.e:                                             ; preds = %bb.d, %.thread.i.i
    #dbg_value(ptr %i.f, !14290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13959)
    #dbg_value(ptr @31, !14290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14809, !noalias !14551
  store ptr %i.f, ptr %i.e, align 8, !dbg !14809, !noalias !14551
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14809
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !dbg !14809, !noalias !14551
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !14809
  store ptr @31, ptr %i.w, align 8, !dbg !14809, !noalias !14551
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !14809
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i.i, align 8, !dbg !14809, !noalias !14551
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !dbg !14810, !noalias !14551
  unreachable, !dbg !14810

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %0, align 8, !dbg !14808, !noalias !14551, !nonnull !3297, !noundef !3297
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.0.0.i.i, !dbg !14811
    #dbg_value(ptr %i.y, !14363, !DIExpression(), !13850)
    #dbg_value(ptr %i.y, !14401, !DIExpression(), !13960)
    #dbg_value(ptr %i.y, !14621, !DIExpression(), !13963)
    #dbg_value(i8 0, !14624, !DIExpression(), !13963)
  %i.z = load atomic ptr, ptr %i.y monotonic, align 8, !dbg !14812, !noalias !14551 ; 2 uses
    #dbg_value(ptr %i.z, !14364, !DIExpression(), !13964)
    #dbg_value(ptr %i.z, !14626, !DIExpression(), !13967)
  %i.aa = icmp eq ptr %i.z, null, !dbg !14813
  br i1 %i.aa, label %bb.g, label %_RNvMs2_NtCskXT5ShPYifM_12sharded_slab5shardINtB5_5ArrayNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCskigd7sy4fqX_10quinn_perf.exit.i, !dbg !14814

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr null, !14319, !DIExpression(), !13812)
    #dbg_value(ptr %i.f, !14298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13812)
    #dbg_value(ptr undef, !14298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13812)
    #dbg_value(ptr undef, !14278, !DIExpression(DW_OP_deref), !13813)
    #dbg_value(ptr %i.f, !14288, !DIExpression(DW_OP_deref), !13958)
    #dbg_value(ptr poison, !14635, !DIExpression(DW_OP_deref), !13989)
    #dbg_value(ptr poison, !14638, !DIExpression(DW_OP_deref), !13989)
    #dbg_value(i8 0, !14681, !DIExpression(), !13998)
    #dbg_value(ptr null, !14685, !DIExpression(), !14007)
    #dbg_value(i8 3, !14702, !DIExpression(), !14007)
    #dbg_value(i8 2, !14703, !DIExpression(), !14007)
    #dbg_value(i8 2, !14681, !DIExpression(), !14009)
    #dbg_value(i8 3, !14711, !DIExpression(), !14012)
    #dbg_value(i8 2, !14715, !DIExpression(), !14012)
    #dbg_value(i8 0, !14681, !DIExpression(), !14017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14815, !noalias !14551
    #dbg_value(i64 %.sroa.0.0.i.i, !14714, !DIExpression(), !14012)
  call void @_RNvMNtCskXT5ShPYifM_12sharded_slab5shardINtB2_5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtB4_3cfg13DefaultConfigE3newCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, i64 noundef %.sroa.0.0.i.i), !dbg !14816, !noalias !14551
    #dbg_declare(ptr %i.d, !14722, !DIExpression(), !14021)
    #dbg_value(i64 8, !10886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14023)
    #dbg_value(i64 8, !10905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14025)
    #dbg_value(i64 8, !10924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14027)
    #dbg_value(i64 40, !10886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14023)
    #dbg_value(i64 40, !10905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14025)
    #dbg_value(i64 40, !10924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14027)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !10922, !DIExpression(), !14025)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !10928, !DIExpression(), !14027)
    #dbg_value(i8 0, !10929, !DIExpression(), !14027)
    #dbg_value(i64 8, !10931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14029)
    #dbg_value(i64 8, !10951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14031)
    #dbg_value(i64 40, !10931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14029)
    #dbg_value(i64 40, !10951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14031)
    #dbg_value(i1 false, !10935, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14029)
    #dbg_value(i64 40, !10936, !DIExpression(), !14032)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !dbg !14817, !noalias !14728
  %i.ab = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 40, 57) 40, i64 noundef 8) #17, !dbg !14818, !noalias !14728 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null, !dbg !14819
  br i1 %i.ac, label %bb.h, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtNtCskXT5ShPYifM_12sharded_slab4sync5inner5alloc5TrackINtNtBN_5shard5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEEE3newCskigd7sy4fqX_10quinn_perf.exit.i.i.i, !dbg !14820, !prof !10953

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #27
          to label %.noexc.i.i.i unwind label %bb.i, !dbg !14821, !noalias !14551

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable, !dbg !14821

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskXT5ShPYifM_12sharded_slab4sync5inner5alloc5TrackINtNtBK_5shard5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtBK_3cfg13DefaultConfigEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #23
          to label %common.resume unwind label %bb.j, !dbg !14822, !noalias !14551

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !14823, !noalias !14551
  unreachable, !dbg !14823

common.resume:                                    ; preds = %bb.r, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.bd, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !14210

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtNtCskXT5ShPYifM_12sharded_slab4sync5inner5alloc5TrackINtNtBN_5shard5ShardNtNtNtCs7n8GKOt6esj_18tracing_subscriber8registry7sharded9DataInnerNtNtBN_3cfg13DefaultConfigEEE3newCskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.g
end_hunk_0
