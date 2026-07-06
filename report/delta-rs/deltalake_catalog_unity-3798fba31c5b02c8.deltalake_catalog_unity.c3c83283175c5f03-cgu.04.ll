inline.NumInlined: 996
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB28_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %.not = icmp eq i64 %i.a, -9223372036854775741
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %.not.i = icmp eq i64 %i.a, -9223372036854775742
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.b = icmp eq i64 %i.a, -9223372036854775743
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !327, !nonnull !10, !noundef !10
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !327
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 16, !alias.scope !331, !noundef !10 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !331 ; 6 uses
  %i.i = icmp eq ptr %.val.i.i, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.j = load ptr, ptr %.val1.i.i, align 8, !invariant.load !10, !noalias !331 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.j(ptr noundef nonnull %.val.i.i)
          to label %bb.j unwind label %bb.k, !noalias !331

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !118, !invariant.load !10, !noalias !331 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !119, !invariant.load !10, !noalias !331
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.l, i64 noundef range(i64 1, 536870913) %i.o) #37, !noalias !331
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !118, !invariant.load !10, !noalias !331 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !119, !invariant.load !10, !noalias !331
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.r, i64 noundef range(i64 1, 536870913) %i.u) #37, !noalias !331
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.k
  resume { ptr, i32 } %i.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB1I_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !338, !noundef !10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !noalias !351, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !351, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !351, !noundef !10
  invoke void %i.e(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c, !inline_history !60

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !361, !nonnull !10, !align !166, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !361, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !361, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !361, !noundef !10
  invoke void %i.o(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.r, i64 noundef %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d, !inline_history !362

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !372, !nonnull !10, !align !166, !noundef !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !372, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !372, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !372, !noundef !10
  tail call void %i.x(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.aa, i64 noundef %i.ac), !inline_history !373
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !377, !noalias !380
  %.promoted9.i = load i64, ptr %i.b, align 8, !alias.scope !374
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !374, !nonnull !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !374 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !374, !nonnull !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.e, align 8, !alias.scope !374
  br label %bb.b

bb.b:                                             ; preds = %.noexc2, %bb.a
  %i.p = phi ptr [ %i.aq, %.noexc2 ], [ %.promoted12.i, %bb.a ] ; 7 uses
  %.sroa.5.0.i10.i = phi i64 [ %.sroa.5.0.i11.i, %.noexc2 ], [ %.promoted9.i, %bb.a ] ; 3 uses
  %.sroa.0.0.i7.i = phi i64 [ %.sroa.0.0.i8.i, %.noexc2 ], [ %.promoted.i, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !374
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.q = trunc nuw i64 %.sroa.0.0.i7.i to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %.sroa.5.0.i10.i, %i.j
  br i1 %i.r, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.s = icmp eq ptr %i.p, %i.d
  br i1 %i.s, label %bb.l, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 3 uses
  store ptr %i.t, ptr %i.e, align 8, !alias.scope !386, !noalias !387
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !389 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.sroa.5.0.i10.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !150, !noalias !390, !noundef !10
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %.thread.i

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0.i10.i, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #35
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noalias !390, !noundef !10
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.e
  %.sroa.5.0.i.i = phi i64 [ %i.z, %bb.g ], [ undef, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.e ] ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !377, !noalias !380
  store i64 %.sroa.5.0.i.i, ptr %i.b, align 8, !alias.scope !377, !noalias !380
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !noalias !377
  store i64 0, ptr %i.a, align 8, !alias.scope !380, !noalias !377
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.h:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, i64 32, i1 false), !noalias !377
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !377
  %i.ac = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  %.sroa.05.0.i.i = and i64 %.sroa.0.0.copyload.i.i, 1 ; 3 uses
  %.sroa.56.0.i.i = select i1 %i.ac, i64 %.sroa.7.0.copyload.i.i, i64 undef ; 3 uses
  store i64 %.sroa.05.0.i.i, ptr %0, align 8, !alias.scope !377, !noalias !380
  store i64 %.sroa.56.0.i.i, ptr %i.b, align 8, !alias.scope !377, !noalias !380
  store i64 1, ptr %i.a, align 8, !alias.scope !380, !noalias !377
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.ad = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !406, !noalias !374, !noundef !10 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !419, !nonnull !10, !noundef !10
  %i.ah = load ptr, ptr %i.g, align 8, !alias.scope !420, !noalias !374, !noundef !10
  %i.ai = load i64, ptr %i.h, align 8, !alias.scope !420, !noalias !374, !noundef !10
  invoke void %i.ag(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.j, !noalias !374, !inline_history !421

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ak = load ptr, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !431, !noalias !374, !nonnull !10, !align !166, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !432, !nonnull !10, !noundef !10
  %i.an = load ptr, ptr %i.n, align 8, !alias.scope !431, !noalias !374, !noundef !10
  %i.ao = load i64, ptr %i.o, align 8, !alias.scope !431, !noalias !374, !noundef !10
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.an, i64 noundef %i.ao)
          to label %.body unwind label %bb.k, !noalias !374, !inline_history !362

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !374
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.i, %bb.h, %.thread.i
  %i.aq = phi ptr [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.p, %.thread.i ]
  %.sroa.5.0.i11.i = phi i64 [ %.sroa.56.0.i.i, %bb.h ], [ %.sroa.56.0.i.i, %bb.i ], [ %.sroa.5.0.i.i, %.thread.i ]
  %.sroa.0.0.i8.i = phi i64 [ %.sroa.05.0.i.i, %bb.h ], [ %.sroa.05.0.i.i, %bb.i ], [ %.sroa.0.0.i.i, %.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.ar = load ptr, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !442, !noalias !374, !nonnull !10, !align !166, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !443, !nonnull !10, !noundef !10
  %i.au = load ptr, ptr %i.n, align 8, !alias.scope !442, !noalias !374, !noundef !10
  %i.av = load i64, ptr %i.o, align 8, !alias.scope !442, !noalias !374, !noundef !10
  invoke void %i.at(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.au, i64 noundef %i.av)
          to label %.noexc2 unwind label %.loopexit, !inline_history !444

.noexc2:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !374
  br label %bb.b

.loopexit:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.p

bb.l:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !374
  store i64 0, ptr %i.i, align 8, !alias.scope !374
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.az, %bb.m ], [ %eh.lpad-body, %.body ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #38
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
  ret void

bb.p:                                             ; preds = %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1v_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2q_10ValueEntryB1Y_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3t_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2U_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.b
  %.val2 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.d = shl nuw nsw i64 %.val3, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.d, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4: ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.g = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit5: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtBP_6HandleINtBP_7NodeRefNtNtBP_6marker5DyingpppENtB26_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !149, !alias.scope !445, !noundef !10
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RNvXNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
  br label %_RNvXNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2x_ENtNtBV_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree nonnull captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCsbvkFyIu7lgC_4core6option6OptionB17_EE10dying_nextCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_RNvXNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.c = phi ptr [ %i.b, %.lr.ph.i ], [ %i.d, %bb.b ]
  %.sroa.21.0.copyload.i = load i64, ptr %.sroa.21.0..sroa_idx.i, align 8
  tail call fastcc void @_RNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCsbvkFyIu7lgC_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.c, i64 %.sroa.21.0.copyload.i) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCsbvkFyIu7lgC_4core6option6OptionB17_EE10dying_nextCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.d = load ptr, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RNvXNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_17read_commit_entry0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !448, !noundef !10
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE10push_frameCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %.invoke.i

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %.noexc.i
  %i.bt = load ptr, ptr %i.br, align 8, !noalias !948, !nonnull !10, !noundef !10
  %i.bu = icmp ult i64 %.sroa.022.0.i.i, %i.bq
  tail call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !948
  store i64 %i.bq, ptr %i.f, align 8, !noalias !948
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bt, ptr %i.bv, align 8, !noalias !948
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.bw, align 8, !noalias !948
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE11extend_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bj, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.q, !noalias !951

bb.q:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %.body.i unwind label %bb.r, !noalias !951

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !951
  unreachable

_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !948
  %i.bz = invoke { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE16into_boxed_sliceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc23.i unwind label %bb.l, !noalias !941 ; 2 uses

.noexc23.i:                                       ; preds = %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !947
  %.val31.i.i = load i64, ptr %i.bb, align 8, !alias.scope !945, !noalias !941, !noundef !10 ; 2 uses
  %i.cc = icmp eq i64 %.val31.i.i, 0
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i: ; preds = %.noexc23.i
  %.val.i20.i = load ptr, ptr %i.ba, align 8, !alias.scope !945, !noalias !941, !nonnull !10, !noundef !10
  %i.cd = shl nuw nsw i64 %.val31.i.i, 2
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i20.i, i64 noundef %i.cd, i64 noundef 2) #37, !noalias !952
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.s:                                             ; preds = %bb.n
  %i.ce = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.bj) #39
          to label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.l, !noalias !941

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i, %.noexc23.i
  store ptr %i.ca, ptr %i.ba, align 8, !alias.scope !945, !noalias !941
  store i64 %i.cb, ptr %i.bb, align 8, !alias.scope !945, !noalias !941
  %i.cf = lshr i64 %i.bj, 2
  %i.cg = sub nsw i64 %i.bj, %i.cf                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !947
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.cg, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc25.i unwind label %bb.l, !noalias !941

.noexc25.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ch = load i64, ptr %i.g, align 8, !range !150, !noalias !947, !noundef !10
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !149, !noalias !947, !noundef !10 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !112

bb.t:                                             ; preds = %.noexc25.i
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !947
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.t, %bb.p
  %i.cn = phi i64 [ %i.ck, %bb.t ], [ %i.bq, %bb.p ]
  %i.co = phi i64 [ %i.cm, %bb.t ], [ %i.bs, %bb.p ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.co) #33
          to label %.cont.i unwind label %bb.l, !noalias !941

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.u:                                             ; preds = %.noexc25.i
  %i.cp = load ptr, ptr %i.cl, align 8, !noalias !947, !nonnull !10, !noundef !10 ; 2 uses
  %i.cq = icmp ule i64 %i.cg, %i.ck
  call void @llvm.assume(i1 %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !947
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.w unwind label %bb.v, !noalias !941

bb.v:                                             ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body.i.i unwind label %bb.x, !noalias !941

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.y, !noalias !941

bb.x:                                             ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !941
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.y, %bb.v
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cr, %bb.v ]
  store i64 %i.ck, ptr %i.aw, align 8, !alias.scope !945, !noalias !941
  %.sroa.5.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cp, ptr %.sroa.5.0..sroa_idx.i21.i, align 8, !alias.scope !945, !noalias !941
  store i64 0, ptr %i.aq, align 8, !alias.scope !945, !noalias !941
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.w
  store i64 %i.ck, ptr %i.aw, align 8, !alias.scope !945, !noalias !941
  %.sroa.5.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cp, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !alias.scope !945, !noalias !941
  store i64 0, ptr %i.aq, align 8, !alias.scope !945, !noalias !941
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.s
  br i1 %i.ce, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !953

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i: ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #33
          to label %.noexc27.i unwind label %bb.l, !noalias !941

.noexc27.i:                                       ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !930
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.cu = load i64, ptr %i.q, align 8, !range !150, !alias.scope !957, !noalias !959, !noundef !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %i.cw = trunc nuw i64 %i.cu to i1
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.cx = load i64, ptr %i.cv, align 8, !alias.scope !957, !noalias !959, !noundef !10 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !957, !noalias !959, !noundef !10 ; 2 uses
  %i.da = icmp ult i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.db = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !963, !noalias !964, !nonnull !10, !noundef !10
  %i.dc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !963, !noalias !964, !nonnull !10, !noundef !10 ; 6 uses
  %i.dd = icmp eq ptr %i.dc, %i.db
  br i1 %i.dd, label %bb.ae, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  store ptr %i.de, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !963, !noalias !964
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dc, align 8, !noalias !966 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.ae, label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !957, !noalias !959, !nonnull !10, !noundef !10
  %i.dh = getelementptr inbounds nuw [72 x i8], ptr %i.dg, i64 %i.cx ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !range !150, !noalias !967, !noundef !10
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.ad, label %bb.ah

bb.ac:                                            ; preds = %bb.z
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #35
          to label %.noexc29.i unwind label %bb.l, !noalias !941

.noexc29.i:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !967, !noundef !10
  br label %bb.ah

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !930
  br label %bb.af

bb.af:                                            ; preds = %bb.bf, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.j unwind label %bb.bx

bb.ag:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !966
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.do = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  %.sroa.05.0.i.i = and i64 %.sroa.0.0.copyload.i.i, 1
  %.sroa.56.0.i.i = select i1 %i.do, i64 %.sroa.7.0.copyload.i.i, i64 undef
  store i64 %.sroa.05.0.i.i, ptr %i.q, align 8, !alias.scope !957, !noalias !959
  store i64 %.sroa.56.0.i.i, ptr %i.cv, align 8, !alias.scope !957, !noalias !959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, i64 32, i1 false), !noalias !941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i64 40, i1 false), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !930
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 50
  %.sroa.568.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.671.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.774.0..sroa_idx75.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.774.sroa.4.0..sroa.774.0..sroa_idx75.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.774.sroa.5.0..sroa.774.0..sroa_idx75.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.582.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.am

