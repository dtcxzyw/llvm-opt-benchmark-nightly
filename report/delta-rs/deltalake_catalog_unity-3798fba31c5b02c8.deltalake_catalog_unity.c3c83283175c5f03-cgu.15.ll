Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.15?download=true
inline.NumInlined: 983
inline.NumDeleted: 505
begin_hunk_0_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4t_5error5ErrorEE0ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.s = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !96, !noalias !95, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !96, !noalias !95 ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !96, !noalias !95 ; 2 uses
  br i1 %i.t, label %bb.g, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !97
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i
  %i.y = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !95, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %i.y, 9223372036854775807
  br i1 %i.z, label %bb.l, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #31
          to label %.noexc.i.i unwind label %bb.k, !noalias !95

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.p, align 8, !noalias !95
  resume { ptr, i32 } %i.aa

bb.l:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %i.y, 1
  store i64 %i.ab, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !95
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ad = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !98, !noalias !95, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !99
  %i.af = icmp eq i64 %i.ae, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.af, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !6, !alias.scope !100, !noalias !95
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i64 [ %i.ad, %bb.l ], [ %.pre.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !100, !noalias !95 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !100, !noalias !95
  br i1 %i.ah, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !101
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ao = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !95, !noundef !5
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !95
  store i8 1, ptr %i.p, align 8, !noalias !95
  br label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.c, %bb.b, %bb.f, %bb.g, %bb.q, %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.07.ph.sink = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i6.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.0.ph.sink = phi ptr [ %i.as, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.aj, %bb.q ], [ %i.as, %bb.r ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !102, !noundef !5
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !102 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !102 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !103
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsb2ODgYNwnRL_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !12, !alias.scope !108, !noundef !5
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #29
          to label %bb.h unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtB1k_7wrapper12MessageErrorNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.h, %bb.d ], [ %i.e, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtB1k_7wrapper12MessageErrorNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsb2ODgYNwnRL_6anyhow5error11object_dropNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !12, !alias.scope !117, !noundef !5
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #29
          to label %bb.g unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !range !11, !alias.scope !118, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  switch i64 %i.h, label %.invoke.i [
    i64 2, label %bb.d
    i64 0, label %.invoke1.i
  ]

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.j = load i64, ptr %i.i, align 8, !range !6, !alias.scope !119, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %1 = icmp eq i64 %i.j, 0
  br i1 %1, label %.invoke1.i, label %.invoke.i

.invoke1.i:                                       ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.l = phi ptr [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.k, %bb.d ]
  invoke void @_RNvXs4_NtCsb2ODgYNwnRL_6anyhow5errorNtB7_5ErrorNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

.invoke.i:                                        ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.m = phi ptr [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.k, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.f:                                             ; preds = %.invoke.i, %.invoke1.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.e, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.invoke1.i, %.invoke.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsb2ODgYNwnRL_6anyhow5error17object_drop_frontNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !12, !alias.scope !124, !noundef !5
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsb2ODgYNwnRL_6anyhow5error17object_drop_frontNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !12, !alias.scope !129, !noundef !5
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCsb2ODgYNwnRL_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !136
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 2, 385) 24, i64 noundef range(i64 1, 129) 8) #27, !noalias !136 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !12, !alias.scope !137, !noundef !5
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !12, !alias.scope !138, !noundef !5
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  br label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.f, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @3, 1
  ret { ptr, ptr } %i.q

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.h
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  resume { ptr, i32 } %.pn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.body, %bb.e
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #27
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCsb2ODgYNwnRL_6anyhow5error23object_reallocate_boxedNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !145
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 2, 385) 24, i64 noundef range(i64 1, 129) 8) #27, !noalias !145 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.f, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !12, !alias.scope !146, !noundef !5
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %.body
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future05GuardINtNtNtBR_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBR_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB4d_19UnityCatalogBuilder17execute_uc_futureNCNvB49_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2z_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6x_B6x_EENtB4d_17UnityCatalogErrorEE0B6a_E00EENtNtB1X_8schedule16BlockingScheduleEEB4d_:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future05GuardINtNtNtBR_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2z_8snapshotNtB3J_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5y_5error5ErrorEEs_0ENtNtB1X_8schedule16BlockingScheduleEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [208 x i8], align 16              ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !153
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load i64, ptr %i.c, align 16, !range !13, !noalias !153, !noundef !5
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !noalias !153

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !noalias !153
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(208) %i.f)
          to label %_RNvXNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtNtBa_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1Y_8snapshotNtB38_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0ENtNtB1m_8schedule16BlockingScheduleENtNtNtB44_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c, !noalias !153

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.f, ptr noundef nonnull align 16 dereferenceable(208) %i.b, i64 208, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i unwind label %bb.d, !noalias !153

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.thread.i.i:                                      ; preds = %bb.e, %bb.c
  %.pn6.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn6.i.i

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(208) %i.b) #29
          to label %.thread.i.i unwind label %bb.d

_RNvXNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtNtBa_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1Y_8snapshotNtB38_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0ENtNtB1m_8schedule16BlockingScheduleENtNtNtB44_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.f, ptr noundef nonnull align 16 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future05GuardINtNtNtBR_8blocking4task12BlockingTaskNCNCINvNtNtNtBR_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3E_19UnityCatalogBuilder17execute_uc_futureNCNvB3A_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Y_B5Y_EENtB3E_17UnityCatalogErrorEE0B5B_E00ENtNtB1X_8schedule16BlockingScheduleEEB3E_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !156
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !13, !noalias !156, !noundef !5
  %i.e = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.d)
          to label %bb.b unwind label %bb.e, !noalias !156

bb.b:                                             ; preds = %bb.a
  store i64 %i.e, ptr %i.a, align 8, !noalias !156
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %_RNvXNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtNtBa_8blocking4task12BlockingTaskNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB33_19UnityCatalogBuilder17execute_uc_futureNCNvB2Z_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB33_17UnityCatalogErrorEE0B50_E00ENtNtB1m_8schedule16BlockingScheduleENtNtNtB55_3ops4drop4Drop4dropB33_.exit unwind label %bb.c, !noalias !156

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i unwind label %bb.d, !noalias !156

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.thread.i.i:                                      ; preds = %bb.e, %bb.c
  %.pn6.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn6.i.i

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #29
          to label %.thread.i.i unwind label %bb.d

_RNvXNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future0INtB2_5GuardINtNtNtBa_8blocking4task12BlockingTaskNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB33_19UnityCatalogBuilder17execute_uc_futureNCNvB2Z_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB33_17UnityCatalogErrorEE0B50_E00ENtNtB1m_8schedule16BlockingScheduleENtNtNtB55_3ops4drop4Drop4dropB33_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !15, !invariant.load !5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !15, !invariant.load !5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #27
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !5
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !169, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !169
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !185, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !185
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !17, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.a, -9223372036854775742
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.b = icmp eq i64 %i.a, -9223372036854775743
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !195, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !195
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1E_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1E_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1E_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.g, align 16, !noundef !5 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.h, align 8            ; 6 uses
  %i.i = icmp eq ptr %.val, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1E_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.j = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.j(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1E_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !15, !invariant.load !5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1E_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !15, !invariant.load !5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #27
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1E_5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2D_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2D_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1e_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1l_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1l_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArceEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !198, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !198
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #32
  br label %_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !15, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #27
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !15, !invariant.load !5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #27
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1k_8snapshotNtB2u_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB42_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.a = load i64, ptr %.0.val, align 8, !range !6, !alias.scope !212, !noundef !5
  %0 = icmp eq i64 %i.a, 0
  br i1 %0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !215, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !215
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.g) #29
          to label %bb.e unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.h)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.i) #29
          to label %bb.j unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 184, i64 noundef 8) #27
  ret void

bb.j:                                             ; preds = %bb.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.i ], [ %.pn.i, %bb.e ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 184, i64 noundef 8) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5a_B5a_EENtB2Q_17UnityCatalogErrorEE0B4N_E00EEB2Q_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.a = load ptr, ptr %.0.val, align 8, !alias.scope !225, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !225
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2h_19UnityCatalogBuilder17execute_uc_futureNCNvB2d_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB4B_B4B_EENtB2h_17UnityCatalogErrorEE0B4e_E00EB2h_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2h_19UnityCatalogBuilder17execute_uc_futureNCNvB2d_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB4B_B4B_EENtB2h_17UnityCatalogErrorEE0B4e_E00EB2h_.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2h_19UnityCatalogBuilder17execute_uc_futureNCNvB2d_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB4B_B4B_EENtB2h_17UnityCatalogErrorEE0B4e_E00EB2h_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #27
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #27
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !11, !alias.scope !230, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #27
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #27
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !alias.scope !233, !noundef !5
  switch i64 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

.sink.split.i:                                    ; preds = %bb.e, %bb.b
  %.sink.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.e ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.sink.split.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.sink.split.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.h:                                             ; preds = %.sink.split.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %.sink.split.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #27
  ret void

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.d, %bb.c ], [ %i.g, %bb.f ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 16) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3i_19UnityCatalogBuilder17execute_uc_futureNCNvB3e_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5C_B5C_EENtB3i_17UnityCatalogErrorEE0B5f_E00ENtNtB1B_8schedule16BlockingScheduleEEB3i_:bb.a
  br i1 %i.t, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !442
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #32
          to label %common.resume unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3i_19UnityCatalogBuilder17execute_uc_futureNCNvB3e_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5C_B5C_EENtB3i_17UnityCatalogErrorEE0B5f_E00ENtNtB1B_8schedule16BlockingScheduleEEB3i_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !445, !noundef !5 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.z = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !446
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.h, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.k, %bb.l
  ret void

