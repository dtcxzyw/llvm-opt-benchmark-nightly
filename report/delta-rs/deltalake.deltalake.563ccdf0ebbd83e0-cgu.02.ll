inline.NumInlined: 6368
inline.NumDeleted: 3022
begin_hunk_0_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB2e_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4r_6option6OptionxENtNtB2i_6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake:bb.a

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.e) #29
          to label %.thread unwind label %bb.k

bb.j:                                             ; preds = %.noexc7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.c, i64 96, i1 false), !alias.scope !9032, !noalias !9033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9022
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable

.thread:                                          ; preds = %bb.m, %bb.i
  %.pn13 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.m ], [ %i.ad, %bb.i ]
  resume { ptr, i32 } %.pn13

bb.m:                                             ; preds = %bb.h, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB3y_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5L_6option6OptionxENtNtB3C_6errors15DeltaTableErrorEE0IB6j_NtB1X_17EnterRuntimeGuardEECs7p2uQeJxui2_9deltalake.exit.thread.i, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b, %bb.d, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtB3y_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB5L_6option6OptionxENtNtB3C_6errors15DeltaTableErrorEE0IB6j_NtB1X_17EnterRuntimeGuardEECs7p2uQeJxui2_9deltalake.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBM_15DeltaTableState19transaction_versionNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %3)
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2k_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.f = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9034)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9037)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !172, !noalias !9040, !noundef !3
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i
  ], !prof !7246

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.a
  %i.j = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.g)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.j, %.noexc ], [ %i.g, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9043)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 70 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !172, !noalias !9046, !noundef !3
  %.not.i.i.i = icmp eq i8 %i.m, 2
  br i1 %.not.i.i.i, label %bb.b, label %.thread18

.thread18:                                        ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i
  store i8 %i.f, ptr %i.l, align 1, !noalias !9046
  %i.n = load i64, ptr %1, align 8, !range !20, !alias.scope !9048, !noalias !9049, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = trunc nuw i64 %i.n to i1
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !9048, !noalias !9049, !nonnull !3
  %.sroa.0.0.v.i.i.i = select i1 %i.p, i64 472, i64 544
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.v.i.i.i
  %i.r = invoke { i32, i32 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i.i)
          to label %.noexc3 unwind label %bb.m    ; 2 uses

.noexc3:                                          ; preds = %bb.b
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = extractvalue { i32, i32 } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !noalias !9046
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 64 ; 2 uses
  %i.v = trunc i32 %.sroa.04.0.copyload.i.i.i to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc3
  %.sroa.55.0.copyload.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !9046
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !9046
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i

bb.d:                                             ; preds = %.noexc3
  %i.w = invoke { i32, i32 } @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util4randNtB4_8FastRand3new()
          to label %.noexc4 unwind label %bb.m    ; 2 uses

.noexc4:                                          ; preds = %bb.d
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = extractvalue { i32, i32 } %i.w, 1
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i: ; preds = %.noexc4, %bb.c
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i, %bb.c ], [ %i.y, %.noexc4 ]
  %.sroa.01.0.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i, %bb.c ], [ %i.x, %.noexc4 ]
  store i32 1, ptr %i.u, align 4, !noalias !9046
  store i32 %i.s, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !9046
  store i32 %i.t, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !9046
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %.sroa.0.0.i.i4.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %.sroa.01.0.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !9050
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %.sroa.5.0.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i, align 4, !noalias !9050
  %.sroa.0.0.copyload1.pr.i = load i64, ptr %i.d, align 8, !noalias !9050 ; 3 uses
  %i.z = icmp eq i64 %.sroa.0.0.copyload1.pr.i, 4
  br i1 %i.z, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i, label %bb.e, !prof !317

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i: ; preds = %.noexc5, %.noexc, %bb.a
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
          to label %.noexc6 unwind label %bb.m

.noexc6:                                          ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i
  unreachable