bb.ah:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.5.0.i.i = phi i64 [ %i.dm, %bb.ad ], [ undef, %bb.ab ]
  %.sroa.0.0.i28.i = phi i64 [ 1, %bb.ad ], [ 0, %bb.ab ]
  store i64 %.sroa.0.0.i28.i, ptr %i.q, align 8, !alias.scope !957, !noalias !959
  store i64 %.sroa.5.0.i.i, ptr %i.cv, align 8, !alias.scope !957, !noalias !959
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ed, i64 40, i1 false), !noalias !968
  store i64 0, ptr %i.o, align 8, !alias.scope !954, !noalias !969
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 73 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #33
          to label %bb.aj unwind label %bb.ai, !noalias !941

bb.ai:                                            ; preds = %bb.ah
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load i64, ptr %i.o, align 8, !range !25, !noalias !930, !noundef !10
  %.not10.i = icmp eq i64 %i.ef, 2
  br i1 %.not10.i, label %.body.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.eg = load ptr, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !alias.scope !979, !noalias !930, !nonnull !10, !align !166, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !980, !nonnull !10, !noundef !10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !979, !noalias !930, !noundef !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !979, !noalias !930, !noundef !10
  invoke void %i.ei(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.el, i64 noundef %i.en)
          to label %.body.i unwind label %bb.al, !noalias !941, !inline_history !362