bb.n:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2e_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5w_5error5ErrorEEs_0EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !range !18, !noundef !5
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2n_8snapshotNtB3x_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB1O_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB56_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2n_8snapshotNtB3x_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB1O_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB56_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 16, !align !19, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2n_8snapshotNtB3x_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB1O_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB56_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1k_8snapshotNtB2u_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB42_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2n_8snapshotNtB3x_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB1O_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB56_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2n_8snapshotNtB3x_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB1O_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB56_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3S_19UnityCatalogBuilder17execute_uc_futureNCNvB3O_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2e_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6c_B6c_EENtB3S_17UnityCatalogErrorEE0B5P_E00EEEEB3S_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !18, !noundef !5
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.f
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit: ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5a_B5a_EENtB2Q_17UnityCatalogErrorEE0B4N_E00EEB2Q_.exit.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !align !19, !noundef !5 ; 5 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.d = load ptr, ptr %.val, align 8, !alias.scope !458, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !458
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5a_B5a_EENtB2Q_17UnityCatalogErrorEE0B4N_E00EEB2Q_.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.val) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5a_B5a_EENtB2Q_17UnityCatalogErrorEE0B4N_E00EEB2Q_.exit.i.i unwind label %bb.e

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.t, %bb.m ], [ %i.t, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 8, i64 noundef 8) #27
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5a_B5a_EENtB2Q_17UnityCatalogErrorEE0B4N_E00EEB2Q_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 8, i64 noundef 8) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !459, !noundef !5
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !459, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.l, align 8, !alias.scope !459 ; 6 uses
  %i.m = icmp eq ptr %.val.i, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.n = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !459 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.n(ptr noundef nonnull %.val.i)
          to label %bb.j unwind label %bb.l, !noalias !459

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !14, !invariant.load !5, !noalias !459 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !15, !invariant.load !5, !noalias !459
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #27, !noalias !459
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3s_19UnityCatalogBuilder17execute_uc_futureNCNvB3o_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB1O_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5M_B5M_EENtB3s_17UnityCatalogErrorEE0B5p_E00EEEB3s_.exit

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !14, !invariant.load !5, !noalias !459 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !15, !invariant.load !5, !noalias !459
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #27, !noalias !459
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 16, !range !18, !noundef !5
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1O_8snapshotNtB2Y_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i32 0, label %bb.b
    i32 1, label %bb.k
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1O_8snapshotNtB2Y_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.b, %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.c = load i64, ptr %i.b, align 16, !range !11, !alias.scope !476, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1O_8snapshotNtB2Y_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %1 = icmp eq i64 %i.c, 0
  br i1 %1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !482, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !482
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.j) #29
          to label %bb.g unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.i, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.l) #29
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1O_8snapshotNtB2Y_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1O_8snapshotNtB2Y_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4N_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !18, !noundef !5
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !497, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !498
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !499, !noundef !5
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !499, !noundef !5 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !499 ; 6 uses
  %i.l = icmp eq ptr %.val.i, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.m = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !499 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.m(ptr noundef nonnull %.val.i)
          to label %bb.i unwind label %bb.k, !noalias !499

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !14, !invariant.load !5, !noalias !499 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !15, !invariant.load !5, !noalias !499
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #27, !noalias !499
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2T_19UnityCatalogBuilder17execute_uc_futureNCNvB2P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5d_B5d_EENtB2T_17UnityCatalogErrorEE0B4Q_E00EEB2T_.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !5, !noalias !499 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !15, !invariant.load !5, !noalias !499
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #27, !noalias !499
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2R_8snapshotNtB41_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2i_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5A_5error5ErrorEEs_0EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.a = load i32, ptr %0, align 16, !range !18, !alias.scope !509, !noundef !5
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3y_8snapshotNtB4I_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2Z_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB6h_5error5ErrorEEs_0EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !509, !align !19, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %.val.i.i.i, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3y_8snapshotNtB4I_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2Z_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB6h_5error5ErrorEEs_0EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1k_8snapshotNtB2u_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB42_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val.i.i.i), !noalias !509
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3y_8snapshotNtB4I_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2Z_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB6h_5error5ErrorEEs_0EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3y_8snapshotNtB4I_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2Z_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB6h_5error5ErrorEEs_0EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB3y_8snapshotNtB4I_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2Z_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB6h_5error5ErrorEEs_0EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !520, !noundef !5
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !523, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !523
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.g) #29
          to label %bb.e unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.h)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.i) #29
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(120) %i.k)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !534, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !534
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !537, !nonnull !5, !noundef !5
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !537
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit1

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %bb.c [
    i64 2, label %bb.d
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtCsb2ODgYNwnRL_6anyhow5errorNtB7_5ErrorNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !6, !alias.scope !540, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %1 = icmp eq i64 %i.c, 0
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs4_NtCsb2ODgYNwnRL_6anyhow5errorNtB7_5ErrorNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noalias !573, !noundef !5
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  ], !prof !8

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.a
  %i.f = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.f, %.noexc ], [ %i.c, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !noalias !575
  store i64 2, ptr %0, align 8, !alias.scope !572, !noalias !575
  %i.h = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !576, !noundef !5
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #31
          to label %.noexc.i.i.i.i unwind label %bb.c, !noalias !576

.noexc.i.i.i.i:                                   ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.d, !noalias !577

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !577
  unreachable

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i: ; preds = %.noexc, %bb.a
  %i.l = atomicrmw add ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT, i64 -1 release, align 8, !noalias !572 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !572
  br label %bb.j

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8 ; 2 uses
  %.sroa.01.0.copyload2.i = load i64, ptr %i.m, align 8, !noalias !572 ; 4 uses
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i64 16, i1 false), !noalias !572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !574
  %i.n = atomicrmw add ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT, i64 -1 release, align 8, !noalias !572 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !572
  store i64 %.sroa.01.0.copyload2.i, ptr %i.b, align 8, !noalias !572
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %.not.i.i = icmp eq i64 %.sroa.01.0.copyload2.i, 3
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.o = icmp eq i64 %.sroa.01.0.copyload2.i, 2
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %1 = icmp eq i64 %.sroa.01.0.copyload2.i, 0
  br i1 %1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.p = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !584, !noalias !572, !nonnull !5, !noundef !5
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !585
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i) #32
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) #29
          to label %bb.o unwind label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.t = load i64, ptr %0, align 8, !range !11, !alias.scope !586, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %2 = icmp eq i64 %i.t, 0
  br i1 %2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !591, !nonnull !5, !noundef !5
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !591
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !20, !noundef !5 ; 8 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.j
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 5, label %bb.m
    i64 6, label %bb.p
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.z
    i64 10, label %bb.as
    i64 11, label %bb.dt
    i64 12, label %bb.du
    i64 13, label %bb.dv
    i64 14, label %bb.dy
    i64 15, label %bb.eb
    i64 16, label %bb.ee
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 18, label %bb.eh
    i64 19, label %bb.ek
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 21, label %bb.en
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 24, label %bb.es
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 26, label %bb.ev
    i64 27, label %bb.ey
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 30, label %bb.fb
    i64 31, label %bb.fe
    i64 32, label %bb.fh
    i64 33, label %bb.fk
    i64 34, label %bb.fn
    i64 35, label %bb.fq
    i64 36, label %bb.ft
    i64 37, label %bb.fw
    i64 38, label %bb.fz
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 40, label %bb.gp
    i64 41, label %bb.gs
    i64 42, label %bb.gv
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.in, %.body36, %.body71, %.body, %bb.gx, %bb.ha, %bb.he, %bb.hg, %bb.hk, %bb.hn, %.body.i.i.i, %bb.hv, %.body.i3.i.i, %bb.ie, %bb.gt, %bb.gb, %bb.ge, %bb.gh, %bb.gk, %bb.gn, %bb.fx, %bb.fu, %bb.fr, %bb.fo, %bb.fl, %bb.fi, %bb.ff, %bb.fc, %bb.ez, %bb.et, %bb.el, %bb.ei, %bb.ef, %bb.ec, %bb.dz, %bb.dw, %bb.au, %bb.ba, %bb.bb, %bb.bl, %bb.bm, %bb.br, %bb.bs, %.body.i, %bb.cm, %bb.cn, %.body38.i, %bb.ct, %bb.cu, %.body43.i, %bb.cz, %bb.da, %.body48.i, %bb.df, %bb.dg, %.body53.i, %bb.dl, %bb.dm, %.body58.i, %bb.dr, %bb.ds, %bb.ab, %bb.ae, %bb.ah, %bb.ak, %bb.aq, %bb.ar, %bb.x, %bb.t, %bb.u, %bb.n, %bb.k, %bb.h, %bb.c, %bb.ij, %bb.er
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body72, %.body71 ], [ %i.g, %bb.c ], [ %i.o, %bb.h ], [ %i.r, %bb.k ], [ %i.u, %bb.n ], [ %i.ae, %bb.t ], [ %i.am, %bb.x ], [ %i.bk, %bb.aq ], [ %i.ib, %bb.dr ], [ %i.ik, %bb.dw ], [ %i.in, %bb.dz ], [ %i.iq, %bb.ec ], [ %i.it, %bb.ef ], [ %i.iw, %bb.ei ], [ %i.jh, %bb.er ], [ %i.iz, %bb.el ], [ %i.jj, %bb.et ], [ %i.jp, %bb.ez ], [ %i.js, %bb.fc ], [ %i.jv, %bb.ff ], [ %i.jy, %bb.fi ], [ %i.kb, %bb.fl ], [ %i.ke, %bb.fo ], [ %i.kh, %bb.fr ], [ %i.kk, %bb.fu ], [ %i.kn, %bb.fx ], [ %i.la, %bb.gn ], [ %i.lg, %bb.gt ], [ %i.nh, %bb.ij ], [ %eh.lpad-body.i4.i.i, %.body.i3.i.i ], [ %i.ae, %bb.u ], [ %i.ba, %bb.ak ], [ %i.ar, %bb.ab ], [ %i.au, %bb.ae ], [ %i.ax, %bb.ah ], [ %i.bk, %bb.ar ], [ %i.hk, %bb.dl ], [ %i.bx, %bb.au ], [ %i.ch, %bb.ba ], [ %i.cz, %bb.bl ], [ %i.dn, %bb.br ], [ %i.et, %bb.cm ], [ %eh.lpad-body59.i, %.body58.i ], [ %i.fl, %bb.ct ], [ %i.gc, %bb.cz ], [ %i.gt, %bb.df ], [ %i.ch, %bb.bb ], [ %i.cz, %bb.bm ], [ %i.dn, %bb.bs ], [ %i.et, %bb.cn ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body39.i, %.body38.i ], [ %eh.lpad-body44.i, %.body43.i ], [ %eh.lpad-body49.i, %.body48.i ], [ %eh.lpad-body54.i, %.body53.i ], [ %i.fl, %bb.cu ], [ %i.gc, %bb.da ], [ %i.gt, %bb.dg ], [ %i.hk, %bb.dm ], [ %i.ib, %bb.ds ], [ %i.ky, %bb.gk ], [ %i.ks, %bb.gb ], [ %i.ku, %bb.ge ], [ %i.kw, %bb.gh ], [ %i.lq, %bb.ha ], [ %i.ln, %bb.gx ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.lv, %bb.he ], [ %i.mc, %bb.hk ], [ %i.mf, %bb.hn ], [ %i.ly, %bb.hg ], [ %i.mo, %bb.hv ], [ %i.nb, %bb.ie ], [ %i.k, %.body ], [ %eh.lpad-body37, %.body36 ], [ %i.np, %bb.in ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !610, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %i.j)
          to label %bb.ih unwind label %.body, !noalias !610, !inline_history !611

