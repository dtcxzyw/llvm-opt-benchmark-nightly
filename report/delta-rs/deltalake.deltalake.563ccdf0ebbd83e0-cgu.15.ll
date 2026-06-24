inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4t_5error5ErrorEE0ECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.6.0.ph.sink = phi ptr [ %i.as, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit ], [ %i.aj, %bb.q ], [ %i.as, %bb.r ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !11, !alias.scope !332, !noalias !335, !noundef !12
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !332, !noalias !335 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !332, !noalias !335 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !337
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB3w_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !11
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !11
  %i.e = select i1 %i.d, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val
  %i.f = trunc nuw i64 %i.e to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8
  %.val14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8
  %i.g = select i1 %i.d, ptr %.val, ptr %.val14   ; 3 uses
  %.val15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8
  %.val16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8
  %i.h = select i1 %i.d, ptr %.val15, ptr %.val16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !338
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !81, !noalias !342, !noundef !12
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit
  ], !prof !85

default.unreachable:                              ; preds = %bb.e
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %i.n = tail call noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.k), !noalias !342 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.n, %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i ], [ %i.k, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !range !86, !noalias !345, !noundef !12
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 1, !noalias !345
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.s = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !11, !alias.scope !348, !noalias !351, !noundef !12
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !348, !noalias !351 ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !348, !noalias !351 ; 2 uses
  br i1 %i.t, label %bb.g, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !353
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  %i.y = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !345, !noundef !12 ; 2 uses
  %i.z = icmp ult i64 %i.y, 9223372036854775807
  br i1 %i.z, label %bb.l, label %bb.j, !prof !96

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #40
          to label %.noexc.i.i unwind label %bb.k, !noalias !345

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.p, align 8, !noalias !345
  resume { ptr, i32 } %i.aa

bb.l:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %i.y, 1
  store i64 %i.ab, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !345
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.ad = load i64, ptr %i.ac, align 8, !range !100, !alias.scope !354, !noalias !345, !noundef !12 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !357
  %i.af = icmp eq i64 %i.ae, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.af, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !11, !alias.scope !358, !noalias !361
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i64 [ %i.ad, %bb.l ], [ %.pre.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !358, !noalias !361 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !358, !noalias !361
  br i1 %i.ah, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !363
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ao = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !345, !noundef !12
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !345
  store i8 1, ptr %i.p, align 8, !noalias !345
  br label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6: ; preds = %bb.c, %bb.b, %bb.f, %bb.g, %bb.q, %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.07.ph.sink = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.0.0.i6.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.0.ph.sink = phi ptr [ %i.as, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit ], [ %i.aj, %bb.q ], [ %i.as, %bb.r ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !11, !alias.scope !364, !noalias !367, !noundef !12
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !364, !noalias !367 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !364, !noalias !367 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB4O_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0E0B2d_ECs7p2uQeJxui2_9deltalake.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !369
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2l_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE0Cs7p2uQeJxui2_9deltalake.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot31application_transaction_version00BW_Es_00ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !370, !noalias !373, !nonnull !12, !align !375, !noundef !12 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.j = load i64, ptr %i.i, align 8, !range !100, !alias.scope !376, !noalias !379, !noundef !12
  %.not.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %.noexc3.i unwind label %bb.t, !noalias !379

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.l = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !379
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !376, !noalias !379, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.o, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !380
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !379, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !379, !noundef !12
  store ptr %i.q, ptr %i.d, align 8, !noalias !380
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !380
  store ptr %i.d, ptr %i.c, align 8, !noalias !380
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !380
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noundef nonnull @72, ptr noundef nonnull %i.c) #41
          to label %.noexc4.i unwind label %bb.t

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !380
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !381, !noalias !384, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !381, !noalias !384, !nonnull !12, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !381, !noalias !384, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !381, !noalias !384, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !381, !noalias !384, !nonnull !12, !align !375, !noundef !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !386, !invariant.load !12, !noalias !387
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = and i64 %i.ag, -16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  invoke void @_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel8snapshotNtB5_8Snapshot18get_app_id_version(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noundef nonnull %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ad)
          to label %bb.g unwind label %bb.f, !noalias !388

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e) #37
          to label %bb.n unwind label %bb.m, !noalias !384

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.h, !noalias !384

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.body.i.i unwind label %bb.i, !noalias !384

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !384
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.j, !noalias !384

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.al, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.ao = load ptr, ptr %i.aa, align 8, !alias.scope !395, !noalias !384, !nonnull !12, !noundef !12
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !396
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %.body.i

bb.k:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #42
          to label %.body.i unwind label %bb.m, !noalias !384

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ar = load ptr, ptr %i.aa, align 8, !alias.scope !403, !noalias !384, !nonnull !12, !noundef !12
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !404
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot31application_transaction_version00Cs7p2uQeJxui2_9deltalake.exit.i

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #42
          to label %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot31application_transaction_version00Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.p, !noalias !379

bb.m:                                             ; preds = %bb.o, %bb.k, %bb.f
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !384
  unreachable

bb.n:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.av = load ptr, ptr %i.aa, align 8, !alias.scope !411, !noalias !384, !nonnull !12, !noundef !12
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !412
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.o, label %.body.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #42
          to label %.body.i unwind label %bb.m, !noalias !384

bb.p:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.k ], [ %i.ak, %bb.o ], [ %i.ak, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %i.i) #37
          to label %.body unwind label %bb.s, !noalias !379