bb.e:                                             ; preds = %.noexc5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !9034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.0.0.copyload1.pr.i, 3
  br i1 %.not, label %bb.h, label %bb.f, !prof !317

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1.pr.i, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9051
  invoke void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1p_13RawDeltaTable5files000EB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b)
          to label %.noexc7 unwind label %bb.i

.noexc7:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9051
  call void @llvm.experimental.noalias.scope.decl(metadata !9055)
  %i.ab = load i64, ptr %i.c, align 8, !range !2512, !alias.scope !9058, !noalias !9060, !noundef !3
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.g, label %bb.j, !prof !39

bb.g:                                             ; preds = %.noexc7
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.thread18, %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
          to label %bb.l unwind label %bb.m

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.e) #29
          to label %.thread unwind label %bb.k

bb.j:                                             ; preds = %.noexc7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false), !alias.scope !9061, !noalias !9062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9051
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

bb.k:                                             ; preds = %bb.n, %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable

.thread:                                          ; preds = %5, %bb.m, %bb.n, %bb.i
  %.pn13 = phi { ptr, i32 } [ %lpad.thr_comm, %5 ], [ %i.ad, %bb.i ], [ %lpad.thr_comm, %bb.n ], [ %lpad.thr_comm, %bb.m ]
  resume { ptr, i32 } %.pn13

bb.m:                                             ; preds = %bb.h, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b, %bb.d, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3E_13RawDeltaTable5files000E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtCsgbCypRs12E4_4pyo33err5PyErrEE0INtNtB4D_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ag = load i8, ptr %i.af, align 8, !range !83, !noundef !3
  %cond.i.i.i.a = icmp eq i8 %i.ag, 3
  br i1 %cond.i.i.i.a, label %5, label %.thread

5:                                                ; preds = %bb.m
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %7 = load i8, ptr %6, align 8, !range !83, !noundef !3
  %cond.i.i.i = icmp eq i8 %7, 3
  br i1 %cond.i.i.i, label %bb.n, label %.thread

bb.n:                                             ; preds = %5
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ah)
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB2i_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3r_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB3n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB3r_6marker4SendEL_EEB70_EEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(3168) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [3168 x i8], align 16             ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.f = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9066)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !172, !noalias !9069, !noundef !3
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i
  ], !prof !7246

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.a
  %i.j = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.g)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.j, %.noexc ], [ %i.g, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9072)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 70 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !172, !noalias !9075, !noundef !3
  %.not.i.i.i = icmp eq i8 %i.m, 2
  br i1 %.not.i.i.i, label %bb.b, label %.thread17

.thread17:                                        ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i.i
  store i8 %i.f, ptr %i.l, align 1, !noalias !9075
  %i.n = load i64, ptr %1, align 8, !range !20, !alias.scope !9077, !noalias !9078, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = trunc nuw i64 %i.n to i1
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !9077, !noalias !9078, !nonnull !3
  %.sroa.0.0.v.i.i.i = select i1 %i.p, i64 472, i64 544
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.v.i.i.i
  %i.r = invoke { i32, i32 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %.sroa.0.0.i.i.i)
          to label %.noexc3 unwind label %bb.m    ; 2 uses

.noexc3:                                          ; preds = %bb.b
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = extractvalue { i32, i32 } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !noalias !9075
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 64 ; 2 uses
  %i.v = trunc i32 %.sroa.04.0.copyload.i.i.i to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc3
  %.sroa.55.0.copyload.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !9075
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !9075
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i

bb.d:                                             ; preds = %.noexc3
  %i.w = invoke { i32, i32 } @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util4randNtB4_8FastRand3new()
          to label %.noexc4 unwind label %bb.m    ; 2 uses