bb.al:                                            ; preds = %bb.bw, %bb.ak, %.body.i
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !941
  unreachable

bb.am:                                            ; preds = %bb.bg, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.774.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !930
  invoke void @_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.an unwind label %.loopexit.i, !noalias !941

.body33.thread100.loopexit.i:                     ; preds = %bb.ax, %bb.aq
  %lpad.loopexit109.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body33.thread100.loopexit.split-lp.i:            ; preds = %.noexc.i.i, %bb.bd, %bb.az
  %lpad.loopexit.split-lp110.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.ep = load i8, ptr %i.dp, align 2, !range !448, !alias.scope !984, !noalias !986, !noundef !10 ; 3 uses
  %i.eq = icmp eq i8 %i.ep, 3
  br i1 %i.eq, label %bb.ao, label %bb.ap, !prof !112

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !941

.noexc31.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %.sroa.066.0.copyload67.i = load ptr, ptr %i.n, align 8, !alias.scope !987, !noalias !930 ; 12 uses
  %.sroa.671.0.copyload73.i = load i64, ptr %.sroa.671.0..sroa_idx72.i, align 8, !alias.scope !987, !noalias !930 ; 6 uses
  %i.er = load <2 x i64>, ptr %.sroa.568.0..sroa_idx69.i, align 8, !alias.scope !987, !noalias !930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.774.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.774.0..sroa_idx75.i, i64 16, i1 false), !alias.scope !987, !noalias !930
  %.sroa.774.sroa.4.0.copyload.i = load i64, ptr %.sroa.774.sroa.4.0..sroa.774.0..sroa_idx75.sroa_idx.i, align 8, !alias.scope !987, !noalias !930
  %.sroa.774.sroa.5.0.copyload.i = load i16, ptr %.sroa.774.sroa.5.0..sroa.774.0..sroa_idx75.sroa_idx.i, align 8, !alias.scope !987, !noalias !930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !930
  %.not11.i = icmp eq i8 %i.ep, 2
  br i1 %.not11.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.582.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.774.sroa.0.i, i64 16, i1 false), !noalias !930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !930
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.0.copyload67.i) ]
  store <2 x i64> %i.er, ptr %i.d, align 16, !noalias !993
  %i.es = trunc nuw i8 %i.ep to i1
  %i.et = invoke fastcc { i64, i64 } @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %.sroa.066.0.copyload67.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k, i16 noundef %.sroa.774.sroa.5.0.copyload.i, i64 noundef %.sroa.774.sroa.4.0.copyload.i, i1 noundef zeroext %i.es) #39
          to label %.noexc32.i unwind label %.body33.thread100.loopexit.i, !noalias !941 ; 2 uses

