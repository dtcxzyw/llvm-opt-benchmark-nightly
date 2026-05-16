inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RINvMse_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB6_22DataFusionErrorBuilder8error_orINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.l = mul nuw i64 %.val.i, 40
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !239
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.m, %bb.n, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.v, %bb.n ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.o = load i64, ptr %1, align 8, !range !95, !noundef !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %i.s, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  store ptr %i.p, ptr %i.r, align 8, !alias.scope !242, !noalias !245
  %.sroa.0.0.copyload11 = load i64, ptr %i.n, align 8, !noalias !242 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload11, 20
  br i1 %.not, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.i, !prof !247

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.p, %bb.o, %bb.g, %bb.f
  ret void

bb.h:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.q

bb.i:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx12, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload11, ptr %0, align 8
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit6 unwind label %bb.k

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #40
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.h, %bb.k
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %2) #37
          to label %common.resume unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit6: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit6, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i7 = load i64, ptr %2, align 8, !range !95, !alias.scope !248, !noundef !17 ; 2 uses
  %i.w = icmp eq i64 %.val2.i7, 0
  br i1 %i.w, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3.i8 = load ptr, ptr %i.x, align 8, !alias.scope !253, !nonnull !17, !noundef !17
  %i.y = mul nuw i64 %.val2.i7, 416
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i8, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 16) #39, !noalias !254
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %.val.i9 = load i64, ptr %2, align 8, !range !95, !alias.scope !248, !noundef !17 ; 2 uses
  %i.z = icmp eq i64 %.val.i9, 0
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
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4t_5error5ErrorEE0ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  store i8 1, ptr %i.p, align 1, !noalias !271
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
  %i.g = alloca [128 x i8], align 8               ; 7 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 120, i1 false), !noalias !300
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !305
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false), !noalias !300
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
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20682
  %i.cf = icmp eq ptr %i.cc, null
  br i1 %i.cf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cg = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !20756
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.al, !noalias !20682

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.ci = cmpxchg ptr %i.bf, i64 8, i64 0 release monotonic, align 8, !noalias !20682
  %.sroa.18.0.in.i.i.i.i72.i = extractvalue { i64, i1 } %i.ci, 1
  br i1 %.sroa.18.0.in.i.i.i.i72.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit74.i, label %bb.ar, !prof !84

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.bf, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit74.i unwind label %.thread20.i, !noalias !20682

.thread20.i:                                      ; preds = %bb.ar
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20682
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit74.i: ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20682
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.at unwind label %.thread11.i, !noalias !20682

bb.as:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20682
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread11.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit74.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20682
  br label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.au, %.thread11.i, %bb.as, %.thread20.i, %.thread15.i, %.body67.i
  %.sroa.01.7.i = phi i8 [ 0, %.thread20.i ], [ 0, %bb.as ], [ 1, %.body67.i ], [ 0, %.thread11.i ], [ 1, %bb.au ], [ 1, %.thread15.i ]
  %.pn25.pn.i = phi { ptr, i32 } [ %i.cj, %.thread20.i ], [ %.pn21.i, %bb.as ], [ %eh.lpad-body68.i, %.body67.i ], [ %i.ck, %.thread11.i ], [ %i.bj, %bb.au ], [ %i.bj, %.thread15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20682
  br label %bb.y

bb.au:                                            ; preds = %.thread15.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderE9drop_slowCs8Hz2sPNgbCO_10datafusion(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.x, !noalias !20682

bb.av:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aw:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20682
  %i.cn = trunc nuw i8 %.sroa.01.1.i to i1
  br i1 %i.cn, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i: ; preds = %bb.bc, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20682
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20763)
  call void @llvm.experimental.noalias.scope.decl(metadata !20766)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !20769, !noalias !20682, !nonnull !17, !noundef !17
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !20770
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ax, label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext14create_catalog0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.co) #41
          to label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext14create_catalog0Cs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.be, !noalias !20682

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.bb unwind label %bb.az, !noalias !20682

bb.az:                                            ; preds = %bb.ay
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i77.i = load i64, ptr %i.m, align 8, !range !95, !alias.scope !20771, !noalias !20682, !noundef !17 ; 2 uses
  %i.ct = icmp eq i64 %.val2.i.i77.i, 0
  br i1 %i.ct, label %.body82.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val3.i.i78.i = load ptr, ptr %i.u, align 8, !alias.scope !20778, !noalias !20682, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i78.i, i64 noundef %.val2.i.i77.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20779
  br label %.body82.i

bb.bb:                                            ; preds = %bb.ay
  %.val.i.i80.i = load i64, ptr %i.m, align 8, !range !95, !alias.scope !20771, !noalias !20682, !noundef !17 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i80.i, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val1.i.i81.i = load ptr, ptr %i.u, align 8, !alias.scope !20778, !noalias !20682, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i81.i, i64 noundef %.val.i.i80.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20782
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i

.body82.i:                                        ; preds = %.thread.i, %bb.ba, %bb.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i
  %.pn33.i = phi { ptr, i32 } [ %.pn30.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i ], [ %.pn30.pn10.i, %.thread.i ], [ %i.cs, %bb.az ], [ %i.cs, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20682
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20785)
  call void @llvm.experimental.noalias.scope.decl(metadata !20788)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !20791, !noalias !20682, !nonnull !17, !noundef !17
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !20792
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit86.i

bb.bd:                                            ; preds = %.body82.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cv) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit86.i unwind label %bb.x, !noalias !20682

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit86.i: ; preds = %bb.be, %bb.bd, %.body82.i
  %.pn35.i = phi { ptr, i32 } [ %i.cz, %bb.be ], [ %.pn33.i, %bb.bd ], [ %.pn33.i, %.body82.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20682
  store i8 2, ptr %i.o, align 8, !noalias !20682
  resume { ptr, i32 } %.pn35.i

bb.be:                                            ; preds = %bb.ax
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit86.i

.thread.i:                                        ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i
  %.pn30.pn10.i = phi { ptr, i32 } [ %.pn30.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i ], [ %i.y, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #37
          to label %.body82.i unwind label %bb.x, !noalias !20682

bb.bf:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #42, !noalias !20682
  unreachable

bb.bg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #42, !noalias !20682
  unreachable

_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext14create_catalog0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef nonnull align 16 dereferenceable(336) %i.a, i64 336, i1 false)
  store i8 1, ptr %i.o, align 8, !noalias !20682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext15create_function0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([336 x i8]) align 16 captures(none) dereferenceable(336) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 26 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 11 uses
  %i.m = alloca [288 x i8], align 16              ; 5 uses
  %i.n = alloca [288 x i8], align 16              ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 2000 ; 3 uses
  %i.p = load i8, ptr %i.o, align 16, !range !3592, !noalias !20796, !noundef !17
  switch i8 %i.p, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.af
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20796
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 1968
  %.val83.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !20796
  %.phi.trans.insert228.i = getelementptr i8, ptr %.val, i64 1976
  %.val84.pre.i = load ptr, ptr %.phi.trans.insert228.i, align 8, !noalias !20796
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 2001 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 1984
  %i.t = load ptr, ptr %i.s, align 16, !noalias !20796, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !noalias !20796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20796
  store i8 1, ptr %i.q, align 1, !noalias !20796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.n, ptr noundef nonnull align 16 dereferenceable(288) %.val, i64 288, i1 false), !noalias !20796
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val65.i = load ptr, ptr %i.u, align 8, !noalias !20793, !nonnull !17, !noundef !17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val65.i, i64 16 ; 7 uses
  %i.w = load atomic i64, ptr %i.v monotonic, align 8, !noalias !20793 ; 4 uses
  %i.x = and i64 %i.w, 8
  %i.y = icmp ne i64 %i.x, 0
  %i.z = icmp ugt i64 %i.w, -17
  %or.cond.i.i.i.i = or i1 %i.z, %i.y
  br i1 %or.cond.i.i.i.i, label %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !15591

_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %bb.d
  %i.aa = add nuw i64 %i.w, 16
  %i.ab = cmpxchg weak ptr %i.v, i64 %i.w, i64 %i.aa acquire monotonic, align 8, !noalias !20793
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !15592

_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %bb.d
  %i.ad = invoke noundef zeroext i1 @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.v, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000)
          to label %bb.f unwind label %bb.e, !noalias !20793 ; 0 uses

bb.e:                                             ; preds = %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.val65.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  invoke fastcc void @_RNvXsb_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1680) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.af)
          to label %bb.i unwind label %bb.h, !noalias !20793