_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot31application_transaction_version00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !379
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.az = load i64, ptr %i.i, align 8, !range !100, !alias.scope !413, !noalias !416, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.az, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.q

bb.q:                                             ; preds = %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot31application_transaction_version00Cs7p2uQeJxui2_9deltalake.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.noexc7.i unwind label %bb.u

.noexc7.i:                                        ; preds = %bb.q, %_RNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_8Snapshot31application_transaction_version00Cs7p2uQeJxui2_9deltalake.exit.i
  %i.bb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !379
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %.noexc7.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !413, !noalias !416, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !419
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !416, !nonnull !12, !noundef !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !416, !noundef !12
  store ptr %i.bg, ptr %i.b, align 8, !noalias !419
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !419
  store ptr %i.b, ptr %i.a, align 8, !noalias !419
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !419
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noundef nonnull @70, ptr noundef nonnull %i.a) #41
          to label %.noexc3 unwind label %bb.u

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !419
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.t, %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !373
  unreachable

bb.t:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot31application_transaction_version00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f) #37
          to label %.body unwind label %bb.s, !noalias !373

bb.u:                                             ; preds = %.noexc8.i, %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.t, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.t ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.g) #37
          to label %.thread unwind label %bb.v

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot31application_transaction_version00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_6option6OptionxENtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc3, %bb.r, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.v:                                             ; preds = %bb.w, %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.w, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bn, %bb.w ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.w:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot31application_transaction_version00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB3p_8protocol11checkpoints21create_checkpoint_for000BW_Es_00ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [120 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !420, !noalias !423, !nonnull !12, !align !375, !noundef !12 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.k = load i64, ptr %i.j, align 8, !range !100, !alias.scope !425, !noalias !428, !noundef !12
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.p, !noalias !428

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !428
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !425, !noalias !428, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !429
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !428, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !428, !noundef !12
  store ptr %i.r, ptr %i.e, align 8, !noalias !429
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !429
  store ptr %i.e, ptr %i.d, align 8, !noalias !429
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !429
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noundef nonnull @72, ptr noundef nonnull %i.d) #41
          to label %.noexc4.i unwind label %bb.p

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !429
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !428
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.w, align 8, !noalias !433
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.y, align 8, !noalias !433
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !433
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !433
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !430, !noalias !435, !noundef !12
  store i64 1, ptr %i.c, align 8, !noalias !433
  store i64 %i.aa, ptr %i.x, align 8, !noalias !433
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !430, !noalias !435, !nonnull !12, !noundef !12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !430, !noalias !435, !nonnull !12, !align !375, !noundef !12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !386, !invariant.load !12, !noalias !433
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = and i64 %i.ah, -16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ae)
          to label %bb.h unwind label %bb.f, !noalias !436

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !437
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #42
          to label %.body.i unwind label %bb.j, !noalias !435

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ao = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !442
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #42
          to label %bb.l unwind label %bb.k, !noalias !428

