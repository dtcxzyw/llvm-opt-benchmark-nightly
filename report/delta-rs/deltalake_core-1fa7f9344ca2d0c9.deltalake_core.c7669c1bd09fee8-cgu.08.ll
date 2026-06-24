inline.NumInlined: 16156
inline.NumDeleted: 5265
begin_hunk_0_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4f_5error5ErrorEE0EB1g_:bb.a
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5x_5error5ErrorEE0E0B2d_EB2y_.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5x_5error5ErrorEE0E0B2d_EB2y_.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !3, !alias.scope !893, !noalias !896, !noundef !4
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !893, !noalias !896 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !893, !noalias !896 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB34_5error5ErrorEE0B6_.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5x_5error5ErrorEE0E0B2d_EB2y_.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !898
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB34_5error5ErrorEE0B6_.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1g_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3E_5error5ErrorEE0EB1g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !3
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !3
  %i.e = select i1 %i.d, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val
  %i.f = trunc nuw i64 %i.e to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8
  %.val14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8
  %i.g = select i1 %i.d, ptr %.val, ptr %.val14   ; 3 uses
  %.val15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8
  %.val16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8
  %i.h = select i1 %i.d, ptr %.val15, ptr %.val16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !899
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !29, !noalias !903, !noundef !4
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit
  ], !prof !33

default.unreachable:                              ; preds = %bb.e
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e
  %i.n = tail call noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.k), !noalias !903 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.n, %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.k, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !range !34, !noalias !906, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 1, !noalias !906
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.s = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !3, !alias.scope !909, !noalias !912, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !909, !noalias !912 ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !909, !noalias !912 ; 2 uses
  br i1 %i.t, label %bb.g, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !914
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread2.i
  %i.y = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !906, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %i.y, 9223372036854775807
  br i1 %i.z, label %bb.l, label %bb.j, !prof !44

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #41
          to label %.noexc.i.i unwind label %bb.k, !noalias !906

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.p, align 8, !noalias !906
  resume { ptr, i32 } %i.aa

bb.l:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %i.y, 1
  store i64 %i.ab, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !906
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.ad = load i64, ptr %i.ac, align 8, !range !48, !alias.scope !915, !noalias !906, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !918
  %i.af = icmp eq i64 %i.ae, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.af, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !3, !alias.scope !919, !noalias !922
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i64 [ %i.ad, %bb.l ], [ %.pre.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !919, !noalias !922 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !919, !noalias !922
  br i1 %i.ah, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !924
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ao = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !906, !noundef !4
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !906
  store i8 1, ptr %i.p, align 8, !noalias !906
  br label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6

_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6: ; preds = %bb.c, %bb.b, %bb.f, %bb.g, %bb.q, %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit
  %.sroa.0.07.ph.sink = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit ], [ %.sroa.0.0.i6.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.0.ph.sink = phi ptr [ %i.as, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit ], [ %i.aj, %bb.q ], [ %i.as, %bb.r ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !3, !alias.scope !925, !noalias !928, !noundef !4
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !925, !noalias !928 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !925, !noalias !928 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_EB2y_.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !930
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0B6_.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB3p_8protocol11checkpoints21create_checkpoint_for000BW_Es_00EB3p_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !931, !noalias !934, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %i.k = load i64, ptr %i.j, align 8, !range !48, !alias.scope !936, !noalias !939, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.p, !noalias !939

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !939
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !936, !noalias !939, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !940
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !939, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !939, !noundef !4
  store ptr %i.r, ptr %i.e, align 8, !noalias !940
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !940
  store ptr %i.e, ptr %i.d, align 8, !noalias !940
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !940
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.d) #43
          to label %.noexc4.i unwind label %bb.p

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !940
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !939
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.w, align 8, !noalias !944
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.y, align 8, !noalias !944
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !944
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !944
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !941, !noalias !946, !noundef !4
  store i64 1, ptr %i.c, align 8, !noalias !944
  store i64 %i.aa, ptr %i.x, align 8, !noalias !944
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !941, !noalias !946, !nonnull !4, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !941, !noalias !946, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !947, !invariant.load !4, !noalias !944
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = and i64 %i.ah, -16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ae)
          to label %bb.h unwind label %bb.f, !noalias !948

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !949
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #42
          to label %.body.i unwind label %bb.j, !noalias !946

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ao = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !954
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #42
          to label %bb.l unwind label %bb.k, !noalias !939

bb.j:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !946
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.al, %bb.g ], [ %i.al, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.j) #40
          to label %.body unwind label %bb.o, !noalias !939

bb.l:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !939
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.as = load i64, ptr %i.j, align 8, !range !48, !alias.scope !959, !noalias !962, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.as, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %.noexc7.i unwind label %bb.q

.noexc7.i:                                        ; preds = %bb.m, %bb.l
  %i.au = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !962
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.n, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00B8_.exit

bb.n:                                             ; preds = %.noexc7.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !959, !noalias !962, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00B8_.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !965
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !962, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !962, !noundef !4
  store ptr %i.az, ptr %i.b, align 8, !noalias !965
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !noalias !965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !965
  store ptr %i.b, ptr %i.a, align 8, !noalias !965
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !965
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.q

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !965
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00B8_.exit

bb.o:                                             ; preds = %bb.p, %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !934
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for000EBS_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.g) #40
          to label %.body unwind label %bb.o, !noalias !934

bb.q:                                             ; preds = %.noexc8.i, %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.q ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #40
          to label %.thread unwind label %bb.r

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3o_5error5ErrorEEs_00B8_.exit: ; preds = %.noexc3, %bb.n, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h)
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for000EBS_(ptr noalias noundef nonnull align 8 dereferenceable(120) %2)
          to label %.thread unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB3p_8protocol14log_compaction16compact_logs_for000BW_Es_00EB3p_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !966, !noalias !969, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.j = load i64, ptr %i.i, align 8, !range !48, !alias.scope !971, !noalias !974, !noundef !4
  %.not.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %.noexc3.i unwind label %bb.p, !noalias !974

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.l = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !974
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !971, !noalias !974, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.o, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !975
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !974, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !974, !noundef !4
  store ptr %i.q, ptr %i.e, align 8, !noalias !975
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !975
  store ptr %i.e, ptr %i.d, align 8, !noalias !975
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !975
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.d) #43
          to label %.noexc4.i unwind label %bb.p

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !975
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !974
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !974
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !976, !noalias !979, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !981
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.v, ptr %i.x, align 8, !noalias !981
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.z, align 8, !noalias !981
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !981
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !981
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !976, !noalias !979, !noundef !4
  store i64 1, ptr %i.c, align 8, !noalias !981
  store i64 %i.ab, ptr %i.y, align 8, !noalias !981
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !976, !noalias !979, !nonnull !4, !noundef !4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !976, !noalias !979, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !947, !invariant.load !4, !noalias !981
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af)
          to label %bb.h unwind label %bb.f, !noalias !982

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !983
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #42
          to label %.body.i unwind label %bb.j, !noalias !979

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ap = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !988
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #42
          to label %bb.l unwind label %bb.k, !noalias !974

bb.j:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !979
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.am, %bb.g ], [ %i.am, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.i) #40
          to label %.body unwind label %bb.o, !noalias !974

bb.l:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !974
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.at = load i64, ptr %i.i, align 8, !range !48, !alias.scope !993, !noalias !996, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.at, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
          to label %.noexc7.i unwind label %bb.q

.noexc7.i:                                        ; preds = %bb.m, %bb.l
  %i.av = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !996
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.n, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00B8_.exit

bb.n:                                             ; preds = %.noexc7.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !993, !noalias !996, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00B8_.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !999
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !996, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !996, !noundef !4
  store ptr %i.ba, ptr %i.b, align 8, !noalias !999
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !noalias !999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !999
  store ptr %i.b, ptr %i.a, align 8, !noalias !999
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !999
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.q

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !999
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00B8_.exit

bb.o:                                             ; preds = %bb.p, %.body.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !969
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol14log_compaction16compact_logs_for000EBS_(ptr noalias noundef align 8 dereferenceable(32) %i.bf) #40
          to label %.body unwind label %bb.o, !noalias !969

bb.q:                                             ; preds = %.noexc8.i, %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #40
          to label %.thread unwind label %bb.r

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for000INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3m_5error5ErrorEEs_00B8_.exit: ; preds = %.noexc3, %bb.n, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h)
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBP_8protocol14log_compaction16compact_logs_for000INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3N_5error5ErrorEEs_00EBP_(ptr noalias noundef align 8 dereferenceable(40) %2) #40
          to label %.thread unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3n_8snapshotNtB4x_8Snapshot19try_new_with_engine00BW_Es_00EB3p_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1000, !noalias !1003, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.k = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1005, !noalias !1008, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.r, !noalias !1008

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1008
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1005, !noalias !1008, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1009
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1008, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !1008, !noundef !4
  store ptr %i.r, ptr %i.e, align 8, !noalias !1009
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !1009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1009
  store ptr %i.e, ptr %i.d, align 8, !noalias !1009
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1009
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.d) #43
          to label %.noexc4.i unwind label %bb.r

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1009
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1008
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.x, align 8, !noalias !1013
  store i64 0, ptr %i.c, align 8, !noalias !1013
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.y, align 8, !noalias !1013
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1013
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1013
  %i.z = load i64, ptr %i.f, align 8, !range !3, !alias.scope !1010, !noalias !1015, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !1010, !noalias !1015, !noundef !4
  store i64 1, ptr %i.c, align 8, !noalias !1013
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !1013
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1010, !noalias !1015, !nonnull !4, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1010, !noalias !1015, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !947, !invariant.load !4, !noalias !1013
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = and i64 %i.ak, -16
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ah)
          to label %bb.j unwind label %bb.h, !noalias !1016

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !1017
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #42
          to label %.body.i unwind label %bb.l, !noalias !1015

bb.j:                                             ; preds = %bb.g
  %i.ar = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !1022
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #42
          to label %bb.n unwind label %bb.m, !noalias !1008

bb.l:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1015
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.ao, %bb.i ], [ %i.ao, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.j) #40
          to label %.body unwind label %bb.q, !noalias !1008

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1008
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.av = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1027, !noalias !1030, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.av, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.o, %bb.n
  %i.ax = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1030
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00B8_.exit

bb.p:                                             ; preds = %.noexc7.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1027, !noalias !1030, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00B8_.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1033
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1030, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !1030, !noundef !4
  store ptr %i.bc, ptr %i.b, align 8, !noalias !1033
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1033
  store ptr %i.b, ptr %i.a, align 8, !noalias !1033
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1033
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1033
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00B8_.exit

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1003
  unreachable

bb.r:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00EBR_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g) #40
          to label %.body unwind label %bb.q, !noalias !1003

bb.s:                                             ; preds = %.noexc8.i, %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #40
          to label %.thread unwind label %bb.t

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00B8_.exit: ; preds = %.noexc3, %bb.p, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h)
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00EBR_(ptr noalias noundef nonnull align 8 dereferenceable(128) %2)
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3n_8snapshotNtB4x_8Snapshot6update00BW_Es_00EB3p_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1034, !noalias !1037, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %i.k = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1039, !noalias !1042, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.r, !noalias !1042

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1042
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1039, !noalias !1042, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1043
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1042, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !1042, !noundef !4
  store ptr %i.r, ptr %i.e, align 8, !noalias !1043
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1043
  store ptr %i.e, ptr %i.d, align 8, !noalias !1043
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1043
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.d) #43
          to label %.noexc4.i unwind label %bb.r

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1043
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1042
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1044, !noalias !1047, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 -9223372036854775808, ptr %i.x, align 8, !noalias !1049
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.w, ptr %i.y, align 8, !noalias !1049
  store i64 0, ptr %i.c, align 8, !noalias !1049
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.z, align 8, !noalias !1049
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1049
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1049
  %i.aa = load i64, ptr %i.f, align 8, !range !3, !alias.scope !1044, !noalias !1047, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !1044, !noalias !1047, !noundef !4
  store i64 1, ptr %i.c, align 8, !noalias !1049
  store i64 %i.ae, ptr %i.ad, align 8, !noalias !1049
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1044, !noalias !1047, !nonnull !4, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1044, !noalias !1047, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !947, !invariant.load !4, !noalias !1049
  %i.al = add nsw i64 %i.ak, -1
  %i.am = and i64 %i.al, -16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ai)
          to label %bb.j unwind label %bb.h, !noalias !1050

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !1051
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #42
          to label %.body.i unwind label %bb.l, !noalias !1047