.noexc32.i:                                       ; preds = %bb.aq
  %i.eu = extractvalue { i64, i64 } %i.et, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !988
  %i.ev = trunc nuw i64 %i.eu to i1
  br i1 %i.ev, label %bb.az, label %bb.ba

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.0.copyload67.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !930
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 40 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !994, !noalias !999, !noundef !10 ; 3 uses
  %i.ez = icmp ult i64 %.sroa.671.0.copyload73.i, %i.ey
  br i1 %i.ez, label %bb.as, label %.invoke.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fa = load ptr, ptr %i.ew, align 8, !alias.scope !994, !noalias !999, !nonnull !10, !noundef !10
  %i.fb = getelementptr inbounds nuw [104 x i8], ptr %i.fa, i64 %.sroa.671.0.copyload73.i ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !range !150, !noalias !1001, !noundef !10
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %bb.au, label %bb.av

.loopexit112.i:                                   ; preds = %bb.au
  %lpad.loopexit114.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp113.i:                          ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp115.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp113.i, %.loopexit112.i
  %lpad.phi116.i = phi { ptr, i32 } [ %lpad.loopexit114.i, %.loopexit112.i ], [ %lpad.loopexit.split-lp115.i, %.loopexit.split-lp113.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.fe = load ptr, ptr %i.l, align 8, !alias.scope !1011, !noalias !1012, !nonnull !10, !align !166, !noundef !10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !1013, !nonnull !10, !noundef !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !1011, !noalias !1012, !noundef !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !1011, !noalias !1012, !noundef !10
  invoke void %i.fg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %i.fj, i64 noundef %i.fl)
          to label %.body.i unwind label %bb.aw, !noalias !1014, !inline_history !362