bb.g:                                             ; preds = %bb.h
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.u, !noalias !20793

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = atomicrmw sub ptr %i.v, i64 16 release, align 8, !noalias !20793
  %i.aj = and i64 %i.ai, -14
  %i.ak = icmp eq i64 %i.aj, 18
  br i1 %i.ak, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !7

bb.i:                                             ; preds = %bb.f
  %i.al = atomicrmw sub ptr %i.v, i64 16 release, align 8, !noalias !20793
  %i.am = and i64 %i.al, -14
  %i.an = icmp eq i64 %i.am, 18
  br i1 %i.an, label %bb.j, label %bb.l, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.v)
          to label %bb.l unwind label %bb.k, !noalias !20793

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 1936
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !20798, !noalias !20796, !noundef !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !20801
  %i.ar = tail call noundef dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20801 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 40) #40
          to label %.noexc88.i unwind label %bb.r, !noalias !20793

.noexc88.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.at = getelementptr i8, ptr %.val, i64 1944
  %.val82.i = load ptr, ptr %i.at, align 8, !noalias !20796, !nonnull !17, !align !187, !noundef !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val82.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !313, !invariant.load !17, !noalias !20793
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = and i64 %i.aw, -16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20796
  store i8 0, ptr %i.q, align 1, !noalias !20796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.m, ptr noundef nonnull align 16 dereferenceable(288) %i.n, i64 288, i1 false), !noalias !20796
  %i.ba = getelementptr inbounds nuw i8, ptr %.val82.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !17, !noalias !20793, !nonnull !17
  %i.bc = invoke { ptr, ptr } %i.bb(ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.ag, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(288) %i.m)
          to label %bb.q unwind label %bb.p, !noalias !20793 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20796
  br label %.body.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20796
  %i.be = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 1968
  store ptr %i.be, ptr %i.bg, align 16, !noalias !20796
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 1976
  store ptr %i.bf, ptr %i.bh, align 8, !noalias !20796
  br label %bb.y

bb.r:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(40) @117, i64 range(i64 0, -9223372036854775808) 40, i1 false), !noalias !20813
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 8, ptr %i.bj, align 8, !noalias !20796
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 40, ptr %.sroa.5.0..sroa_idx.i, align 16, !noalias !20796
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ar, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !20796
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 40, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !noalias !20796
  br label %bb.t

bb.t:                                             ; preds = %bb.ck, %bb.s
  store i64 36, ptr %i.a, align 16, !noalias !20796
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.bk)
          to label %bb.bz unwind label %bb.ae, !noalias !20793

.body.i:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.ad, %bb.x, %bb.r, %bb.p, %bb.k
  %.pn49.pn.pn.i = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.cd, %bb.ad ], [ %i.bi, %bb.r ], [ %i.cd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.bq, %bb.x ], [ %i.bd, %bb.p ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.bl) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.u, !noalias !20793

bb.u:                                             ; preds = %bb.cp, %bb.cj, %bb.ca, %bb.bu, %bb.bk, %bb.bf, %bb.av, %bb.ap, %bb.x, %.body.i, %bb.g
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20793
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body129.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.ae, %.body.i, %bb.h, %bb.g, %bb.e
  %.pn53.i = phi { ptr, i32 } [ %i.cl, %bb.ae ], [ %.pn49.pn.pn.i, %.body.i ], [ %.pn47200.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.pn38211.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.pn29222.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.pn20.i, %.body129.i ], [ %i.ah, %bb.h ], [ %i.ae, %bb.e ], [ %i.ah, %bb.g ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 2001
  %i.bo = load i8, ptr %i.bn, align 1, !range !270, !noalias !20796, !noundef !17
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.cp, label %bb.cn

bb.v:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #42, !noalias !20793
  unreachable

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #42, !noalias !20793
  unreachable

bb.x:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20796
  %.val60.i = load ptr, ptr %i.br, align 8, !noalias !20796
  %.val61.i = load ptr, ptr %i.bs, align 8, !noalias !20796, !nonnull !17, !align !187, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val60.i, ptr nonnull %.val61.i) #37
          to label %.body.i unwind label %bb.u, !noalias !20793

bb.y:                                             ; preds = %bb.q, %bb.c
  %.val84.i = phi ptr [ %.val84.pre.i, %bb.c ], [ %i.bf, %bb.q ]
  %.val83.i = phi ptr [ %.val83.pre.i, %bb.c ], [ %i.be, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20796
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 1968 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val, i64 1976   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val84.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !17, !noalias !20814, !nonnull !17
  invoke void %i.bu(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noundef nonnull %.val83.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #43
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.x, !noalias !20793, !inline_history !20818

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.y
  %i.bv = load i64, ptr %i.l, align 8, !range !283, !noalias !20796, !noundef !17 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 2
  br i1 %i.bw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20796
  store i64 37, ptr %0, align 16, !alias.scope !20793, !noalias !20819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20796
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext15create_function0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.aa:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !20796 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !20796 ; 10 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !20796 ; 3 uses
  %.sroa.8152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.8152.0.copyload.i = load ptr, ptr %.sroa.8152.0..sroa_idx.i, align 8, !noalias !20796 ; 3 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !20796 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20796
  %.val58.i = load ptr, ptr %i.br, align 8, !noalias !20796 ; 5 uses
  %.val59.i = load ptr, ptr %i.bs, align 8, !noalias !20796, !nonnull !17, !align !187, !noundef !17 ; 5 uses
  %i.bx = load ptr, ptr %.val59.i, align 8, !invariant.load !17, !noalias !20793 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.i) ]
  invoke void %i.bx(ptr noundef nonnull %.val58.i)
          to label %bb.ac unwind label %bb.ad, !noalias !20793

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %.val59.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !95, !invariant.load !17, !noalias !20793 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %.val59.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !313, !invariant.load !17, !noalias !20793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) %i.cc) #39, !noalias !20793
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val59.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !95, !invariant.load !17, !noalias !20793 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %.val59.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !313, !invariant.load !17, !noalias !20793
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ci) #39, !noalias !20793
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ac
  %i.cj = trunc nuw i64 %i.bv to i1
  br i1 %i.cj, label %bb.ck, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.ck)
          to label %bb.af unwind label %bb.ae, !noalias !20793

bb.ae:                                            ; preds = %bb.as, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.af:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context16RegisterFunctionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.cm = xor i64 %.sroa.2.0.copyload.i, -9223372036854775808
  %i.cn = icmp slt i64 %.sroa.2.0.copyload.i, 0
  %i.co = select i1 %i.cn, i64 %i.cm, i64 3
  switch i64 %i.co, label %bb.b [
    i64 0, label %bb.ag
    i64 1, label %bb.aw
    i64 2, label %bb.bl
    i64 3, label %bb.cb
  ]

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20796
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  store ptr %.sroa.4.0.copyload.i, ptr %i.k, align 8, !noalias !20796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20796
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !20796, !nonnull !17, !align !187, !noundef !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.val64.i = load ptr, ptr %i.cr, align 8, !noalias !20793, !nonnull !17, !noundef !17 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val64.i, i64 16 ; 8 uses
  %i.ct = cmpxchg weak ptr %i.cs, i64 0, i64 8 acquire monotonic, align 8, !noalias !20793
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cu, label %bb.ai, label %bb.ah, !prof !84

bb.ah:                                            ; preds = %bb.ag
  %i.cv = invoke noundef zeroext i1 @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cs, i64 undef, i32 noundef 1000000000)
          to label %bb.ai unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i, !noalias !20793 ; 0 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i: ; preds = %bb.ah
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20796
  call void @llvm.experimental.noalias.scope.decl(metadata !20820)
  call void @llvm.experimental.noalias.scope.decl(metadata !20823)
  %i.cx = load ptr, ptr %i.k, align 8, !alias.scope !20826, !noalias !20796, !nonnull !17, !noundef !17
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !20827
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %.val64.i, i64 24
  %i.db = load ptr, ptr %i.k, align 8, !noalias !20796, !nonnull !17, !noundef !17
  invoke void @_RNvXs5_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8VI8w5SIoU4_15datafusion_expr8registry16FunctionRegistry12register_udf(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.da, ptr noundef nonnull %i.db)
          to label %bb.ak unwind label %bb.aj, !noalias !20793

bb.aj:                                            ; preds = %bb.ai
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20796
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !20828)
  %i.dd = load i64, ptr %i.i, align 8, !range !1787, !alias.scope !20831, !noalias !20833, !noundef !17 ; 2 uses
  %.not.i91.i = icmp eq i64 %i.dd, 20
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !20834, !noalias !20796 ; 4 uses
  br i1 %.not.i91.i, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20796
  store ptr %i.df, ptr %i.j, align 8, !noalias !20796
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !20835
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.aq, !noalias !20793