.body:                                            ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 96, i64 noundef 16) #27, !noalias !610
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.l, align 16, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val4) #29
          to label %common.resume unwind label %bb.ik

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars9ArrayDataECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i79, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %bb.hc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i80, %bb.gv, %bb.gv, %bb.dq, %bb.dp, %bb.dk, %bb.dj, %bb.de, %bb.dd, %bb.cy, %bb.cx, %bb.cs, %bb.cr, %bb.cl, %bb.ck, %bb.bq, %bb.bp, %bb.bk, %bb.bj, %bb.bg, %bb.bf, %bb.az, %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i19, %bb.as, %bb.ap, %bb.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.z, %bb.s, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit83, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit38, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit76, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserialize18ParseIntervalErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit65, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit62, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit59, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit56, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit53, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit50, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit47, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit34, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit31, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit21, %bb.du, %bb.dt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit12, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !650, !nonnull !5, !noundef !5 ; 7 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.e, !noalias !650, !inline_history !646

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.body.i unwind label %bb.f, !noalias !650, !inline_history !646

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !650, !inline_history !646
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.g, !noalias !650, !inline_history !646

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i, !inline_history !646

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.e, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #29
          to label %bb.j unwind label %bb.h, !noalias !650, !inline_history !646

bb.h:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !650, !inline_history !646
  unreachable

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

