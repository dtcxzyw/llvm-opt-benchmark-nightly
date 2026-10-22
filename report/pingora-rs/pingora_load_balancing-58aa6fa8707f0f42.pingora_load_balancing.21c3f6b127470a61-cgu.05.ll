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
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !20 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCs2awuzAz5vY4_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1f_18TransportConnector10new_streamNtNtNtB1h_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvMNtNtCs2awuzAz5vY4_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1f_18TransportConnector10new_streamNtNtNtB1h_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b
  %i.c = call noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1816) %i.a, i64 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error12more_contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 15 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.e = load i8, ptr %i.d, align 1, !range !40, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i16, ptr %i.h, align 8, !range !41, !alias.scope !42, !noundef !4 ; 2 uses
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
  %i.k = load i16, ptr %i.j, align 2, !alias.scope !42, !noundef !4
  br label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !42, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !42, !noundef !4
  br label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !42, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !42, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.u = load i16, ptr %i.t, align 2, !alias.scope !42, !noundef !4
  br label %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.sroa.64.0 = phi ptr [ undef, %bb.a ], [ %i.q, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.m, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0 = phi i16 [ undef, %bb.a ], [ %i.u, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.k, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.a ]
  %.sroa.8.0 = phi i64 [ undef, %bb.a ], [ %i.s, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.o, %bb.c ], [ undef, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !43
  invoke void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.r

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %.sroa.08.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !43 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !43 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !43
  %.sroa.8.0.copyload.fr.i = freeze i64 %.sroa.8.0.copyload.i ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43
  %i.v = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromIBI_NtCsfsXztIhCltD_13pingora_error5ErrorEE4fromCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias noundef nonnull align 8 %0)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.o, !noalias !44 ; 2 uses

_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 5 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !4, !noalias !46, !nonnull !4
  invoke void %i.z(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.w)
          to label %bb.e unwind label %bb.k, !noalias !46

bb.e:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.aa = load i128, ptr %i.a, align 16, !noalias !45, !noundef !4
  %i.ab = icmp eq i128 %i.aa, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !46, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load i8, ptr %i.ad, align 8, !range !5, !noalias !46, !noundef !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i = phi i8 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.i, ptr %i.af, align 8, !noalias !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 2, !noalias !47
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.64.0, ptr %.sroa.64.0..sroa_idx, align 8, !noalias !47
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.ag, align 1, !noalias !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.0.1.i.i, ptr %i.ah, align 8, !noalias !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.w, ptr %i.ai, align 8, !noalias !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.x, ptr %i.aj, align 8, !noalias !45
  store i64 %.sroa.08.0.copyload.i, ptr %i.b, align 8, !noalias !48
  %.sroa.6.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx11.i, align 8, !noalias !48
  %.sroa.8.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.8.0.copyload.fr.i, ptr %.sroa.8.0..sroa_idx13.i, align 8, !noalias !48
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !49
  %i.ak = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !49 ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.s, !prof !6

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc.i.i unwind label %bb.i, !noalias !46

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #24
          to label %.critedge unwind label %bb.j, !noalias !46

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !46
  unreachable

bb.k:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEINtB5_4IntoIBz_DNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2k_4SyncEL_EE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull %i.w, ptr nonnull %i.x) #24
          to label %bb.m unwind label %bb.l, !noalias !46

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !46
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp eq i64 %.sroa.8.0.copyload.fr.i, 0
  br i1 %i.aq, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i64 %.sroa.08.0.copyload.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i [
    i64 2, label %.critedge
    i64 0, label %.critedge
  ]

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.8.0.copyload.fr.i, i64 noundef 1) #22, !noalias !50
  br label %.critedge

bb.o:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrE4intoCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.as = icmp eq i64 %.sroa.8.0.copyload.fr.i, 0
  br i1 %i.as, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i64 %.sroa.08.0.copyload.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i [
    i64 2, label %.critedge
    i64 0, label %.critedge
  ]

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.8.0.copyload.fr.i, i64 noundef 1) #22, !noalias !51
  br label %.critedge

bb.q:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !43
  unreachable

bb.r:                                             ; preds = %_RNvXsp_CsfsXztIhCltD_13pingora_errorNtB5_9ErrorTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull align 8 %0) #24
          to label %.critedge unwind label %bb.q, !noalias !44