bb.j:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !435
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.al, %bb.g ], [ %i.al, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %i.j) #37
          to label %.body unwind label %bb.o, !noalias !428

bb.l:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !428
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.as = load i64, ptr %i.j, align 8, !range !100, !alias.scope !447, !noalias !450, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %.noexc7.i unwind label %bb.q

.noexc7.i:                                        ; preds = %bb.m, %bb.l
  %i.au = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !428
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.n, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %.noexc7.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !447, !noalias !450, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !453
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !450, !nonnull !12, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !450, !noundef !12
  store ptr %i.az, ptr %i.b, align 8, !noalias !453
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !453
  store ptr %i.b, ptr %i.a, align 8, !noalias !453
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !453
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noundef nonnull @70, ptr noundef nonnull %i.a) #41
          to label %.noexc3 unwind label %bb.q

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !453
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.p, %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !423
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.g) #37
          to label %.body unwind label %bb.o, !noalias !423

bb.q:                                             ; preds = %.noexc8.i, %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.q ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %.thread unwind label %bb.r

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc3, %bb.n, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.r:                                             ; preds = %bb.s, %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.s, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.s:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(120) %2)
          to label %.thread unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB3p_8protocol14log_compaction16compact_logs_for000BW_Es_00ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !454, !noalias !457, !nonnull !12, !align !375, !noundef !12 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.j = load i64, ptr %i.i, align 8, !range !100, !alias.scope !459, !noalias !462, !noundef !12
  %.not.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %.noexc3.i unwind label %bb.p, !noalias !462

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.l = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !462
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !459, !noalias !462, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.o, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !463
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !462, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !462, !noundef !12
  store ptr %i.q, ptr %i.e, align 8, !noalias !463
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !463
  store ptr %i.e, ptr %i.d, align 8, !noalias !463
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !463
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noundef nonnull @72, ptr noundef nonnull %i.d) #41
          to label %.noexc4.i unwind label %bb.p

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !463
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !462
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !462
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !464, !noalias !467, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !469
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.v, ptr %i.x, align 8, !noalias !469
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.z, align 8, !noalias !469
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !469
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !469
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !464, !noalias !467, !noundef !12
  store i64 1, ptr %i.c, align 8, !noalias !469
  store i64 %i.ab, ptr %i.y, align 8, !noalias !469
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !464, !noalias !467, !nonnull !12, !noundef !12 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !464, !noalias !467, !nonnull !12, !align !375, !noundef !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !386, !invariant.load !12, !noalias !469
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af)
          to label %bb.h unwind label %bb.f, !noalias !470

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !471
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #42
          to label %.body.i unwind label %bb.j, !noalias !467

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ap = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !476
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #42
          to label %bb.l unwind label %bb.k, !noalias !462

bb.j:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !467
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.am, %bb.g ], [ %i.am, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %i.i) #37
          to label %.body unwind label %bb.o, !noalias !462

bb.l:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !462
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.at = load i64, ptr %i.i, align 8, !range !100, !alias.scope !481, !noalias !484, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.at, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc7.i unwind label %bb.q

.noexc7.i:                                        ; preds = %bb.m, %bb.l
  %i.av = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !462
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.n, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %.noexc7.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !481, !noalias !484, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !487
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !484, !nonnull !12, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !484, !noundef !12
  store ptr %i.ba, ptr %i.b, align 8, !noalias !487
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !noalias !487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !487
  store ptr %i.b, ptr %i.a, align 8, !noalias !487
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !487
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noundef nonnull @70, ptr noundef nonnull %i.a) #41
          to label %.noexc3 unwind label %bb.q

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !487
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.p, %.body.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !457
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol14log_compaction16compact_logs_for000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.bf) #37
          to label %.body unwind label %bb.o, !noalias !457

bb.q:                                             ; preds = %.noexc8.i, %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %.thread unwind label %bb.r

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc3, %bb.n, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.r:                                             ; preds = %bb.s, %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.s
  %.pn6 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bi, %bb.s ]
  resume { ptr, i32 } %.pn6