bb.ao:                                            ; preds = %bb.aq, %bb.aj
  %.pn45.i = phi { ptr, i32 } [ %i.dk, %bb.aq ], [ %i.dc, %bb.aj ] ; 2 uses
  %i.dj = cmpxchg ptr %i.cs, i64 8, i64 0 release monotonic, align 8, !noalias !20793
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.dj, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i, label %bb.ap, !prof !84

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cs, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i unwind label %bb.u, !noalias !20793

bb.aq:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.dl = cmpxchg ptr %i.cs, i64 8, i64 0 release monotonic, align 8, !noalias !20793
  %.sroa.18.0.in.i.i.i.i94.i = extractvalue { i64, i1 } %i.dl, 1
  br i1 %.sroa.18.0.in.i.i.i.i94.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit96.i, label %bb.ar, !prof !84

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cs, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit96.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread202.i, !noalias !20793

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread202.i: ; preds = %bb.au, %bb.ar
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit96.i: ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20796
  br label %bb.as

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit124.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit110.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit96.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 1992
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !20796, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.do)
          to label %bb.ch unwind label %bb.ae, !noalias !20793

bb.at:                                            ; preds = %bb.ak
  %.sroa.10165.0..sroa_idx166.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.3170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3170.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10165.0..sroa_idx166.i, i64 24, i1 false), !noalias !20796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20796
  call void @llvm.experimental.noalias.scope.decl(metadata !20842)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.dd, ptr %i.dp, align 8, !alias.scope !20845, !noalias !20796
  %.sroa.2169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.df, ptr %.sroa.2169.0..sroa_idx.i, align 16, !alias.scope !20845, !noalias !20796
  store i64 36, ptr %i.a, align 16, !alias.scope !20847, !noalias !20848
  %i.dq = cmpxchg ptr %i.cs, i64 8, i64 0 release monotonic, align 8, !noalias !20793
  %.sroa.18.0.in.i.i.i.i97.i = extractvalue { i64, i1 } %i.dq, 1
  br i1 %.sroa.18.0.in.i.i.i.i97.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit99.i, label %bb.au, !prof !84

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cs, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit99.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread202.i, !noalias !20793

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit99.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20796
  br label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread202.i, %bb.ap, %bb.ao
  %.pn47200.ph.i = phi { ptr, i32 } [ %i.dm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread202.i ], [ %.pn45.i, %bb.ao ], [ %.pn45.i, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20796
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i
  %.pn47200.i = phi { ptr, i32 } [ %i.cw, %bb.av ], [ %i.cw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateEECs2VbMhdeEr66_16delta_benchmarks.exit.thread.i ], [ %.pn47200.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.sink.split.i ]
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext19create_memory_table0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bv, ptr noundef nonnull align 16 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !20928
  store i8 1, ptr %i.bk, align 1, !noalias !20928
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 1080
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 1192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !20928
  %i.bz = trunc nuw i8 %.sroa.17.0.copyload.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20930)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.ca = cmpxchg ptr %.sroa.14.0.copyload.i, i64 1, i64 0 monotonic monotonic, align 8, !noalias !20933
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ca, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.b
  fence acquire
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 16
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.cb, align 16, !noalias !20936 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 24
  %.sroa.6.0.copyload3.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !noalias !20936 ; 2 uses
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.i.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.0..sroa_idx4.i.i, i64 304, i1 false), !noalias !20936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20937
  store ptr %.sroa.14.0.copyload.i, ptr %i.d, align 8, !noalias !20937
  invoke void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc.i unwind label %bb.j, !noalias !20925

.noexc.i:                                         ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20937
  %i.cc = icmp eq i64 %.sroa.0.0.copyload1.i.i, 36
  br i1 %i.cc, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i, label %bb.h

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i: ; preds = %.noexc.i, %bb.b
  %.sroa.6.07.i.i = phi ptr [ %.sroa.6.0.copyload3.i.i, %.noexc.i ], [ %.sroa.14.0.copyload.i, %bb.b ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.07.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20938
  store ptr %.sroa.6.07.i.i, ptr %i.c, align 8, !noalias !20939
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.6.07.i.i, i64 16
  invoke fastcc void @_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(320) %.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.cd)
          to label %bb.e unwind label %bb.c, !noalias !20925

bb.c:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = atomicrmw sub ptr %.sroa.6.07.i.i, i64 1 release, align 8, !noalias !20942
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.d, label %.body.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41
          to label %.body.i unwind label %bb.g, !noalias !20947

bb.e:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %i.ch = atomicrmw sub ptr %.sroa.6.07.i.i, i64 1 release, align 8, !noalias !20948
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.f, label %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41
          to label %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.j, !noalias !20925

bb.g:                                             ; preds = %bb.d
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20947
  unreachable

_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20938
  br label %bb.k

bb.h:                                             ; preds = %.noexc.i
  store i64 %.sroa.0.0.copyload1.i.i, ptr %.val, align 16, !alias.scope !20930, !noalias !20928
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.6.0.copyload3.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !20930, !noalias !20928
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.8.i.i, i64 304, i1 false), !noalias !20928
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0296.i)
  br label %bb.bf

.body.i:                                          ; preds = %bb.bb, %bb.j, %bb.d, %bb.c
  %.pn126.i = phi { ptr, i32 } [ %.pn123.pn.i, %bb.bb ], [ %i.cn, %bb.j ], [ %i.ce, %bb.d ], [ %i.ce, %bb.c ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  %i.cl = load i8, ptr %i.ck, align 1, !range !270, !noalias !20928, !noundef !17
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ip, label %.body256.i

bb.j:                                             ; preds = %bb.hd, %bb.ba, %bb.f, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE10try_unwrapCs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.h, %_RNCNvMsC_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE15unwrap_or_clone0Cs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !20928
  %i.co = load ptr, ptr %i.bm, align 16, !noalias !20928, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co)
          to label %bb.m unwind label %bb.l, !noalias !20925

bb.l:                                             ; preds = %bb.k
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !20928
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB4_12SessionState8optimize(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1680) %i.be, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val)
          to label %bb.o unwind label %bb.n, !noalias !20925

bb.n:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !20928
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.be) #37
          to label %bb.ax unwind label %bb.av, !noalias !20925

bb.o:                                             ; preds = %bb.m
  %i.cr = load i64, ptr %i.bf, align 16, !range !1795, !alias.scope !20953, !noalias !20956, !noundef !17 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 40, i1 false), !noalias !20928
  br i1 %i.cs, label %bb.aw, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.11.0..sroa_idx287.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.11.0..sroa_idx287.i, i64 272, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !20928
  store i8 1, ptr %i.bl, align 2, !noalias !20928
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 320
  store i64 %i.cr, ptr %i.cu, align 16, !noalias !20928
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !20928
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5.i, i64 272, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.be)
          to label %bb.r unwind label %bb.q, !noalias !20925

bb.q:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !20928
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit168.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !20928
  br i1 %i.bz, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0296.i)
  %i.cw = load ptr, ptr %i.bm, align 16, !noalias !20928, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !20928
  call void @llvm.experimental.noalias.scope.decl(metadata !20958)
  call void @llvm.experimental.noalias.scope.decl(metadata !20961)
  %i.cx = load i64, ptr %i.bq, align 8, !range !283, !alias.scope !20961, !noalias !20963, !noundef !17 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 1008
  %i.cz = load ptr, ptr %i.cy, align 16, !alias.scope !20961, !noalias !20963, !nonnull !17, !noundef !17 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 1016
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !20961, !noalias !20963, !noundef !17 ; 3 uses
  %i.dc = atomicrmw add ptr %i.cz, i64 1 monotonic, align 8, !noalias !20964
  %i.dd = icmp slt i64 %i.dc, 0                   ; 3 uses
  switch i64 %i.cx, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %i.dd, label %bb.w, label %bb.ag