bb.j:                                             ; preds = %bb.g
  %i.as = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !1056
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #42
          to label %bb.n unwind label %bb.m, !noalias !1042

bb.l:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1047
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.av, %bb.m ], [ %i.ap, %bb.i ], [ %i.ap, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.j) #40
          to label %.body unwind label %bb.q, !noalias !1042

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1042
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %i.aw = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1061, !noalias !1064, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.aw, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.o, %bb.n
  %i.ay = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1064
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB36_5error5ErrorEEs_00B8_.exit

bb.p:                                             ; preds = %.noexc7.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1061, !noalias !1064, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB36_5error5ErrorEEs_00B8_.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1067
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !1064, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1064, !noundef !4
  store ptr %i.bd, ptr %i.b, align 8, !noalias !1067
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !1067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1067
  store ptr %i.b, ptr %i.a, align 8, !noalias !1067
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1067
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1067
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB36_5error5ErrorEEs_00B8_.exit

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1037
  unreachable

bb.r:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot6update00EBR_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) #40
          to label %.body unwind label %bb.q, !noalias !1037

bb.s:                                             ; preds = %.noexc8.i, %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #40
          to label %.thread unwind label %bb.t

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot6update00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB36_5error5ErrorEEs_00B8_.exit: ; preds = %.noexc3, %bb.p, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.t:                                             ; preds = %bb.u, %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %.body, %bb.u
  %.pn6 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bk, %bb.u ]
  resume { ptr, i32 } %.pn6

bb.u:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBN_8snapshotNtB1X_8Snapshot6update00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3x_5error5ErrorEEs_00EBP_(ptr noalias noundef align 8 dereferenceable(48) %2) #40
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1C_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2X_8logstore18get_latest_version00BW_Es_00EB2X_(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(address) dereferenceable(544) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [120 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1068, !noalias !1071, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.k = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1073, !noalias !1076, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.o, !noalias !1076

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1076
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1073, !noalias !1076, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1077
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1076, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !1076, !noundef !4
  store ptr %i.r, ptr %i.e, align 8, !noalias !1077
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !1077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1077
  store ptr %i.e, ptr %i.d, align 8, !noalias !1077
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1077
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.d) #43
          to label %.noexc4.i unwind label %bb.o

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1077
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1078, !noalias !1081, !nonnull !4, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1078, !noalias !1081, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !947, !invariant.load !4, !noalias !1083
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = and i64 %i.ab, -16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !1078, !noalias !1081, !noundef !4
  invoke void @_RINvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB3_10LogSegment17for_table_changesINtNtCsbvkFyIu7lgC_4core6option6OptionyEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(address) dereferenceable(544) %0, ptr noundef nonnull %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, i64 noundef %i.ag, i64 noundef 0, i64 undef)
          to label %bb.h unwind label %bb.f, !noalias !1084

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1085
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #42
          to label %.body.i unwind label %bb.j, !noalias !1081

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1083
  %i.ak = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1090
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00B7_.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #42
          to label %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00B7_.exit.i unwind label %bb.k, !noalias !1076

bb.j:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1081
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.ah, %bb.g ], [ %i.ah, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.j) #40
          to label %.body unwind label %bb.n, !noalias !1076

_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00B7_.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1076
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.ao = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1095, !noalias !1098, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.l

bb.l:                                             ; preds = %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00B7_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %.noexc7.i unwind label %bb.p

.noexc7.i:                                        ; preds = %bb.l, %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00B7_.exit.i
  %i.aq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1098
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00B8_.exit

bb.m:                                             ; preds = %.noexc7.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1095, !noalias !1098, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00B8_.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1101
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1098, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !1098, !noundef !4
  store ptr %i.av, ptr %i.b, align 8, !noalias !1101
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !noalias !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1101
  store ptr %i.b, ptr %i.a, align 8, !noalias !1101
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1101
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.p

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1101
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00B8_.exit

bb.n:                                             ; preds = %bb.o, %.body.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1071
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00EBO_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.g) #40
          to label %.body unwind label %bb.n, !noalias !1071

bb.p:                                             ; preds = %.noexc8.i, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #40
          to label %.thread unwind label %bb.q

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00B8_.exit: ; preds = %.noexc3, %bb.m, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.q:                                             ; preds = %bb.r, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.r, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.r:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00EBO_(ptr noalias noundef nonnull align 8 dereferenceable(120) %2)
          to label %.thread unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol11checkpoints21create_checkpoint_for00s2_0BW_Es_00EB4z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.k = load i64, ptr %.sroa.0.0.copyload, align 8, !range !48, !alias.scope !1105, !noalias !1108, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.z, !noalias !1108

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1108
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1105, !noalias !1108, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1110
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1108, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !1108, !noundef !4
  store ptr %i.r, ptr %i.g, align 8, !noalias !1110
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !1110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1110
  store ptr %i.g, ptr %i.f, align 8, !noalias !1110
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1110
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.f) #43
          to label %.noexc4.i unwind label %bb.z

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1110
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

end_hunk_0
begin_hunk_1_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4b_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4b_8protocol11checkpoints21create_checkpoint_for00s0_0BW_Es_00EB4b_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.p:                                             ; preds = %bb.x, %bb.o
  %.val53.i.i = load ptr, ptr %i.i, align 16, !alias.scope !1170, !noalias !1173 ; 5 uses
  %.val54.i.i = load ptr, ptr %.sroa.6.8..sroa_idx, align 8, !alias.scope !1170, !noalias !1173, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.ac = load ptr, ptr %.val54.i.i, align 8, !invariant.load !4, !noalias !1173 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.i.i) ]
  invoke void %i.ac(ptr noundef nonnull %.val53.i.i)
          to label %bb.r unwind label %bb.t, !noalias !1173

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !1123, !invariant.load !4, !noalias !1173 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !947, !invariant.load !4, !noalias !1173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #33, !noalias !1173
  br label %bb.aa

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !1123, !invariant.load !4, !noalias !1173 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !947, !invariant.load !4, !noalias !1173
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #33, !noalias !1173
  br label %.body.i

bb.v:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.c, align 8, !range !3, !noalias !1172, !noundef !4
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !201, !noalias !1172, !noundef !4 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.w, label %bb.x, !prof !1176

bb.w:                                             ; preds = %bb.v
  %i.at = load i64, ptr %i.as, align 8, !noalias !1172
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #39
          to label %bb.y unwind label %bb.f, !noalias !1173

bb.x:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.as, align 8, !noalias !1172, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = icmp samesign ugt i64 %i.ar, 6
  call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.au, ptr noundef nonnull align 1 dereferenceable(7) @98, i64 7, i1 false), !noalias !1173
  store i64 -9223372036854775722, ptr %0, align 16, !alias.scope !1175, !noalias !1174
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1175, !noalias !1174
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 16, !alias.scope !1175, !noalias !1174
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 7, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1175, !noalias !1174
  br label %bb.p

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1173
  unreachable

.body.i:                                          ; preds = %bb.u, %bb.t, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ai, %bb.t ], [ %i.ai, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.0.0.copyload) #40
          to label %.body unwind label %bb.ad, !noalias !1164

bb.aa:                                            ; preds = %bb.s, %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i), !noalias !1164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1164
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.ax = load i64, ptr %.sroa.0.0.copyload, align 8, !range !48, !alias.scope !1177, !noalias !1180, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.ax, 2
  br i1 %.not.i.i.i.i, label %.noexc9.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.noexc9.i unwind label %bb.af

.noexc9.i:                                        ; preds = %bb.ab, %bb.aa
  %i.az = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1180
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.ac, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00B8_.exit

bb.ac:                                            ; preds = %.noexc9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1177, !noalias !1180, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00B8_.exit, label %.noexc10.i

.noexc10.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1183
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1180, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1180, !noundef !4
  store ptr %i.be, ptr %i.b, align 8, !noalias !1183
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !1183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1183
  store ptr %i.b, ptr %i.a, align 8, !noalias !1183
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1183
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc4 unwind label %bb.af

.noexc4:                                          ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1183
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00B8_.exit

bb.ad:                                            ; preds = %bb.ae, %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1164
  unreachable

bb.ae:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.bj = extractelement <2 x ptr> %i.k, i64 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = extractelement <2 x ptr> %i.k, i64 0
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s0_0EBS_(ptr %i.bk, ptr nonnull %i.bj) #40
          to label %.body unwind label %bb.ad, !noalias !1164

bb.af:                                            ; preds = %.noexc10.i, %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ae, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.af ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.j) #40
          to label %.thread unwind label %bb.ag

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00B8_.exit: ; preds = %.noexc4, %bb.ac, %.noexc9.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.j)
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
  %.val3 = load ptr, ptr %i.bp, align 8, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtBP_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtBP_6errors15DeltaTableErrorEEs_00EBP_(ptr %.val, ptr nonnull %.val3) #40
          to label %.thread unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2G_NtB2G_8Snapshot10tombstones0Es_00EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [112 x i8], align 16              ; 11 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  %i.e = alloca [336 x i8], align 16              ; 7 uses
  %.sroa.1045.i.i = alloca [71 x i8], align 1     ; 5 uses
  %.sroa.13.i.i = alloca [64 x i8], align 16      ; 5 uses
  %i.f = alloca [96 x i8], align 16               ; 14 uses
  %i.g = alloca [96 x i8], align 16               ; 7 uses
  %i.h = alloca [96 x i8], align 16               ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.12.i.i = alloca [7 x i8], align 1        ; 5 uses
  %i.j = alloca [512 x i8], align 16              ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [528 x i8], align 16              ; 4 uses
  %i.n = alloca [544 x i8], align 16              ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.bc

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.n, ptr noundef nonnull align 16 dereferenceable(544) %2, i64 544, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1045.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 528
  %i.q = load ptr, ptr %i.p, align 16, !alias.scope !1187, !noalias !1184, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %i.r = load i64, ptr %i.q, align 8, !range !48, !alias.scope !1189, !noalias !1192, !noundef !4
  %.not.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %.noexc3.i unwind label %bb.ay, !noalias !1192

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.t = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1192
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1189, !noalias !1192, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.w, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1193
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1192, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !1192, !noundef !4
  store ptr %i.y, ptr %i.l, align 8, !noalias !1193
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !1193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1193
  store ptr %i.l, ptr %i.k, align 8, !noalias !1193
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1193
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.k) #43
          to label %.noexc4.i unwind label %bb.ay

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1193
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.m, ptr noundef nonnull align 16 dereferenceable(528) %2, i64 528, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.j, ptr noundef nonnull align 16 dereferenceable(512) %2, i64 512, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 496 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.1090.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.1090.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.11.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.12.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  %.sroa.13.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 512 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1199
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1205
  %i.aj = load ptr, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commitNtB4_12CommitReaderNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !1207

.noexc.i.i:                                       ; preds = %bb.g
  %i.ak = load i64, ptr %i.d, align 16, !range !1118, !noalias !1205, !noundef !4
  %.not3.i.i.i = icmp eq i64 %i.ak, -9223372036854775742
  br i1 %.not3.i.i.i, label %bb.h, label %bb.p

.thread.i.i:                                      ; preds = %bb.f
  store i64 -9223372036854775742, ptr %i.f, align 16, !alias.scope !1200, !noalias !1208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1205
  br label %bb.q