bb.s:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 65
  store i8 %i.e, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 %i.g, ptr %i.aw, align 8
  ret ptr %i.ak

.critedge:                                        ; preds = %bb.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.p, %bb.p, %bb.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i, %bb.n, %bb.n, %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %i.au, %bb.r ], [ %i.ao, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i ], [ %i.am, %bb.i ], [ %i.ao, %bb.n ], [ %i.ar, %bb.p ], [ %i.ar, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.ar, %bb.o ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.n = tail call noundef i64 @_RNvNtCs2CMyvXgshDu_8foldhash4seed19gen_per_hasher_seed(), !noalias !60
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2CMyvXgshDu_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !60
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %select.unfold
  tail call void @_RNvMs_NtNtCs2CMyvXgshDu_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #26, !noalias !60
  br label %bb.d

_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB21_10connection14ConnectionMetaEEEE9get_innerCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi ptr [ %i.s, %bb.d ], [ %i.k, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.c, %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.n, ptr %i.q, align 8, !alias.scope !59, !noalias !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvMs9_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEE9constructCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r, i64 noundef -1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58
  store i64 0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.s = call fastcc noundef nonnull align 8 ptr @_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB21_10connection14ConnectionMetaEEEE6insertCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %0, i64 noundef %i.e, i64 noundef %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c)
  br label %_RNvMs3_Cse0v0U5LqnG1_12thread_localINtB5_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB21_10connection14ConnectionMetaEEEE9get_innerCs2TJrahNLnPN_22pingora_load_balancing.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB27_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !8, !alias.scope !63, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1T_10connection14ConnectionMetaEEEENtNtNtBN_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsa_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaHowi4STlW6_9hashbrown3map7HashMapINtCskD7i0qFYELX_3lru6KeyReflEINtNtB2_8non_null7NonNullINtB1j_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2v_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaHowi4STlW6_9hashbrown3map7HashMapINtCskD7i0qFYELX_3lru6KeyReflEINtNtB2_8non_null7NonNullINtB1j_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2v_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 16, i64 noundef 16)
  br label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1T_10connection14ConnectionMetaEEEENtNtNtBN_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1T_10connection14ConnectionMetaEEEENtNtNtBN_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsa_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1A_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaHowi4STlW6_9hashbrown3map7HashMapINtCskD7i0qFYELX_3lru6KeyReflEINtNtB2_8non_null7NonNullINtB1j_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2v_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaHowi4STlW6_9hashbrown3map7HashMapINtCskD7i0qFYELX_3lru6KeyReflEINtNtB2_8non_null7NonNullINtB1j_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2v_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1A_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 16, i64 noundef 16)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !66, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !66, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #22, !noalias !66
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2TJrahNLnPN_22pingora_load_balancing.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing(ptr nonnull captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(72) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 72, i64 noundef 8) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !69, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !69, !noundef !4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !69 ; 14 uses
  %.not.i.i = icmp eq ptr %.val.i, null           ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.g, !noalias !69

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !4, !noalias !69 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !4, !noalias !69
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #22, !noalias !69
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !4, !noalias !69 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %common.resume.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !10, !invariant.load !4, !noalias !69
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #22, !noalias !69
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.n, %bb.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.s, %bb.i ], [ %i.m, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.z, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val1.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.i, !noalias !69

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 72, i64 noundef 8) #22, !noalias !69
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.h
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 72, i64 noundef 8) #22, !noalias !69
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.j:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.t = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !69 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.n, !noalias !69

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !4, !noalias !69 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !10, !invariant.load !4, !noalias !69
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #22, !noalias !69
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.n:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !4, !noalias !69 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %common.resume.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !10, !invariant.load !4, !noalias !69
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #22, !noalias !69
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB12_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.m, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.f, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1 = load ptr, ptr %i.b, align 8            ; 6 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #22
  br label %.body

