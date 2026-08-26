Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/camino-0f15250d4d873278.camino.cec1d66bfdee635-cgu.0?download=true
inline.NumInlined: 348
inline.NumDeleted: 96
begin_hunk_0_@_RNCINvNvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compare7compareNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtB1e_13Utf8ComponentNtNtBc_3cmp8OrderingNCINvNvNtB6_8Iterator6cmp_by7compareB1P_B1P_NCINvYB1c_B2B_3cmpB1c_E0E0E0B1e_:bb.a
  %i.i = select i1 %i.g, i64 %i.h, i64 0
  switch i64 %i.i, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.h
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.23.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.56.0..sroa_idx.i.i, i64 32, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.9.0.i.i = phi i64 [ %.sroa.45.0.copyload.i.i, %bb.d ], [ %.sroa.45.0.copyload.i.i, %bb.g ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.b ]
  %.sroa.7.0.i.i = phi ptr [ %.sroa.34.0.copyload.i.i, %bb.d ], [ %.sroa.34.0.copyload.i.i, %bb.g ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi i8 [ %i.d, %bb.d ], [ 9, %bb.g ], [ 7, %bb.e ], [ 8, %bb.f ], [ 6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.j, align 8
  %.sroa.411.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.411.56..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i, i64 7, i1 false)
  %.sroa.512.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.7.0.i.i, ptr %.sroa.512.56..sroa_idx, align 8
  %.sroa.613.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.sroa.9.0.i.i, ptr %.sroa.613.56..sroa_idx, align 8
  %.sroa.714.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.714.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, i64 32, i1 false)
  %i.k = call i8 @_RNCINvYNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_(ptr nonnull readnone poison, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.j) #28 ; 2 uses
  %i.l = icmp eq i8 %i.k, 0                       ; 2 uses
  %..i = select i1 %i.l, i8 -2, i8 %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.5 = select i1 %i.l, i8 2, i8 1
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread, %bb.h
  %.sroa.4.0 = phi i8 [ 1, %_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread ], [ %..i, %bb.h ]
  %.sroa.0.0 = phi i8 [ 0, %_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread ], [ %.5, %bb.h ]
  %i.m = insertvalue { i8, i8 } poison, i8 %.sroa.0.0, 0
  %i.n = insertvalue { i8, i8 } %i.m, i8 %.sroa.4.0, 1
  ret { i8, i8 } %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i8, i8 } @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator12try_for_each4callNtCs16MGpdaJTHl_6camino13Utf8ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1X_NtNtBe_3cmp8OrderingB2G_EENCINvNvB8_12iter_compare7compareNtB1m_14Utf8ComponentsB1k_B2G_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB3C_B6_3cmpB3C_E0E0E0E0B1m_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.6.i.i.i = alloca [7 x i8], align 1       ; 4 uses
  %.sroa.11.i.i.i = alloca [32 x i8], align 8     ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  %i.d = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([56 x i8]) align 8 %i.b, ptr align 8 %i.d), !noalias !57
  %i.e = load i8, ptr %i.b, align 8, !noalias !57 ; 4 uses
  %.not.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i, label %_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread.i, label %bb.b

_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvNvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compare7compareNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtB1e_13Utf8ComponentNtNtBc_3cmp8OrderingNCINvNvNtB6_8Iterator6cmp_by7compareB1P_B1P_NCINvYB1c_B2B_3cmpB1c_E0E0E0B1e_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.34.0.copyload.i.i.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i.i, align 8, !noalias !57 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.45.0.copyload.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !57 ; 2 uses
  %i.f = add i8 %i.e, -6
  %i.g = zext i8 %i.f to i64
  %i.h = icmp ugt i8 %i.e, 5
  %i.i = add nuw nsw i64 %i.g, 1
  %i.j = select i1 %i.h, i64 %i.i, i64 0
  switch i64 %i.j, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.h
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.23.0..sroa_idx.i.i.i, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.56.0..sroa_idx.i.i.i, i64 32, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ %.sroa.45.0.copyload.i.i.i, %bb.d ], [ %.sroa.45.0.copyload.i.i.i, %bb.g ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.b ]
  %.sroa.7.0.i.i.i = phi ptr [ %.sroa.34.0.copyload.i.i.i, %bb.d ], [ %.sroa.34.0.copyload.i.i.i, %bb.g ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.b ]
  %.sroa.0.0.i.i.i = phi i8 [ %i.e, %bb.d ], [ 9, %bb.g ], [ 7, %bb.e ], [ 8, %bb.f ], [ 6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.k, align 8
  %.sroa.411.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.411.56..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.i, i64 7, i1 false)
  %.sroa.512.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.7.0.i.i.i, ptr %.sroa.512.56..sroa_idx.i, align 8
  %.sroa.613.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.sroa.9.0.i.i.i, ptr %.sroa.613.56..sroa_idx.i, align 8
  %.sroa.714.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.714.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i.i, i64 32, i1 false)
  %i.l = call i8 @_RNCINvYNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_(ptr nonnull readnone poison, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.k) #28 ; 2 uses
  %i.m = icmp eq i8 %i.l, 0                       ; 2 uses
  %..i.i = select i1 %i.m, i8 -2, i8 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.5.i = select i1 %i.m, i8 2, i8 1
  br label %_RNCINvNvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compare7compareNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtB1e_13Utf8ComponentNtNtBc_3cmp8OrderingNCINvNvNtB6_8Iterator6cmp_by7compareB1P_B1P_NCINvYB1c_B2B_3cmpB1c_E0E0E0B1e_.exit

_RNCINvNvNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator12iter_compare7compareNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtB1e_13Utf8ComponentNtNtBc_3cmp8OrderingNCINvNvNtB6_8Iterator6cmp_by7compareB1P_B1P_NCINvYB1c_B2B_3cmpB1c_E0E0E0B1e_.exit: ; preds = %_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread.i, %bb.h
  %.sroa.4.0.i = phi i8 [ 1, %_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread.i ], [ %..i.i, %bb.h ]
  %.sroa.0.0.i = phi i8 [ 0, %_RNvXsc_Cs16MGpdaJTHl_6caminoNtB5_14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB5_.exit.thread.i ], [ %.5.i, %bb.h ]
  %i.n = insertvalue { i8, i8 } poison, i8 %.sroa.0.0.i, 0
  %i.o = insertvalue { i8, i8 } %i.n, i8 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  ret { i8, i8 } %i.o
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i8 -2, 2) i8 @_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator6cmp_by7compareNtCs16MGpdaJTHl_6camino13Utf8ComponentB1g_NCINvYNtB1i_14Utf8ComponentsB6_3cmpB22_E0E0B1i_(ptr nofree readnone captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.c = call i8 @_RNCINvYNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_(ptr poison, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b) #28 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  %. = select i1 %i.d, i8 -2, i8 %i.c
  ret i8 %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i8 -1, 2) i8 @_RNCINvYNtCs16MGpdaJTHl_6camino14Utf8ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3cmpB5_E0B7_(ptr nofree readnone captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8                 ; 5 uses
  %i.b = add i8 %i.a, -6
  %i.c = zext i8 %i.b to i64
  %i.d = icmp ugt i8 %i.a, 5
  %i.e = add nuw nsw i64 %i.c, 1
  %i.f = select i1 %i.d, i64 %i.e, i64 0          ; 3 uses
  %i.g = load i8, ptr %2, align 8                 ; 6 uses
  %i.h = add i8 %i.g, -6
  %i.i = zext i8 %i.h to i64
  %i.j = icmp ugt i8 %i.g, 5
  %i.k = add nuw nsw i64 %i.i, 1
  %i.l = select i1 %i.j, i64 %i.k, i64 0          ; 2 uses
  %i.m = tail call range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.f, i64 %i.l)
  %i.n = icmp eq i64 %i.f, %i.l
  br i1 %i.n, label %bb.b, label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.f, label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit [
    i64 0, label %bb.c
    i64 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i8 %i.g, 6
  br i1 %i.o, label %bb.e, label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i8 %i.g, 9
  br i1 %i.p, label %bb.o, label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = tail call i8 @llvm.ucmp.i8.i8(i8 %i.a, i8 %i.g)
  %i.r = icmp eq i8 %i.a, %i.g
  br i1 %i.r, label %bb.f, label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.f:                                             ; preds = %bb.e
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.z)
  %i.aa = tail call i32 @memcmp(ptr %i.t, ptr %i.x, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %i.v, %i.z
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %spec.store.select1.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.am)
  %i.an = tail call i32 @memcmp(ptr %i.ag, ptr %i.ak, i64 %spec.store.select1.i.i.i.i) ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i32 %i.an, 0
  %i.aq = sub i64 %i.ai, %i.am
  %spec.select47.i.i.i.i = select i1 %i.ap, i64 %i.aq, i64 %i.ao ; 2 uses
  %i.ar = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select47.i.i.i.i, i64 0)
  %i.as = icmp eq i64 %spec.select47.i.i.i.i, 0
  br i1 %i.as, label %bb.m, label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.i:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = tail call i8 @llvm.ucmp.i8.i8(i8 %i.au, i8 %i.aw)
  br label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.j:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %spec.store.select2.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bf)
  %i.bg = tail call i32 @memcmp(ptr %i.az, ptr %i.bd, i64 %spec.store.select2.i.i.i.i) ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = sub i64 %i.bb, %i.bf
  %spec.select48.i.i.i.i = select i1 %i.bi, i64 %i.bj, i64 %i.bh
  %i.bk = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select48.i.i.i.i, i64 0)
  br label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.k:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %spec.store.select3.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bs)
  %i.bt = tail call i32 @memcmp(ptr %i.bm, ptr %i.bq, i64 %spec.store.select3.i.i.i.i) ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bo, %i.bs
  %spec.select49.i.i.i.i = select i1 %i.bv, i64 %i.bw, i64 %i.bu ; 2 uses
  %i.bx = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select49.i.i.i.i, i64 0)
  %i.by = icmp eq i64 %spec.select49.i.i.i.i, 0
  br i1 %i.by, label %bb.n, label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.l:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ca, i8 %i.cc)
  br label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.m:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %spec.store.select4.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cl)
  %i.cm = tail call i32 @memcmp(ptr %i.cf, ptr %i.cj, i64 %spec.store.select4.i.i.i.i) ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp eq i32 %i.cm, 0
  %i.cp = sub i64 %i.ch, %i.cl
  %spec.select50.i.i.i.i = select i1 %i.co, i64 %i.cp, i64 %i.cn
  %i.cq = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select50.i.i.i.i, i64 0)
  br label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.n:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %spec.store.select5.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cy)
  %i.cz = tail call i32 @memcmp(ptr %i.cs, ptr %i.cw, i64 %spec.store.select5.i.i.i.i) ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp eq i32 %i.cz, 0
  %i.dc = sub i64 %i.cu, %i.cy
  %spec.select51.i.i.i.i = select i1 %i.db, i64 %i.dc, i64 %i.da
  %i.dd = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select51.i.i.i.i, i64 0)
  br label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