bb.au:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !1001, !noundef !10
  invoke void @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %.sroa.066.0.copyload67.i, i64 noundef %i.fn)
          to label %._crit_edge.i.i unwind label %.loopexit112.i, !noalias !999

._crit_edge.i.i:                                  ; preds = %bb.au
  %.pre.i.i = load i64, ptr %i.ex, align 8, !alias.scope !994, !noalias !999
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i, %bb.as
  %i.fo = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ey, %bb.as ] ; 2 uses
  %i.fp = icmp ult i64 %.sroa.671.0.copyload73.i, %i.fo
  br i1 %i.fp, label %bb.ax, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.av, %bb.ar
  %i.fq = phi i64 [ %i.fo, %bb.av ], [ %i.ey, %bb.ar ]
  %i.fr = phi ptr [ @41, %bb.av ], [ @40, %bb.ar ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.671.0.copyload73.i, i64 noundef %i.fq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fr) #33
          to label %.cont.i.i unwind label %.loopexit.split-lp113.i, !noalias !1001

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1014
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ft = load ptr, ptr %i.ew, align 8, !alias.scope !994, !noalias !999, !nonnull !10, !noundef !10
  %i.fu = getelementptr inbounds nuw [104 x i8], ptr %i.ft, i64 %.sroa.671.0.copyload73.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, i64 40, i1 false), !noalias !1015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !930
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.fw = load ptr, ptr %i.m, align 8, !alias.scope !1025, !noalias !930, !nonnull !10, !align !166, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !1026, !nonnull !10, !noundef !10
  %i.fz = load ptr, ptr %i.dr, align 8, !alias.scope !1025, !noalias !930, !noundef !10
  %i.ga = load i64, ptr %i.ds, align 8, !alias.scope !1025, !noalias !930, !noundef !10
  invoke void %i.fy(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.fz, i64 noundef %i.ga)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i unwind label %.body33.thread100.loopexit.i, !noalias !941, !inline_history !362

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !930
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i
  %.sroa.7.0.i = phi i64 [ %.sroa.671.0.copyload73.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i ], [ %i.gi, %bb.ba ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.774.sroa.0.i)
  %i.gb = load i64, ptr %i.q, align 8, !range !150, !alias.scope !1027, !noalias !1030, !noundef !10
  %i.gc = trunc nuw i64 %i.gb to i1
  br i1 %i.gc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ay
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 48 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 64 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 56 ; 3 uses
  br label %bb.bb