common.resume:                                    ; preds = %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.j ], [ %i.o, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #27, !noalias !650
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #27, !noalias !650
  br label %bb.c

bb.k:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val)
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !651, !nonnull !5, !noundef !5 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.m, !noalias !651, !inline_history !649

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #27, !noalias !651
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #27, !noalias !651
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #29
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.c = load i64, ptr %0, align 8, !range !11, !alias.scope !666, !noundef !5
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %.noexc1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !13, !alias.scope !666, !noundef !5
  %i.f = invoke noundef zeroext i1 @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.e)
          to label %.noexc1 unwind label %bb.e    ; 0 uses

.noexc1:                                          ; preds = %bb.a, %bb.b
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.c:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !666, !align !19, !noundef !5 ; 3 uses
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !666
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  store ptr %i.l, ptr %i.b, align 8, !noalias !666
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !666
  store ptr %i.b, ptr %i.a, align 8, !noalias !666
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !666
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 13, ptr noundef nonnull @128, ptr noundef nonnull %i.a) #33
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !666
  br label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0) #29
          to label %bb.j unwind label %bb.i

_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.q = load i64, ptr %0, align 8, !range !11, !alias.scope !667, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %1 = icmp eq i64 %i.q, 0
  br i1 %1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !673, !nonnull !5, !noundef !5
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !673
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, %bb.f, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.j:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.c = load i64, ptr %.0.val, align 8, !range !11, !alias.scope !678, !noalias !679, !noundef !5
  %.not.i.i = icmp eq i64 %i.c, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !679
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !679
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !678, !noalias !679, !align !19, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !680
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !679, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noalias !679, !noundef !5
  store ptr %i.j, ptr %i.b, align 8, !noalias !680
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !680
  store ptr %i.b, ptr %i.a, align 8, !noalias !680
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !680
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 21, ptr noundef nonnull @19, ptr noundef nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !680
  br label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.a = load i64, ptr %.val, align 8, !range !23, !alias.scope !687, !noundef !5
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !687, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !687, !nonnull !5, !noundef !5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #27, !noalias !687
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #27
  resume { ptr, i32 } %i.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %bb.q
    i64 5, label %bb.t
    i64 6, label %bb.w
    i64 8, label %bb.z
    i64 9, label %bb.ac
    i64 10, label %bb.af
    i64 11, label %bb.ai
    i64 12, label %bb.al
    i64 13, label %bb.ao
    i64 14, label %bb.ar
    i64 15, label %bb.au
    i64 16, label %bb.ax
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit24, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.ay, %bb.av, %bb.as, %bb.ap, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.ay ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.x, %bb.l ], [ %i.aa, %bb.o ], [ %i.ad, %bb.r ], [ %i.ag, %bb.u ], [ %i.aj, %bb.x ], [ %i.am, %bb.aa ], [ %i.ap, %bb.ad ], [ %i.as, %bb.ag ], [ %i.av, %bb.aj ], [ %i.ba, %bb.ap ], [ %i.bd, %bb.as ], [ %i.bg, %bb.av ], [ %i.q, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !5, !align !19, !noundef !5 ; 5 uses
  %i.k = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.k(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !15, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1o_NtNtNtB1s_4task4wake5WakerEEEENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuarduENCNvMs9_B10_BX_3new0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 4 %3) unnamed_addr #2 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !814
  br i1 %i.d, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !815
  store i32 2, ptr %i.e, align 16, !noalias !815
  %i.f = load i32, ptr %i.a, align 16, !range !18, !noalias !815, !noundef !5
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %bb.e unwind label %bb.d, !noalias !816

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %i.a, align 16, !range !18, !noalias !815, !noundef !5
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2e_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5w_5error5ErrorEEs_0EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(112) %i.a) #29
          to label %common.resume.i unwind label %bb.g, !noalias !816

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !816
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !815
  %i.m = load i64, ptr %1, align 16, !range !30, !alias.scope !818, !noundef !5
  %.not.i.i = icmp eq i64 %i.m, -9223372036854775741
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !819
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !829
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3p_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !830
  store i32 2, ptr %i.d, align 8, !noalias !830
  %i.e = load i32, ptr %i.a, align 8, !range !18, !noalias !830, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %bb.d unwind label %bb.e, !noalias !831

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.w, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3S_19UnityCatalogBuilder17execute_uc_futureNCNvB3O_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2e_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6c_B6c_EENtB3S_17UnityCatalogErrorEE0B5P_E00EEEEB3S_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #29
          to label %common.resume.i unwind label %bb.f, !noalias !831

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !831
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.j = load i64, ptr %1, align 8, !range !6, !alias.scope !834, !noundef !5
  %3 = icmp eq i64 %i.j, 0
  br i1 %3, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !836, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !836, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !836 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i.i, null
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !5, !noalias !836 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !836

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !14, !invariant.load !5, !noalias !836 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !5, !noalias !836
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #27, !noalias !836
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !5, !noalias !836 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !invariant.load !5, !noalias !836
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #27, !noalias !836
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !837
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3l_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !829
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !837
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3p_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3p_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 16              ; 6 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !845
  br i1 %i.d, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.a, ptr noundef nonnull align 16 dereferenceable(208) %i.e, i64 208, i1 false), !noalias !846
  store i32 2, ptr %i.e, align 16, !noalias !846
  %i.f = load i32, ptr %i.a, align 16, !range !18, !noalias !846, !noundef !5
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %bb.e unwind label %bb.d, !noalias !847

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %i.a, align 16, !range !18, !noalias !846, !noundef !5
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(208) %i.a) #29
          to label %common.resume.i unwind label %bb.g, !noalias !847

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !847
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !noalias !848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !846
  %i.m = load i64, ptr %1, align 16, !range !30, !alias.scope !849, !noundef !5
  %.not.i.i = icmp eq i64 %i.m, -9223372036854775741
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !850
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2M_19UnityCatalogBuilder17execute_uc_futureNCNvB2I_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5m_B5m_EENtB2M_17UnityCatalogErrorEE0B4J_E00ENtNtB15_8schedule16BlockingScheduleEB2M_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !860
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2Q_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !861
  store i32 2, ptr %i.d, align 8, !noalias !861
  %i.e = load i32, ptr %i.a, align 8, !range !18, !noalias !861, !noundef !5
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2M_19UnityCatalogBuilder17execute_uc_futureNCNvB2I_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5m_B5m_EENtB2M_17UnityCatalogErrorEE0B4J_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2M_.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28
          to label %bb.e unwind label %bb.d, !noalias !862

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !18, !noalias !861, !noundef !5
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %.body.i ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #29
          to label %common.resume.i unwind label %bb.g, !noalias !862

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !862
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2M_19UnityCatalogBuilder17execute_uc_futureNCNvB2I_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5m_B5m_EENtB2M_17UnityCatalogErrorEE0B4J_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2M_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.l = load i64, ptr %1, align 8, !range !6, !alias.scope !865, !noundef !5
  %3 = icmp eq i64 %i.l, 0
  br i1 %3, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2M_19UnityCatalogBuilder17execute_uc_futureNCNvB2I_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5m_B5m_EENtB2M_17UnityCatalogErrorEE0B4J_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2M_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !867, !noundef !5
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !867, !noundef !5 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !867 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i.i, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !5, !noalias !867 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i.i)
          to label %bb.l unwind label %bb.n, !noalias !867

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !5, !noalias !867 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !15, !invariant.load !5, !noalias !867
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #27, !noalias !867
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !14, !invariant.load !5, !noalias !867 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !15, !invariant.load !5, !noalias !867
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #27, !noalias !867
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !868
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2M_19UnityCatalogBuilder17execute_uc_futureNCNvB2I_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5m_B5m_EENtB2M_17UnityCatalogErrorEE0B4J_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2M_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !860
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !868
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2Q_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2Q_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2i_8snapshotNtB3s_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1J_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5h_5error5ErrorEEs_0EENtNtB17_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2M_8snapshotNtB3W_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2d_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2R_8snapshotNtB41_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5z_5error5ErrorEEs_0EENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #27
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2R_8snapshotNtB41_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5z_5error5ErrorEEs_0EENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #27
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2R_8snapshotNtB41_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5z_5error5ErrorEEs_0EENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3n_19UnityCatalogBuilder17execute_uc_futureNCNvB3j_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1J_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5X_B5X_EENtB3n_17UnityCatalogErrorEE0B5k_E00EENtNtB17_8schedule16BlockingScheduleEB3n_(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3p_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3R_19UnityCatalogBuilder17execute_uc_futureNCNvB3N_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2d_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6b_B6b_EENtB3R_17UnityCatalogErrorEE0B5O_E00EENtNtB1B_8schedule16BlockingScheduleEEB3R_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #27
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #27
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3p_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3p_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1J_8snapshotNtB2T_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4Y_5error5ErrorEEs_0ENtNtB17_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5c_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #27
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #27
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2O_19UnityCatalogBuilder17execute_uc_futureNCNvB2K_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5o_B5o_EENtB2O_17UnityCatalogErrorEE0B4L_E00ENtNtB17_8schedule16BlockingScheduleEB2O_(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2Q_.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3i_19UnityCatalogBuilder17execute_uc_futureNCNvB3e_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5C_B5C_EENtB3i_17UnityCatalogErrorEE0B5f_E00ENtNtB1B_8schedule16BlockingScheduleEEB3i_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3T_19UnityCatalogBuilder17execute_uc_futureNCNvB3P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6d_B6d_EENtB3T_17UnityCatalogErrorEE0B5Q_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3T_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #27
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3T_19UnityCatalogBuilder17execute_uc_futureNCNvB3P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6d_B6d_EENtB3T_17UnityCatalogErrorEE0B5Q_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3T_.exit.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #27
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2Q_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2Q_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3T_19UnityCatalogBuilder17execute_uc_futureNCNvB3P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6d_B6d_EENtB3T_17UnityCatalogErrorEE0B5Q_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3T_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2m_8snapshotNtB3w_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1N_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5l_5error5ErrorEEs_0EENtNtB1b_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.i, %bb.h, %bb.e, %.thread.i, %bb.a
  br i1 %i.c, label %bb.o, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !871
  store i32 2, ptr %i.a, align 16, !noalias !871
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 16 %i.e, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.a)
          to label %.thread.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #30
  unreachable

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !871
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !15, !invariant.load !5
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !15, !invariant.load !5
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #27
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.n, %bb.k, %bb.j
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.s, %bb.k ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2M_8snapshotNtB3W_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2d_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2R_8snapshotNtB41_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5z_5error5ErrorEEs_0EENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.n

end_hunk_4
begin_hunk_5_@_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEEs_0CsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1110, !noalias !1111, !align !19, !noundef !5 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1113
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1111, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noalias !1111, !noundef !5
  store ptr %i.v, ptr %i.e, align 8, !noalias !1113
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !1113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1113
  store ptr %i.e, ptr %i.d, align 8, !noalias !1113
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !1113
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 21, ptr noundef nonnull @21, ptr noundef nonnull %i.d) #33
          to label %.noexc4.i.i unwind label %bb.r