bb.o:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load ptr, ptr %i.de, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.dj = load ptr, ptr %i.df, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dl)
  %i.dm = tail call i32 @memcmp(ptr readonly %i.dg, ptr readonly %i.dj, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp eq i32 %i.dm, 0
  %i.dp = sub i64 %i.di, %i.dl
  %spec.select.i.i.i = select i1 %i.do, i64 %i.dp, i64 %i.dn
  %i.dq = tail call range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit

_RNvXs23_Cs16MGpdaJTHl_6caminoNtB6_13Utf8ComponentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB6_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i = phi i8 [ %i.m, %bb.a ], [ 0, %bb.b ], [ %i.dq, %bb.o ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.ae, %bb.g ], [ %i.cq, %bb.m ], [ %i.ar, %bb.h ], [ %i.ax, %bb.i ], [ %i.bk, %bb.j ], [ %i.dd, %bb.n ], [ %i.bx, %bb.k ], [ %i.cd, %bb.l ], [ %i.q, %bb.e ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNCNvMs4_Cs16MGpdaJTHl_6caminoNtB7_8Utf8Path9file_name0B7_(ptr %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define { ptr, i64 } @_RNCNvMsm_NtCsbSS6DM8SDEO_5alloc2rcINtB7_2RcShE18allocate_for_slice0Cs16MGpdaJTHl_6camino(i64 %0, i64 %1) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc5allocNtB2_6Global18alloc_impl_runtimeCs16MGpdaJTHl_6camino.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.c = tail call ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 %1, i64 %0) #32
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc5allocNtB2_6Global18alloc_impl_runtimeCs16MGpdaJTHl_6camino.exit

_RNvMNtCsbSS6DM8SDEO_5alloc5allocNtB2_6Global18alloc_impl_runtimeCs16MGpdaJTHl_6camino.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %1, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNCNvMsm_NtCsbSS6DM8SDEO_5alloc2rcINtB7_2RcShE18allocate_for_slices_0Cs16MGpdaJTHl_6camino(ptr nofree readonly align 8 captures(none) %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = insertvalue { ptr, i64 } poison, ptr %1, 0
end_hunk_0
