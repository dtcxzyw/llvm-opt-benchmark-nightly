inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RINvMse_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB6_22DataFusionErrorBuilder8error_orINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks:bb.a
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i10 = load ptr, ptr %i.aa, align 8, !alias.scope !253, !nonnull !17, !noundef !17
  %i.ab = mul nuw i64 %.val.i9, 416
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #39, !noalias !257
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.q:                                             ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osRNtNtNtCs4s1dLWtJWRF_12clap_builder7builder6os_str5OsStrECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !17
  tail call void @_RNvNtCs2pqxYH9ZEk8_3std3env7__var_os(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4t_5error5ErrorEE0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !260
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !260
  %i.e = select i1 %i.d, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val
  %i.f = trunc nuw i64 %i.e to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8
  %.val14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8
  %i.g = select i1 %i.d, ptr %.val, ptr %.val14   ; 3 uses
  %.val15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8
  %.val16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8
  %i.h = select i1 %i.d, ptr %.val15, ptr %.val16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !261
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !265, !noalias !266, !noundef !17
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit
  ], !prof !269

default.unreachable:                              ; preds = %bb.e
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e
  %i.n = tail call noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.k), !noalias !266 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.n, %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.k, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !range !270, !noalias !271, !noundef !17
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 1, !noalias !271
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.s = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !260, !alias.scope !274, !noalias !277, !noundef !17
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !274, !noalias !277 ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !274, !noalias !277 ; 2 uses
  br i1 %i.t, label %bb.g, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !279
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.thread2.i
  %i.y = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !271, !noundef !17 ; 2 uses
  %i.z = icmp ult i64 %i.y, 9223372036854775807
  br i1 %i.z, label %bb.l, label %bb.j, !prof !84

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #42
          to label %.noexc.i.i unwind label %bb.k, !noalias !271

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.p, align 8, !noalias !271
  resume { ptr, i32 } %i.aa

bb.l:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %i.y, 1
  store i64 %i.ab, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !271
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.ad = load i64, ptr %i.ac, align 8, !range !283, !alias.scope !280, !noalias !271, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !284
  %i.af = icmp eq i64 %i.ae, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.af, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !260, !alias.scope !285, !noalias !288
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i64 [ %i.ad, %bb.l ], [ %.pre.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !285, !noalias !288 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !285, !noalias !288
  br i1 %i.ah, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !290
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ao = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !271, !noundef !17
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !271
  store i8 1, ptr %i.p, align 8, !noalias !271
  br label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6

_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6: ; preds = %bb.c, %bb.b, %bb.f, %bb.g, %bb.q, %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.07.ph.sink = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %.sroa.0.0.i6.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.0.ph.sink = phi ptr [ %i.as, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.aj, %bb.q ], [ %i.as, %bb.r ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !260, !alias.scope !291, !noalias !294, !noundef !17
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !291, !noalias !294 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !291, !noalias !294 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !296
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0Cs2VbMhdeEr66_16delta_benchmarks.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB2a_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3n_8snapshotNtB4x_8Snapshot19try_new_with_engine00BW_Es_00ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !297, !noalias !300, !nonnull !17, !align !187, !noundef !17 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.k = load i64, ptr %i.j, align 8, !range !283, !alias.scope !302, !noalias !305, !noundef !17
  %.not.i.i = icmp eq i64 %i.k, 2
  br i1 %.not.i.i, label %.noexc3.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %.noexc3.i unwind label %bb.r, !noalias !305

.noexc3.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !305
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %.noexc3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !302, !noalias !305, !align !187, !noundef !17 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !306
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !305, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !305, !noundef !17
  store ptr %i.r, ptr %i.e, align 8, !noalias !306
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !306
  store ptr %i.e, ptr %i.d, align 8, !noalias !306
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs2VbMhdeEr66_16delta_benchmarks, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !306
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @220, i64 noundef 21, ptr noundef nonnull @221, ptr noundef nonnull %i.d) #43
          to label %.noexc4.i unwind label %bb.r

.noexc4.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !306
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %.noexc4.i, %bb.d, %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !305
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.x, align 8, !noalias !310
  store i64 0, ptr %i.c, align 8, !noalias !310
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.y, align 8, !noalias !310
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !310
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !310
  %i.z = load i64, ptr %i.f, align 8, !range !260, !alias.scope !307, !noalias !312, !noundef !17
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !307, !noalias !312, !noundef !17
  store i64 1, ptr %i.c, align 8, !noalias !310
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !310
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !307, !noalias !312, !nonnull !17, !noundef !17 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !307, !noalias !312, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !313, !invariant.load !17, !noalias !310
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = and i64 %i.ak, -16
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ah)
          to label %bb.j unwind label %bb.h, !noalias !314

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !315
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #41
          to label %.body.i unwind label %bb.l, !noalias !312

bb.j:                                             ; preds = %bb.g
  %i.ar = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !320
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #41
          to label %bb.n unwind label %bb.m, !noalias !305

bb.l:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !312
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.ao, %bb.i ], [ %i.ao, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %i.j) #37
          to label %.body unwind label %bb.q, !noalias !305

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !305
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.av = load i64, ptr %i.j, align 8, !range !283, !alias.scope !325, !noalias !328, !noundef !17
  %.not.i.i.i.i = icmp eq i64 %i.av, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.noexc7.i unwind label %bb.s

.noexc7.i:                                        ; preds = %bb.o, %bb.n
  %i.ax = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !305
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %.noexc7.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !325, !noalias !328, !align !187, !noundef !17 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs2VbMhdeEr66_16delta_benchmarks.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !331
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !328, !nonnull !17, !noundef !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !328, !noundef !17
  store ptr %i.bc, ptr %i.b, align 8, !noalias !331
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !331
  store ptr %i.b, ptr %i.a, align 8, !noalias !331
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs2VbMhdeEr66_16delta_benchmarks, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !331
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @220, i64 noundef 21, ptr noundef nonnull @219, ptr noundef nonnull %i.a) #43
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !331
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.q:                                             ; preds = %bb.r, %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !300
  unreachable

bb.r:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g) #37
          to label %.body unwind label %bb.q, !noalias !300

bb.s:                                             ; preds = %.noexc8.i, %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %.thread unwind label %bb.t

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.noexc3, %bb.p, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h)
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
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %2)
          to label %.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !332, !nonnull !17, !align !187, !noundef !17 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !332, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !332, !nonnull !17, !noundef !17
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !332, !noundef !17
  %i.k = load ptr, ptr %3, align 8, !alias.scope !332, !nonnull !17, !noundef !17
  %i.l = load ptr, ptr %i.d, align 8, !noalias !332, !nonnull !17, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !332, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !332, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !332
  store i64 0, ptr %i.b, align 8, !noalias !332
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !332
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !332
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !332
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !noalias !332
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !332
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !332
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !332
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
end_hunk_0
