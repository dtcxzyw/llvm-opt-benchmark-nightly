Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.05?download=true
inline.NumInlined: 133
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID = external global { { { i64 } } }
@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBf_4syncINtB2K_8OnceCellBW_E11get_or_initNCNvMs9_B2K_INtB2K_4LazyBW_E5force0E0NtNvMs4_B2K_IB2V_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs2TJrahNLnPN_22pingora_load_balancing, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBa_4syncINtB2F_8OnceCellBR_E11get_or_initNCNvMs9_B2F_INtB2F_4LazyBR_E5force0E0NtNvMs4_B2F_IB2Q_pE11get_or_init4VoidE0Cs2TJrahNLnPN_22pingora_load_balancing }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBf_4syncINtB31_8OnceCellBW_E11get_or_initNCNvB2X_10try_insert0E0NtNvMs4_B31_IB3c_pE11get_or_init4VoidE0INtNtNtB11_3ops8function6FnOnceuE9call_once6vtableCs2TJrahNLnPN_22pingora_load_balancing, ptr @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBa_4syncINtB2W_8OnceCellBR_E11get_or_initNCNvB2S_10try_insert0E0NtNvMs4_B2W_IB37_pE11get_or_init4VoidE0Cs2TJrahNLnPN_22pingora_load_balancing }>, align 8
@2 = private unnamed_addr constant ptr @_RNvYNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell4CellIB1J_NtB8_6ThreadEEEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing, align 8
@_RNvNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { i64, [2 x i64] } } }
@_RNvNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { { i64, { { i64, [1 x i64] } } }, i64 }, i64, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@3 = private unnamed_addr constant [42 x i8] c"Lazy instance has previously been poisoned", align 1
@4 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/once_cell-1.21.4/src/lib.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"`\00\00\00\00\00\00\00)\05\00\00\19\00\00\00" }>, align 8
@_RNvNtNtCs2CMyvXgshDu_8foldhash4seed6global19GLOBAL_SEED_STORAGE = external local_unnamed_addr global { { { [6 x i64] } }, { { { i8 } } }, [7 x i8] }
@6 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@7 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @6, [24 x i8] zeroinitializer }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCs2awuzAz5vY4_5tokio7runtime6handleNtB3_6Handle5spawnNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1816) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1816 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1816) %i.a, ptr noundef nonnull align 8 dereferenceable(1816) %1, i64 1816, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !4 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCs2awuzAz5vY4_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1f_18TransportConnector10new_streamNtNtNtB1h_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvMNtNtCs2awuzAz5vY4_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1f_18TransportConnector10new_streamNtNtNtB1h_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b
  %i.c = call noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1816) %i.a, i64 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error12more_contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 15 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.e = load i8, ptr %i.d, align 1, !range !8, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i16, ptr %i.h, align 8, !range !11, !alias.scope !12, !noalias !15, !noundef !9 ; 2 uses
  switch i16 %i.i, label %default.unreachable [
    i16 0, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 1, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 2, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 3, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 4, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 5, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 6, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 7, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 8, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 9, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 10, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 11, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 12, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 13, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 14, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 15, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 16, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 17, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 18, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 19, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 20, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 21, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 22, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 23, label %bb.b
    i16 24, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 25, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 26, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 27, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 28, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 29, label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i16 30, label %bb.c
    i16 31, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.k = load i16, ptr %i.j, align 2, !alias.scope !12, !noalias !15, !noundef !9
  br label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !12, !noalias !15, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !12, !noalias !15, !noundef !9
  br label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !12, !noalias !15, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !12, !noalias !15, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.u = load i16, ptr %i.t, align 2, !alias.scope !12, !noalias !15, !noundef !9
  br label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.sroa.64.0 = phi ptr [ undef, %bb.a ], [ %i.q, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.m, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0 = phi i16 [ undef, %bb.a ], [ %i.u, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.k, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.a ]
  %.sroa.8.0 = phi i64 [ undef, %bb.a ], [ %i.s, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.o, %bb.c ], [ undef, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17
  invoke void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.r

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %.sroa.08.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !17 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !17 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !17 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17
  %i.v = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromIBI_NtCsfsXztIhCltD_13pingora_error5ErrorEE4fromCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias noundef nonnull align 8 %0)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.o, !noalias !22 ; 2 uses

_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 5 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !9, !noalias !27, !nonnull !9
  invoke void %i.z(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.w)
          to label %bb.e unwind label %bb.k, !noalias !27

bb.e:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.aa = load i128, ptr %i.a, align 16, !noalias !23, !noundef !9
  %i.ab = icmp eq i128 %i.aa, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !27, !nonnull !9, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load i8, ptr %i.ad, align 8, !range !10, !noalias !27, !noundef !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i = phi i8 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.i, ptr %i.af, align 8, !noalias !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 2, !noalias !28
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.64.0, ptr %.sroa.64.0..sroa_idx, align 8, !noalias !28
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.ag, align 1, !noalias !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.0.1.i.i, ptr %i.ah, align 8, !noalias !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.w, ptr %i.ai, align 8, !noalias !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.x, ptr %i.aj, align 8, !noalias !23
  store i64 %.sroa.08.0.copyload.i, ptr %i.b, align 8, !noalias !29
  %.sroa.6.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx11.i, align 8, !noalias !29
  %.sroa.8.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx13.i, align 8, !noalias !29
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !30
  %i.ak = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !30 ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.s, !prof !33

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc.i.i unwind label %bb.i, !noalias !27

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #24
          to label %.critedge unwind label %bb.j, !noalias !27

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !27
  unreachable

bb.k:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %i.w, ptr nonnull %i.x) #24
          to label %bb.m unwind label %bb.l, !noalias !27

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !27
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp eq i64 %.sroa.08.0.copyload.i, 2
  br i1 %i.aq, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp eq i64 %.sroa.08.0.copyload.i, 0
  %i.as = icmp eq i64 %.sroa.8.0.copyload.i, 0
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i, label %.critedge, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 1) #22, !noalias !34
  br label %.critedge