bb.u:                                             ; preds = %bb.s
  br i1 %i.dd, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.s
  br i1 %i.dd, label %bb.ab, label %bb.aa

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.x
  %.sink18.i.sroa.phi.i = phi ptr [ %.sink18.i.sroa.gep.i, %bb.ae ], [ %.sink18.i.sroa.gep299.i, %bb.x ]
  %.sink16.i.i = phi ptr [ %i.dl, %bb.ae ], [ %i.cz, %bb.x ]
  %.sink15.i.sroa.phi.i = phi ptr [ %.sink15.i.sroa.gep.i, %bb.ae ], [ %.sink15.i.sroa.gep300.i, %bb.x ]
  %.sink13.i.i = phi i64 [ %i.dn, %bb.ae ], [ %i.db, %bb.x ]
  %.sink12.ph.i.i = phi i64 [ 40, %bb.ae ], [ 24, %bb.x ]
  %.sink10.ph.i.i = phi ptr [ %i.dr, %bb.ae ], [ %i.df, %bb.x ]
  %.sink9.ph.i.i = phi i64 [ 48, %bb.ae ], [ 32, %bb.x ]
  %.sink7.ph.i.i = phi i64 [ %i.dt, %bb.ae ], [ %i.dh, %bb.x ]
  store ptr %.sink16.i.i, ptr %.sink18.i.sroa.phi.i, align 8, !alias.scope !20958, !noalias !20965
  store i64 %.sink13.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !20958, !noalias !20965
  br label %bb.ag

bb.x:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !20961, !noalias !20963, !nonnull !17, !noundef !17 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !20961, !noalias !20963, !noundef !17
  %i.di = atomicrmw add ptr %i.df, i64 1 monotonic, align 8, !noalias !20964
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %bb.z, label %.sink.split.i.i

bb.y:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !20961, !noalias !20963, !nonnull !17, !noundef !17 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !20961, !noalias !20963, !noundef !17
  %i.do = atomicrmw add ptr %i.dl, i64 1 monotonic, align 8, !noalias !20964
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 1040
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !20961, !noalias !20963, !nonnull !17, !noundef !17 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 1048
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !20961, !noalias !20963, !noundef !17
  %i.du = atomicrmw add ptr %i.dr, i64 1 monotonic, align 8, !noalias !20964
  %i.dv = icmp slt i64 %i.du, 0
  br i1 %i.dv, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.cz, ptr %.sink18.i.sroa.gep299.i, align 8, !alias.scope !20958, !noalias !20965
  store i64 %i.db, ptr %.sink15.i.sroa.gep300.i, align 8, !alias.scope !20958, !noalias !20965
  br label %.sink.split.i.i

bb.af:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %.sink.split.i.i, %bb.t
  %.sink12.i.i = phi i64 [ 8, %bb.t ], [ %.sink12.ph.i.i, %.sink.split.i.i ]
  %.sink10.i.i = phi ptr [ %i.cz, %bb.t ], [ %.sink10.ph.i.i, %.sink.split.i.i ]
  %.sink9.i.i = phi i64 [ 16, %bb.t ], [ %.sink9.ph.i.i, %.sink.split.i.i ]
  %.sink7.i.i = phi i64 [ %i.db, %bb.t ], [ %.sink7.ph.i.i, %.sink.split.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink12.i.i
  store ptr %.sink10.i.i, ptr %i.dw, align 8, !alias.scope !20958, !noalias !20965
  %i.dx = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink9.i.i
  store i64 %.sink7.i.i, ptr %i.dx, align 8, !alias.scope !20958, !noalias !20965
  store i64 %i.cx, ptr %i.az, align 8, !alias.scope !20958, !noalias !20965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0296.i, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !20928
  %i.dy = getelementptr inbounds nuw i8, ptr %.val, i64 1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.dy, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0296.i, i64 56, i1 false), !noalias !20928
  %.sroa.7297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1304
  store ptr %i.cw, ptr %.sroa.7297.0..sroa_idx.i, align 8, !noalias !20928
  %.sroa.9298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1560
  store i8 0, ptr %.sroa.9298.0..sroa_idx.i, align 8, !noalias !20928
  br label %bb.bf

.body162.i:                                       ; preds = %bb.br, %bb.bn, %bb.be
  %.pn17.i = phi { ptr, i32 } [ %.pn.i.i, %bb.bn ], [ %i.ew, %bb.be ], [ %i.fk, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0296.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit168.i

bb.ah:                                            ; preds = %bb.aj
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body158.i

bb.ai:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !20928
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !20966
  %i.ea = call noundef dereferenceable_or_null(30) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 30, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20966 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 30) #40
          to label %.noexc140.i unwind label %bb.ah, !noalias !20925

.noexc140.i:                                      ; preds = %bb.aj
  unreachable

.body151.i:                                       ; preds = %bb.an, %bb.am, %bb.ak
  %.pn112.i = phi { ptr, i32 } [ %i.ec, %bb.ak ], [ %i.ee, %bb.am ], [ %i.ee, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !20928
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc) #37
          to label %.body158.i unwind label %bb.av, !noalias !20925

bb.ak:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !20928
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb) #37
          to label %.body151.i unwind label %bb.av, !noalias !20925

bb.al:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ea, ptr noundef nonnull readonly align 1 dereferenceable(30) @122, i64 range(i64 0, -9223372036854775808) 30, i1 false), !noalias !20983
  store i64 30, ptr %i.bc, align 8, !alias.scope !20984, !noalias !20928
  %.sroa.5467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  store ptr %i.ea, ptr %.sroa.5467.0..sroa_idx.i, align 8, !alias.scope !20984, !noalias !20928
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 30, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !20984, !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !20928
  store i64 0, ptr %i.bb, align 8, !noalias !20928
  %.sroa.4416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4416.0..sroa_idx.i, align 8, !noalias !20928
  %.sroa.5417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %.sroa.5417.0..sroa_idx.i, align 8, !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !20928
  store ptr %i.bc, ptr %i.ba, align 8, !noalias !20928
  %.sroa.5290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5290.0..sroa_idx.i, align 8, !noalias !20928
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.ed, align 8, !noalias !20928
  %.sroa.5292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5292.0..sroa_idx.i, align 8, !noalias !20928
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noundef nonnull @40, ptr noundef nonnull %i.ba)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit150.i unwind label %bb.ak, !noalias !20925

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit150.i:  ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !20928
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.ao unwind label %bb.am, !noalias !20925

bb.am:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit150.i
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.bb, align 8, !range !95, !alias.scope !20988, !noalias !20928, !noundef !17 ; 2 uses
  %i.ef = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ef, label %.body151.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val3.i.i.i = load ptr, ptr %.sroa.4416.0..sroa_idx.i, align 8, !alias.scope !20995, !noalias !20928, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20996
  br label %.body151.i

bb.ao:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit150.i
  %.val.i.i.i = load i64, ptr %i.bb, align 8, !range !95, !alias.scope !20988, !noalias !20928, !noundef !17 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.eg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i.i = load ptr, ptr %.sroa.4416.0..sroa_idx.i, align 8, !alias.scope !20995, !noalias !20928, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !20999
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !20928
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %bb.as unwind label %bb.aq, !noalias !20925

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i153.i = load i64, ptr %i.bc, align 8, !range !95, !alias.scope !21002, !noalias !20928, !noundef !17 ; 2 uses
  %i.ei = icmp eq i64 %.val2.i.i153.i, 0
  br i1 %i.ei, label %.body158.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val3.i.i154.i = load ptr, ptr %.sroa.5467.0..sroa_idx.i, align 8, !alias.scope !21009, !noalias !20928, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i154.i, i64 noundef %.val2.i.i153.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !21010
  br label %.body158.i

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val.i.i156.i = load i64, ptr %i.bc, align 8, !range !95, !alias.scope !21002, !noalias !20928, !noundef !17 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i156.i, 0
  br i1 %i.ej, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val1.i.i157.i = load ptr, ptr %.sroa.5467.0..sroa_idx.i, align 8, !alias.scope !21009, !noalias !20928, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i157.i, i64 noundef %.val.i.i156.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !21013
  br label %bb.au