.noexc4:                                          ; preds = %bb.d
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = extractvalue { i32, i32 } %i.w, 1
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i: ; preds = %.noexc4, %bb.c
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i, %bb.c ], [ %i.y, %.noexc4 ]
  %.sroa.01.0.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i, %bb.c ], [ %i.x, %.noexc4 ]
  store i32 1, ptr %i.u, align 4, !noalias !9075
  store i32 %i.s, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !9075
  store i32 %i.t, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !9075
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %.sroa.0.0.i.i4.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %.sroa.01.0.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !9079
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %.sroa.5.0.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i, align 4, !noalias !9079
  %.sroa.0.0.copyload1.pr.i = load i64, ptr %i.d, align 8, !noalias !9079 ; 3 uses
  %i.z = icmp eq i64 %.sroa.0.0.copyload1.pr.i, 4
  br i1 %i.z, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i, label %bb.e, !prof !317

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i: ; preds = %.noexc5, %.noexc, %bb.a
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
          to label %.noexc6 unwind label %bb.m

.noexc6:                                          ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i
  unreachable

bb.e:                                             ; preds = %.noexc5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !9063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.0.0.copyload1.pr.i, 3
  br i1 %.not, label %bb.h, label %bb.f, !prof !317

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1.pr.i, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3168) %i.b, ptr noundef nonnull align 16 dereferenceable(3168) %3, i64 3168, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9080
  invoke void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB1n_14PyQueryBuilder7execute00EB1p_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(3168) %i.b)
          to label %.noexc7 unwind label %bb.i

.noexc7:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9080
  call void @llvm.experimental.noalias.scope.decl(metadata !9084)
  %i.ab = load i64, ptr %i.c, align 8, !range !7261, !alias.scope !9087, !noalias !9089, !noundef !3
  %i.ac = icmp eq i64 %i.ab, 21
  br i1 %i.ac, label %bb.g, label %bb.j, !prof !39

bb.g:                                             ; preds = %.noexc7
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.thread17, %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #28
          to label %bb.l unwind label %bb.m

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.e) #29
          to label %.thread unwind label %bb.k

bb.j:                                             ; preds = %.noexc7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !alias.scope !9090, !noalias !9091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9080
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable

.thread:                                          ; preds = %bb.i, %bb.m
  %.pn12 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %lpad.thr_comm, %bb.m ]
  resume { ptr, i32 } %.pn12

bb.m:                                             ; preds = %bb.h, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.thread.i, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b, %bb.d, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB3C_14PyQueryBuilder7execute00E0INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4L_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIB4H_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4L_6marker4SendEL_EEB8k_EE0INtNtB4L_6option6OptionNtB1X_17EnterRuntimeGuardEEB3E_.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_threadNtBM_11MultiThread8block_onNCNCNvMs9_NtCs7p2uQeJxui2_9deltalake5queryNtB2j_14PyQueryBuilder7execute00E0EB2l_(ptr noundef nonnull align 16 %3) #29
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2i_13RawDeltaTable12compact_logs00E0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.f = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9092)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9095)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !172, !noalias !9098, !noundef !3
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB5_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1l_6filter3env9EnvFilterNtNtNtB1l_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1j_5LayerB1e_E8on_eventCs7p2uQeJxui2_9deltalake:bb.a
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEE7or_elseNCNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB3j_18OpenTelemetryLayerB1C_NtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1H_5LayerB1C_E8on_events_0ECs7p2uQeJxui2_9deltalake.exit.thread259, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEE7or_elseNCNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB3j_18OpenTelemetryLayerB1C_NtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1H_5LayerB1C_E8on_events_0ECs7p2uQeJxui2_9deltalake.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry6common8KeyValueEECs7p2uQeJxui2_9deltalake.exit, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredNtNtNtBN_6filter3env9EnvFilterNtNtBL_7sharded8RegistryEEE7or_elseNCNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB3j_18OpenTelemetryLayerB1C_NtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1H_5LayerB1C_E8on_events_0ECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