bb.s:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBP_8protocol14log_compaction16compact_logs_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3N_5error5ErrorEEs_00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %2) #37
          to label %.thread unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3n_8snapshotNtB4x_8Snapshot19try_new_with_engine00BW_Es_00ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [120 x i8], align 8               ; 7 uses
  %i.g = alloca [128 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !488, !noalias !491, !nonnull !12, !align !375, !noundef !12 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.k = load i64, ptr %i.j, align 8, !range !100, !alias.scope !493, !noalias !496, !noundef !12
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.r, !noalias !496

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !496
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !493, !noalias !496, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !497
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !496, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !496, !noundef !12
  store ptr %i.r, ptr %i.e, align 8, !noalias !497
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !497
  store ptr %i.e, ptr %i.d, align 8, !noalias !497
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !497
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noundef nonnull @72, ptr noundef nonnull %i.d) #41
          to label %.noexc4.i unwind label %bb.r

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !497
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !496
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.x, align 8, !noalias !501
  store i64 0, ptr %i.c, align 8, !noalias !501
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.y, align 8, !noalias !501
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !501
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !501
  %i.z = load i64, ptr %i.f, align 8, !range !11, !alias.scope !498, !noalias !503, !noundef !12
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !498, !noalias !503, !noundef !12
  store i64 1, ptr %i.c, align 8, !noalias !501
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !501
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !498, !noalias !503, !nonnull !12, !noundef !12 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !498, !noalias !503, !nonnull !12, !align !375, !noundef !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !386, !invariant.load !12, !noalias !501
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = and i64 %i.ak, -16
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ah)
          to label %bb.j unwind label %bb.h, !noalias !504

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !505
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #42
          to label %.body.i unwind label %bb.l, !noalias !503

bb.j:                                             ; preds = %bb.g
  %i.ar = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !510
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #42
          to label %bb.n unwind label %bb.m, !noalias !496

bb.l:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !503
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.ao, %bb.i ], [ %i.ao, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %i.j) #37
          to label %.body unwind label %bb.q, !noalias !496

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !496
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.av = load i64, ptr %i.j, align 8, !range !100, !alias.scope !515, !noalias !518, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.av, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.o, %bb.n
  %i.ax = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !496
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %.noexc7.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !515, !noalias !518, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !521
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !518, !nonnull !12, !noundef !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !518, !noundef !12
  store ptr %i.bc, ptr %i.b, align 8, !noalias !521
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !521
  store ptr %i.b, ptr %i.a, align 8, !noalias !521
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !521
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noundef nonnull @70, ptr noundef nonnull %i.a) #41
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !521
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !491
  unreachable

bb.r:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g) #37
          to label %.body unwind label %bb.q, !noalias !491

bb.s:                                             ; preds = %.noexc8.i, %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %.thread unwind label %bb.t

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc3, %bb.p, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.t:                                             ; preds = %bb.u, %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.u, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bj, %bb.u ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.u:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(128) %2)
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol11checkpoints21create_checkpoint_for00s2_0BW_Es_00ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.3.i.i = alloca [40 x i8], align 8        ; 5 uses
  %i.c = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.46.i.i = alloca [48 x i8], align 16      ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 16               ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12 ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.k = load i64, ptr %.sroa.0.0.copyload, align 8, !range !100, !alias.scope !525, !noalias !528, !noundef !12
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.z, !noalias !528

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !528
end_hunk_0
begin_hunk_1_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4b_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4b_8protocol11checkpoints21create_checkpoint_for00s0_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.o:                                             ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.p:                                             ; preds = %bb.x, %bb.o
  %.val53.i.i = load ptr, ptr %i.i, align 16, !alias.scope !590, !noalias !593 ; 5 uses
  %.val54.i.i = load ptr, ptr %.sroa.6.8..sroa_idx, align 8, !alias.scope !590, !noalias !593, !nonnull !12, !align !375, !noundef !12 ; 5 uses
  %i.ac = load ptr, ptr %.val54.i.i, align 8, !invariant.load !12, !noalias !593 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.i.i) ]
  invoke void %i.ac(ptr noundef nonnull %.val53.i.i)
          to label %bb.r unwind label %bb.t, !noalias !593

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !30, !invariant.load !12, !noalias !593 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !386, !invariant.load !12, !noalias !593
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #39, !noalias !593
  br label %bb.aa

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !30, !invariant.load !12, !noalias !593 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !386, !invariant.load !12, !noalias !593
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #39, !noalias !593
  br label %.body.i