bb.h:                                             ; preds = %.noexc.i.i
  %.val.i.i.i = load ptr, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206, !noundef !4 ; 4 uses
  %.val4.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1203, !noalias !1206 ; 6 uses
  %i.al = icmp eq ptr %.val.i.i.i, null
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i) ]
  %i.am = load ptr, ptr %.val4.i.i.i, align 8, !invariant.load !4, !noalias !1209 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.am(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !1209

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !1123, !invariant.load !4, !noalias !1209 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !947, !invariant.load !4, !noalias !1209
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #33, !noalias !1209
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !1123, !invariant.load !4, !noalias !1209 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !947, !invariant.load !4, !noalias !1209
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #33, !noalias !1209
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %i.d) #40
          to label %.body.i.i unwind label %bb.o, !noalias !1209

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.h
  store ptr null, ptr %i.ac, align 16, !alias.scope !1203, !noalias !1206
  br label %bb.p

bb.o:                                             ; preds = %.body.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1209
  unreachable

.loopexit.i.i:                                    ; preds = %bb.aa, %bb.z, %bb.w, %bb.g
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ad, %bb.ac
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %.loopexit.split-lp.i.i, %.loopexit.i.i, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.as, %.body.i.i.i ], [ %i.bb, %bb.s ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(512) %i.j) #40
          to label %bb.af unwind label %bb.as, !noalias !1207

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !1208
  %.pr.i.i = load i64, ptr %i.f, align 16, !alias.scope !1210, !noalias !1213 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1205
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %.not.i75.i.i = icmp eq i64 %.pr.i.i, -9223372036854775742
  br i1 %.not.i75.i.i, label %bb.q, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i: ; preds = %bb.p
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !1218, !noalias !1219
  %.sroa.1090.0.copyload.i.i = load ptr, ptr %.sroa.1090.0..sroa_idx.i.i, align 16, !alias.scope !1218, !noalias !1219
  %.sroa.11.0.copyload.i.i = load i8, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !1218, !noalias !1219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i, i64 7, i1 false), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  br label %bb.u

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.az = load i64, ptr %i.ae, align 16, !range !1223, !alias.scope !1224, !noalias !1225, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.az, 4
  br i1 %.not.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.r

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  br label %.loopexit115.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1227
  invoke void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 dereferenceable(496) %i.j)
          to label %.noexc.i.i.i unwind label %bb.s, !noalias !1231

.noexc.i.i.i:                                     ; preds = %bb.r
  %i.ba = load i128, ptr %i.c, align 16, !range !1232, !noalias !1227, !noundef !4
  %.not.i.i.i.i.i = icmp eq i128 %i.ba, 2
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread109.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread109.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  br label %.loopexit115.i.i

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.f) #40
          to label %.body.i.i unwind label %bb.t, !noalias !1233

bb.t:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1233
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc.i.i.i
  %.sroa.0.0.copyload88.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 16, !noalias !1234 ; 2 uses
  %.sroa.9.0.copyload89.i.i = load ptr, ptr %.sroa.9.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, align 8, !noalias !1234
  %.sroa.1090.0.copyload91.i.i = load ptr, ptr %.sroa.1090.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, align 16, !noalias !1234
  %.sroa.11.0.copyload92.i.i = load i8, ptr %.sroa.11.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, align 8, !noalias !1234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, i64 7, i1 false), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.13.0..sroa.42.0..sroa_idx.i.i.i.sroa_idx.i.i, i64 64, i1 false), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1199
  %.not.i6.i = icmp eq i64 %.sroa.0.0.copyload88.i.i, -9223372036854775742
  br i1 %.not.i6.i, label %.loopexit115.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i
  %.sroa.0.1108.i.i = phi i64 [ %.pr.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.0.0.copyload88.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.9.2107.i.i = phi ptr [ %.sroa.9.0.copyload.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.9.0.copyload89.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.1090.2106.i.i = phi ptr [ %.sroa.1090.0.copyload.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.1090.0.copyload91.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.11.2105.i.i = phi i8 [ %.sroa.11.0.copyload.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread99.i.i ], [ %.sroa.11.0.copyload92.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1199
  %.not71.i.i = icmp eq i64 %.sroa.0.1108.i.i, -9223372036854775743
  br i1 %.not71.i.i, label %bb.w, label %bb.v

.loopexit115.i.i:                                 ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB30_.exit83.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread109.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtB5_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB18_5error5ErrorEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2B_5ChainNtNtNtB18_10log_reader6commit12CommitReaderINtNtB2D_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Z_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2F_6traits8iterator8Iteratorp4ItemIBJ_IB5a_DNtNtB18_11engine_data10EngineDataEL_EB20_ENtNtB5_6marker4SendEL_ENCNvMNtB18_11log_segmentNtB7G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4k_8adaptors3map14MapSpecialCaseIB35_INtNtNtB2F_7sources4once4OnceB6o_EINtNtB2D_7flatten7FlattenINtB3_8IntoIterB59_EEEINtB8O_18MapSpecialCaseFnOkNCNCB7D_s_00EEB20_ENCB7D_s0_0EEB5J_4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(512) %i.j)
          to label %bb.ah unwind label %bb.ag, !noalias !1207

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1045.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !1192
  %.sroa.1045.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.1045.i.i, i64 7
end_hunk_1
begin_hunk_2_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14spawn_blockingNCNvMB2G_NtB2G_8Snapshot10tombstones0Es_00EB1D_:bb.a
bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #42
          to label %.body.i unwind label %bb.al, !noalias !1207

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.bs = load ptr, ptr %i.ag, align 16, !alias.scope !1265, !noalias !1207, !nonnull !4, !noundef !4
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !1266
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1207
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i: ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #42
          to label %bb.au unwind label %bb.at, !noalias !1192

bb.am:                                            ; preds = %bb.y, %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(512) %i.j)
          to label %bb.an unwind label %bb.ag, !noalias !1207

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1199
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.bw = load ptr, ptr %i.ag, align 16, !alias.scope !1276, !noalias !1207, !nonnull !4, !noundef !4 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 496
  %i.by = atomicrmw sub ptr %i.bx, i64 1 acq_rel, align 8, !noalias !1277
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.ao, label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5closeB2s_(ptr noundef nonnull align 8 %i.ca)
          to label %.noexc.i.i86.i.i unwind label %bb.ap, !noalias !1278

.noexc.i.i86.i.i:                                 ; preds = %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 256
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.cb)
          to label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i unwind label %bb.ap, !noalias !1278

bb.ap:                                            ; preds = %.noexc.i.i86.i.i, %bb.ao
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.cd = load ptr, ptr %i.ag, align 16, !alias.scope !1285, !noalias !1207, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1286
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.aq, label %.body.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #42
          to label %.body.i unwind label %bb.ar, !noalias !1207

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i: ; preds = %.noexc.i.i86.i.i, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.cg = load ptr, ptr %i.ag, align 16, !alias.scope !1293, !noalias !1207, !nonnull !4, !noundef !4
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !1294
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1207
  unreachable

bb.as:                                            ; preds = %bb.af, %.body.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1207
  unreachable

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.at, %bb.aq, %bb.ap, %bb.ak, %bb.aj, %bb.af
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.at ], [ %i.cc, %bb.ap ], [ %i.bo, %bb.aj ], [ %i.bo, %bb.ak ], [ %i.cc, %bb.aq ], [ %.pn.i.i, %bb.af ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.q) #40
          to label %.body unwind label %bb.ax, !noalias !1192

bb.au:                                            ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i84.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2U_.exit.sink.split.i.i, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2v_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1192
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.cm = load i64, ptr %i.q, align 8, !range !48, !alias.scope !1295, !noalias !1298, !noundef !4
  %.not.i.i.i8.i = icmp eq i64 %i.cm, 2
  br i1 %.not.i.i.i8.i, label %.noexc9.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn)
          to label %.noexc9.i unwind label %bb.az

.noexc9.i:                                        ; preds = %bb.av, %bb.au
  %i.co = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1298
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %.noexc9.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1295, !noalias !1298, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not4.i.i.i.i, label %bb.ba, label %.noexc10.i

.noexc10.i:                                       ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1301
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1298, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !1298, !noundef !4
  store ptr %i.ct, ptr %i.b, align 8, !noalias !1301
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !noalias !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1301
  store ptr %i.b, ptr %i.a, align 8, !noalias !1301
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1301
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.az

.noexc3:                                          ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1301
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ay, %.body.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1184
  unreachable

bb.ay:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot10tombstones0EBP_(ptr noalias noundef nonnull align 16 dereferenceable(544) %i.n) #40
          to label %.body unwind label %bb.ax, !noalias !1184

bb.az:                                            ; preds = %.noexc10.i, %bb.av
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ay, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %bb.az ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.ay ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.o) #40
          to label %.thread unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc3, %bb.aw, %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1045.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.bb:                                            ; preds = %bb.bc, %.body
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.bc, %.body
  %.pn7 = phi { ptr, i32 } [ %i.da, %bb.bc ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.bc:                                            ; preds = %bb.a
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBL_8Snapshot10tombstones0EBP_(ptr noalias noundef nonnull align 16 dereferenceable(544) %2)
          to label %.thread unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2G_4scanNtB4U_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_00EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [336 x i8], align 16              ; 7 uses
  %i.d = alloca [96 x i8], align 16               ; 8 uses
  %i.e = alloca [96 x i8], align 16               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 16               ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 20 uses
  %i.k = alloca [80 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.bn

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !1305, !noalias !1302, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.n = load i64, ptr %i.m, align 8, !range !48, !alias.scope !1307, !noalias !1310, !noundef !4
  %.not.i.i = icmp eq i64 %i.n, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %.noexc3.i unwind label %bb.bk, !noalias !1310

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.p = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1310
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1307, !noalias !1310, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.s, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1311
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1310, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noalias !1310, !noundef !4
  store ptr %i.u, ptr %i.i, align 8, !noalias !1311
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !1311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1311
  store ptr %i.i, ptr %i.h, align 8, !noalias !1311
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1311
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.h) #43
          to label %.noexc4.i unwind label %bb.bk

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1311
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1310
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1317
  %i.z = load ptr, ptr %i.j, align 8, !alias.scope !1315, !noalias !1318, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 11 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1315, !noalias !1318, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1315, !noalias !1318, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1315, !noalias !1318, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1317
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !1319
  %i.ah = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9121) 24, i64 noundef range(i64 1, 129) 8) #33, !noalias !1319 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null                 ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.k, !prof !216

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc.i.i unwind label %bb.g, !noalias !1318

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapIBH_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtB1n_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3w_4Scan18scan_metadata_fromB1R_E0ENCB3p_s_0EEB3C_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #40
          to label %.body.i.i unwind label %bb.h, !noalias !1318

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1318
  unreachable

.body.i.i:                                        ; preds = %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.p, %bb.j, %bb.g
  %.pn57.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.p ], [ %i.aj, %bb.g ], [ %i.ao, %bb.j ], [ %i.bq, %bb.v ], [ %i.bq, %bb.w ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ab ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.al = load ptr, ptr %i.j, align 8, !alias.scope !1328, !noalias !1318, !nonnull !4, !noundef !4
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1329
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.i:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ar, !noalias !1318

bb.j:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.k:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1318
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !947, !invariant.load !4, !noalias !1318
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1317
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1315, !noalias !1318, !noundef !4
  invoke void @_RINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6_4Scan18scan_metadata_fromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1J_IB1a_INtNtNtB1e_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4l_4Scan18scan_metadata_fromB2G_E0ENCB4e_s_0EEEB4r_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aw, ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ad, i64 noundef %i.af, ptr noalias noundef nonnull align 8 %i.ah, ptr noundef %i.ay)
          to label %bb.l unwind label %bb.j, !noalias !1318

bb.l:                                             ; preds = %bb.k
  %i.az = load i64, ptr %i.g, align 16, !range !1237, !noalias !1317, !noundef !4 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.az, -9223372036854775743
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1317 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bd = load ptr, ptr %i.bc, align 16, !noalias !1317 ; 13 uses
  br i1 %.not.i6.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.731.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.639.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.639.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.731.0..sroa_idx.i.i, i64 72, i1 false), !noalias !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1317
  store i64 %i.az, ptr %0, align 16, !alias.scope !1331, !noalias !1330
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !alias.scope !1331, !noalias !1330
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bd, ptr %.sroa.538.0..sroa_idx.i.i, align 16, !alias.scope !1331, !noalias !1330
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2r_5error5ErrorEEL_EECs14kWLkQVSKO_14deltalake_core.exit74.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1317
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !4, !noalias !1318, !nonnull !4
  %.sroa.310.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  br label %bb.o