bb.az:                                            ; preds = %.noexc32.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33
          to label %.noexc37.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !941

.noexc37.i:                                       ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %.noexc32.i
  %i.gi = extractvalue { i64, i64 } %i.et, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !930
  br label %bb.ay

bb.bb:                                            ; preds = %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.gj = load i64, ptr %i.cv, align 8, !alias.scope !1032, !noalias !1030, !noundef !10 ; 3 uses
  %i.gk = load i64, ptr %i.dt, align 8, !alias.scope !1032, !noalias !1030, !noundef !10 ; 2 uses
  %i.gl = icmp ult i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.bc, label %bb.bd

._crit_edge.i:                                    ; preds = %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.gm = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1037, !noalias !1038, !nonnull !10, !noundef !10
  %i.gn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1037, !noalias !1038, !nonnull !10, !noundef !10 ; 6 uses
  %i.go = icmp eq ptr %i.gn, %i.gm
  br i1 %i.go, label %bb.bf, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i: ; preds = %._crit_edge.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  store ptr %i.gp, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1037, !noalias !1038
  %.sroa.0.0.copyload.i39.i = load i64, ptr %i.gn, align 8, !noalias !1040 ; 3 uses
  %.not.i40.i = icmp eq i64 %.sroa.0.0.copyload.i39.i, 2
  br i1 %.not.i40.i, label %bb.bf, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.gq = load ptr, ptr %i.du, align 8, !alias.scope !1032, !noalias !1030, !nonnull !10, !noundef !10
  %i.gr = getelementptr inbounds nuw [72 x i8], ptr %i.gq, i64 %i.gj ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !range !150, !noalias !1041, !noundef !10
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %bb.be, label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #35
          to label %.noexc52.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !941

.noexc52.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !1041, !noundef !10
  br label %bb.bh

bb.bf:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !930
  br label %bb.af