bb.v:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.c, align 8, !range !11, !noalias !592, !noundef !12
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !13, !noalias !592, !noundef !12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.at = load i64, ptr %i.as, align 8, !noalias !592
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #36
          to label %bb.y unwind label %bb.f, !noalias !593

bb.x:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.as, align 8, !noalias !592, !nonnull !12, !noundef !12 ; 2 uses
  %i.av = icmp samesign ugt i64 %i.ar, 6
  call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.au, ptr noundef nonnull align 1 dereferenceable(7) @27, i64 7, i1 false), !noalias !593
  store i64 -9223372036854775722, ptr %0, align 16, !alias.scope !595, !noalias !594
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !595, !noalias !594
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 16, !alias.scope !595, !noalias !594
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 7, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !595, !noalias !594
  br label %bb.p

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !593
  unreachable

.body.i:                                          ; preds = %bb.u, %bb.t, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ai, %bb.t ], [ %i.ai, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %.sroa.0.0.copyload) #37
          to label %.body unwind label %bb.ad, !noalias !584

bb.aa:                                            ; preds = %bb.s, %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !584
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.ax = load i64, ptr %.sroa.0.0.copyload, align 8, !range !100, !alias.scope !596, !noalias !599, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.ax, 2
  br i1 %.not.i.i.i.i, label %.noexc9.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.noexc9.i unwind label %bb.af

.noexc9.i:                                        ; preds = %bb.ab, %bb.aa
  %i.az = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !584
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.ac, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.ac:                                            ; preds = %.noexc9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !596, !noalias !599, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit, label %.noexc10.i

.noexc10.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !602
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !599, !nonnull !12, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !599, !noundef !12
  store ptr %i.be, ptr %i.b, align 8, !noalias !602
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602
  store ptr %i.b, ptr %i.a, align 8, !noalias !602
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !602
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noundef nonnull @70, ptr noundef nonnull %i.a) #41
          to label %.noexc4 unwind label %bb.af

.noexc4:                                          ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !602
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.ad:                                            ; preds = %bb.ae, %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !584
  unreachable

bb.ae:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.bj = extractelement <2 x ptr> %i.k, i64 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = extractelement <2 x ptr> %i.k, i64 0
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s0_0ECs7p2uQeJxui2_9deltalake(ptr %i.bk, ptr nonnull %i.bj) #37
          to label %.body unwind label %bb.ad, !noalias !584

bb.af:                                            ; preds = %.noexc10.i, %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ae, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.af ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #37
          to label %.thread unwind label %bb.ag

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc4, %bb.ac, %.noexc9.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ag:                                            ; preds = %bb.ah, %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.ah
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bn, %bb.ah ]
  resume { ptr, i32 } %.pn7