.body158.i:                                       ; preds = %bb.ar, %bb.aq, %.body151.i, %bb.ah
  %.pn114.i = phi { ptr, i32 } [ %i.dz, %bb.ah ], [ %.pn112.i, %.body151.i ], [ %i.eh, %bb.aq ], [ %i.eh, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !20928
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit168.i

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !20928
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !20928
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 5, ptr %i.ek, align 8, !noalias !20928
  store i64 36, ptr %i.e, align 16, !noalias !20928
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.co, %bb.au
  %i.el = getelementptr inbounds nuw i8, ptr %.val, i64 1234
  %i.em = load i8, ptr %i.el, align 2, !range !270, !noalias !20928, !noundef !17
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ia, label %bb.ba

bb.av:                                            ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.gm, %bb.fz, %bb.fy, %bb.eq, %bb.ed, %bb.di, %.body197.i, %bb.cz, %bb.cx, %bb.cp, %bb.be, %bb.bb, %bb.ak, %.body151.i, %bb.n
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !20925
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit168.i: ; preds = %bb.hc, %bb.cp, %.body158.i, %.body162.i, %bb.q
  %.pn118.pn.i = phi { ptr, i32 } [ %.pn114.i, %.body158.i ], [ %i.nx, %bb.hc ], [ %i.cv, %bb.q ], [ %.pn17.i, %.body162.i ], [ %.pn103.pn.i, %bb.cp ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val, i64 1234
  %i.eq = load i8, ptr %i.ep, align 2, !range !270, !noalias !20928, !noundef !17
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.io, label %bb.bb

bb.aw:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !20928
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.es, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !20928
  store i64 36, ptr %i.e, align 16, !alias.scope !21016, !noalias !21019
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.be)
          to label %bb.az unwind label %bb.ay, !noalias !20925

bb.ax:                                            ; preds = %bb.ay, %bb.n, %bb.l
  %.pn123.i = phi { ptr, i32 } [ %i.et, %bb.ay ], [ %i.cq, %bb.n ], [ %i.cp, %bb.l ]
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext19create_memory_table0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.dr:                                            ; preds = %bb.dq
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i.i204.i = load ptr, ptr %i.ib, align 8, !alias.scope !21072, !noalias !20928, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i204.i, i64 noundef %.val.i.i203.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !21076
  br label %bb.ds

.body205.i:                                       ; preds = %bb.dp, %bb.do, %.body197.i, %bb.dg
  %.pn76.i = phi { ptr, i32 } [ %i.hq, %bb.dg ], [ %.pn74.i, %.body197.i ], [ %i.hx, %bb.do ], [ %i.hx, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20928
  br label %bb.cp

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20928
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.26.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20928
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 10, ptr %i.ic, align 8, !noalias !20928
  store i64 36, ptr %i.e, align 16, !noalias !20928
  br label %bb.cu

bb.dt:                                            ; preds = %.thread.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit283.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit283.i: ; preds = %bb.in, %bb.im, %bb.ec, %bb.du, %bb.dt
  %.pn103.i = phi { ptr, i32 } [ %i.if, %bb.du ], [ %i.id, %bb.dt ], [ %.pn100.pn.i, %bb.ec ], [ %.pn100.pn.i, %bb.in ], [ %.pn100.pn.i, %bb.im ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.val, i64 1238
  store i8 0, ptr %i.ie, align 2, !noalias !20928
  br label %bb.cp

bb.du:                                            ; preds = %bb.hz
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit283.i

bb.dv:                                            ; preds = %.thread.i
  %.val.i = load ptr, ptr %i.hp, align 8, !noalias !20925, !nonnull !17, !noundef !17
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %.val137.i = load ptr, ptr %i.ig, align 8, !noalias !20925, !nonnull !17, !noundef !17 ; 2 uses
  %i.ih = atomicrmw add ptr %.val137.i, i64 1 monotonic, align 8, !noalias !20925
  %i.ii = icmp slt i64 %i.ih, 0
  br i1 %i.ii, label %bb.dw, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit208.i

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit208.i: ; preds = %bb.dv
  store ptr %.val137.i, ptr %i.ex, align 16, !noalias !20928
  %i.ij = getelementptr inbounds nuw i8, ptr %.val, i64 1238
  store i8 1, ptr %i.ij, align 2, !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !20928
  %i.ik = getelementptr inbounds nuw i8, ptr %.val, i64 992
  %i.il = load ptr, ptr %i.ik, align 16, !noalias !20928, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext5state(ptr noalias noundef nonnull sret([1680 x i8]) align 8 captures(none) dereferenceable(1680) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.il)
          to label %bb.dz unwind label %bb.dy, !noalias !20925

bb.dx:                                            ; preds = %bb.ea, %bb.dy
  %.pn82.i = phi { ptr, i32 } [ %i.io, %bb.ea ], [ %i.im, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !20928
  br label %bb.ec

bb.dy:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit208.i
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dz:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit208.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !20928
  %i.in = getelementptr inbounds nuw i8, ptr %.val, i64 1234
  store i8 0, ptr %i.in, align 2, !noalias !20928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.x, ptr noundef nonnull align 16 dereferenceable(320) %i.ho, i64 320, i1 false), !noalias !20928
  invoke void @_RNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5_9DataFrame3new(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1680) %i.y, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(320) %i.x)
          to label %bb.eb unwind label %bb.ea, !noalias !20925

bb.ea:                                            ; preds = %bb.dz
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !20928
  br label %bb.dx

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !20928
  %i.ip = getelementptr inbounds nuw i8, ptr %.val, i64 1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ip, ptr noundef nonnull align 16 dereferenceable(336) %i.z, i64 336, i1 false), !noalias !20928
  %.sroa.8372.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1936
  store i8 0, ptr %.sroa.8372.0..sroa_idx.i, align 16, !noalias !20928
  br label %bb.ga

bb.ec:                                            ; preds = %bb.fz, %bb.ge, %.body249.i, %bb.ha, %bb.gy, %bb.dx
  %.pn100.pn.i = phi { ptr, i32 } [ %.pn82.i, %bb.dx ], [ %.pn96.pn.pn.i, %.body249.i ], [ %.pn94.i, %bb.gy ], [ %i.nw, %bb.ha ], [ %i.mg, %bb.ge ], [ %i.mc, %bb.fz ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val, i64 1238
  %i.ir = load i8, ptr %i.iq, align 2, !range !270, !noalias !20928, !noundef !17
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.im, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit283.i

bb.ed:                                            ; preds = %bb.ee
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !20928
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.iu) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.av, !noalias !20925

bb.ee:                                            ; preds = %bb.a, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !20928
  %i.iu = getelementptr inbounds nuw i8, ptr %.val, i64 1264 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame19collect_partitioned0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aq, ptr noundef nonnull align 16 %i.iu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ef unwind label %bb.ed, !noalias !20925

bb.ef:                                            ; preds = %bb.ee
  %i.iv = load i64, ptr %i.aq, align 8, !range !1799, !noalias !20928, !noundef !17 ; 3 uses
  %i.iw = icmp eq i64 %i.iv, 21
  br i1 %i.iw, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !20928
  store i64 37, ptr %0, align 16, !alias.scope !20925, !noalias !21021
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_memory_table0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.eh:                                            ; preds = %bb.ef
  %.sroa.3327.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.0..sroa_idx.i, i64 24, i1 false), !noalias !20928
  %.sroa.5328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.5328.0.copyload.i = load i64, ptr %.sroa.5328.0..sroa_idx.i, align 8, !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !20928
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.iu)
          to label %bb.ej unwind label %bb.ei, !noalias !20925

bb.ei:                                            ; preds = %bb.eh
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.ej:                                            ; preds = %bb.eh
  %.not.i209.i = icmp eq i64 %i.iv, 20
  br i1 %.not.i209.i, label %bb.ek, label %bb.fu

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.i, i64 24, i1 false), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8334.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !20928
  %i.iy = getelementptr inbounds nuw i8, ptr %.val, i64 1239 ; 2 uses
  store i8 0, ptr %i.iy, align 1, !noalias !20928
  %i.iz = getelementptr inbounds nuw i8, ptr %.val, i64 1248
  %i.ja = load ptr, ptr %i.iz, align 16, !noalias !20928, !nonnull !17, !noundef !17
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable7try_new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.am, ptr noundef nonnull %i.ja, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.em unwind label %bb.el, !noalias !20925

bb.el:                                            ; preds = %bb.ek
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !20928
  br label %.body211.sink.split.i

bb.em:                                            ; preds = %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !21079)
  %i.jc = load i64, ptr %i.am, align 8, !range !188, !alias.scope !21082, !noalias !21084, !noundef !17 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, -9223372036854775808
  %i.je = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.i, ptr noundef nonnull align 8 dereferenceable(40) %i.je, i64 40, i1 false), !alias.scope !21085, !noalias !20928
  br i1 %i.jd, label %bb.fs, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.sroa.10336.0..sroa_idx337.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.10336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10336.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10336.0..sroa_idx337.i, i64 64, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !20928
  store i64 %i.jc, ptr %i.al, align 8, !noalias !20928
  %.sroa.8334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.i, i64 40, i1 false), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !20928
  %i.jf = getelementptr inbounds nuw i8, ptr %.val, i64 1236
  store i8 0, ptr %i.jf, align 4, !noalias !20928
  %i.jg = getelementptr inbounds nuw i8, ptr %.val, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 16 dereferenceable(24) %i.jg, i64 24, i1 false), !noalias !20928
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable16with_constraints(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak)
          to label %bb.ep unwind label %bb.eo, !noalias !20925