bb.o:                                             ; preds = %bb.ah, %bb.n
  invoke void %i.bf(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.e, ptr noundef nonnull %i.bb)
          to label %bb.q unwind label %.loopexit.i.i, !noalias !1318

.loopexit.i.i:                                    ; preds = %bb.ad, %bb.o
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i.i:                           ; preds = %bb.ag, %bb.af
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2r_5error5ErrorEEL_EECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.bb, ptr nonnull %i.bd) #40
          to label %.body.i.i unwind label %bb.ar, !noalias !1318

bb.q:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.e, align 16, !range !1118, !noalias !1317, !noundef !4 ; 3 uses
  %.not53.i.i = icmp eq i64 %i.bj, -9223372036854775742
  br i1 %.not53.i.i, label %.loopexit98.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1317
  %.not54.i.i = icmp eq i64 %i.bj, -9223372036854775743
  br i1 %.not54.i.i, label %bb.ad, label %bb.x

.loopexit98.i.i:                                  ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB2T_.exit79.i.i
  %i.bk = load ptr, ptr %i.bd, align 8, !invariant.load !4, !noalias !1318 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit98.i.i
  invoke void %i.bk(ptr noundef nonnull %i.bb)
          to label %bb.t unwind label %bb.v, !noalias !1318

bb.t:                                             ; preds = %bb.s, %.loopexit98.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !1123, !invariant.load !4, !noalias !1318 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2r_5error5ErrorEEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !947, !invariant.load !4, !noalias !1318
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef range(i64 1, 0) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #33, !noalias !1318
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2r_5error5ErrorEEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.v:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !1123, !invariant.load !4, !noalias !1318 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.body.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !947, !invariant.load !4, !noalias !1318
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef range(i64 1, 0) %i.bs, i64 noundef range(i64 1, 536870913) %i.bv) #33, !noalias !1318
  br label %.body.i.i

bb.x:                                             ; preds = %bb.r
  %.sroa.551.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.551.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1330
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.450.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.310.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1330
  store i64 %i.bj, ptr %0, align 16, !alias.scope !1331, !noalias !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1317
  %i.bw = load ptr, ptr %i.bd, align 8, !invariant.load !4, !noalias !1318 ; 2 uses
  %.not.i70.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i70.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void %i.bw(ptr noundef nonnull %i.bb)
          to label %bb.z unwind label %bb.ab, !noalias !1318

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !1123, !invariant.load !4, !noalias !1318 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2r_5error5ErrorEEL_EECs14kWLkQVSKO_14deltalake_core.exit74.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !947, !invariant.load !4, !noalias !1318
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef range(i64 1, 0) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #33, !noalias !1318
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB2r_5error5ErrorEEL_EECs14kWLkQVSKO_14deltalake_core.exit74.i.i

bb.ab:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !1123, !invariant.load !4, !noalias !1318 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.body.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !947, !invariant.load !4, !noalias !1318
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef range(i64 1, 0) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #33, !noalias !1318
  br label %.body.i.i

bb.ad:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.310.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1317
end_hunk_2
begin_hunk_3_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB2G_4scanNtB4U_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_00EB1D_:bb.a
  %i.dz = atomicrmw sub ptr %i.dy, i64 1 acq_rel, align 8, !noalias !1418
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ax, label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2o_.exit.i.i91.i.i

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit90.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 128
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5closeB2l_(ptr noundef nonnull align 8 %i.eb)
          to label %.noexc.i.i93.i.i unwind label %bb.ay, !noalias !1419

.noexc.i.i93.i.i:                                 ; preds = %bb.ax
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 256
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ec)
          to label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2o_.exit.i.i91.i.i unwind label %bb.ay, !noalias !1419

bb.ay:                                            ; preds = %.noexc.i.i93.i.i, %bb.ax
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.ee = load ptr, ptr %i.dw, align 8, !alias.scope !1426, !noalias !1318, !nonnull !4, !noundef !4
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !1427
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.az, label %.body.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB2Y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dw) #42
          to label %.body.i unwind label %bb.ba, !noalias !1318

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2o_.exit.i.i91.i.i: ; preds = %.noexc.i.i93.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit90.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.eh = load ptr, ptr %i.dw, align 8, !alias.scope !1434, !noalias !1318, !nonnull !4, !noundef !4
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !1435
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2N_.exit.sink.split.i.i, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1318
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.i, %.body.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.el = load ptr, ptr %i.aa, align 8, !alias.scope !1442, !noalias !1318, !nonnull !4, !noundef !4
  %i.em = atomicrmw sub ptr %i.el, i64 1 release, align 8, !noalias !1443
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit96.i.i

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit96.i.i unwind label %bb.ar, !noalias !1318

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit96.i.i: ; preds = %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  br i1 %i.ai, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit96.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2N_(ptr noalias noundef align 8 dereferenceable(8) %i.eo) #40
          to label %.body.i unwind label %bb.ar, !noalias !1318

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit96.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !1447, !noalias !1318, !noundef !4 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !1448
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ep) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ar, !noalias !1318

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2N_.exit.sink.split.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.az, %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit88.i.i, %bb.ap, %bb.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eu, %bb.bf ], [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.db, %bb.ao ], [ %i.db, %bb.ap ], [ %.pn59.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit88.i.i ], [ %.pn57.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ed, %bb.az ], [ %i.ed, %bb.ay ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.m) #40
          to label %.body unwind label %bb.bj, !noalias !1310

bb.bg:                                            ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2o_.exit.i.i91.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2N_.exit.sink.split.i.i, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB2o_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1310
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.ev = load i64, ptr %i.m, align 8, !range !48, !alias.scope !1453, !noalias !1456, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.ev, 2
  br i1 %.not.i.i.i.i, label %.noexc8.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ew)
          to label %.noexc8.i unwind label %bb.bl

.noexc8.i:                                        ; preds = %bb.bh, %bb.bg
  %i.ex = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1456
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.bi, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB9_4scanNtB2M_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_00Bd_.exit

bb.bi:                                            ; preds = %.noexc8.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !1453, !noalias !1456, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB9_4scanNtB2M_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_00Bd_.exit, label %.noexc9.i

.noexc9.i:                                        ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1459
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !1456, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1456, !noundef !4
  store ptr %i.fc, ptr %i.b, align 8, !noalias !1459
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1459
  store ptr %i.b, ptr %i.a, align 8, !noalias !1459
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1459
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.bl

.noexc3:                                          ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1459
  br label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB9_4scanNtB2M_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_00Bd_.exit

bb.bj:                                            ; preds = %bb.bk, %.body.i
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1302
  unreachable

bb.bk:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBP_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0EBV_(ptr noalias noundef align 8 dereferenceable(72) %i.fh) #40
          to label %.body unwind label %bb.bj, !noalias !1302

bb.bl:                                            ; preds = %.noexc9.i, %bb.bh
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.bk, %bb.bl
  %eh.lpad-body = phi { ptr, i32 } [ %i.fi, %bb.bl ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.l) #40
          to label %.thread unwind label %bb.bm

_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCINvMs1_NtB9_4scanNtB2M_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0Es_00Bd_.exit: ; preds = %.noexc3, %bb.bi, %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bm:                                            ; preds = %bb.bn, %.body
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.bn, %.body
  %.pn7 = phi { ptr, i32 } [ %i.fk, %bb.bn ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.bn:                                            ; preds = %bb.a
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBP_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEs0_0EBV_(ptr noalias noundef align 8 dereferenceable(72) %i.fl)
          to label %.thread unwind label %bb.bm
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB2G_4scanNtB4T_4Scan13scan_metadata0Es_00EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.08.i.i.i.i = alloca [96 x i8], align 16  ; 5 uses
  %.sroa.6.i.i.i.i = alloca [568 x i8], align 8   ; 5 uses
  %i.c = alloca [96 x i8], align 16               ; 9 uses
  %i.d = alloca [336 x i8], align 16              ; 7 uses
  %i.e = alloca [96 x i8], align 16               ; 8 uses
  %i.f = alloca [96 x i8], align 16               ; 7 uses
  %i.g = alloca [2016 x i8], align 16             ; 19 uses
  %i.h = alloca [2016 x i8], align 16             ; 7 uses
  %.sroa.0.i.i.i = alloca [96 x i8], align 16     ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !1463, !noalias !1460, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.o = load i64, ptr %i.n, align 8, !range !48, !alias.scope !1465, !noalias !1468, !noundef !4
  %.not.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %.noexc3.i unwind label %bb.ad, !noalias !1468

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.q = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1468
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1465, !noalias !1468, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1469
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1468, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noalias !1468, !noundef !4
  store ptr %i.v, ptr %i.j, align 8, !noalias !1469
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !1469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1469
  store ptr %i.j, ptr %i.i, align 8, !noalias !1469
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1469
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.i) #43
          to label %.noexc4.i unwind label %bb.ad

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1469
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1468
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1480
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1481
  %i.aa = load ptr, ptr %i.k, align 8, !alias.scope !1482, !noalias !1483, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1482, !noalias !1483, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1482, !noalias !1483, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !947, !invariant.load !4, !noalias !1481
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  invoke void @_RNvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5_4Scan13scan_metadata(ptr noalias noundef nonnull sret([2016 x i8]) align 16 captures(address) dereferenceable(2016) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab, ptr noundef nonnull %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af)
          to label %.noexc.i.i unwind label %bb.w, !noalias !1480

.noexc.i.i:                                       ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.an = load i64, ptr %i.am, align 16, !range !1484, !noalias !1481, !noundef !4 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.h, i64 96, i1 false), !noalias !1481
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i.i.i, i64 96, i1 false), !noalias !1485
  br label %bb.u

bb.g:                                             ; preds = %.noexc.i.i
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1912) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(1912) %.sroa.621.0..sroa_idx.i.i.i, i64 1912, i1 false), !noalias !1481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i.i.i, i64 96, i1 false), !noalias !1481
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx.i.i.i, align 16, !noalias !1481
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 1440 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 1344
  %.sroa.7.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1448
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 512 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 672
  %.sroa.37.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  br label %bb.h

bb.h:                                             ; preds = %bb.t, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1489
  invoke fastcc void @_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5k_EINtB2_7FlattenINtNtB8_6option8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EENCINvYNtNtNtB28_4scan10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCBbc_s_0EIB5l_NtBbk_12ScanMetadataB6n_ENvYB16_B4G_4nextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull align 16 dereferenceable(2016) %i.g) #43
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1483

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.aw = load i64, ptr %i.c, align 16, !range !1118, !noalias !1489, !noundef !4
  %.not19.i.i.i.i = icmp eq i64 %i.aw, -9223372036854775742
  br i1 %.not19.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc40.i.i.i, %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !1481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1489
  br label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %.noexc.i.i.i, %.noexc40.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1489
  %i.ax = load i64, ptr %i.ap, align 16, !range !1484, !alias.scope !1491, !noalias !1494, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 6
  br i1 %.not.i.i.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  store i64 5, ptr %i.ap, align 16, !alias.scope !1496, !noalias !1499
  %.not1.i.i.i.i = icmp eq i64 %i.ax, 5
  br i1 %.not1.i.i.i.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.08.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.aq, i64 96, i1 false), !noalias !1501
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(568) %.sroa.7.0..sroa_idx4.i.i.i.i, i64 568, i1 false), !noalias !1501
  %i.ay = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 16, !range !1502, !alias.scope !1503, !noalias !1501, !noundef !4
  %i.az = icmp eq i64 %i.ay, 5
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2o_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3y_DNtNtB1o_11engine_data10EngineDataEL_ENtNtB1o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1o_11log_segmentNtB6B_10LogSegment24create_checkpoint_streams_0EINtNtNtB2I_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4L_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3x_EEEINtB7J_18MapSpecialCaseFnOkNCNCB6y_s_00EEB5O_ENCB6y_s0_0EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(2016) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.k, !noalias !1506

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtBS_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtBS_10log_reader6commit12CommitReaderINtNtB33_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4h_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB35_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB5s_DNtNtBS_11engine_data10EngineDataEL_ENtNtBS_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtBS_11log_segmentNtB8u_10LogSegment24create_checkpoint_streams_0EINtNtNtB4C_8adaptors3map14MapSpecialCaseIB2Z_INtNtNtB35_7sources4once4OnceB6G_EINtNtB33_7flatten7FlattenINtNtB4_6option8IntoIterB5r_EEEINtB9B_18MapSpecialCaseFnOkNCNCB8r_s_00EEB7I_ENCB8r_s0_0EEE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(152) %i.ar) #40
          to label %.body.i.i.i.i unwind label %bb.l, !noalias !1506