.thread302:                                       ; preds = %bb.fq, %bb.fn, %bb.fg, %bb.ft, %bb.x, %.body228, %bb.p, %bb.m, %bb.fv, %bb.fx, %bb.i
  %.pn307 = phi { ptr, i32 } [ %i.ce, %bb.i ], [ %lpad.thr_comm, %bb.fx ], [ %lpad.thr_comm.split-lp, %bb.p ], [ %.pn, %bb.fv ], [ %i.cr, %bb.m ], [ %.pn168, %bb.fg ], [ %eh.lpad-body229, %.body228 ], [ %.pn168, %bb.ft ], [ %lpad.thr_comm.split-lp282, %bb.x ], [ %i.nx, %bb.fq ], [ %i.nv, %bb.fn ]
  invoke void @_RNvXs6_NtCsdNqyU9N9qTX_12sharded_slab4poolINtB5_3RefNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7SpanRefINtNtNtBL_5layer7layered7LayeredNtNtNtBL_6filter3env9EnvFilterNtNtBJ_7sharded8RegistryEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.cl

bb.i:                                             ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

bb.j:                                             ; preds = %bb.g
  %i.cf = load i64, ptr %i.bo, align 8, !range !4282, !noundef !3
  %.not148 = icmp eq i64 %i.cf, 5                 ; 2 uses
  br i1 %.not148, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store i64 1, ptr %i.bm, align 8
  %.sroa.7241.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @140, ptr %.sroa.7241.0..sroa_idx242, align 8
  %.sroa.9.0..sroa_idx244 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 6, ptr %.sroa.9.0..sroa_idx244, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !3, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, i64 noundef %i.cj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.q unwind label %bb.fx

bb.l:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 1, ptr %i.bi, align 8
  %.sroa.7241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @140, ptr %.sroa.7241.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 6, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !3, !noundef !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 1, ptr %i.cq, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.cn, ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %i.cp, ptr %.sroa.597.0..sroa_idx, align 8
  store i64 7, ptr %i.bh, align 8
  invoke void @_RINvMsu_NtCskFSgV2vI2Ct_13opentelemetry6commonNtB6_8KeyValue3newNtB6_3KeyNtB6_5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %bb.n
  %.sroa.08.1 = phi ptr [ %i.bo, %bb.w ], [ %i.cl, %bb.n ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 0, ptr %i.bf, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.499.0..sroa_idx, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 0, ptr %.sroa.5100.0..sroa_idx, align 8
  %i.cs = invoke { i64, i32 } @_RNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry4time3now()
          to label %bb.y unwind label %.thread283 ; 2 uses

bb.p:                                             ; preds = %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

bb.q:                                             ; preds = %bb.k
  %i.ct = load i64, ptr %i.al, align 8, !range !20, !noundef !3
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !114, !noundef !3 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.cu, label %bb.r, label %bb.s, !prof !39

bb.r:                                             ; preds = %bb.q
  %i.cy = load i64, ptr %i.cx, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cw, i64 %i.cy) #28
          to label %bb.fw unwind label %bb.fx

bb.s:                                             ; preds = %bb.q
  %i.cz = load ptr, ptr %i.cx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.da = icmp ule i64 %i.cj, %i.cw
  call void @llvm.assume(i1 %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.not149 = icmp eq i64 %i.cj, 0
  br i1 %.not149, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s
  store i64 %i.cw, ptr %i.bj, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.cz, ptr %.sroa.490.0..sroa_idx, align 8
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.cj, ptr %.sroa.691.0..sroa_idx, align 8
  invoke void @_RNvXsk_NtCskFSgV2vI2Ct_13opentelemetry6commonNtB5_11StringValueINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs6Po7BT7Nknu_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bj)
          to label %bb.v unwind label %bb.fx

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.ch, i64 %i.cj, i1 false)
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  store i64 7, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke void @_RINvMsu_NtCskFSgV2vI2Ct_13opentelemetry6commonNtB6_8KeyValue3newNtB6_3KeyNtB6_5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bl)
          to label %bb.w unwind label %bb.p

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.o