bb.eo:                                            ; preds = %bb.en
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !20928
  br label %.body211.sink.split.i

bb.ep:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !20928
  %i.ji = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  store i8 0, ptr %i.ji, align 1, !noalias !20928
  %i.jj = getelementptr inbounds nuw i8, ptr %.val, i64 1080
  %.sroa.0338.0.copyload.i = load i64, ptr %i.jj, align 8, !noalias !20928
  %.sroa.5339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1088
  %.sroa.5339.0.copyload.i = load ptr, ptr %.sroa.5339.0..sroa_idx.i, align 8, !noalias !20928, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.6340.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1096
  %.sroa.6340.0.copyload.i = load i64, ptr %.sroa.6340.0..sroa_idx.i, align 8, !noalias !20928 ; 2 uses
  %i.jk = icmp ult i64 %.sroa.6340.0.copyload.i, 64051194700380388
  call void @llvm.assume(i1 %i.jk)
  %i.jl = getelementptr inbounds nuw [144 x i8], ptr %.sroa.5339.0.copyload.i, i64 %.sroa.6340.0.copyload.i
  store ptr %.sroa.5339.0.copyload.i, ptr %i.ai, align 8, !alias.scope !21086, !noalias !21089
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.0338.0.copyload.i, ptr %i.jm, align 8, !alias.scope !21086, !noalias !21089
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.5339.0.copyload.i, ptr %i.jn, align 8, !alias.scope !21086, !noalias !21089
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.jl, ptr %i.jo, align 8, !alias.scope !21086, !noalias !21089
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB19_3vec9into_iter8IntoIterB3r_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ai)
          to label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.eq, !noalias !20925

bb.eq:                                            ; preds = %bb.ep
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !20928
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.an) #37
          to label %.body211.sink.split.i unwind label %bb.av, !noalias !20925

_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !20928
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable20with_column_defaults(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.an, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.aj)
          to label %bb.es unwind label %bb.er, !noalias !20925

bb.er:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !20928
  br label %.body211.sink.split.i

bb.es:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21091
  store i64 1, ptr %i.b, align 8, !noalias !21091
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.jr, align 8, !noalias !21091
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.js, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.ao, i64 112, i1 false), !noalias !20928
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !21094
  %i.jt = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !21094 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.et, label %bb.ew, !prof !7

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #40
          to label %.noexc.i.i unwind label %bb.eu, !noalias !21097

.noexc.i.i:                                       ; preds = %bb.et
  unreachable

bb.eu:                                            ; preds = %bb.et
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.js)
          to label %.body211.i unwind label %bb.ev, !noalias !21097

bb.ev:                                            ; preds = %bb.eu
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !21097
  unreachable

bb.ew:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.jt, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !21097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !20928
  %i.jx = getelementptr inbounds nuw i8, ptr %.val, i64 992 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 16, !noalias !20928, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !20928
  %i.jz = getelementptr inbounds nuw i8, ptr %.val, i64 1000
  call void @llvm.experimental.noalias.scope.decl(metadata !21098)
  call void @llvm.experimental.noalias.scope.decl(metadata !21101)
  %i.ka = load i64, ptr %i.jz, align 8, !range !283, !alias.scope !21101, !noalias !21103, !noundef !17 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.val, i64 1008
  %i.kc = load ptr, ptr %i.kb, align 16, !alias.scope !21101, !noalias !21103, !nonnull !17, !noundef !17 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.val, i64 1016
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !21101, !noalias !21103, !noundef !17 ; 3 uses
  %i.kf = atomicrmw add ptr %i.kc, i64 1 monotonic, align 8, !noalias !21104
  %i.kg = icmp slt i64 %i.kf, 0                   ; 3 uses
  switch i64 %i.ka, label %default.unreachable [
    i64 0, label %bb.ex
    i64 1, label %bb.ey
    i64 2, label %bb.ez
  ]

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.kg, label %bb.fa, label %bb.fk

bb.ey:                                            ; preds = %bb.ew
  br i1 %i.kg, label %bb.fc, label %bb.fb

bb.ez:                                            ; preds = %bb.ew
  br i1 %i.kg, label %bb.ff, label %bb.fe

bb.fa:                                            ; preds = %bb.ex
  call void @llvm.trap()
  unreachable

.sink.split.i213.i:                               ; preds = %bb.fi, %bb.fb
  %.sink18.i214.sroa.phi.i = phi ptr [ %.sink18.i214.sroa.gep.i, %bb.fi ], [ %.sink18.i214.sroa.gep351.i, %bb.fb ]
  %.sink16.i215.i = phi ptr [ %i.ko, %bb.fi ], [ %i.kc, %bb.fb ]
  %.sink15.i216.sroa.phi.i = phi ptr [ %.sink15.i216.sroa.gep.i, %bb.fi ], [ %.sink15.i216.sroa.gep352.i, %bb.fb ]
  %.sink13.i217.i = phi i64 [ %i.kq, %bb.fi ], [ %i.ke, %bb.fb ]
  %.sink12.ph.i218.i = phi i64 [ 40, %bb.fi ], [ 24, %bb.fb ]
  %.sink10.ph.i219.i = phi ptr [ %i.ku, %bb.fi ], [ %i.ki, %bb.fb ]
  %.sink9.ph.i220.i = phi i64 [ 48, %bb.fi ], [ 32, %bb.fb ]
  %.sink7.ph.i221.i = phi i64 [ %i.kw, %bb.fi ], [ %i.kk, %bb.fb ]
  store ptr %.sink16.i215.i, ptr %.sink18.i214.sroa.phi.i, align 8, !alias.scope !21098, !noalias !21105
  store i64 %.sink13.i217.i, ptr %.sink15.i216.sroa.phi.i, align 8, !alias.scope !21098, !noalias !21105
  br label %bb.fk

bb.fb:                                            ; preds = %bb.ey
  %i.kh = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !21101, !noalias !21103, !nonnull !17, !noundef !17 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.kk = load i64, ptr %i.kj, align 8, !alias.scope !21101, !noalias !21103, !noundef !17
  %i.kl = atomicrmw add ptr %i.ki, i64 1 monotonic, align 8, !noalias !21104
  %i.km = icmp slt i64 %i.kl, 0
  br i1 %i.km, label %bb.fd, label %.sink.split.i213.i

bb.fc:                                            ; preds = %bb.ey
  call void @llvm.trap()
  unreachable

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.trap()
  unreachable

bb.fe:                                            ; preds = %bb.ez
  %i.kn = getelementptr inbounds nuw i8, ptr %.val, i64 1024
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !21101, !noalias !21103, !nonnull !17, !noundef !17 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.val, i64 1032
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !21101, !noalias !21103, !noundef !17
  %i.kr = atomicrmw add ptr %i.ko, i64 1 monotonic, align 8, !noalias !21104
  %i.ks = icmp slt i64 %i.kr, 0
  br i1 %i.ks, label %bb.fh, label %bb.fg

bb.ff:                                            ; preds = %bb.ez
  call void @llvm.trap()
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.kt = getelementptr inbounds nuw i8, ptr %.val, i64 1040
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !21101, !noalias !21103, !nonnull !17, !noundef !17 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.val, i64 1048
  %i.kw = load i64, ptr %i.kv, align 8, !alias.scope !21101, !noalias !21103, !noundef !17
  %i.kx = atomicrmw add ptr %i.ku, i64 1 monotonic, align 8, !noalias !21104
  %i.ky = icmp slt i64 %i.kx, 0
  br i1 %i.ky, label %bb.fj, label %bb.fi

bb.fh:                                            ; preds = %bb.fe
  call void @llvm.trap()
  unreachable

bb.fi:                                            ; preds = %bb.fg
  store ptr %i.kc, ptr %.sink18.i214.sroa.gep351.i, align 8, !alias.scope !21098, !noalias !21105
  store i64 %i.ke, ptr %.sink15.i216.sroa.gep352.i, align 8, !alias.scope !21098, !noalias !21105
  br label %.sink.split.i213.i

bb.fj:                                            ; preds = %bb.fg
  call void @llvm.trap()
  unreachable