bb.l:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1506
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtBS_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtBS_10log_reader6commit12CommitReaderINtNtB33_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4h_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB35_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB5s_DNtNtBS_11engine_data10EngineDataEL_ENtNtBS_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtBS_11log_segmentNtB8u_10LogSegment24create_checkpoint_streams_0EINtNtNtB4C_8adaptors3map14MapSpecialCaseIB2Z_INtNtNtB35_7sources4once4OnceB6G_EINtNtB33_7flatten7FlattenINtNtB4_6option8IntoIterB5r_EEEINtB9B_18MapSpecialCaseFnOkNCNCB8r_s_00EEB7I_ENCB8r_s0_0EEE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(152) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.m, !noalias !1506

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke fastcc void @_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5k_EINtB2_7FlattenINtNtB8_6option8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EENCINvYNtNtNtB28_4scan10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCBbc_s_0EIB5l_NtBbk_12ScanMetadataB6n_ENvYB16_B4G_4nextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(96) %i.f, ptr noalias noundef align 16 dereferenceable(672) %i.as) #43
          to label %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1483

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.ba, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2016) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.08.i.i.i.i, i64 96, i1 false), !noalias !1501
  store i64 %i.ax, ptr %.sroa.2.0..sroa_idx.i.i.i, align 16, !alias.scope !1486, !noalias !1501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(568) %.sroa.6.i.i.i.i, i64 568, i1 false), !noalias !1501
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1l_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1l_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3Z_DNtNtB20_11engine_data10EngineDataEL_ENtNtB20_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB20_11log_segmentNtB72_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1B_INtNtNtBN_7sources4once4OnceB5c_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB6Z_s_00EEB6f_ENCB6Z_s0_0EENCINvYNtNtNtB20_4scan10log_replay22ScanLogReplayProcessorNtNtB20_10log_replay18LogReplayProcessor20process_actions_iterB1A_E0ENCBbe_s_0EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2016) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.08.i.i.i.i, i64 96, i1 false), !noalias !1501
  store i64 %i.ax, ptr %.sroa.2.0..sroa_idx.i.i.i, align 16, !alias.scope !1486, !noalias !1501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(568) %.sroa.6.i.i.i.i, i64 568, i1 false), !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1489
  invoke fastcc void @_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_3map3MapINtNtB4_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1t_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1t_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemINtNtB8_6result6ResultIB47_DNtNtB28_11engine_data10EngineDataEL_ENtNtB28_5error5ErrorENtNtB8_6marker4SendEL_ENCNvMNtB28_11log_segmentNtB7a_10LogSegment24create_checkpoint_streams_0EINtNtNtB3h_8adaptors3map14MapSpecialCaseIB1J_INtNtNtB6_7sources4once4OnceB5k_EINtB2_7FlattenINtNtB8_6option8IntoIterB46_EEEINtB8i_18MapSpecialCaseFnOkNCNCB77_s_00EEB6n_ENCB77_s0_0EENCINvYNtNtNtB28_4scan10log_replay22ScanLogReplayProcessorNtNtB28_10log_replay18LogReplayProcessor20process_actions_iterB1I_E0ENCBbc_s_0EIB5l_NtBbk_12ScanMetadataB6n_ENvYB16_B4G_4nextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull align 16 dereferenceable(2016) %i.g) #43
          to label %.noexc40.i.i.i unwind label %.loopexit.i.i.i, !noalias !1483

.noexc40.i.i.i:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.bd = load i64, ptr %i.c, align 16, !range !1118, !noalias !1489, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.bd, -9223372036854775742
  br i1 %.not.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB1s_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %._crit_edge.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtB17_3map3MapINtNtB17_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1H_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1H_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7r_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Y_INtNtNtB19_7sources4once4OnceB5B_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB4m_EEEINtB8z_18MapSpecialCaseFnOkNCNCB7o_s_00EEB6E_ENCB7o_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1X_E0ENCBbw_s_0EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.p, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, %bb.h
  %lpad.loopexit46.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.s, %bb.r
  %lpad.loopexit.split-lp47.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit46.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp47.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtBL_6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB27_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB27_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4L_DNtNtB2M_11engine_data10EngineDataEL_ENtNtB2M_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2M_11log_segmentNtB7O_10LogSegment24create_checkpoint_streams_0EINtNtNtB3V_8adaptors3map14MapSpecialCaseIB2n_INtNtNtBN_7sources4once4OnceB5Y_EIBH_IB1n_B4K_EEEINtB8W_18MapSpecialCaseFnOkNCNCB7L_s_00EEB71_ENCB7L_s0_0EENCINvYNtNtNtB2M_4scan10log_replay22ScanLogReplayProcessorNtNtB2M_10log_replay18LogReplayProcessor20process_actions_iterB2m_E0ENCBbn_s_0EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(2016) %i.g) #40
          to label %.body.i.i unwind label %bb.v, !noalias !1483

_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1J_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1J_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4n_DNtNtB2o_11engine_data10EngineDataEL_ENtNtB2o_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2o_11log_segmentNtB7q_10LogSegment24create_checkpoint_streams_0EINtNtNtB3x_8adaptors3map14MapSpecialCaseIB1Z_INtNtNtB9_7sources4once4OnceB5A_EINtNtB7_7flatten7FlattenIBZ_B4m_EEEINtB8y_18MapSpecialCaseFnOkNCNCB7n_s_00EEB6D_ENCB7n_s0_0EENCINvYNtNtNtB2o_4scan10log_replay22ScanLogReplayProcessorNtNtB2o_10log_replay18LogReplayProcessor20process_actions_iterB1Y_E0ENCBbi_s_0EEEINtB5_8FuseImplBY_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %i.be = load i64, ptr %i.f, align 16, !range !1118, !noalias !1481, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.be, -9223372036854775742
  br i1 %.not.i.i.i, label %.loopexit49.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1481
  %.not37.i.i.i = icmp eq i64 %i.be, -9223372036854775743
  br i1 %.not37.i.i.i, label %bb.p, label %bb.o

.loopexit49.i.i.i:                                ; preds = %_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtNtB7_6filter6FilterINtNtB7_3map3MapINtNtB7_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB1W_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB1W_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB4A_DNtNtB2B_11engine_data10EngineDataEL_ENtNtB2B_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB2B_11log_segmentNtB7D_10LogSegment24create_checkpoint_streams_0EINtNtNtB3K_8adaptors3map14MapSpecialCaseIB2c_INtNtNtB9_7sources4once4OnceB5N_EINtB5_7FlattenIB1c_B4z_EEEINtB8L_18MapSpecialCaseFnOkNCNCB7A_s_00EEB6Q_ENCB7A_s0_0EENCINvYNtNtNtB2B_4scan10log_replay22ScanLogReplayProcessorNtNtB2B_10log_replay18LogReplayProcessor20process_actions_iterB2b_E0ENCBbm_s_0EEB1z_EB59_4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB2T_.exit45.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtBL_6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB27_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB27_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4L_DNtNtB2M_11engine_data10EngineDataEL_ENtNtB2M_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2M_11log_segmentNtB7O_10LogSegment24create_checkpoint_streams_0EINtNtNtB3V_8adaptors3map14MapSpecialCaseIB2n_INtNtNtBN_7sources4once4OnceB5Y_EIBH_IB1n_B4K_EEEINtB8W_18MapSpecialCaseFnOkNCNCB7L_s_00EEB71_ENCB7L_s0_0EENCINvYNtNtNtB2M_4scan10log_replay22ScanLogReplayProcessorNtNtB2M_10log_replay18LogReplayProcessor20process_actions_iterB2m_E0ENCBbn_s_0EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(2016) %i.g)
          to label %.noexc1.i.i unwind label %bb.w, !noalias !1507

.noexc1.i.i:                                      ; preds = %.loopexit49.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1481
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !1508, !noalias !1485
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %.sroa.533.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.533.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !1485
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.432.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.37.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !1485
  store i64 %i.be, ptr %0, align 16, !alias.scope !1508, !noalias !1485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1481
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtB4_6option8IntoIterINtNtBL_6filter6FilterINtNtBL_3map3MapINtNtBL_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIB27_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB27_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB4L_DNtNtB2M_11engine_data10EngineDataEL_ENtNtB2M_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB2M_11log_segmentNtB7O_10LogSegment24create_checkpoint_streams_0EINtNtNtB3V_8adaptors3map14MapSpecialCaseIB2n_INtNtNtBN_7sources4once4OnceB5Y_EIBH_IB1n_B4K_EEEINtB8W_18MapSpecialCaseFnOkNCNCB7L_s_00EEB71_ENCB7L_s0_0EENCINvYNtNtNtB2M_4scan10log_replay22ScanLogReplayProcessorNtNtB2M_10log_replay18LogReplayProcessor20process_actions_iterB2m_E0ENCBbn_s_0EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(2016) %i.g)
          to label %.noexc2.i.i unwind label %bb.w, !noalias !1507

.noexc2.i.i:                                      ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1481
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.37.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !1481
  store ptr %i.at, ptr %i.au, align 16, !noalias !1481
  store i64 -9223372036854775711, ptr %i.d, align 16, !noalias !1481
  store i8 0, ptr %i.av, align 8, !noalias !1481
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio6future8block_on8block_onNCNvMs1_NtNtNtB6_4sync4mpsc7boundedINtBX_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB36_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !1483

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1481
  %i.bf = load i64, ptr %i.e, align 16, !range !1238, !noalias !1481, !noundef !4
  switch i64 %i.bf, label %bb.s [
    i64 -9223372036854775710, label %bb.t
    i64 -9223372036854775711, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB2T_.exit45.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1483

bb.s:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB2T_.exit45.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1483

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1481
  br label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB2T_.exit45.i.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1481
  br label %.loopexit49.i.i.i

bb.u:                                             ; preds = %.noexc2.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %bb.x

bb.v:                                             ; preds = %.body.i.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1483
  unreachable

bb.w:                                             ; preds = %bb.o, %.loopexit49.i.i.i, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.w, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bi, %bb.w ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBO_4Scan13scan_metadata0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #40
          to label %.body.i unwind label %bb.y, !noalias !1507

bb.x:                                             ; preds = %bb.u, %.noexc1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1480
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBO_4Scan13scan_metadata0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RNvYNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBa_4Scan13scan_metadata0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_.exit.i unwind label %bb.z, !noalias !1468

bb.y:                                             ; preds = %.body.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1507
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bk, %bb.z ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.n) #40
          to label %.body unwind label %bb.ac, !noalias !1468

_RNvYNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBa_4Scan13scan_metadata0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_.exit.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1468
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.bl = load i64, ptr %i.n, align 8, !range !48, !alias.scope !1509, !noalias !1512, !noundef !4
  %.not.i.i.i7.i = icmp eq i64 %i.bl, 2
  br i1 %.not.i.i.i7.i, label %.noexc8.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvYNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBa_4Scan13scan_metadata0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm)
          to label %.noexc8.i unwind label %bb.ae

.noexc8.i:                                        ; preds = %bb.aa, %_RNvYNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBa_4Scan13scan_metadata0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_.exit.i
  %i.bn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1512
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.ab, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB9_4scanNtB2L_4Scan13scan_metadata0Es_00Bd_.exit