bb.ah:                                            ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.bp, align 8, !nonnull !12, !align !375, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBP_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBP_6errors15DeltaTableErrorEEs_00ECs7p2uQeJxui2_9deltalake(ptr %.val, ptr nonnull %.val3) #37
          to label %.thread unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB11_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB45_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB5y_14ScanFileStreamINtNtB11_3pin3PinINtNtB4w_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataB1z_ENtNtB11_6marker4SendEL_EEEB7z_9poll_nexts_0Es_00ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(272) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [400 x i8], align 16              ; 7 uses
  %.sroa.05.i.i = alloca [112 x i8], align 8      ; 5 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [264 x i8], align 16              ; 13 uses
  %i.i = alloca [272 x i8], align 8               ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.an

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef nonnull align 8 dereferenceable(272) %2, i64 272, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !606, !noalias !603, !nonnull !12, !align !375, !noundef !12 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.m = load i64, ptr %i.l, align 8, !range !100, !alias.scope !608, !noalias !611, !noundef !12
  %.not.i.i = icmp eq i64 %i.m, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %.noexc3.i unwind label %bb.ak, !noalias !611

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.o = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !611
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !608, !noalias !611, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.r, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !612
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !611, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noalias !611, !noundef !12
  store ptr %i.t, ptr %i.g, align 8, !noalias !612
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.v, ptr %i.w, align 8, !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !612
  store ptr %i.g, ptr %i.f, align 8, !noalias !612
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !612
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noundef nonnull @72, ptr noundef nonnull %i.f) #41
          to label %.noexc4.i unwind label %bb.ak

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !612
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.h, ptr noundef nonnull align 8 dereferenceable(264) %2, i64 264, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !618
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 240 ; 7 uses
  %i.z = load ptr, ptr %i.y, align 16, !alias.scope !616, !noalias !619, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !616, !noalias !619, !nonnull !12, !align !375, !noundef !12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !386, !invariant.load !12, !noalias !618
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, -16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  invoke void @_RNvMs_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateNtB4_6DvInfo20get_selection_vector(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noundef nonnull %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ai)
          to label %bb.g unwind label %bb.f, !noalias !619

bb.f:                                             ; preds = %bb.k, %bb.i, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %.sroa.09.0.i.i = phi i1 [ false, %bb.k ], [ false, %bb.i ], [ true, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i ]
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.x) #37
          to label %bb.ab unwind label %bb.aa, !noalias !619

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ak = load i64, ptr %i.e, align 16, !range !620, !noalias !618, !noundef !12 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.ak, -9223372036854775743
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !618
  br i1 %.not.i6.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.615.0..sroa_idx.i.i, i64 64, i1 false), !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !618
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.420.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !621
  store i64 %i.ak, ptr %0, align 16, !alias.scope !622, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtBO_14ScanFileStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBY_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3t_9poll_nexts_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.h)
          to label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ag, !noalias !611

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !618
  %.sroa.05.88..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i.i, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.88..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !618
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false), !noalias !619
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ao, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.05.i.i, i64 112, i1 false), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store ptr %i.am, ptr %i.ap, align 16, !noalias !618
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.aq = load <2 x i64>, ptr %i.h, align 16, !alias.scope !616, !noalias !619
  store <2 x i64> %i.aq, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !noalias !618
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 393
  store i8 0, ptr %i.ar, align 1, !noalias !618
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio6future8block_on8block_onNCNvMs1_NtNtNtB6_4sync4mpsc7boundedINtBX_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1G_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2D_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(400) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66)
          to label %bb.j unwind label %bb.f, !noalias !619

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !618
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.at = load i64, ptr %i.as, align 16, !range !623, !alias.scope !624, !noalias !618, !noundef !12
  %i.au = icmp eq i64 %i.at, 3
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1s_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.f, !noalias !619

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !618
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !622, !noalias !621
  %i.av = load i64, ptr %i.x, align 16, !range !13, !alias.scope !627, !noalias !619, !noundef !12
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.m, !noalias !619

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body.i.i unwind label %bb.n, !noalias !619

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !619
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.o, !noalias !619

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.ax, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.ba = load ptr, ptr %i.y, align 16, !alias.scope !638, !noalias !619, !nonnull !12, !noundef !12
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !639
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

bb.p:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.aa, !noalias !619

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.bd = load ptr, ptr %i.y, align 16, !alias.scope !646, !noalias !619, !nonnull !12, !noundef !12
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !647
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit30.i.i

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit30.i.i unwind label %bb.r, !noalias !619

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.r, %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %eh.lpad-body.i.i, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.ai) #37
          to label %.body31.i.i unwind label %bb.aa, !noalias !619

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit30.i.i: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.s, !noalias !619

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit30.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.body31.i.i unwind label %bb.t, !noalias !619

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !619
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit30.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.u, !noalias !619