.body:                                            ; preds = %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #24
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.p = load i64, ptr %0, align 8, !range !11, !alias.scope !74, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %1 = trunc nuw i64 %i.p to i1
  br i1 %1, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.r, align 8, !alias.scope !76, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !76, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #22, !noalias !76
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.f, %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !9, !alias.scope !79, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !79
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !79
  %i.j = load i64, ptr %i.a, align 8, !range !12, !noalias !79, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !13, !noalias !79, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !79, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !79
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !79
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBa_4syncINtB2F_8OnceCellBR_E11get_or_initNCNvMs9_B2F_INtB2F_4LazyBR_E5force0E0NtNvMs4_B2F_IB2Q_pE11get_or_init4VoidE0Cs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !14, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !14, !noundef !4
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
  unreachable

_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr %i.d(), !inline_history !80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !14, !noundef !4 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !87, !noundef !4 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit
  %i.k = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !88
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.g, align 8, !noundef !4
  store ptr %i.e, ptr %i.n, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c, %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !noundef !4
  store ptr %i.e, ptr %i.o, align 8
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtB8_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBa_4syncINtB2W_8OnceCellBR_E11get_or_initNCNvB2S_10try_insert0E0NtNvMs4_B2W_IB37_pE11get_or_init4VoidE0Cs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.46 = alloca [116 x i8], align 4          ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !14, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 4, !alias.scope !93 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.5.0..sroa_idx.i.i, i64 116, i1 false)
  store i32 -1, ptr %i.b, align 4, !alias.scope !93
  %i.c = icmp ne i32 %.sroa.0.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !14, !noundef !4
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.f, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.46, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46)
  ret i1 true
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBf_4syncINtB2K_8OnceCellBW_E11get_or_initNCNvMs9_B2K_INtB2K_4LazyBW_E5force0E0NtNvMs4_B2K_IB2V_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs2TJrahNLnPN_22pingora_load_balancing(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !alias.scope !105, !nonnull !4, !align !14, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 4 uses
  %i.b = load ptr, ptr %.val, align 8, !noalias !106, !nonnull !4, !align !14, !noundef !4
  store ptr null, ptr %.val, align 8, !noalias !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !106, !noundef !4 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !106
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27, !noalias !106
  unreachable

_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr %i.d(), !noalias !106, !inline_history !98 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = load ptr, ptr %.val1, align 8, !noalias !106, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !107, !noalias !106, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !108
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.e, !noalias !106

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %.val1, align 8, !noalias !106, !noundef !4
  store ptr %i.e, ptr %i.l, align 8, !noalias !106
  resume { ptr, i32 } %i.k

_RNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBb_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE10initializeNCINvMs4_NtBd_4syncINtB2I_8OnceCellBU_E11get_or_initNCNvMs9_B2I_INtB2I_4LazyBU_E5force0E0NtNvMs4_B2I_IB2T_pE11get_or_init4VoidE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RNCINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB8_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerEE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0Cs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.c, %bb.d
  %i.m = load ptr, ptr %.val1, align 8, !noalias !106, !noundef !4
  store ptr %i.e, ptr %i.m, align 8, !noalias !106
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNSNvYNCINvMs2_NtCsjCbDjdVFjRH_9once_cell3impINtBd_8OnceCellINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrEE10initializeNCINvMs4_NtBf_4syncINtB31_8OnceCellBW_E11get_or_initNCNvB2X_10try_insert0E0NtNvMs4_B31_IB3c_pE11get_or_init4VoidE0INtNtNtB11_3ops8function6FnOnceuE9call_once6vtableCs2TJrahNLnPN_22pingora_load_balancing(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.46.i.i = alloca [116 x i8], align 4      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !alias.scope !117, !nonnull !4, !align !14, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing:bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCseqdUst8juhI_14pingora_ketama6BucketENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 36
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCskeugdADtBsi_12pingora_core5utils5KVRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs84JG9zk80ZV_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1I_NtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtB1a_6future6future6Future4pollCs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noalias !143, !noundef !4
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.thread.i, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.i, !prof !7

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.a
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %.thread25 ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread28, label %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.thread.i

_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.thread.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i2.i = phi ptr [ %i.h, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68
  %i.k = load i8, ptr %i.j, align 1, !range !8, !noalias !144, !noundef !4 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noalias !144 ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.thread.i
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCs2awuzAz5vY4_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %.thread25

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.n, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.thread.i
  %.sroa.33.0.i.i.i = phi i8 [ %i.o, %bb.d ], [ %i.n, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.thread.i ]
  store i8 %.sroa.33.0.i.i.i, ptr %i.m, align 1, !noalias !144
  br label %bb.f

.thread25:                                        ; preds = %bb.f, %bb.c, %_RNvYNCNKNvNtNtCs2awuzAz5vY4_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.i.i.i = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.sroa.0.0.i.i7.i = phi i1 [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i24 0, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.p)
          to label %bb.g unwind label %.thread25

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i.i7.i, label %bb.h, label %.thread28

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  br label %bb.l

.thread28:                                        ; preds = %.noexc, %bb.g
  %.sroa.03.011.i30.off8 = phi i8 [ %i.k, %bb.g ], [ 0, %.noexc ]
  %.sroa.03.011.i30.off16 = phi i8 [ %.sroa.4.0.i.i.i, %bb.g ], [ 0, %.noexc ]
  store i8 %.sroa.03.011.i30.off8, ptr %i.b, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.03.011.i30.off16, ptr %i.q, align 1
  %i.r = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !nonnull !4, !align !14, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !14, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  invoke void %i.w(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.thread28
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
          to label %.thread unwind label %bb.m

bb.j:                                             ; preds = %.thread28
  %i.y = load i64, ptr %i.c, align 8, !range !12, !noundef !4
  %3 = trunc nuw i64 %i.y to i1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECs2TJrahNLnPN_22pingora_load_balancing.exit20, label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECs2TJrahNLnPN_22pingora_load_balancing.exit20: ; preds = %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.b, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECs2TJrahNLnPN_22pingora_load_balancing.exit20

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4task4coop16RestoreOnPendingECs2TJrahNLnPN_22pingora_load_balancing.exit20, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.i, %.thread
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn24

.thread:                                          ; preds = %bb.i, %.thread25
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread25 ], [ %i.x, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1s_NtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorEEECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #24
          to label %bb.n unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EIB1I_NtCsfsXztIhCltD_13pingora_error5ErrorEEENtNtNtB1a_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1T_10connection14ConnectionMetaEEEENtNtNtBN_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsa_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaHowi4STlW6_9hashbrown3map7HashMapINtCskD7i0qFYELX_3lru6KeyReflEINtNtB2_8non_null7NonNullINtB1j_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2v_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsaHowi4STlW6_9hashbrown3map7HashMapINtCskD7i0qFYELX_3lru6KeyReflEINtNtB2_8non_null7NonNullINtB1j_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2v_10connection14ConnectionMetaEEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB1w_10connection14ConnectionMetaEEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 16, i64 noundef 16)
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell4CellIB1J_NtB8_6ThreadEEEEEE9call_onceCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCse0v0U5LqnG1_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtCsfsXztIhCltD_13pingora_error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #8 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs1_NtNtCs2awuzAz5vY4_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB1e_18TransportConnector10new_streamNtNtNtB1g_9upstreams4peer9BasicPeerE0s_0ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCsjCbDjdVFjRH_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8, ptr noundef, ptr) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCse0v0U5LqnG1_12thread_local9thread_id6ThreadEEE4withNCNvB1P_3get0B1N_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtCs2awuzAz5vY4_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef dereferenceable(2)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs2awuzAz5vY4_5tokio7runtime7context7ContextE16get_or_init_slowCs2TJrahNLnPN_22pingora_load_balancing(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_CskD7i0qFYELX_3lruINtB5_8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtBI_10connection14ConnectionMetaEE9constructCs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2awuzAz5vY4_5tokio4task4coop14register_waker(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2C_10connection14ConnectionMetaEEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3Z_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECs2TJrahNLnPN_22pingora_load_balancing(i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCs2CMyvXgshDu_8foldhash4seed19gen_per_hasher_seed() unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs_NtNtCs2CMyvXgshDu_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromIBI_NtCsfsXztIhCltD_13pingora_error5ErrorEE4fromCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsih3NV0yzdTo_15pingora_timeout5timer12TimerManagerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsaHowi4STlW6_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB1g_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2O_10connection14ConnectionMetaEEEENtNtNtNtCs7SsKripP1qO_14allocator_api26stable5alloc6global6GlobalECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9
end_hunk_1