bb.ab:                                            ; preds = %.noexc8.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !1509, !noalias !1512, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB9_4scanNtB2L_4Scan13scan_metadata0Es_00Bd_.exit, label %.noexc9.i

.noexc9.i:                                        ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1515
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !1512, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !1512, !noundef !4
  store ptr %i.bs, ptr %i.b, align 8, !noalias !1515
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !noalias !1515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1515
  store ptr %i.b, ptr %i.a, align 8, !noalias !1515
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1515
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.ae

.noexc3:                                          ; preds = %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1515
  br label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB9_4scanNtB2L_4Scan13scan_metadata0Es_00Bd_.exit

bb.ac:                                            ; preds = %bb.ad, %.body.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1460
  unreachable

bb.ad:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBO_4Scan13scan_metadata0EBU_(ptr noalias noundef align 8 dereferenceable(32) %i.bx) #40
          to label %.body unwind label %bb.ac, !noalias !1460

bb.ae:                                            ; preds = %.noexc9.i, %bb.aa
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ad, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.ae ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m) #40
          to label %.thread unwind label %bb.af

_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE14spawn_blockingNCNvMs1_NtB9_4scanNtB2L_4Scan13scan_metadata0Es_00Bd_.exit: ; preds = %.noexc3, %bb.ab, %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.af:                                            ; preds = %bb.ag, %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.ag, %.body
  %.pn7 = phi { ptr, i32 } [ %i.ca, %bb.ag ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.ag:                                            ; preds = %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBO_4Scan13scan_metadata0EBU_(ptr noalias noundef align 8 dereferenceable(32) %i.cb)
          to label %.thread unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvMNtNtNtB1D_6kernel8snapshot6streamINtB2E_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtB11_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB45_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtB1D_16delta_datafusion14table_provider4next4scan6replayINtB5y_14ScanFileStreamINtNtB11_3pin3PinINtNtB4w_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataB1z_ENtNtB11_6marker4SendEL_EEEB7z_9poll_nexts_0Es_00EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(272) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1519, !noalias !1516, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.m = load i64, ptr %i.l, align 8, !range !48, !alias.scope !1521, !noalias !1524, !noundef !4
  %.not.i.i = icmp eq i64 %i.m, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %.noexc3.i unwind label %bb.ak, !noalias !1524

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.o = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1524
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1521, !noalias !1524, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.r, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1525
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1524, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noalias !1524, !noundef !4
  store ptr %i.t, ptr %i.g, align 8, !noalias !1525
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.v, ptr %i.w, align 8, !noalias !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1525
  store ptr %i.g, ptr %i.f, align 8, !noalias !1525
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1525
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.f) #43
          to label %.noexc4.i unwind label %bb.ak

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1525
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.h, ptr noundef nonnull align 8 dereferenceable(264) %2, i64 264, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1531
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 240 ; 7 uses
  %i.z = load ptr, ptr %i.y, align 16, !alias.scope !1529, !noalias !1532, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1529, !noalias !1532, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !947, !invariant.load !4, !noalias !1531
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, -16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  invoke void @_RNvMs_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateNtB4_6DvInfo20get_selection_vector(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noundef nonnull %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ai)
          to label %bb.g unwind label %bb.f, !noalias !1532

bb.f:                                             ; preds = %bb.k, %bb.i, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %.sroa.09.0.i.i = phi i1 [ false, %bb.k ], [ false, %bb.i ], [ true, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i ]
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.x) #40
          to label %bb.ab unwind label %bb.aa, !noalias !1532

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ak = load i64, ptr %i.e, align 16, !range !1237, !noalias !1531, !noundef !4 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.ak, -9223372036854775743
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !1531
  br i1 %.not.i6.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.615.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1531
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.420.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1533
  store i64 %i.ak, ptr %0, align 16, !alias.scope !1534, !noalias !1533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtBO_14ScanFileStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBY_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3t_9poll_nexts_0EBY_(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.h)
          to label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Bh_.exit.i unwind label %bb.ag, !noalias !1524

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1531
  %.sroa.05.88..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i.i, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.88..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1531
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 88, i1 false), !noalias !1532
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ao, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.05.i.i, i64 112, i1 false), !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store ptr %i.am, ptr %i.ap, align 16, !noalias !1531
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.aq = load <2 x i64>, ptr %i.h, align 16, !alias.scope !1529, !noalias !1532
  store <2 x i64> %i.aq, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !noalias !1531
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 393
  store i8 0, ptr %i.ar, align 1, !noalias !1531
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio6future8block_on8block_onNCNvMs1_NtNtNtB6_4sync4mpsc7boundedINtBX_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1G_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2D_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3L_(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(400) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272)
          to label %bb.j unwind label %bb.f, !noalias !1532

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1531
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.at = load i64, ptr %i.as, align 16, !range !1535, !alias.scope !1536, !noalias !1531, !noundef !4
  %i.au = icmp eq i64 %i.at, 3
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB3x_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1s_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB2z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB3x_.exit.i.i unwind label %bb.f, !noalias !1532

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB3x_.exit.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1531
  store i64 -9223372036854775711, ptr %0, align 16, !alias.scope !1534, !noalias !1533
  %i.av = load i64, ptr %i.x, align 16, !range !201, !alias.scope !1539, !noalias !1532, !noundef !4
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB3x_.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.m, !noalias !1532

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.body.i.i unwind label %bb.n, !noalias !1532

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1532
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.o, !noalias !1532

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.ax, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %i.ba = load ptr, ptr %i.y, align 16, !alias.scope !1550, !noalias !1532, !nonnull !4, !noundef !4
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !1551
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.p:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.aa, !noalias !1532

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5error9SendErrorIBH_TNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2q_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEB3x_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.bd = load ptr, ptr %i.y, align 16, !alias.scope !1558, !noalias !1532, !nonnull !4, !noundef !4
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !1559
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit30.i.i

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs14kWLkQVSKO_14deltalake_core.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit30.i.i unwind label %bb.r, !noalias !1532

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.r, %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %eh.lpad-body.i.i, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai) #40
          to label %.body31.i.i unwind label %bb.aa, !noalias !1532

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit30.i.i: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.s, !noalias !1532

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit30.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %.body31.i.i unwind label %bb.t, !noalias !1532

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1532
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit30.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.u, !noalias !1532

.body31.i.i:                                      ; preds = %bb.u, %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pn24.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bj, %bb.u ], [ %i.bh, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3r_(ptr noalias noundef align 8 dereferenceable(8) %i.am) #40
          to label %.body.i unwind label %bb.aa, !noalias !1532

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  %i.bk = load ptr, ptr %i.am, align 16, !alias.scope !1569, !noalias !1532, !nonnull !4, !noundef !4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 496
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 acq_rel, align 8, !noalias !1570
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.v, label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_.exit.i.i.i.i

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  invoke void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB2_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBV_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1S_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5closeB2Z_(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc.i.i.i.i unwind label %bb.w, !noalias !1571

.noexc.i.i.i.i:                                   ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bp)
          to label %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_.exit.i.i.i.i unwind label %bb.w, !noalias !1571

bb.w:                                             ; preds = %.noexc.i.i.i.i, %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.br = load ptr, ptr %i.am, align 16, !alias.scope !1578, !noalias !1532, !nonnull !4, !noundef !4
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !1579
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.x, label %.body.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #42
          to label %.body.i unwind label %bb.z, !noalias !1532

_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.bu = load ptr, ptr %i.am, align 16, !alias.scope !1586, !noalias !1532, !nonnull !4, !noundef !4
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !1587
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.y, label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Bh_.exit.i

bb.y:                                             ; preds = %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan4ChanINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1y_6option6OptionINtNtB7_3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBL_7bounded9SemaphoreEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #42
          to label %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Bh_.exit.i unwind label %bb.ag, !noalias !1524

bb.z:                                             ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1532
  unreachable

bb.aa:                                            ; preds = %bb.af, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit35.i.i, %bb.ac, %.body31.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.p, %bb.f
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1532
  unreachable

bb.ab:                                            ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1588)
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %i.bz = load ptr, ptr %i.y, align 16, !alias.scope !1594, !noalias !1532, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !1595
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit35.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit35.i.i unwind label %bb.aa, !noalias !1532

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit35.i.i: ; preds = %bb.ac, %bb.ab
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai) #40
          to label %bb.ad unwind label %bb.aa, !noalias !1532

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit35.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2k_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3r_(ptr noalias noundef align 8 dereferenceable(8) %i.cc) #40
          to label %bb.ae unwind label %bb.aa, !noalias !1532

bb.ae:                                            ; preds = %bb.ad
  br i1 %.sroa.09.0.i.i, label %bb.af, label %.body.i

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cd) #40
          to label %.body.i unwind label %bb.aa, !noalias !1532

bb.ag:                                            ; preds = %bb.y, %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ag, %bb.af, %bb.ae, %bb.x, %bb.w, %.body31.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ce, %bb.ag ], [ %i.bq, %bb.w ], [ %i.bq, %bb.x ], [ %.pn24.i.i, %.body31.i.i ], [ %i.aj, %bb.af ], [ %i.aj, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.l) #40
          to label %.body unwind label %bb.aj, !noalias !1524

_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Bh_.exit.i: ; preds = %bb.y, %_RNvXs9_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2TxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB32_.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1524
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  %i.cf = load i64, ptr %i.l, align 8, !range !48, !alias.scope !1596, !noalias !1599, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.cf, 2
  br i1 %.not.i.i.i.i, label %.noexc9.i, label %bb.ah

bb.ah:                                            ; preds = %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Bh_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg)
          to label %.noexc9.i unwind label %bb.al

.noexc9.i:                                        ; preds = %bb.ah, %_RNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB7_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBh_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB32_9poll_nexts_0Bh_.exit.i
  %i.ch = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1599
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Bd_.exit

bb.ai:                                            ; preds = %.noexc9.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1596, !noalias !1599, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Bd_.exit, label %.noexc10.i

.noexc10.i:                                       ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1602
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !1599, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !noalias !1599, !noundef !4
  store ptr %i.cm, ptr %i.b, align 8, !noalias !1602
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !noalias !1602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1602
  store ptr %i.b, ptr %i.a, align 8, !noalias !1602
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1602
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.al

.noexc3:                                          ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1602
  br label %_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Bd_.exit

bb.aj:                                            ; preds = %bb.ak, %.body.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1516
  unreachable

bb.ak:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtBO_14ScanFileStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBY_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3t_9poll_nexts_0EBY_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.i) #40
          to label %.body unwind label %bb.aj, !noalias !1516

bb.al:                                            ; preds = %.noexc10.i, %bb.ah
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ak, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.al ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.j) #40
          to label %.thread unwind label %bb.am

_RNCNCINvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB7_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEEE14spawn_blockingNCNvXs0_NtNtNtNtNtBd_16delta_datafusion14table_provider4next4scan6replayINtB3F_14ScanFileStreamINtNtB21_3pin3PinINtNtB2D_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB21_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBd_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEEB5F_9poll_nexts_0Es_00Bd_.exit: ; preds = %.noexc3, %bb.ai, %.noexc9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.j)
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtBO_14ScanFileStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBY_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3t_9poll_nexts_0EBY_(ptr noalias noundef nonnull align 8 dereferenceable(272) %2)
          to label %.thread unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB2r_8protocol11checkpoints21create_checkpoint_for00s4_0BW_Es_00EB2r_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1603, !noalias !1606, !nonnull !4, !align !17, !noundef !4 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  %i.k = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1608, !noalias !1611, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.r, !noalias !1611

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1611
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1608, !noalias !1611, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1612
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1611, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !1611, !noundef !4
  store ptr %i.r, ptr %i.e, align 8, !noalias !1612
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !1612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1612
  store ptr %i.e, ptr %i.d, align 8, !noalias !1612
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1612
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @329, ptr noundef nonnull %i.d) #43
          to label %.noexc4.i unwind label %bb.r

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1612
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1613, !noalias !1616, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1613, !noalias !1616, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1613, !noalias !1616, !nonnull !4, !noundef !4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1613, !noalias !1616, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !947, !invariant.load !4, !noalias !1618
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = and i64 %i.af, -16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1618
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false)
  invoke void @_RNvMs_NtCs8ulvy0Wg6Ot_12delta_kernel10checkpointNtB4_16CheckpointWriter8finalize(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.w, i64 noundef %i.y, ptr noundef nonnull %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.h unwind label %bb.f, !noalias !1603

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !1619
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.m, !noalias !1616

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1618
  %i.an = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !1624
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit3.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit3.i.i unwind label %bb.j, !noalias !1616

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f) #40
          to label %.body.i unwind label %bb.m, !noalias !1616

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit3.i.i: ; preds = %bb.i, %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.k, !noalias !1616

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit3.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f)
          to label %.body.i unwind label %bb.l, !noalias !1616

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1616
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit3.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f)
          to label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Bb_.exit.i unwind label %bb.n, !noalias !1611

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.j, %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1616
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g, %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.f) #40
          to label %.body.i unwind label %bb.m, !noalias !1616

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.k, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.aq, %bb.k ], [ %i.ap, %bb.j ], [ %i.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.j) #40
          to label %.body unwind label %bb.q, !noalias !1611

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Bb_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1611
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.au = load i64, ptr %i.j, align 8, !range !48, !alias.scope !1629, !noalias !1632, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.au, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.o

bb.o:                                             ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Bb_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.o, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0Bb_.exit.i
  %i.aw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1632
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00B8_.exit

bb.p:                                             ; preds = %.noexc7.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !1629, !noalias !1632, !align !17, !noundef !4 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00B8_.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1635
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1632, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1632, !noundef !4
  store ptr %i.bb, ptr %i.b, align 8, !noalias !1635
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !noalias !1635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1635
  store ptr %i.b, ptr %i.a, align 8, !noalias !1635
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !1635
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 21, ptr noundef nonnull @327, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1635
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00B8_.exit

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1606
  unreachable

bb.r:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0EBS_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.g) #40
          to label %.body unwind label %bb.q, !noalias !1606

bb.s:                                             ; preds = %.noexc8.i, %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h) #40
          to label %.thread unwind label %bb.t

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s4_0INtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEs_00B8_.exit: ; preds = %.noexc3, %bb.p, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.h)
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00s4_0EBS_(ptr noalias noundef nonnull align 8 dereferenceable(184) %2)
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !947, !invariant.load !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #33
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1X_6marker4SendEL_ENtNtNtB1X_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit4.i
end_hunk_3
begin_hunk_4_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core12data_catalog7storageNtB7_21ListingSchemaProviderNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProvider5table0Bb_:bb.a
bb.ap:                                            ; preds = %bb.aq, %bb.an
  %.pn8 = phi { ptr, i32 } [ %i.az, %bb.aq ], [ %i.ax, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body28

bb.aq:                                            ; preds = %bb.ao
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ao
  %i.ba = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ay, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.ba, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.bb, ptr %i.bd, align 16
  br label %bb.av

.body28:                                          ; preds = %bb.bc, %bb.bb, %bb.au, %bb.ap
  %.pn11 = phi { ptr, i32 } [ %.pn8, %bb.ap ], [ %i.bj, %bb.au ], [ %i.bw, %bb.bb ], [ %i.bw, %bb.bc ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %i.be) #40
          to label %bb.at unwind label %bb.w

bb.as:                                            ; preds = %bb.bh, %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.at:                                            ; preds = %bb.be, %.body28, %bb.aa
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.aa ], [ %i.cf, %bb.be ], [ %.pn11, %.body28 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !range !34, !noundef !4
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.bj, label %bb.bi

bb.au:                                            ; preds = %bb.av
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val20 = load ptr, ptr %i.bk, align 8
  %.val21 = load ptr, ptr %i.bl, align 16, !nonnull !4, !align !17, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val20, ptr nonnull %.val21) #40
          to label %.body28 unwind label %bb.w

bb.av:                                            ; preds = %bb.d, %bb.ar
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.d ], [ %i.bb, %bb.ar ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.d ], [ %i.ba, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30853)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !4, !noalias !30886, !nonnull !4
  invoke void %i.bn(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.au, !inline_history !30887

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.av
  %i.bo = load i64, ptr %i.d, align 8, !range !2144, !noundef !4 ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 21
  br i1 %i.bp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 21, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %common.ret

bb.ax:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.bk, align 8            ; 5 uses
  %.val19 = load ptr, ptr %i.bl, align 16, !nonnull !4, !align !17, !noundef !4 ; 5 uses
  %i.bq = load ptr, ptr %.val19, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bq(ptr noundef nonnull %.val)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.br = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bu = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !947, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bs, i64 noundef range(i64 1, 536870913) %i.bv) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.ay
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !1123, !invariant.load !4 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.body28, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ca = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !947, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #33
  br label %.body28

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ba, %bb.az
  %.not.i30 = icmp eq i64 %i.bo, 20
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %.not.i30, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.3.0.copyload, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.5.0.copyload, ptr %i.ce, align 8
  store i64 20, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %i.cc)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bd
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.bf:                                            ; preds = %bb.bd
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.o, %bb.as, %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  br label %common.ret

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %i.bo, ptr %i.m, align 8, !alias.scope !30888
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.251.0..sroa_idx, align 8, !alias.scope !30888
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.5.0.copyload, ptr %.sroa.352.0..sroa_idx, align 8, !alias.scope !30888
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEBK_(ptr noalias noundef align 8 dereferenceable(120) %i.cc)
          to label %bb.as unwind label %bb.be

bb.bi:                                            ; preds = %bb.bj, %bb.at
  store i8 0, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.bj:                                            ; preds = %bb.at
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #40
          to label %bb.bi unwind label %bb.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB7_15DefaultLogStoreNtB9_8LogStore17read_commit_entry0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9179.i.i = alloca [32 x i8], align 16    ; 7 uses
  %.sroa.10180.i.i = alloca [32 x i8], align 16   ; 6 uses
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3.i.i = alloca [32 x i8], align 8        ; 7 uses
  %.sroa.5135.i.i = alloca [32 x i8], align 8     ; 5 uses
  %i.aa = alloca [72 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 14 uses
  %i.ac = alloca [192 x i8], align 8              ; 6 uses
  %.sroa.4.i = alloca [32 x i8], align 16         ; 7 uses
  %.sroa.5.i = alloca [32 x i8], align 16         ; 7 uses
  %.sroa.6.i = alloca [16 x i8], align 16         ; 6 uses
  %i.ad = alloca [96 x i8], align 16              ; 10 uses
  %i.ae = alloca [952 x i8], align 8              ; 7 uses
  %i.af = alloca [912 x i8], align 8              ; 13 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.1019 = alloca [32 x i8], align 16        ; 2 uses
  %.sroa.1120 = alloca [32 x i8], align 16        ; 2 uses
  %.sroa.12 = alloca [16 x i8], align 16          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !range !3169, !noundef !4
  switch i8 %i.aq, label %default.unreachable34 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.i
  ]

default.unreachable34:                            ; preds = %bb.bc, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 8, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30892)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !30892, !nonnull !4, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !30892, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ay = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !30892
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.av, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ax, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !947, !invariant.load !4
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = and i64 %i.be, -16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bh, ptr %i.bi, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ax, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.at, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 106
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 106
  br label %bb.l

bb.d:                                             ; preds = %bb.ft, %.body
  %.pn2 = phi { ptr, i32 } [ %i.ng, %bb.ft ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30895)
  call void @llvm.experimental.noalias.scope.decl(metadata !30898)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !30901, !nonnull !4, !noundef !4
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !30901
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.fx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e, %bb.fw
  %.pn4 = phi { ptr, i32 } [ %i.nl, %bb.fw ], [ %.pn2, %bb.d ], [ %.pn2, %bb.e ]
  store i8 2, ptr %i.ap, align 8
  resume { ptr, i32 } %.pn4

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #41
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #41
  unreachable

bb.h:                                             ; preds = %bb.as, %bb.ar
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.h
  %i.bq = phi ptr [ %i.br, %bb.h ], [ %i.eg, %bb.aq ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.h ], [ %.pn24.i, %bb.aq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0EBM_(ptr noundef nonnull align 8 %i.bq) #40
          to label %bb.d unwind label %bb.fx

bb.i:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 106
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !16574, !noalias !30902
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 106 ; 3 uses
  switch i8 %.pre, label %default.unreachable34 [
    i8 0, label %bb.l
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !30902
  br label %bb.at

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !30902
  br label %bb.bc

bb.l:                                             ; preds = %.thread, %bb.i
  %i.bt = phi ptr [ %i.bk, %.thread ], [ %i.bs, %bb.i ] ; 6 uses
  %i.bu = phi ptr [ %i.bj, %.thread ], [ %i.br, %bb.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  store i8 0, ptr %i.bv, align 8, !noalias !30902
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 3 uses
  store i8 0, ptr %i.bw, align 1, !noalias !30902
  %i.bx = load ptr, ptr %i.bu, align 8, !noalias !30902, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !30902, !nonnull !4, !align !17, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !30902, !noundef !4
  store i64 %i.cc, ptr %i.ca, align 8, !noalias !30902
  %i.cd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30902
  %i.ce = icmp ult i64 %i.cd, 3
  br i1 %i.ce, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.cf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, i64 16) monotonic, align 8, !noalias !30902 ; 2 uses
  %i.cg = icmp ult i8 %i.cf, 3
  br i1 %i.cg, label %bb.p, label %bb.n, !prof !25908

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE) #42
          to label %bb.p unwind label %bb.o, !noalias !30906

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i = phi i8 [ %i.cf, %bb.m ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cj = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.cj, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr @_RNvNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry010___CALLSITE, align 8, !noalias !30902, !nonnull !4, !align !17, !noundef !4
  %i.cl = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, i8 noundef %.sroa.0.0.i.i)
          to label %bb.s unwind label %bb.r, !noalias !30906

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.s:                                             ; preds = %bb.q
  br i1 %i.cl, label %bb.af, label %bb.v

bb.t:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !30902
  br label %bb.aq

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.v
  store i8 1, ptr %i.bv, align 8, !noalias !30902
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i64 40, i1 false), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !30902
  br label %bb.an

end_hunk_4
begin_hunk_5_@_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstoreNtB7_15DefaultLogStoreNtB9_8LogStore17read_commit_entry0Bb_:bb.a

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30924
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.do, %bb.dl, %bb.dg, %bb.df
  %.sroa.0184.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !30924
  %.sroa.5185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9179.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5185.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  %.sroa.6186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10180.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6186.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30924
  br label %bb.ct

bb.dt:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !30924
  br label %bb.cw

bb.du:                                            ; preds = %bb.dq, %bb.dn, %bb.dk, %bb.dh, %bb.dc, %bb.da
  %.pn32.ph.i.i = phi { ptr, i32 } [ %i.ir, %bb.dc ], [ %i.kc, %bb.dq ], [ %i.ix, %bb.dh ], [ %i.jh, %bb.dk ], [ %i.js, %bb.dn ], [ %i.ip, %bb.da ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.j) #40
          to label %bb.dt unwind label %bb.bj, !noalias !30934

bb.dv:                                            ; preds = %bb.dw
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30924
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ke) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bj, !noalias !30934

bb.dw:                                            ; preds = %bb.bx, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !30924
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  invoke fastcc void @_RNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB7_9GetResult5bytes0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.aa, ptr noundef nonnull align 8 %i.ke, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dx unwind label %bb.dv, !noalias !30934

bb.dx:                                            ; preds = %bb.dw
  %i.kf = load i64, ptr %i.aa, align 8, !range !1828, !noalias !30924, !noundef !4 ; 3 uses
  %i.kg = icmp eq i64 %i.kf, -9223372036854775789
  br i1 %i.kg, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30924
  br label %bb.fj

bb.dz:                                            ; preds = %bb.dx
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  %.sroa.5135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5135.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5135.0..sroa_idx.i.i, i64 32, i1 false), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !30924
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ke)
          to label %bb.eb unwind label %bb.ea, !noalias !30934