.body31.i.i:                                      ; preds = %bb.u, %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i
  %.pn24.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.bj, %bb.u ], [ %i.bh, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.am) #37
          to label %.body.i unwind label %bb.aa, !noalias !619

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.bk = load ptr, ptr %i.am, align 16, !alias.scope !657, !noalias !619, !nonnull !12, !noundef !12 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 496
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 acq_rel, align 8, !noalias !658
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.v, label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBV_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1S_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5closeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc.i.i.i.i unwind label %bb.w, !noalias !659

.noexc.i.i.i.i:                                   ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bp)
          to label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.w, !noalias !659

bb.w:                                             ; preds = %.noexc.i.i.i.i, %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.br = load ptr, ptr %i.am, align 16, !alias.scope !666, !noalias !619, !nonnull !12, !noundef !12
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !667
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.x, label %.body.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #42
          to label %.body.i unwind label %bb.z, !noalias !619

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.bu = load ptr, ptr %i.am, align 16, !alias.scope !674, !noalias !619, !nonnull !12, !noundef !12
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !675
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.y, label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Cs7p2uQeJxui2_9deltalake.exit.i

bb.y:                                             ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #42
          to label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ag, !noalias !611

bb.z:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !619
  unreachable

bb.aa:                                            ; preds = %bb.af, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit35.i.i, %bb.ac, %.body31.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.p, %bb.f
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !619
  unreachable

bb.ab:                                            ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.bz = load ptr, ptr %i.y, align 16, !alias.scope !682, !noalias !619, !nonnull !12, !noundef !12
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !683
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit35.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit35.i.i unwind label %bb.aa, !noalias !619

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit35.i.i: ; preds = %bb.ac, %bb.ab
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.ai) #37
          to label %bb.ad unwind label %bb.aa, !noalias !619

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit35.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.cc) #37
          to label %bb.ae unwind label %bb.aa, !noalias !619

bb.ae:                                            ; preds = %bb.ad
  br i1 %.sroa.09.0.i.i, label %bb.af, label %.body.i

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.cd) #37
          to label %.body.i unwind label %bb.aa, !noalias !619

bb.ag:                                            ; preds = %bb.y, %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ag, %bb.af, %bb.ae, %bb.x, %bb.w, %.body31.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ce, %bb.ag ], [ %i.bq, %bb.w ], [ %i.bq, %bb.x ], [ %.pn24.i.i, %.body31.i.i ], [ %i.aj, %bb.af ], [ %i.aj, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %i.l) #37
          to label %.body unwind label %bb.aj, !noalias !611

_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.y, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !611
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.cf = load i64, ptr %i.l, align 8, !range !100, !alias.scope !684, !noalias !687, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.cf, 2
  br i1 %.not.i.i.i.i, label %.noexc9.i, label %bb.ah

bb.ah:                                            ; preds = %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Cs7p2uQeJxui2_9deltalake.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg)
          to label %.noexc9.i unwind label %bb.al

.noexc9.i:                                        ; preds = %bb.ah, %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Cs7p2uQeJxui2_9deltalake.exit.i
  %i.ch = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !611
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Cs7p2uQeJxui2_9deltalake.exit

bb.ai:                                            ; preds = %.noexc9.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !684, !noalias !687, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Cs7p2uQeJxui2_9deltalake.exit, label %.noexc10.i

.noexc10.i:                                       ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !690
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !687, !nonnull !12, !noundef !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !noalias !687, !noundef !12
  store ptr %i.cm, ptr %i.b, align 8, !noalias !690
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !noalias !690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !690
  store ptr %i.b, ptr %i.a, align 8, !noalias !690
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !690
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noundef nonnull @70, ptr noundef nonnull %i.a) #41
          to label %.noexc3 unwind label %bb.al

.noexc3:                                          ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !690
  br label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Cs7p2uQeJxui2_9deltalake.exit

bb.aj:                                            ; preds = %bb.ak, %.body.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !603
  unreachable

bb.ak:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtBO_14ScanFileStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBY_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3t_9poll_nexts_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.i) #37
          to label %.body unwind label %bb.aj, !noalias !603

bb.al:                                            ; preds = %.noexc10.i, %bb.ah
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ak, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.al ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #37
          to label %.thread unwind label %bb.am