bb.o:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.au = icmp eq i64 %.sroa.08.0.copyload.i, 2
  br i1 %i.au, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = icmp eq i64 %.sroa.08.0.copyload.i, 0
  %i.aw = icmp eq i64 %.sroa.8.0.copyload.i, 0
  %or.cond23.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond23.i, label %.critedge, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 1) #22, !noalias !39
  br label %.critedge

bb.q:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !17
  unreachable

bb.r:                                             ; preds = %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull align 8 %0) #24
          to label %.critedge unwind label %bb.q, !noalias !22

bb.s:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 65
  store i8 %i.e, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 %i.g, ptr %i.ba, align 8
  ret ptr %i.ak

.critedge:                                        ; preds = %bb.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.p, %bb.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i, %bb.n, %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.ay, %bb.r ], [ %i.ao, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i ], [ %i.am, %bb.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.at, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.at, %bb.o ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtB8_4syncINtB2D_8OnceCellBP_E11get_or_initNCNvMs9_B2D_INtB2D_4LazyBP_E5force0E0NtNvMs4_B2D_IB2O_pE11get_or_init4VoidECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  call void @_RNvNtCsjCbDjdVFjRH_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB6_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtB8_4syncINtB2U_8OnceCellBP_E11get_or_initNCNvB2Q_10try_insert0E0NtNvMs4_B2U_IB35_pE11get_or_init4VoidECs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 4 dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  call void @_RNvNtCsjCbDjdVFjRH_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB22_10connection14ConnectionMetaEEEE10get_or_tryNCINvB2_6get_orNCNvMs_B20_INtB20_3LrulB2D_E3pop0E0uECs2TJrahNLnPN_22pingora_load_balancing(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 3 uses
  %i.c = alloca [72 x i8], align 8                ; 2 uses
  %i.d = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = icmp ult i64 %i.e, 63
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load atomic i8, ptr %i.l acquire, align 1
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %select.unfold, label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB21_10connection14ConnectionMetaEEEE9get_innerCs2TJrahNLnPN_22pingora_load_balancing.exit

select.unfold:                                    ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.n = tail call noundef i64 @_RNvNtCs2CMyvXgshDu_8foldhash4seed19gen_per_hasher_seed(), !noalias !52
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2CMyvXgshDu_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !52
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.c, !prof !53

bb.c:                                             ; preds = %select.unfold
  tail call void @_RNvMs_NtNtCs2CMyvXgshDu_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #26, !noalias !52
  br label %bb.d

_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB21_10connection14ConnectionMetaEEEE9get_innerCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi ptr [ %i.s, %bb.d ], [ %i.k, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.c, %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_0
begin_hunk_1_@_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBa_4syncINtB2F_8OnceCellBR_E11get_or_initNCNvMs9_B2F_INtB2F_4LazyBR_E5force0E0NtNvMs4_B2F_IB2Q_pE11get_or_init4VoidE0Cs2TJrahNLnPN_22pingora_load_balancing:bb.a
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
  unreachable

_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr %i.d(), !inline_history !80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !align !79, !noundef !9 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !81, !noundef !9 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !84
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.g, align 8, !noundef !9
  store ptr %i.e, ptr %i.n, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c, %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !noundef !9
  store ptr %i.e, ptr %i.o, align 8
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBa_4syncINtB2W_8OnceCellBR_E11get_or_initNCNvB2S_10try_insert0E0NtNvMs4_B2W_IB37_pE11get_or_init4VoidE0Cs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.46 = alloca [116 x i8], align 4          ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !79, !noundef !9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !align !89, !noundef !9 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 4, !alias.scope !90, !noalias !95 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.5.0..sroa_idx.i.i, i64 116, i1 false)
  store i32 -1, ptr %i.b, align 4, !alias.scope !90, !noalias !95
  %i.c = icmp ne i32 %.sroa.0.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !align !79, !noundef !9
  %i.f = load ptr, ptr %i.e, align 8, !noundef !9 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.f, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46)
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBf_4syncINtB2K_8OnceCellBW_E11get_or_initNCNvMs9_B2K_INtB2K_4LazyBW_E5force0E0NtNvMs4_B2K_IB2V_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs2TJrahNLnPN_22pingora_load_balancing(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !alias.scope !98, !nonnull !9, !align !79, !noundef !9 ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 4 uses
  %i.b = load ptr, ptr %.val, align 8, !noalias !101, !nonnull !9, !align !79, !noundef !9
  store ptr null, ptr %.val, align 8, !noalias !101
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !101, !noundef !9 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !101
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27, !noalias !101
  unreachable

_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr %i.d(), !noalias !101, !inline_history !104 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = load ptr, ptr %.val1, align 8, !noalias !101, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !105, !noalias !101, !noundef !9 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !108
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.e, !noalias !101

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %.val1, align 8, !noalias !101, !noundef !9
  store ptr %i.e, ptr %i.l, align 8, !noalias !101
  resume { ptr, i32 } %i.k

_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.c, %bb.d
  %i.m = load ptr, ptr %.val1, align 8, !noalias !101, !noundef !9
  store ptr %i.e, ptr %i.m, align 8, !noalias !101
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBf_4syncINtB31_8OnceCellBW_E11get_or_initNCNvB2X_10try_insert0E0NtNvMs4_B31_IB3c_pE11get_or_init4VoidE0INtNtNtB11_3ops8function6FnOnceuE9call_once6vtableCs2TJrahNLnPN_22pingora_load_balancing(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.46.i.i = alloca [116 x i8], align 4      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !113, !nonnull !9, !align !79, !noundef !9 ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !alias.scope !113, !nonnull !9, !align !79, !noundef !9
  %i.b = load ptr, ptr %.val, align 8, !noalias !116, !nonnull !9, !align !89, !noundef !9 ; 3 uses
  store ptr null, ptr %.val, align 8, !noalias !116
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.b, align 4, !alias.scope !119, !noalias !124 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46.i.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.5.0..sroa_idx.i.i.i.i, i64 116, i1 false), !noalias !116
  store i32 -1, ptr %i.b, align 4, !alias.scope !119, !noalias !124
  %i.c = icmp ne i32 %.sroa.0.0.copyload.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load ptr, ptr %.val1, align 8, !noalias !116, !noundef !9 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.d, align 4, !noalias !116
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46.i.i, i64 116, i1 false), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i)
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !127 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !133
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !133
  %i.i = load i64, ptr %i.a, align 8, !range !64, !noalias !133, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2TJrahNLnPN_22pingora_load_balancing.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !78, !noalias !133, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !133, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !133
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !133
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #23
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2TJrahNLnPN_22pingora_load_balancing.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #22
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #22 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB21_10connection14ConnectionMetaEEEE6insertCs2TJrahNLnPN_22pingora_load_balancing(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 63
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.l

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 1, %1                    ; 4 uses
  %i.g = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2C_10connection14ConnectionMetaEEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3Z_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECs2TJrahNLnPN_22pingora_load_balancing(i64 noundef 0, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = cmpxchg ptr %i.b, ptr null, ptr %i.h acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  %i.k = extractvalue { ptr, i1 } %i.i, 0
  br i1 %i.j, label %bb.l, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.0.012.i.i ; 4 uses
  %i.m = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.o = load i8, ptr %i.n, align 1, !range !54, !alias.scope !134, !noundef !9
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  invoke void @_RNvXsa_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  invoke void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 16, i64 noundef 16)
          to label %.body.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  invoke void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i, %.lr.ph.i.i
  %i.v = icmp eq i64 %i.m, %i.f
  br i1 %i.v, label %bb.k, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.w = add i64 %.sroa.0.1.i.i43, 1              ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.r, %bb.f ]
  %i.z = icmp eq i64 %i.m, %i.f
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.h
  %.sroa.0.1.i.i43 = phi i64 [ %i.w, %bb.h ], [ %i.m, %.body.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.0.1.i.i43
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aa) #24
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

