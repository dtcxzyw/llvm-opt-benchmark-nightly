inline.NumInlined: 6953
inline.NumDeleted: 4383
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1u_5LocalEEEENtNtNtB8_6traits8iterator8Iterator4nextB1w_:bb.a
  %i.p = load <2 x i64>, ptr %i.o, align 8, !alias.scope !10965, !noalias !10962
  br label %_RNvXsP_NtCs8K4cjrcxBsw_6hir_ty3mirINtB5_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB7_.exit

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.102.4.copyload = load i32, ptr %i.q, align 4, !alias.scope !10967
  %.sroa.13.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.13.4.copyload = load i64, ptr %.sroa.13.4..sroa_idx, align 8, !alias.scope !10967
  %i.r = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.13.4.copyload, i64 0
  br label %_RNvXsP_NtCs8K4cjrcxBsw_6hir_ty3mirINtB5_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB7_.exit

_RNvXsP_NtCs8K4cjrcxBsw_6hir_ty3mirINtB5_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB7_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.102.0 = phi i32 [ %.sroa.102.4.copyload, %bb.g ], [ %i.h, %bb.c ], [ %.val.i, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.b ]
  %.sroa.9.0 = phi i8 [ undef, %bb.g ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.m, %bb.e ], [ undef, %bb.f ], [ undef, %bb.b ]
  %i.s = phi <2 x i64> [ %i.r, %bb.g ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.n, %bb.e ], [ %i.p, %bb.f ], [ undef, %bb.b ]
  store i8 %i.f, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.102.0, ptr %.sroa.102.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.s, ptr %.sroa.13.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXsP_NtCs8K4cjrcxBsw_6hir_ty3mirINtB5_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB5_5LocalEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB7_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1u_5LocalEEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !10968
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !10968
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !10968
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB1y_9predicate9PredicateEEENtNtNtB8_6traits8iterator8Iterator9size_hintB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 5                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !10971
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !10971
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !10971
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10974, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10974, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.e, ptr %0, align 8, !alias.scope !10974
  %.val = load i32, ptr %i.a, align 4, !noundef !4
  br label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %.val, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !10977
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !10977
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !10977
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCsileJQcQObtj_7hir_def7TraitIdEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !10980
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !10980
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !10980
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor8IntRangeEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 6                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !10983
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !10983
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !10983
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !10986, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10986, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %1, align 8, !alias.scope !10986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10989)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !2433, !alias.scope !10989, !noalias !10992, !noundef !4 ; 4 uses
  %i.h = icmp ne i8 %i.g, 4
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i8 %i.g, -2
  %.inv.i = icmp samesign ult i8 %i.g, 2
  %narrow.i = select i1 %.inv.i, i8 2, i8 %i.i
  switch i8 %narrow.i, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %.sink.split
    i8 2, label %bb.d
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sroa.0.0.i2.ph = phi i8 [ %i.g, %bb.d ], [ 3, %bb.b ]
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.7.0.copyload4.i = load i8, ptr %.sroa.7.0..sroa_idx3.i, align 1, !alias.scope !10989, !noalias !10992
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  %.sroa.7.0.i = phi i8 [ undef, %bb.b ], [ %.sroa.7.0.copyload4.i, %.sink.split ]
  %.sroa.0.0.i2 = phi i8 [ 2, %bb.b ], [ %.sroa.0.0.i2.ph, %.sink.split ]
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !10989, !noalias !10992, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8, !noalias !10994
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RNvXsT_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_10AdjustmentNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #49, !noalias !10994
  unreachable

_RNvXsT_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_10AdjustmentNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.e
  store ptr %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvXsT_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_10AdjustmentNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  %.sink6 = phi i64 [ 9, %_RNvXsT_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_10AdjustmentNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit ], [ 8, %bb.a ]
  %.sink = phi i8 [ %.sroa.7.0.i, %_RNvXsT_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_10AdjustmentNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit ], [ -1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store i8 %.sink, ptr %i.m, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !10995
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !10995
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !10995
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 104                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !10998
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !10998
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !10998
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i8 } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !11001, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11001, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %0, align 8, !alias.scope !11001
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val3 = load i8, ptr %i.f, align 8, !range !899, !noundef !4
  %i.g = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #49
  unreachable

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread: ; preds = %bb.b, %bb.a
  %.sroa.2.0 = phi i8 [ 2, %bb.a ], [ %.val3, %bb.b ]
  %.sroa.0.0 = phi ptr [ undef, %bb.a ], [ %.val, %bb.b ]
  %i.i = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i8 } %i.i, i8 %.sroa.2.0, 1
  ret { ptr, i8 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !11004
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !11004
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !11004
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %.sroa.4.i = alloca [12 x i8], align 8          ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !alias.scope !11007, !nonnull !4, !noundef !4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11007, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %1, align 8, !alias.scope !11007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11013)
  %i.f = load i32, ptr %i.a, align 8, !range !7372, !alias.scope !11016, !noalias !11017, !noundef !4 ; 2 uses
  switch i32 %i.f, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !11016, !noalias !11017, !noundef !4
  store i32 %i.h, ptr %.sroa.4.i, align 8
  br label %_RNvXs2d_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_18CaptureSourceStackNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 4, !alias.scope !11016, !noalias !11017
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.i, align 8
  br label %_RNvXs2d_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_18CaptureSourceStackNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !11016, !noalias !11017, !nonnull !4, !noundef !4
  %i.l = icmp eq ptr %i.k, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.l, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef i64 @_RINvNvXsp_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtCshzWfHUSfYae_4core5clone5Clone5clone19clone_non_singletonNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #50, !noalias !11017
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedE13with_capacityCs8K4cjrcxBsw_6hir_ty(i64 noundef 0), !noalias !11020
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.02.0.i.i = phi i64 [ %i.n, %bb.g ], [ %i.m, %bb.f ]
  %.sroa.4.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  store i64 %.sroa.02.0.i.i, ptr %.sroa.4.i.4.i.4.i.4..sroa_idx, align 4
  br label %_RNvXs2d_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_18CaptureSourceStackNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

_RNvXs2d_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_18CaptureSourceStackNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.c, %bb.d, %bb.h
  store i32 %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.i, i64 12, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs2d_NtCs8K4cjrcxBsw_6hir_ty5inferNtB6_18CaptureSourceStackNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !11021
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !11021
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !11021
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2z_2ty2TyEEENtNtNtB8_6traits8iterator8Iterator9size_hintB2B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !11024
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !11024
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !11024
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11TypeAliasIdEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