_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc3, %bb.ai, %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.am:                                            ; preds = %bb.an, %.body
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.an, %.body
  %.pn7 = phi { ptr, i32 } [ %i.ct, %bb.an ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.an:                                            ; preds = %bb.a
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtBO_14ScanFileStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBY_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3t_9poll_nexts_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(272) %2)
          to label %.thread unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2r_8protocol11checkpoints21create_checkpoint_for00s4_0BW_Es_00ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [176 x i8], align 8               ; 13 uses
  %i.g = alloca [184 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull align 8 dereferenceable(184) %2, i64 184, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !691, !noalias !694, !nonnull !12, !align !375, !noundef !12 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.k = load i64, ptr %i.j, align 8, !range !100, !alias.scope !696, !noalias !699, !noundef !12
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.r, !noalias !699

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !699
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !696, !noalias !699, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !700
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !699, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !699, !noundef !12
  store ptr %i.r, ptr %i.e, align 8, !noalias !700
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !700
  store ptr %i.e, ptr %i.d, align 8, !noalias !700
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !700
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noundef nonnull @72, ptr noundef nonnull %i.d) #41
          to label %.noexc4.i unwind label %bb.r

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !700
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !701, !noalias !704, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !701, !noalias !704, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !701, !noalias !704, !nonnull !12, !noundef !12 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !701, !noalias !704, !nonnull !12, !align !375, !noundef !12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !386, !invariant.load !12, !noalias !706
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = and i64 %i.af, -16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !706
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false)
  invoke void @_RNvMs_NtCs8ulvy0Wg6Ot_12delta_kernel10checkpointNtB4_16CheckpointWriter8finalize(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.w, i64 noundef %i.y, ptr noundef nonnull %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.h unwind label %bb.f, !noalias !691

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !707
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.m, !noalias !704

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !706
  %i.an = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !712
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit3.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit3.i.i unwind label %bb.j, !noalias !704

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f) #37
          to label %.body.i unwind label %bb.m, !noalias !704

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit3.i.i: ; preds = %bb.i, %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.k, !noalias !704

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit3.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f)
          to label %.body.i unwind label %bb.l, !noalias !704

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !704
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit3.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f)
          to label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n, !noalias !699

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.j, %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !704
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g, %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f) #37
          to label %.body.i unwind label %bb.m, !noalias !704

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.k, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.aq, %bb.k ], [ %i.ap, %bb.j ], [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs7p2uQeJxui2_9deltalake.exit.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %i.j) #37
          to label %.body unwind label %bb.q, !noalias !699

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !699
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.au = load i64, ptr %i.j, align 8, !range !100, !alias.scope !717, !noalias !720, !noundef !12
  %.not.i.i.i.i = icmp eq i64 %i.au, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.o

bb.o:                                             ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Cs7p2uQeJxui2_9deltalake.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.o, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Cs7p2uQeJxui2_9deltalake.exit.i
  %i.aw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !699
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.p:                                             ; preds = %.noexc7.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !717, !noalias !720, !align !375, !noundef !12 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !723
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !720, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !720, !noundef !12
  store ptr %i.bb, ptr %i.b, align 8, !noalias !723
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !723
  store ptr %i.b, ptr %i.a, align 8, !noalias !723
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !723
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noundef nonnull @70, ptr noundef nonnull %i.a) #41
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !723
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !694
  unreachable

bb.r:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.g) #37
          to label %.body unwind label %bb.q, !noalias !694

bb.s:                                             ; preds = %.noexc8.i, %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %.thread unwind label %bb.t

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc3, %bb.p, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.t:                                             ; preds = %bb.u, %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.u, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bi, %bb.u ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.u:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(184) %2)
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCs7p2uQeJxui2_9deltalake5utils29list_with_delimiter_recursiveANtNtCsjyY8HP3IvQ6_12object_store4path4Pathj1_EB4_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 9 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  store i64 1, ptr %i.f, align 8, !alias.scope !730, !noalias !733
  %.sroa.016.0.copyload1754 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !734 ; 2 uses
  %.not55 = icmp eq i64 %.sroa.016.0.copyload1754, -9223372036854775808
  br i1 %.not55, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.thread24:                                        ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread
end_hunk_1