.thread283:                                       ; preds = %bb.z, %bb.o
  %lpad.thr_comm281 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.x:                                             ; preds = %bb.aa
  %lpad.thr_comm.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %.thread302

bb.y:                                             ; preds = %bb.o
  %i.dc = extractvalue { i64, i32 } %i.cs, 0
  %i.dd = extractvalue { i64, i32 } %i.cs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.de = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 113) 112, i64 noundef range(i64 8, 17) 8) #33 ; 5 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.z, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !39

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #28
          to label %.noexc unwind label %.thread283

.noexc:                                           ; preds = %bb.z
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 1, ptr %i.bc, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @139, ptr %.sroa.4102.0..sroa_idx, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 5, ptr %.sroa.5103.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.dg = load i64, ptr %.sroa.08.1, align 8, !range !228, !noundef !3 ; 2 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB5_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1l_6filter3env9EnvFilterNtNtNtB1l_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1j_5LayerB1e_E8on_eventCs7p2uQeJxui2_9deltalake, i64 %i.dg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep323 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB5_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1l_6filter3env9EnvFilterNtNtNtB1l_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1j_5LayerB1e_E8on_eventCs7p2uQeJxui2_9deltalake.1657, i64 %i.dg
  %switch.load324 = load ptr, ptr %switch.gep323, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 1, ptr %i.dh, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %switch.load324, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %switch.ext, ptr %.sroa.5109.0..sroa_idx, align 8
  store i64 7, ptr %i.bb, align 8
  invoke void @_RINvMsu_NtCskFSgV2vI2Ct_13opentelemetry6commonNtB6_8KeyValue3newNtB6_3KeyNtB6_5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bb)
          to label %bb.aa unwind label %.thread271

.thread271:                                       ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef 112, i64 noundef 8) #33
  br label %bb.fu

bb.aa:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.de, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 2, ptr %i.be, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.de, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 2, ptr %i.dk, align 8
  invoke void @_RINvMNtCskFSgV2vI2Ct_13opentelemetry5traceNtB3_5Event3newNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bf, i64 noundef %i.dc, i32 noundef %i.dd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.be, i32 noundef 0)
          to label %bb.ab unwind label %bb.x

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 -9223372036854775807, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.015.0.copyload = load i32, ptr %i.dl, align 8
  store ptr %i.bg, ptr %i.az, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %.sroa.015.0.copyload, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !3, !align !38, !noundef !3
  invoke void @_RNvMsR_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB5_8ValueSet6record(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dp, ptr noundef nonnull %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @146)
          to label %bb.ad unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions13ExtensionsMutECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body206, %.body, %bb.ac
  %.sroa.068.0 = phi i8 [ %.sroa.068.1, %bb.ac ], [ 1, %.body ], [ %.sroa.068.2, %.body206 ]
  %.sroa.073.0 = phi i8 [ %.sroa.073.1, %bb.ac ], [ 1, %.body ], [ %.sroa.073.3, %.body206 ] ; 2 uses
  %.pn166 = phi { ptr, i32 } [ %i.dt, %bb.ac ], [ %eh.lpad-body, %.body ], [ %.pn164, %.body206 ] ; 2 uses
  %i.dq = load i64, ptr %i.ba, align 8, !range !2520, !noundef !3
  %i.dr = icmp ne i64 %i.dq, -9223372036854775807
  %i.ds = trunc nuw i8 %.sroa.068.0 to i1
  %or.cond7 = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond7, label %bb.fr, label %bb.fg