bb.bg:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i
  %.sroa.9.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %.sroa.7.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.7.0.copyload.i43.i = load i64, ptr %.sroa.7.0..sroa_idx.i42.i, align 8, !noalias !1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i41.i, i64 32, i1 false), !noalias !941
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gy = trunc nuw i64 %.sroa.0.0.copyload.i39.i to i1
  %.sroa.05.0.i46.i = and i64 %.sroa.0.0.copyload.i39.i, 1
  %.sroa.56.0.i47.i = select i1 %i.gy, i64 %.sroa.7.0.copyload.i43.i, i64 undef
  store i64 %.sroa.05.0.i46.i, ptr %i.q, align 8, !alias.scope !1032, !noalias !1030
  store i64 %.sroa.56.0.i47.i, ptr %i.cv, align 8, !alias.scope !1032, !noalias !1030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i64 40, i1 false), !noalias !941
  br label %bb.am

bb.bh:                                            ; preds = %bb.be, %bb.bc
  %.sroa.5.0.i49.i = phi i64 [ %i.gw, %bb.be ], [ undef, %bb.bc ]
  %.sroa.0.0.i50.i = phi i64 [ 1, %bb.be ], [ 0, %bb.bc ]
  store i64 %.sroa.0.0.i50.i, ptr %i.q, align 8, !alias.scope !1032, !noalias !1030
  store i64 %.sroa.5.0.i49.i, ptr %i.cv, align 8, !alias.scope !1032, !noalias !1030
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gz, i64 40, i1 false), !noalias !941
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.0.copyload67.i) ]
  %i.ha = load i64, ptr %i.gd, align 8, !noalias !1045, !noundef !10 ; 2 uses
  %.not.i54.i = icmp ult i64 %.sroa.7.0.i, %i.ha
  br i1 %.not.i54.i, label %bb.bi, label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  %i.hb = load ptr, ptr %i.ge, align 8, !noalias !1045, !nonnull !10, !noundef !10
  %i.hc = getelementptr inbounds nuw [104 x i8], ptr %i.hb, i64 %.sroa.7.0.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.hd = load i64, ptr %i.hc, align 8, !range !150, !alias.scope !1046, !noalias !1051, !noundef !10
  %i.he = trunc nuw i64 %i.hd to i1
  br i1 %i.he, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !1046, !noalias !1051, !noundef !10 ; 4 uses
  %i.hh = load i64, ptr %i.gg, align 8, !alias.scope !1049, !noalias !1053, !noundef !10 ; 7 uses
  %i.hi = icmp ult i64 %i.hh, 128102389400760776
  call void @llvm.assume(i1 %i.hi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %i.gz, i64 40, i1 false), !noalias !941
  store i64 1, ptr %i.c, align 8, !noalias !1054
  store i64 %i.hg, ptr %i.ea, align 8, !noalias !1054
  store i64 0, ptr %i.eb, align 8, !noalias !1054
  store i64 %.sroa.7.0.i, ptr %i.ec, align 8, !noalias !1054
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.hj = load i64, ptr %i.gf, align 8, !range !118, !alias.scope !1060, !noalias !1061, !noundef !10
  %i.hk = icmp eq i64 %i.hh, %i.hj
  br i1 %i.hk, label %bb.bk, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.bl, !noalias !1061

bb.bl:                                            ; preds = %bb.bk
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.hm = load ptr, ptr %i.dz, align 8, !alias.scope !1074, !noalias !1075, !nonnull !10, !align !166, !noundef !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !1076, !nonnull !10, !noundef !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !1074, !noalias !1075, !noundef !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !1074, !noalias !1075, !noundef !10
  invoke void %i.ho(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef %i.hr, i64 noundef %i.ht)
          to label %.body.i unwind label %bb.bm, !noalias !1053, !inline_history !1077