.noexc4.i.i:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1113
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i: ; preds = %.noexc4.i.i, %bb.d, %.noexc3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 120, i1 false), !noalias !1108
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1112
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 88, i1 false), !noalias !1108
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.ab, align 8, !noalias !1115
  store i64 0, ptr %i.c, align 8, !noalias !1115
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !1115
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1115
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1115
  %i.ad = load i64, ptr %i.f, align 8, !range !6, !alias.scope !1114, !noalias !1112, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !1114, !noalias !1112, !noundef !5
  store i64 1, ptr %i.c, align 8, !noalias !1115
  store i64 %i.ah, ptr %i.ag, align 8, !noalias !1115
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1114, !noalias !1112, !nonnull !5, !noundef !5 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1114, !noalias !1112, !nonnull !5, !align !19, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !15, !invariant.load !5, !noalias !1116
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = and i64 %i.ao, -16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.al)
          to label %bb.j unwind label %bb.h, !noalias !1117

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !1118
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.i, label %.body.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #32
          to label %.body.i.i unwind label %bb.l, !noalias !1119

bb.j:                                             ; preds = %bb.g
  %i.av = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !1120
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #32
          to label %bb.n unwind label %bb.m, !noalias !1111

bb.l:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1119
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.as, %bb.i ], [ %i.as, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.n) #29
          to label %.body.i unwind label %bb.q, !noalias !1111

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1112
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.az = load i64, ptr %i.n, align 8, !range !11, !alias.scope !1121, !noalias !1122, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.az, 2
  br i1 %.not.i.i.i.i.i, label %.noexc7.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.noexc7.i.i unwind label %bb.s, !noalias !1107