bb.ac:                                            ; preds = %bb.da, %bb.ao, %bb.aj, %bb.ab
  %.sroa.068.1 = phi i8 [ %.sroa.068.5, %bb.da ], [ 1, %bb.ao ], [ 1, %bb.aj ], [ 1, %bb.ab ]
  %.sroa.073.1 = phi i8 [ 0, %bb.da ], [ 1, %bb.ao ], [ 1, %bb.aj ], [ 1, %bb.ab ]
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions13ExtensionsMutECs7p2uQeJxui2_9deltalake.exit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.du = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 11 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load i64, ptr %i.du, align 8, !range !114, !noundef !3
  %.not151 = icmp eq i64 %i.dy, -9223372036854775808
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !3, !align !38, !noundef !3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !3 ; 2 uses
  br i1 %.not151, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %i.eh, %bb.ai ], [ %i.ef, %bb.ag ]
  store i64 -9223372036854775808, ptr %i.du, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.ec, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.ee, ptr %i.dv, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions13ExtensionsMutECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  store i64 -9223372036854775808, ptr %i.du, align 8
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.ec, ptr %.sroa.5.0..sroa_idx20, align 8
  store i64 %i.ee, ptr %i.dv, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.ei = invoke { ptr, i1 } @_RNvXs4_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData14extensions_mut(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %bb.ak unwind label %bb.ac     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ej = extractvalue { ptr, i1 } %i.ei, 0       ; 2 uses
  %i.ek = extractvalue { ptr, i1 } %i.ei, 1
  store ptr %i.ej, ptr %i.ay, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.em = zext i1 %i.ek to i8
  store i8 %i.em, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.eo = invoke noundef align 16 ptr @_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.en)
          to label %bb.am unwind label %bb.al     ; 14 uses

.body206:                                         ; preds = %.body191, %bb.ck, %bb.ca, %bb.do, %.thread.i215, %bb.cv, %bb.bl, %bb.bm, %bb.al, %.body212
  %.sroa.068.2 = phi i8 [ %.sroa.068.4, %bb.cv ], [ %.sroa.068.4, %.body212 ], [ 1, %bb.bl ], [ %.sroa.068.6, %bb.do ], [ %.sroa.068.6, %.thread.i215 ], [ 1, %bb.bm ], [ %.sroa.068.3, %bb.al ], [ 1, %bb.ca ], [ 1, %bb.ck ], [ 1, %.body191 ]
  %.sroa.073.3 = phi i8 [ 0, %bb.cv ], [ 0, %.body212 ], [ 1, %bb.bl ], [ 0, %bb.do ], [ 0, %.thread.i215 ], [ 1, %bb.bm ], [ %.sroa.073.4, %bb.al ], [ 1, %bb.ca ], [ 1, %bb.ck ], [ 1, %.body191 ]
  %.pn164 = phi { ptr, i32 } [ %i.iq, %bb.cv ], [ %eh.lpad-body213, %.body212 ], [ %i.gg, %bb.bl ], [ %i.jq, %bb.do ], [ %.pn4912.i, %.thread.i215 ], [ %i.gg, %bb.bm ], [ %i.ep, %bb.al ], [ %i.hf, %bb.ca ], [ %eh.lpad-body192, %bb.ck ], [ %eh.lpad-body192, %.body191 ]
  invoke void @_RNvXsi_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions13ExtensionsMutECs7p2uQeJxui2_9deltalake.exit unwind label %bb.cl

bb.al:                                            ; preds = %bb.ds, %.noexc.i216, %bb.dl, %bb.cy, %bb.ba, %bb.ay, %bb.ax, %bb.di, %bb.df, %bb.cr, %bb.ak
  %.sroa.068.3 = phi i8 [ %.sroa.068.6, %bb.ds ], [ 0, %bb.di ], [ 1, %bb.df ], [ 1, %bb.ay ], [ %.sroa.068.4, %bb.cy ], [ 0, %bb.cr ], [ 1, %bb.ba ], [ 1, %bb.ak ], [ 1, %bb.ax ], [ %.sroa.068.6, %bb.dl ], [ %.sroa.068.6, %.noexc.i216 ]
  %.sroa.073.4 = phi i8 [ 0, %bb.ds ], [ 1, %bb.di ], [ 1, %bb.df ], [ 1, %bb.ay ], [ 1, %bb.cy ], [ 1, %bb.cr ], [ 1, %bb.ba ], [ 1, %bb.ak ], [ 1, %bb.ax ], [ 0, %bb.dl ], [ 0, %.noexc.i216 ]
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body206