bb.ea:                                            ; preds = %bb.dz
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.eb:                                            ; preds = %bb.dz
  %.not.i108.i.i = icmp eq i64 %i.kf, -9223372036854775790
  br i1 %.not.i108.i.i, label %bb.ec, label %bb.fd

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, i64 32, i1 false), !noalias !30924
  %i.ki = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !30924
  %i.kj = icmp ult i64 %i.ki, 2
  br i1 %i.kj, label %bb.ed, label %bb.ek

bb.ed:                                            ; preds = %bb.ec
  %i.kk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, i64 16) monotonic, align 8, !noalias !30924 ; 2 uses
  %i.kl = icmp ult i8 %i.kk, 3
  br i1 %i.kl, label %bb.eg, label %bb.ee, !prof !25908

bb.ee:                                            ; preds = %bb.ed
  %i.km = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE) #42
          to label %bb.eg unwind label %bb.ef, !noalias !30934

bb.ef:                                            ; preds = %bb.ee
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.eg:                                            ; preds = %bb.ee, %bb.ed
  %.sroa.0.0.i111.i.i = phi i8 [ %i.kk, %bb.ed ], [ %i.km, %bb.ee ] ; 2 uses
  %i.ko = icmp eq i8 %.sroa.0.0.i111.i.i, 0
  br i1 %i.ko, label %bb.ek, label %bb.ei

bb.eh:                                            ; preds = %bb.ei
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.ei:                                            ; preds = %bb.eg
  %i.kq = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.kr = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kq, i8 noundef %.sroa.0.0.i111.i.i)
          to label %bb.ej unwind label %bb.eh, !noalias !30934

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.kr, label %bb.ev, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eg, %bb.ec
  %i.ks = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !30924
  %.not.i43.i = icmp eq i8 %i.ks, 0
  br i1 %.not.i43.i, label %bb.el, label %bb.eu

bb.el:                                            ; preds = %bb.ek
  %i.kt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !30924 ; 2 uses
  %i.ku = icmp ult i64 %i.kt, 6
  call void @llvm.assume(i1 %i.ku)
  %i.kv = icmp samesign ugt i64 %i.kt, 3
  br i1 %i.kv, label %bb.en, label %bb.eu

bb.em:                                            ; preds = %bb.en
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.en:                                            ; preds = %bb.el
  %i.kx = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4 ; 3 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 32
  %.val79.i.i = load ptr, ptr %i.ky, align 8, !noalias !30934, !nonnull !4, !noundef !4
  %i.kz = getelementptr i8, ptr %i.kx, i64 40
  %.val80.i.i = load i64, ptr %i.kz, align 8, !noalias !30934, !noundef !4
  store i64 4, ptr %i.v, align 8, !alias.scope !30956, !noalias !30924
  %.sroa.6147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.val79.i.i, ptr %.sroa.6147.0..sroa_idx.i.i, align 8, !alias.scope !30956, !noalias !30924
  %.sroa.8148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.val80.i.i, ptr %.sroa.8148.0..sroa_idx.i.i, align 8, !alias.scope !30956, !noalias !30924
  %i.la = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.eo unwind label %bb.em, !noalias !30934 ; 2 uses

bb.eo:                                            ; preds = %bb.en
  %i.lb = extractvalue { ptr, ptr } %i.la, 0      ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.la, 1      ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !invariant.load !4, !noalias !30934, !nonnull !4
  %i.lf = invoke noundef zeroext i1 %i.le(ptr noundef %i.lb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.eq unwind label %bb.ep, !noalias !30934

bb.ep:                                            ; preds = %bb.eo
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.eq:                                            ; preds = %bb.eo
  br i1 %i.lf, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !30924
  %i.lh = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !30924
  store ptr @112, ptr %i.s, align 8, !noalias !30924
  %i.lj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.lj, align 8, !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !30924
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val86.i.i = load i64, ptr %i.lk, align 8, !noalias !30924, !noundef !4
  store i64 %.val86.i.i, ptr %i.r, align 8, !noalias !30924
  store ptr %i.s, ptr %i.t, align 8, !noalias !30924
  %i.ll = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @74, ptr %i.ll, align 8, !noalias !30924
  %i.lm = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.r, ptr %i.lm, align 8, !noalias !30924
  %i.ln = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @113, ptr %i.ln, align 8, !noalias !30924
  store i64 1, ptr %i.u, align 8, !alias.scope !30960, !noalias !30963
  %.sroa.4.0..sroa_idx.i118.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i118.i.i, align 8, !alias.scope !30960, !noalias !30963
  %.sroa.5.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i119.i.i, align 8, !alias.scope !30960, !noalias !30963
  %i.lo = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.li, ptr %i.lo, align 8, !alias.scope !30960, !noalias !30963
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kx, ptr noundef nonnull %i.lb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.et unwind label %bb.es, !noalias !30934

bb.es:                                            ; preds = %bb.er
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30924
  br label %bb.fc

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !30924
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ex, %bb.et, %bb.eq, %bb.el, %bb.ek
  %.sroa.0182.0.copyload.i.i = load i64, ptr %i.ab, align 8, !noalias !30924
  %.sroa.4183.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9179.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4183.0..sroa_idx.i.i, i64 24, i1 false), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30924
  br label %bb.ct

bb.ev:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !30924
  %i.lq = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !30924
  store ptr @112, ptr %i.x, align 8, !noalias !30924
  %i.ls = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ls, align 8, !noalias !30924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !30924
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val85.i.i = load i64, ptr %i.lt, align 8, !noalias !30924, !noundef !4
  store i64 %.val85.i.i, ptr %i.w, align 8, !noalias !30924
  store ptr %i.x, ptr %i.y, align 8, !noalias !30924
  %i.lu = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @74, ptr %i.lu, align 8, !noalias !30924
  %i.lv = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.w, ptr %i.lv, align 8, !noalias !30924
  %i.lw = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @113, ptr %i.lw, align 8, !noalias !30924
  store i64 1, ptr %i.z, align 8, !noalias !30924
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.8141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 2, ptr %.sroa.8141.0..sroa_idx.i.i, align 8, !noalias !30924
  %.sroa.9142.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.lr, ptr %.sroa.9142.0..sroa_idx.i.i, align 8, !noalias !30924
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry000B9_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.ex unwind label %bb.ew, !noalias !30934

bb.ew:                                            ; preds = %bb.ev
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !30924
  br label %bb.fc

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !30924
  br label %bb.eu

.body93.i.i:                                      ; preds = %bb.fe, %bb.ey, %bb.cw, %bb.cu
  %.pn43.i.i = phi { ptr, i32 } [ %.pn40.pn.i.i, %bb.cw ], [ %i.ih, %bb.cu ], [ %i.lz, %bb.ey ], [ %i.mq, %bb.fe ] ; 3 uses
  %i.ly = load i64, ptr %i.ez, align 8, !range !201, !noalias !30924, !noundef !4
  %.not45.i.i = icmp eq i64 %i.ly, -9223372036854775808
  br i1 %.not45.i.i, label %bb.fg, label %bb.bk

bb.ey:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i124.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.ma = load i64, ptr %i.ez, align 8, !range !201, !noalias !30924, !noundef !4
  %i.mb = icmp eq i64 %i.ma, -9223372036854775808
  br i1 %i.mb, label %bb.ez, label %bb.fk

bb.ez:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.md = load i8, ptr %i.mc, align 8, !range !34, !noalias !30924, !noundef !4
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.fa, label %bb.fk

bb.fa:                                            ; preds = %bb.ez
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.mf)
          to label %bb.fk unwind label %bb.fb, !noalias !30934

bb.fb:                                            ; preds = %bb.fa
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.fc:                                            ; preds = %bb.ew, %bb.es, %bb.ep, %bb.em, %bb.eh, %bb.ef
  %.pn14.pn.pn.i.i = phi { ptr, i32 } [ %i.lx, %bb.ew ], [ %i.kw, %bb.em ], [ %i.kn, %bb.ef ], [ %i.lp, %bb.es ], [ %i.lg, %bb.ep ], [ %i.kp, %bb.eh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30966)
  call void @llvm.experimental.noalias.scope.decl(metadata !30969)
  %i.mh = load ptr, ptr %i.ab, align 8, !alias.scope !30972, !noalias !30924, !nonnull !4, !align !17, !noundef !4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !30973, !nonnull !4, !noundef !4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !alias.scope !30972, !noalias !30924, !noundef !4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !30972, !noalias !30924, !noundef !4
  invoke void %i.mj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef %i.mm, i64 noundef %i.mo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.bj, !noalias !30934, !inline_history !16518

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.fc, %bb.ea, %bb.dv
  %.pn18.pn.i.i = phi { ptr, i32 } [ %.pn14.pn.pn.i.i, %bb.fc ], [ %i.kh, %bb.ea ], [ %i.kd, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30924
  br label %bb.cw

bb.fd:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10180.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5135.i.i, i64 32, i1 false), !noalias !30924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9179.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i, i64 32, i1 false), !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !30924
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i124.i.i unwind label %bb.fe, !noalias !30934

bb.fe:                                            ; preds = %bb.fd
  %i.mq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %.body93.i.i unwind label %bb.ff, !noalias !30934

bb.ff:                                            ; preds = %bb.fe
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !30934
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i124.i.i: ; preds = %bb.fd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mp)
          to label %bb.fk unwind label %bb.ey, !noalias !30934

bb.fg:                                            ; preds = %.body93.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.mt = load i8, ptr %i.ms, align 8, !range !34, !noalias !30924, !noundef !4
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.fh, label %bb.bk

bb.fh:                                            ; preds = %bb.fg
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.mv) #40
          to label %bb.bk unwind label %bb.bj, !noalias !30934

bb.fi:                                            ; preds = %bb.bn, %bb.bm
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.body44.i

bb.fj:                                            ; preds = %bb.dy, %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sink.i.ph.i = phi i8 [ 3, %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 4, %bb.dy ]
  store i8 %.sink.i.ph.i, ptr %i.fa, align 1, !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9179.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10180.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5135.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !30902
  br label %bb.fr

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i124.i.i, %bb.fa, %bb.ez, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.0176.1.i.i = phi i64 [ -9223372036854775743, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i124.i.i ], [ %.sroa.0176.0.i.i, %bb.fa ], [ %.sroa.0176.0.i.i, %bb.ez ], [ %.sroa.0176.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.5177.1.i.i = phi i64 [ %i.kf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i124.i.i ], [ %.sroa.5177.0.i.i, %bb.fa ], [ %.sroa.5177.0.i.i, %bb.ez ], [ %.sroa.5177.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %i.mx, align 8, !noalias !30924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.4.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9179.i.i, i64 32, i1 false), !noalias !30902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.10180.i.i, i64 32, i1 false), !noalias !30902
  store i8 1, ptr %i.fa, align 1, !noalias !30924
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9179.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10180.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5135.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !30902
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EBO_(ptr noundef nonnull align 8 %i.ez)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EEB1F_.exit.i unwind label %bb.fl, !noalias !30906

bb.fl:                                            ; preds = %bb.fk
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

bb.fm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EEB1F_.exit.i
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.mz)
          to label %bb.fs unwind label %bb.fn, !noalias !30906

bb.fn:                                            ; preds = %bb.fm
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.body44.i:                                        ; preds = %bb.fi, %bb.bl
  %.pn19.i = phi { ptr, i32 } [ %.pn46.pn.i.i, %bb.bl ], [ %i.mw, %bb.fi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00EBO_(ptr noundef nonnull align 8 %i.ez) #40
          to label %.body41.i unwind label %bb.ae, !noalias !30906

bb.fo:                                            ; preds = %bb.fp, %.body41.i
  store i8 0, ptr %i.ec, align 1, !noalias !30902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !30902
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.nc = load i8, ptr %i.nb, align 8, !range !34, !noalias !30902, !noundef !4
  %i.nd = trunc nuw i8 %i.nc to i1
end_hunk_5