bb.bm:                                            ; preds = %bb.bl
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1053
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.hv = load ptr, ptr %i.gh, align 8, !alias.scope !1060, !noalias !1061, !nonnull !10, !noundef !10
  %i.hw = getelementptr inbounds nuw [72 x i8], ptr %i.hv, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hw, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1053
  %i.hx = add nuw nsw i64 %i.hh, 1                ; 2 uses
  store i64 %i.hx, ptr %i.gg, align 8, !alias.scope !1060, !noalias !1061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1054
  %.not.i.i.i = icmp ugt i64 %i.hg, %i.hh
  br i1 %.not.i.i.i, label %.noexc.i.i, label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.hy = load i64, ptr %i.gg, align 8, !alias.scope !1049, !noalias !1053, !noundef !10 ; 6 uses
  %i.hz = icmp ult i64 %i.hy, 128102389400760776
  call void @llvm.assume(i1 %i.hz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %i.gz, i64 40, i1 false), !noalias !941
  store i64 0, ptr %i.b, align 8, !noalias !1054
  store i64 %.sroa.7.0.i, ptr %i.dw, align 8, !noalias !1054
  store i64 0, ptr %i.dx, align 8, !noalias !1054
  store i64 %.sroa.7.0.i, ptr %i.dy, align 8, !noalias !1054
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ia = load i64, ptr %i.gf, align 8, !range !118, !alias.scope !1083, !noalias !1084, !noundef !10
  %i.ib = icmp eq i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.bo, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i unwind label %bb.bp, !noalias !1084

bb.bp:                                            ; preds = %bb.bo
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.id = load ptr, ptr %i.dv, align 8, !alias.scope !1097, !noalias !1098, !nonnull !10, !align !166, !noundef !10
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !1099, !nonnull !10, !noundef !10
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !1097, !noalias !1098, !noundef !10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !1097, !noalias !1098, !noundef !10
  invoke void %i.if(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ii, i64 noundef %i.ik)
          to label %.body.i unwind label %bb.bq, !noalias !1053, !inline_history !1077

bb.bq:                                            ; preds = %bb.bp
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1053
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i: ; preds = %bb.bo, %bb.bn
  %i.im = load ptr, ptr %i.gh, align 8, !alias.scope !1083, !noalias !1084, !nonnull !10, !noundef !10
  %i.in = getelementptr inbounds nuw [72 x i8], ptr %i.im, i64 %i.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1053
  %i.io = add nuw nsw i64 %i.hy, 1
  store i64 %i.io, ptr %i.gg, align 8, !alias.scope !1083, !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1054
  store i64 1, ptr %i.hc, align 8, !alias.scope !1046, !noalias !1051
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %i.hy, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !1046, !noalias !1051
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store i64 %i.hy, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !1046, !noalias !1051
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.br:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.ip = load ptr, ptr %i.gh, align 8, !alias.scope !1049, !noalias !1053, !nonnull !10, !noundef !10
  %i.iq = getelementptr inbounds nuw [72 x i8], ptr %i.ip, i64 %i.hg ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 1, ptr %i.ir, align 8, !noalias !1053
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  store i64 %i.hh, ptr %i.is, align 8, !noalias !1053
  store i64 1, ptr %i.hc, align 8, !alias.scope !1046, !noalias !1051
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !1046, !noalias !1051
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.noexc.i.i:                                       ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.hg, i64 noundef %i.hx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #33
          to label %.noexc56.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !941

.noexc56.i:                                       ; preds = %.noexc.i.i
  unreachable

bb.bs:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.0.i, i64 noundef %i.ha, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #33
          to label %bb.bt unwind label %bb.bu, !noalias !1045

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.iu = load ptr, ptr %i.i, align 8, !alias.scope !1109, !noalias !930, !nonnull !10, !align !166, !noundef !10
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !1110, !nonnull !10, !noundef !10
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !1109, !noalias !930, !noundef !10
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !alias.scope !1109, !noalias !930, !noundef !10
  invoke void %i.iw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef %i.iz, i64 noundef %i.jb)
          to label %.body.i unwind label %bb.bv, !noalias !941, !inline_history !362

bb.bv:                                            ; preds = %bb.bu
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !941
  unreachable

_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.br, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i
  %i.jd = load i64, ptr %i.q, align 8, !range !150, !alias.scope !1111, !noalias !1030, !noundef !10
  %i.je = trunc nuw i64 %i.jd to i1
  br i1 %i.je, label %bb.bb, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i:                             ; preds = %bb.ao
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
end_hunk_1