.noexc7.i.i:                                      ; preds = %bb.o, %bb.n
  %i.bb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1123
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.p:                                             ; preds = %.noexc7.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1121, !noalias !1122, !align !19, !noundef !5 ; 3 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not4.i.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.noexc8.i.i

.noexc8.i.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1124
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1122, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !1122, !noundef !5
  store ptr %i.bg, ptr %i.b, align 8, !noalias !1124
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !1124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1124
  store ptr %i.b, ptr %i.a, align 8, !noalias !1124
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1124
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 21, ptr noundef nonnull @19, ptr noundef nonnull %i.a) #33
          to label %.noexc3.i unwind label %bb.s

.noexc3.i:                                        ; preds = %.noexc8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1124
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.q:                                             ; preds = %bb.r, %.body.i.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1125
  unreachable

bb.r:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g) #29
          to label %.body.i unwind label %bb.q, !noalias !1125

bb.s:                                             ; preds = %.noexc8.i.i, %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.r, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %lpad.thr_comm.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.h) #29
          to label %.body unwind label %bb.t, !noalias !1107

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %.noexc3.i, %bb.p, %.noexc7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1106
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.h)
          to label %bb.y unwind label %bb.v

bb.t:                                             ; preds = %bb.u, %.body.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1126
  unreachable

