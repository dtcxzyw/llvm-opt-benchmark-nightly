inline.NumInlined: 543
inline.NumDeleted: 246
begin_hunk_0_@_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.q, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !3
  %i.v = getelementptr i8, ptr %i.u, i64 %2
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr i8, ptr null, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.z, align 8
  store ptr @5, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i64 [ 0, %bb.g ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1g_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3E_5error5ErrorEE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !6
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !6
  %i.e = select i1 %i.d, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val
  %i.f = trunc nuw i64 %i.e to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8
  %.val14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8
  %i.g = select i1 %i.d, ptr %.val, ptr %.val14   ; 3 uses
  %.val15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8
  %.val16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8
  %i.h = select i1 %i.d, ptr %.val15, ptr %.val16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !7
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !11, !noalias !12, !noundef !3
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit
  ], !prof !15

default.unreachable:                              ; preds = %bb.e
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.e
  %i.n = tail call noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.k), !noalias !12 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.thread2.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.n, %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %i.k, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !range !16, !noalias !17, !noundef !3
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 1, !noalias !17
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.s = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !20, !noalias !23, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !20, !noalias !23 ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !20, !noalias !23 ; 2 uses
  br i1 %i.t, label %bb.g, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !25
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.thread2.i
  %i.y = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !17, !noundef !3 ; 2 uses
  %i.z = icmp ult i64 %i.y, 9223372036854775807
  br i1 %i.z, label %bb.l, label %bb.j, !prof !26

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc.i.i unwind label %bb.k, !noalias !17

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.p, align 8, !noalias !17
  resume { ptr, i32 } %i.aa

bb.l:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %i.y, 1
  store i64 %i.ab, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.ad = load i64, ptr %i.ac, align 8, !range !30, !alias.scope !27, !noalias !17, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !31
  %i.af = icmp eq i64 %i.ae, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.af, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !6, !alias.scope !32, !noalias !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i64 [ %i.ad, %bb.l ], [ %.pre.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !32, !noalias !35 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !32, !noalias !35
  br i1 %i.ah, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !37
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ao = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !17, !noundef !3
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !17
  store i8 1, ptr %i.p, align 8, !noalias !17
  br label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6

_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6: ; preds = %bb.c, %bb.b, %bb.f, %bb.g, %bb.q, %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.0.07.ph.sink = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.0.0.i6.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.0.ph.sink = phi ptr [ %i.as, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.aj, %bb.q ], [ %i.as, %bb.r ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !38, !noalias !41, !noundef !3
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !38, !noalias !41 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !38, !noalias !41 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4W_5error5ErrorEE0E0B2d_ECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !43
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB6_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2t_5error5ErrorEE0Csj34PGqTgg0L_16deltalake_lakefs.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1C_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2X_8logstore18get_latest_version00BW_Es_00ECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(address) dereferenceable(544) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !44, !noalias !47, !nonnull !3, !align !5, !noundef !3 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.k = load i64, ptr %i.j, align 8, !range !30, !alias.scope !49, !noalias !52, !noundef !3
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.o, !noalias !52

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !52
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !49, !noalias !52, !align !5, !noundef !3 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !52, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !52, !noundef !3
  store ptr %i.r, ptr %i.e, align 8, !noalias !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53
  store ptr %i.e, ptr %i.d, align 8, !noalias !53
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !53
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 21, ptr noundef nonnull @27, ptr noundef nonnull %i.d) #23
          to label %.noexc4.i unwind label %bb.o

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !54, !noalias !57, !nonnull !3, !noundef !3 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !54, !noalias !57, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !59, !invariant.load !3, !noalias !60
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = and i64 %i.ab, -16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !54, !noalias !57, !noundef !3
  invoke void @_RINvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB3_10LogSegment17for_table_changesINtNtCsbvkFyIu7lgC_4core6option6OptionyEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(address) dereferenceable(544) %0, ptr noundef nonnull %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, i64 noundef %i.ag, i64 noundef 0, i64 undef)
          to label %bb.h unwind label %bb.f, !noalias !61

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !62
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #24
          to label %.body.i unwind label %bb.j, !noalias !57

bb.h:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !60
  %i.ak = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !67
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Csj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #24
          to label %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Csj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.k, !noalias !52

bb.j:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !57
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.ah, %bb.g ], [ %i.ah, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %i.j) #26
          to label %.body unwind label %bb.n, !noalias !52

_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Csj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ao = load i64, ptr %i.j, align 8, !range !30, !alias.scope !72, !noalias !75, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.l

bb.l:                                             ; preds = %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Csj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %.noexc7.i unwind label %bb.p

.noexc7.i:                                        ; preds = %bb.l, %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Csj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.aq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !52
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Csj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %.noexc7.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !72, !noalias !75, !align !5, !noundef !3 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Csj34PGqTgg0L_16deltalake_lakefs.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !75, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !75, !noundef !3
  store ptr %i.av, ptr %i.b, align 8, !noalias !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  store ptr %i.b, ptr %i.a, align 8, !noalias !78
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !78
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 21, ptr noundef nonnull @25, ptr noundef nonnull %i.a) #23
          to label %.noexc3 unwind label %bb.p

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Csj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.o, %.body.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !47
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.g) #26
          to label %.body unwind label %bb.n, !noalias !47

bb.p:                                             ; preds = %.noexc8.i, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.h) #26
          to label %.thread unwind label %bb.q

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Csj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.noexc3, %bb.m, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.q:                                             ; preds = %bb.r, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread:                                          ; preds = %bb.r, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.r:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(120) %2)
          to label %.thread unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !79, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !79, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !79, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !79, !noundef !3
  %i.k = load ptr, ptr %3, align 8, !alias.scope !79, !nonnull !3, !noundef !3
  %i.l = load ptr, ptr %i.d, align 8, !noalias !79, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !79, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !79, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79
  store i64 0, ptr %i.b, align 8, !noalias !79
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !79
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !79
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !79
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !79
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !79
  call void @_RNvXs0_NtCsaljjC7ZTCQu_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !82, !invariant.load !3 ; 2 uses
end_hunk_0