bb.fk:                                            ; preds = %.sink.split.i213.i, %bb.ex
  %.sink12.i222.i = phi i64 [ 8, %bb.ex ], [ %.sink12.ph.i218.i, %.sink.split.i213.i ]
  %.sink10.i223.i = phi ptr [ %i.kc, %bb.ex ], [ %.sink10.ph.i219.i, %.sink.split.i213.i ]
  %.sink9.i224.i = phi i64 [ 16, %bb.ex ], [ %.sink9.ph.i220.i, %.sink.split.i213.i ]
  %.sink7.i225.i = phi i64 [ %i.ke, %bb.ex ], [ %.sink7.ph.i221.i, %.sink.split.i213.i ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink12.i222.i
  store ptr %.sink10.i223.i, ptr %i.kz, align 8, !alias.scope !21098, !noalias !21105
  %i.la = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink9.i224.i
  store i64 %.sink7.i225.i, ptr %i.la, align 8, !alias.scope !21098, !noalias !21105
  store i64 %i.ka, ptr %i.af, align 8, !alias.scope !21098, !noalias !21105
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.af, ptr noundef nonnull %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @125)
          to label %bb.fl unwind label %bb.fp, !noalias !20925

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !20928
  call void @llvm.experimental.noalias.scope.decl(metadata !21106)
  %i.lb = load i64, ptr %i.ag, align 8, !range !1787, !alias.scope !21109, !noalias !21111, !noundef !17 ; 2 uses
  %.not.i229.i = icmp eq i64 %i.lb, 20
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !21112, !noalias !20928 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !alias.scope !21112, !noalias !20928 ; 2 uses
  br i1 %.not.i229.i, label %bb.fm, label %bb.fr

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !20928
  store ptr %i.ld, ptr %i.ah, align 8, !noalias !20928
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.lf, ptr %i.lg, align 8, !noalias !20928
  %i.lh = icmp eq ptr %i.ld, null
  br i1 %i.lh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit232.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.li = atomicrmw sub ptr %i.ld, i64 1 release, align 8, !noalias !21113
  %i.lj = icmp eq i64 %i.li, 1
  br i1 %i.lj, label %bb.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit232.i

bb.fo:                                            ; preds = %bb.fn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit232.i unwind label %.thread442.i, !noalias !20925

.thread442.i:                                     ; preds = %bb.fo
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !20928
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit232.i: ; preds = %bb.fo, %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !20928
  %i.ll = load ptr, ptr %i.jx, align 16, !noalias !20928, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ll)
          to label %bb.fq unwind label %.thread439.i, !noalias !20925

bb.fp:                                            ; preds = %bb.fk
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !20928
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs2VbMhdeEr66_16delta_benchmarks.exit.i

.thread439.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit232.i
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.fq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit232.i
  store i8 0, ptr %i.iy, align 1, !noalias !20928
  br label %bb.cu

bb.fr:                                            ; preds = %bb.fl
  %.sroa.12349.0..sroa_idx350.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.4356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4356.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12349.0..sroa_idx350.i, i64 16, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !20928
  call void @llvm.experimental.noalias.scope.decl(metadata !21120)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.lb, ptr %i.lo, align 8, !alias.scope !21123, !noalias !20928
  %.sroa.2354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ld, ptr %.sroa.2354.0..sroa_idx.i, align 16, !alias.scope !21123, !noalias !20928
  %.sroa.3355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.lf, ptr %.sroa.3355.0..sroa_idx.i, align 8, !alias.scope !21123, !noalias !20928
  store i64 36, ptr %i.e, align 16, !alias.scope !21125, !noalias !21126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !20928
  br label %bb.ft

bb.fs:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !20928
  %i.lp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8334.i, i64 40, i1 false), !noalias !20928
  store i64 36, ptr %i.e, align 16, !alias.scope !21127, !noalias !21130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs, %bb.fr
  %i.lq = getelementptr inbounds nuw i8, ptr %.val, i64 1239 ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !range !270, !noalias !20928, !noundef !17
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %bb.fv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

.body211.sink.split.i:                            ; preds = %bb.er, %bb.eq, %bb.eo, %bb.el
  %.pn40.pn.pn.ph.i = phi { ptr, i32 } [ %i.jb, %bb.el ], [ %i.jh, %bb.eo ], [ %i.jp, %bb.eq ], [ %i.jq, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !20928
  br label %.body211.i

.body211.i:                                       ; preds = %.body211.sink.split.i, %bb.eu
  %.pn40.pn.pn.i = phi { ptr, i32 } [ %i.jv, %bb.eu ], [ %.pn40.pn.pn.ph.i, %.body211.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.fu:                                            ; preds = %bb.ej
  %.sroa.2330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2330.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3327.i, i64 24, i1 false), !noalias !20928
  call void @llvm.experimental.noalias.scope.decl(metadata !21132)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.iv, ptr %i.lt, align 8, !alias.scope !21135, !noalias !20928
  %.sroa.3331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.5328.0.copyload.i, ptr %.sroa.3331.0..sroa_idx.i, align 8, !alias.scope !21135, !noalias !20928
  store i64 36, ptr %i.e, align 16, !alias.scope !21137, !noalias !21138
  br label %bb.ft

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.fw, %bb.fv, %bb.ft
  store i8 0, ptr %i.lq, align 1, !noalias !20928
  br label %bb.co

bb.fv:                                            ; preds = %bb.ft
  %i.lu = getelementptr inbounds nuw i8, ptr %.val, i64 1248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21139)
  call void @llvm.experimental.noalias.scope.decl(metadata !21142)
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !21145, !noalias !20928, !nonnull !17, !noundef !17
  %i.lw = atomicrmw sub ptr %i.lv, i64 1 release, align 8, !noalias !21146
  %i.lx = icmp eq i64 %i.lw, 1
  br i1 %i.lx, label %bb.fw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.fw:                                            ; preds = %bb.fv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lu) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.cf, !noalias !20925

bb.fx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.val, i64 1248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21147)
  call void @llvm.experimental.noalias.scope.decl(metadata !21150)
  %i.lz = load ptr, ptr %i.ly, align 8, !alias.scope !21153, !noalias !20928, !nonnull !17, !noundef !17
  %i.ma = atomicrmw sub ptr %i.lz, i64 1 release, align 8, !noalias !21154
  %i.mb = icmp eq i64 %i.ma, 1
  br i1 %i.mb, label %bb.fy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit236.i

bb.fy:                                            ; preds = %bb.fx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ly) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs2VbMhdeEr66_16delta_benchmarks.exit236.i unwind label %bb.av, !noalias !20925

bb.fz:                                            ; preds = %bb.ga
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !20928
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.md) #37
          to label %bb.ec unwind label %bb.av, !noalias !20925

bb.ga:                                            ; preds = %bb.a, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !20928
  %i.md = getelementptr inbounds nuw i8, ptr %.val, i64 1264 ; 3 uses
  invoke fastcc void @_RNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7_9DataFrame19collect_partitioned0Cs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.w, ptr noundef nonnull align 16 %i.md, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gb unwind label %bb.fz, !noalias !20925

bb.gb:                                            ; preds = %bb.ga
  %i.me = load i64, ptr %i.w, align 8, !range !1799, !noalias !20928, !noundef !17 ; 3 uses
  %i.mf = icmp eq i64 %i.me, 21
  br i1 %i.mf, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !20928
  store i64 37, ptr %0, align 16, !alias.scope !20925, !noalias !21021
  br label %_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext19create_memory_table0Cs2VbMhdeEr66_16delta_benchmarks.exit

bb.gd:                                            ; preds = %bb.gb
  %.sroa.3375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3375.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3375.0..sroa_idx.i, i64 24, i1 false), !noalias !20928
  %.sroa.5376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.5376.0.copyload.i = load i64, ptr %.sroa.5376.0..sroa_idx.i, align 8, !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !20928
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame19collect_partitioned0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 16 %i.md)
          to label %bb.gf unwind label %bb.ge, !noalias !20925

bb.ge:                                            ; preds = %bb.gd
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.gf:                                            ; preds = %bb.gd
  %.not.i237.i = icmp eq i64 %i.me, 20
  br i1 %.not.i237.i, label %bb.gg, label %bb.hx

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3375.i, i64 24, i1 false), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8382.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !20928
  %i.mh = getelementptr inbounds nuw i8, ptr %.val, i64 1238 ; 2 uses
  store i8 0, ptr %i.mh, align 2, !noalias !20928
  %i.mi = getelementptr inbounds nuw i8, ptr %.val, i64 1248
  %i.mj = load ptr, ptr %i.mi, align 16, !noalias !20928, !nonnull !17, !noundef !17
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable7try_new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.s, ptr noundef nonnull %i.mj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.gi unwind label %bb.gh, !noalias !20925

bb.gh:                                            ; preds = %bb.gg
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20928
  br label %.body249.sink.split.i