bb.u:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_8Snapshot19try_new_with_engine00ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.i)
          to label %.body unwind label %bb.t, !noalias !1126

bb.v:                                             ; preds = %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.u, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.v ], [ %i.bn, %bb.u ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.bp = load i64, ptr %1, align 8, !range !6, !alias.scope !1129, !noundef !5
  %2 = icmp eq i64 %i.bp, 0
  br i1 %2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.w

bb.w:                                             ; preds = %.body
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !1132, !nonnull !5, !noundef !5
  %i.bs = atomicrmw add ptr %i.br, i64 -1 release, align 8, !noalias !1132
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bq) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ac

bb.y:                                             ; preds = %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.bu = load i64, ptr %1, align 8, !range !6, !alias.scope !1135, !noundef !5
  %3 = icmp eq i64 %i.bu, 0
  br i1 %3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit3, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1138, !nonnull !5, !noundef !5
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !1138
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv) #32
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.j) #29
          to label %bb.ad unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %bb.z, %bb.y, %bb.aa
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.j)
  ret void

bb.ac:                                            ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.ab
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ab ], [ %eh.lpad-body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  resume { ptr, i32 } %.pn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.w, %.body, %bb.x
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %i.j) #29
          to label %bb.ad unwind label %bb.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !align !19, !noundef !5 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !24, !noundef !5
  %switch.offset = sub nuw nsw i64 5, %i.j
  %i.k = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.l = icmp ult i64 %i.k, 6
  tail call void @llvm.assume(i1 %i.l)
  %.not72 = icmp samesign ugt i64 %switch.offset, %i.k
  br i1 %.not72, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.j, %bb.n, %switch.lookup, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 3 uses
  store i64 5, ptr %i.e, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.771.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !nonnull !5
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #33
  br i1 %i.r, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 8, !range !11, !noundef !5
  %.not73 = icmp eq i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br i1 %.not73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = load ptr, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %.not76 = icmp eq ptr %i.u, null
  br i1 %.not76, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %.not74 = icmp eq ptr %i.v, null
  br i1 %.not74, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.x = load i64, ptr %i.w, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.540.sroa.5.0 = phi i64 [ %i.x, %bb.g ], [ undef, %bb.e ]
  %.sroa.039.0 = phi i64 [ 1, %bb.g ], [ 2, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %.not77 = icmp eq ptr %i.z, null
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ab = load i64, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.6.sroa.5.0 = phi i64 [ undef, %bb.h ], [ %i.ab, %bb.i ]
  %.sroa.031.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !13, !noundef !5
  store i64 %i.ae, ptr %i.c, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.028.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.028.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ag = load <2 x i32>, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  store ptr @_RNvXs8_NtCsbvkFyIu7lgC_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  store ptr %i.c, ptr %i.af, align 8
  store ptr @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx, align 8
  store i64 %.sroa.039.0, ptr %i.d, align 8
  store ptr %i.u, ptr %.sroa.028.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.540.sroa.5.0, ptr %.sroa.028.sroa.3.sroa.3.0..sroa.028.sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.031.0, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.028.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.6.sroa.5.0, ptr %.sroa.028.sroa.6.sroa.3.0..sroa.028.sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 5, ptr %.sroa.530.0..sroa_idx, align 8
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8
  store <2 x i32> %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @18, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !5, !nonnull !5
  call void %i.ai(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b
end_hunk_5