._crit_edge:                                      ; preds = %bb.h, %.body.i.i
  %i.ac = shl nuw nsw i64 80, %1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.ac, i64 noundef 8) #22
  br label %.body

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.ad = shl nuw nsw i64 80, %1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.ad, i64 noundef 8) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.d, %bb.k
  %.sroa.01.0 = phi ptr [ %i.c, %bb.a ], [ %i.k, %bb.k ], [ %i.h, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %.sroa.01.0, i64 %2 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.ag = load atomic i8, ptr %i.af acquire, align 1
  %.not.i = icmp eq i8 %i.ag, 0
  %.not13 = icmp eq ptr %.sroa.01.0, null
  %.not = or i1 %.not13, %.not.i
  br i1 %.not, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  invoke void @_RNvXsa_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 16, i64 noundef 16)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 16, i64 noundef 16)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit
  ret ptr %i.ae

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  store atomic i8 1, ptr %i.af release, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.an = atomicrmw add ptr %i.am, i64 1 release, align 8 ; 0 uses
  br label %bb.p

.body:                                            ; preds = %bb.b, %._crit_edge
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %eh.lpad-body.i.i, %._crit_edge ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(72) %3) #24
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskeugdADtBsi_12pingora_core5utils5KVRefE8grow_oneCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !58, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !141
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !141
  %i.f = load i64, ptr %i.a, align 8, !range !64, !noalias !141, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !78, !noalias !141, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
end_hunk_1