bb.am:                                            ; preds = %bb.ak
  %.not152.not = icmp eq ptr %i.eo, null          ; 2 uses
  br i1 %.not152.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.er = load i8, ptr %i.eq, align 4, !range !101, !noundef !3
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvXsi_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions13ExtensionsMutECs7p2uQeJxui2_9deltalake.exit179 unwind label %bb.ac

bb.ap:                                            ; preds = %bb.ce, %bb.an
  %i.et = load i128, ptr %i.eo, align 16, !range !3751, !noundef !3
  %i.eu = icmp eq i128 %i.et, 2
  br i1 %i.eu, label %bb.cm, label %bb.cn

bb.aq:                                            ; preds = %bb.an
  br i1 %.not148, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.ew = load ptr, ptr %i.ev, align 8, !noundef !3 ; 2 uses
  %.not156 = icmp eq ptr %i.ew, null
  br i1 %.not156, label %bb.bc, label %bb.ax

bb.as:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !3, !align !38, !noundef !3 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 96
  %i.fa = load ptr, ptr %i.ez, align 8, !noundef !3 ; 3 uses
  %.not154 = icmp eq ptr %i.fa, null
  br i1 %.not154, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 104
  %i.fc = load i64, ptr %i.fb, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.sroa.035.0 = phi i64 [ 7, %bb.at ], [ 8, %bb.as ] ; 2 uses
  %.sroa.4.sroa.4.0 = phi i64 [ %i.fc, %bb.at ], [ undef, %bb.as ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fe = load ptr, ptr %i.fd, align 8, !noundef !3 ; 2 uses
  %.not155 = icmp eq ptr %i.fe, null
  br i1 %.not155, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fg = load i64, ptr %i.ff, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.bk
  %i.fh = phi i64 [ %.sroa.035.0.copyload37, %bb.bk ], [ %.sroa.035.0, %bb.av ], [ %.sroa.035.0, %bb.au ] ; 2 uses
  %.sroa.4.sroa.0.1 = phi i64 [ %.sroa.4.sroa.0.0.copyload118, %bb.bk ], [ 1, %bb.av ], [ 1, %bb.au ]
  %.sroa.4.sroa.3.1 = phi ptr [ %.sroa.4.sroa.3.0.copyload119, %bb.bk ], [ %i.fa, %bb.av ], [ %i.fa, %bb.au ]
  %.sroa.4.sroa.4.1 = phi i64 [ %.sroa.4.sroa.4.0.copyload120, %bb.bk ], [ %.sroa.4.sroa.4.0, %bb.av ], [ %.sroa.4.sroa.4.0, %bb.au ]
  %.sroa.547.sroa.3.1 = phi ptr [ %.sroa.547.sroa.3.2, %bb.bk ], [ %i.fe, %bb.av ], [ null, %bb.au ]
  %.sroa.547.sroa.4.1 = phi i64 [ %.sroa.547.sroa.4.2, %bb.bk ], [ %i.fg, %bb.av ], [ undef, %bb.au ]
  %i.fi = phi <2 x i64> [ %i.gf, %bb.bk ], [ <i64 7, i64 1>, %bb.av ], [ <i64 8, i64 1>, %bb.au ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store <2 x i64> %i.fi, ptr %i.ax, align 16
  %.sroa.547.sroa.3.0..sroa.547.0..sroa_idx48.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %.sroa.547.sroa.3.1, ptr %.sroa.547.sroa.3.0..sroa.547.0..sroa_idx48.sroa_idx, align 16
end_hunk_1