bb.gi:                                            ; preds = %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !21155)
  %i.ml = load i64, ptr %i.s, align 8, !range !188, !alias.scope !21158, !noalias !21160, !noundef !17 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, -9223372036854775808
  %i.mn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8382.i, ptr noundef nonnull align 8 dereferenceable(40) %i.mn, i64 40, i1 false), !alias.scope !21161, !noalias !20928
  br i1 %i.mm, label %bb.hv, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %.sroa.10384.0..sroa_idx385.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.10384.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10384.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10384.0..sroa_idx385.i, i64 64, i1 false), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20928
  store i64 %i.ml, ptr %i.r, align 8, !noalias !20928
  %.sroa.8382.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8382.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8382.i, i64 40, i1 false), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !20928
  %i.mo = getelementptr inbounds nuw i8, ptr %.val, i64 1236
  store i8 0, ptr %i.mo, align 4, !noalias !20928
  %i.mp = getelementptr inbounds nuw i8, ptr %.val, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 16 dereferenceable(24) %i.mp, i64 24, i1 false), !noalias !20928
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable16with_constraints(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q)
          to label %bb.gl unwind label %bb.gk, !noalias !20925

bb.gk:                                            ; preds = %bb.gj
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !20928
  br label %.body249.sink.split.i

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20928
  %i.mr = getelementptr inbounds nuw i8, ptr %.val, i64 1235
  store i8 0, ptr %i.mr, align 1, !noalias !20928
  %i.ms = getelementptr inbounds nuw i8, ptr %.val, i64 1080
  %.sroa.0386.0.copyload.i = load i64, ptr %i.ms, align 8, !noalias !20928
  %.sroa.5387.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1088
  %.sroa.5387.0.copyload.i = load ptr, ptr %.sroa.5387.0..sroa_idx.i, align 8, !noalias !20928, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.6388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 1096
  %.sroa.6388.0.copyload.i = load i64, ptr %.sroa.6388.0..sroa_idx.i, align 8, !noalias !20928 ; 2 uses
  %i.mt = icmp ult i64 %.sroa.6388.0.copyload.i, 64051194700380388
  call void @llvm.assume(i1 %i.mt)
  %i.mu = getelementptr inbounds nuw [144 x i8], ptr %.sroa.5387.0.copyload.i, i64 %.sroa.6388.0.copyload.i
  store ptr %.sroa.5387.0.copyload.i, ptr %i.o, align 8, !alias.scope !21162, !noalias !21165
  %i.mv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0386.0.copyload.i, ptr %i.mv, align 8, !alias.scope !21162, !noalias !21165
  %i.mw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5387.0.copyload.i, ptr %i.mw, align 8, !alias.scope !21162, !noalias !21165
  %i.mx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.mu, ptr %i.mx, align 8, !alias.scope !21162, !noalias !21165
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB19_3vec9into_iter8IntoIterB3r_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit246.i unwind label %bb.gm, !noalias !20925

bb.gm:                                            ; preds = %bb.gl
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20928
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.t) #37
          to label %.body249.sink.split.i unwind label %bb.av, !noalias !20925

_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit246.i: ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20928
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable20with_column_defaults(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.p)
          to label %bb.go unwind label %bb.gn, !noalias !20925

bb.gn:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit246.i
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20928
  br label %.body249.sink.split.i

bb.go:                                            ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBS_B1d_EECs2VbMhdeEr66_16delta_benchmarks.exit246.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21167
  store i64 1, ptr %i.a, align 8, !noalias !21167
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.na, align 8, !noalias !21167
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.nb, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.u, i64 112, i1 false), !noalias !20928
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !21170
  %i.nc = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !21170 ; 3 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.gp, label %bb.gs, !prof !7

bb.gp:                                            ; preds = %bb.go
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #40
          to label %.noexc.i248.i unwind label %bb.gq, !noalias !21173

.noexc.i248.i:                                    ; preds = %bb.gp
  unreachable

bb.gq:                                            ; preds = %bb.gp
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.nb)
          to label %.body249.i unwind label %bb.gr, !noalias !21173

bb.gr:                                            ; preds = %bb.gq
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !21173
  unreachable

bb.gs:                                            ; preds = %bb.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.nc, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !21173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8382.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20928
  %i.ng = getelementptr inbounds nuw i8, ptr %.val, i64 992 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 16, !noalias !20928, !nonnull !17, !align !187, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20928
  %i.ni = getelementptr inbounds nuw i8, ptr %.val, i64 1237
  store i8 0, ptr %i.ni, align 1, !noalias !20928
  %i.nj = getelementptr inbounds nuw i8, ptr %.val, i64 1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.nj, i64 56, i1 false), !noalias !20928
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.l, ptr noundef nonnull %i.nc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @125)
          to label %bb.gu unwind label %bb.gt, !noalias !20925

bb.gt:                                            ; preds = %bb.gs
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20928
  br label %bb.gy

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20928
  call void @llvm.experimental.noalias.scope.decl(metadata !21174)
  %i.nl = load i64, ptr %i.m, align 8, !range !1787, !alias.scope !21177, !noalias !21179, !noundef !17 ; 2 uses
  %.not.i252.i = icmp eq i64 %i.nl, 20
  %i.nm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !21180, !noalias !20928 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !21180, !noalias !20928 ; 2 uses
  br i1 %.not.i252.i, label %bb.gv, label %bb.hu

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20928
  store ptr %i.nn, ptr %i.n, align 8, !noalias !20928
  %i.nq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.np, ptr %i.nq, align 8, !noalias !20928
  %i.nr = icmp eq ptr %i.nn, null
  br i1 %i.nr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit255.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ns = atomicrmw sub ptr %i.nn, i64 1 release, align 8, !noalias !21181
  %i.nt = icmp eq i64 %i.ns, 1
  br i1 %i.nt, label %bb.gx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit255.i

bb.gx:                                            ; preds = %bb.gw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit255.i unwind label %bb.gz, !noalias !20925

bb.gy:                                            ; preds = %bb.gz, %bb.gt
  %.pn94.i = phi { ptr, i32 } [ %i.nu, %bb.gz ], [ %i.nk, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20928
  br label %bb.ec

bb.gz:                                            ; preds = %bb.gx
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit255.i: ; preds = %bb.gx, %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20928
  %i.nv = load ptr, ptr %i.ng, align 16, !noalias !20928, !nonnull !17, !align !187, !noundef !17
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nv)
          to label %bb.hb unwind label %bb.ha, !noalias !20925

bb.ha:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit255.i
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.hb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit255.i
  store i8 0, ptr %i.mh, align 2, !noalias !20928
  br label %bb.cu

bb.hc:                                            ; preds = %bb.cu, %bb.co
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit168.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit170.i: ; preds = %bb.cu
  %i.ny = getelementptr inbounds nuw i8, ptr %.val, i64 1234 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 2, !range !270, !noalias !20928, !noundef !17
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.he, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit170.i
  store i8 0, ptr %i.ny, align 2, !noalias !20928
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %.val)
          to label %bb.hg unwind label %bb.j, !noalias !20925

bb.he:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbbINtNtB4_6result6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit170.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.val, i64 320
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ob)
          to label %bb.hd unwind label %bb.hf, !noalias !20925

bb.hf:                                            ; preds = %bb.ia, %bb.he
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.hg:                                            ; preds = %bb.hd
  %i.od = getelementptr inbounds nuw i8, ptr %.val, i64 1235 ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !range !270, !noalias !20928, !noundef !17
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.hh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.hk, %bb.hj, %bb.hg
  store i8 0, ptr %i.od, align 1, !noalias !20928
  %i.og = getelementptr inbounds nuw i8, ptr %.val, i64 1236 ; 2 uses
  %i.oh = load i8, ptr %i.og, align 4, !range !270, !noalias !20928, !noundef !17
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.hl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.hh:                                            ; preds = %bb.hg
  %i.oj = getelementptr inbounds nuw i8, ptr %.val, i64 1080 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %bb.hj unwind label %bb.hi, !noalias !20925

bb.hi:                                            ; preds = %bb.hh
  %i.ok = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.oj, align 8, !range !95, !alias.scope !21188, !noalias !20928, !noundef !17 ; 2 uses
  %i.ol = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ol, label %.body256.i, label %.body256.sink.split.i

bb.hj:                                            ; preds = %bb.hh
  %.val.i.i = load i64, ptr %i.oj, align 8, !range !95, !alias.scope !21188, !noalias !20928, !noundef !17 ; 2 uses
  %i.om = icmp eq i64 %.val.i.i, 0
  br i1 %i.om, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.hk
end_hunk_3
