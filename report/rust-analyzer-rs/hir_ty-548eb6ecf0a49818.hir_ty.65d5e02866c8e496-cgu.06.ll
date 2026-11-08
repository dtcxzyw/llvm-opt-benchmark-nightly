Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.06?download=true
inline.NumInlined: 6037
inline.NumDeleted: 2216
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsb_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCsciM7tI7r4rL_3ena5unify10UnifyValue12unify_values:bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_19TypeVariableStorageNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13533 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @853, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @854, i64 noundef 12, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @851, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @855, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @852)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXse_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtB5_22HasEscapingVarsVisitorINtB5_11TypeVisitorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE11visit_constB1E_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #13 !guid !13534 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !noundef !245
  %i.c = load i32, ptr %0, align 4, !noundef !245
  %i.d = icmp ugt i32 %i.b, %i.c
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_keyNtB5_12RegionVidKeyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13535 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @818, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @858, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @856, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @859, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @857)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsciM7tI7r4rL_3ena5unifyINtB5_16UnificationTableINtNtB5_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB5_8VarValueB1m_EEuEENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13536 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @861, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @684, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @862)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCshzWfHUSfYae_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13537 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traitsINtB5_10ObligationNtNtB9_9predicate9PredicateENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13538 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @867, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @868, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @864, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @493, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @865, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @869, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @866, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @870, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @796)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsg_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_7UndoLogINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 !guid !13541 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !254, !noundef !245 ; 2 uses
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !245
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !245
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val1.i = load i8, ptr %i.h, align 4, !range !273, !alias.scope !13542, !noundef !245
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.val2.i = load i8, ptr %i.i, align 1, !alias.scope !13542
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load <2 x i32>, ptr %i.g, align 4, !alias.scope !13542
  store <2 x i32> %i.l, ptr %i.k, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.val1.i, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.val2.i, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  store i32 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsg_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_7UndoLogINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 !guid !13545 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !254, !noundef !245 ; 2 uses
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !245
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !245
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val1.i = load i8, ptr %i.h, align 4, !range !274, !alias.scope !13546, !noundef !245
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load <2 x i32>, ptr %i.g, align 4, !alias.scope !13546
  store <2 x i32> %i.k, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.val1.i, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  store i32 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsg_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_7UndoLogINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 !guid !13549 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !256, !noundef !245 ; 3 uses
  %i.b = icmp ne i32 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %i.d = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  store i32 2, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !245
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <2 x i32>, ptr %i.j, align 8, !alias.scope !13550
  store <2 x i32> %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 4, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsg_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_7UndoLogINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable11TyVidSubKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 !guid !13553 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !261, !noundef !245 ; 3 uses
  %i.b = icmp ne i32 %i.a, 6
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -5
  %i.d = icmp samesign ugt i32 %i.a, 4
  %narrow = select i1 %i.d, i32 %i.c, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  store i32 5, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !245
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load <4 x i32>, ptr %1, align 8, !alias.scope !13554
  store <4 x i32> %i.k, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 7, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsg_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_7UndoLogINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 !guid !13557 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !256, !noundef !245 ; 3 uses
  %i.b = icmp ne i32 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %i.d = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  store i32 2, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !245
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <2 x i32>, ptr %i.j, align 8, !alias.scope !13558
  store <2 x i32> %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 4, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXsg_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_7UndoLogINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 !guid !13561 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !13562, !noundef !245 ; 3 uses
  %i.b = icmp ne i32 %i.a, 6
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -5
  %i.d = icmp sgt i32 %i.a, 4
  %narrow = select i1 %i.d, i32 %i.c, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  store i32 5, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !245
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <2 x i32>, ptr %i.j, align 8, !alias.scope !13563
  store <2 x i32> %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 7, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB5_12MethodCalleeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13564 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @874, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @875, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @871, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @872, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @876, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @873)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_keyNtB5_18ConstVariableValueNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13565 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i32, ptr %0, align 8, !range !264, !noundef !245
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @753, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @878, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @757, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @879)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @751, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @752, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @877)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_17TypeVariableValueNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13566 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i32, ptr %0, align 8, !range !264, !noundef !245
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @757, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @879)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @751, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @752, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @880)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXsl_NtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnosticsNtB5_22PathLoweringDiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(40) %1) unnamed_addr #17 !guid !13567 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !265, !noundef !245 ; 3 uses
  %i.b = icmp ne i32 %i.a, 5
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %i.d = icmp samesign ugt i32 %i.a, 1
  %narrow = select i1 %i.d, i32 %i.c, i32 3
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !noundef !245
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 4, !range !266, !noundef !245
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.h, ptr %i.j, align 4
  store i32 2, ptr %0, align 4
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !245
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.l, ptr %i.m, align 4
  store i32 3, ptr %0, align 4
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.r = load i8, ptr %i.q, align 4, !range !247, !noundef !245
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load <2 x i32>, ptr %i.p, align 4
  store <2 x i32> %i.v, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.r, ptr %i.w, align 4
  store i32 4, ptr %0, align 4
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !noundef !245
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ac = load i8, ptr %i.ab, align 4, !range !247, !noundef !245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aa, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ac, ptr %i.ae, align 4
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !245
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i8, ptr %i.al, align 4, !range !247, !noundef !245
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ak, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.am, ptr %i.ao, align 4
  store i32 6, ptr %0, align 4
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aq, ptr noundef nonnull align 4 dereferenceable(12) %i.ap, i64 12, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.as, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.au = load i32, ptr %i.at, align 4, !noundef !245
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.au, ptr %i.av, align 4
  store i32 7, ptr %0, align 4
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %i.aw, i64 12, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %i.ay, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !noundef !245
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bb, ptr %i.bc, align 4
  store i32 8, ptr %0, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !noundef !245
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.be, ptr %i.bf, align 4
  store i32 9, ptr %0, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_10TyVidEqKeyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13568 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @746, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @858, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @886, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @859, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @887)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXso_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_keyNtB5_11ConstVidKeyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13569 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @858, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @859, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @889)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_10NoSolutionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13570 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @890, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_Cs8K4cjrcxBsw_6hir_tyNtB5_4SpanNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13571 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %0, align 4, !range !256, !noundef !245
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  switch i32 %i.e, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @892, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @891)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @894, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @893)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @896, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @895)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @898, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @897)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @899, i64 noundef 5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidENtB5_5Debug3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !13572 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidEINtNtNtBa_5slice4iter4IterB14_EECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyENtB5_5Debug3fmtB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !13573 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyEINtNtNtBa_5slice4iter4IterB14_EEB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable11TyVidSubKeyENtB5_5Debug3fmtB1f_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !13574 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable11TyVidSubKeyEINtNtNtBa_5slice4iter4IterB14_EEB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateNtB5_5Debug3fmtBC_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !13575 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateINtNtNtBa_5slice4iter4IterB14_EEB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCshzWfHUSfYae_4core3fmtuNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13576 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @908, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical9CanonicalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBP_5solve8ResponseB1I_EENtB2K_10NoSolutionENtNtB7_3fmt5Debug3fmtB1O_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13577 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !280, !noundef !245
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @912, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @911)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @910, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @909)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9CertaintyNtBM_10NoSolutionENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13578 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !280, !noundef !245
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @912, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @911)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @910, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @913)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_8PickKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13579 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %0, align 8, !range !283, !noundef !245
  switch i32 %i.e, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @915, i64 noundef 16, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @914)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.h, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @917, i64 noundef 10, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @916)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.j, ptr %i.b, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @916)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.a, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @919, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @826)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_11TyVidSubKeyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13580 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @764, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @858, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @920)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCshzWfHUSfYae_4core3fmtINtNtB7_4cell3RefINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEENtB5_5Debug3fmtB1n_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !13581 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !245, !noundef !245
  %i.b = tail call noundef zeroext i1 @_RNvXsd_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCshzWfHUSfYae_4core3fmtINtNtB7_4cell3RefINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticEENtB5_5Debug3fmtB1n_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !13582 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !245, !noundef !245
  %i.b = tail call noundef zeroext i1 @_RNvXsd_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty5infer19InferenceDiagnosticENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsx_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer14InferCtxtInnerENtNtB7_5clone5Clone5cloneBP_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(480) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !13600 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [184 x i8], align 8         ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [192 x i8], align 8               ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [472 x i8], align 8              ; 10 uses
  %i.ab = load i64, ptr %1, align 8, !noalias !13601, !noundef !245 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer14InferCtxtInnerE6borrowBP_.exit, label %bb.b, !prof !257

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
  unreachable

_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer14InferCtxtInnerE6borrowBP_.exit: ; preds = %bb.a
  %i.ad = add nuw nsw i64 %i.ab, 1
  store i64 %i.ad, ptr %1, align 8, !noalias !13601
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13603
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log7UndoLogENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBP_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.ae)
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer14InferCtxtInnerE6borrowBP_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !13602, !noundef !245
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !noalias !13603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13603
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13604
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai)
          to label %.noexc.i unwind label %bb.e, !noalias !13605

.noexc.i:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13604
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable11TyVidSubKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.f unwind label %bb.c, !noalias !13606

bb.c:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsciM7tI7r4rL_3ena5unify16UnificationTableINtNtBE_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtBE_8VarValueB1P_EEuEEEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #35
          to label %.body.i unwind label %bb.d, !noalias !13606

bb.d:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !13606
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i, %bb.g ], [ %i.am, %bb.e ], [ %i.ak, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot8undo_log17InferCtxtUndoLogsEBL_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #35
          to label %bb.aq unwind label %bb.an, !noalias !13605

bb.e:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %.noexc.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !13607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !13607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13603
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1G_.exit.i unwind label %bb.h, !noalias !13605

bb.g:                                             ; preds = %bb.i, %bb.h
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.i ], [ %i.ap, %bb.h ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable19TypeVariableStorageEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y) #35
          to label %.body.i unwind label %bb.an, !noalias !13605

bb.h:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1G_.exit.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13603
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq)
          to label %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.j, !noalias !13605

bb.i:                                             ; preds = %bb.k, %bb.j
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %bb.k ], [ %i.ar, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsciM7tI7r4rL_3ena5unify16UnificationTableINtNtBE_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtBE_8VarValueB1P_EEuEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #35
          to label %bb.g unwind label %bb.an, !noalias !13605

bb.j:                                             ; preds = %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1G_.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1G_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13603
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.l, !noalias !13605

bb.k:                                             ; preds = %.body12.i, %bb.l
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %.body12.i ], [ %i.at, %bb.l ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsciM7tI7r4rL_3ena5unify16UnificationTableINtNtBE_11backing_vec7InPlaceNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtBE_8VarValueB1P_EEuEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #35
          to label %bb.i unwind label %bb.an, !noalias !13605

bb.l:                                             ; preds = %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13603
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !258, !alias.scope !13602, !noundef !245
  %.not.i = icmp eq i64 %i.av, -1
  br i1 %.not.i, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13609
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.au)
          to label %.noexc11.i unwind label %bb.ac, !noalias !13605

.noexc11.i:                                       ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13609
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13610
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10ConstraintENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %.noexc.i.i unwind label %bb.s, !noalias !13611

.noexc.i.i:                                       ; preds = %.noexc11.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13610
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer16MemberConstraintENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.p unwind label %bb.o, !noalias !13612

bb.n:                                             ; preds = %bb.q, %bb.o
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10ConstraintEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #35
          to label %.body.i.i unwind label %bb.r, !noalias !13612

bb.o:                                             ; preds = %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13610
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints6VerifyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.t unwind label %bb.q, !noalias !13612

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer16MemberConstraintEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #35
          to label %bb.n unwind label %bb.r, !noalias !13612

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !13612
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i.i, %bb.s, %bb.n
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i.i ], [ %i.bc, %bb.s ], [ %.pn.i.i.i, %bb.n ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB2y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #35
          to label %.body12.i unwind label %bb.z, !noalias !13611

bb.s:                                             ; preds = %.noexc11.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13613
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !13613
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13609
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf)
          to label %bb.v unwind label %bb.u, !noalias !13611

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i.i, %bb.u
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints20RegionConstraintDataEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.k) #35
          to label %.body.i.i unwind label %bb.z, !noalias !13611

bb.u:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !13609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13609
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh)
          to label %bb.x unwind label %bb.w, !noalias !13611

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i.i: ; preds = %bb.y, %bb.w
  %.pn.i.i = phi { ptr, i32 } [ %i.bi, %bb.w ], [ %i.bk, %bb.y ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i.i unwind label %bb.z, !noalias !13611

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !13609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13609
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %bb.ad unwind label %bb.y, !noalias !13611

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i.i unwind label %bb.z, !noalias !13611

bb.z:                                             ; preds = %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i.i, %.body.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !13611
  unreachable

bb.aa:                                            ; preds = %_RNvXsf_NtCsciM7tI7r4rL_3ena12snapshot_vecINtB5_11SnapshotVecINtNtNtB7_5unify11backing_vec8DelegateNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidEINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_8VarValueB1y_EEuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i
  store i64 -1, ptr %i.u, align 8, !noalias !13603
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13603
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer22TypeOutlivesConstraintENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %bb.ag unwind label %bb.af, !noalias !13605

.body12.i:                                        ; preds = %bb.ae, %bb.ac, %.body.i.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ae ], [ %i.bn, %bb.ac ], [ %.pn.pn.pn.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsciM7tI7r4rL_3ena5unify16UnificationTableINtNtBE_11backing_vec7InPlaceNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtBE_8VarValueB1P_EEuEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #35
          to label %bb.k unwind label %bb.an, !noalias !13605

bb.ac:                                            ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i

bb.ad:                                            ; preds = %bb.x
  %.sroa.0.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !13614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13609
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.bp = load i8, ptr %i.bo, align 8, !range !247, !alias.scope !13615, !noundef !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !13614
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !13614
  %.sroa.0.120..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.120..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !13614
  %.sroa.0.152..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.152..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !13614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.u, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0.i, i64 184, i1 false), !noalias !13603
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  store i8 %i.bp, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ah, %bb.af
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.ah ], [ %i.bq, %bb.af ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints23RegionConstraintStorageEEB15_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.u) #35
          to label %.body12.i unwind label %bb.an, !noalias !13605

bb.af:                                            ; preds = %bb.ab
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13603
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1Q_11generic_arg10GenericArgEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1S_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.aj unwind label %bb.ai, !noalias !13605

bb.ah:                                            ; preds = %.body15.i, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body16.i, %.body15.i ], [ %i.bs, %bb.ai ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer22TypeOutlivesConstraintEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #35
          to label %bb.ae unwind label %bb.an, !noalias !13605

bb.ai:                                            ; preds = %bb.ag
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13616
  invoke void @_RNvXNtCs3gqD4ldeioo_8indexmap3mapINtB2_8IndexMapINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtNtB1R_5infer12opaque_types16OpaqueHiddenTypeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1T_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bt)
          to label %.noexc14.i unwind label %bb.am, !noalias !13605

.noexc14.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13616
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtNtB1N_5infer12opaque_types16OpaqueHiddenTypeEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB1P_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu)
          to label %bb.ap unwind label %bb.ak, !noalias !13617

bb.ak:                                            ; preds = %.noexc14.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtNtB2n_5infer12opaque_types16OpaqueHiddenTypeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #35
          to label %.body15.i unwind label %bb.al, !noalias !13617

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !13617
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body15.i

.body15.i:                                        ; preds = %bb.am, %bb.ak
  %eh.lpad-body16.i = phi { ptr, i32 } [ %i.bx, %bb.am ], [ %i.bv, %bb.ak ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2j_11generic_arg10GenericArgEEEB2l_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #35
          to label %bb.ah unwind label %bb.an, !noalias !13605

bb.an:                                            ; preds = %.body15.i, %bb.ah, %bb.ae, %.body12.i, %bb.k, %bb.i, %bb.g, %.body.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !13605
  unreachable

bb.ao:                                            ; preds = %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer14InferCtxtInnerE6borrowBP_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %.noexc14.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !13618
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.cf, ptr noundef nonnull align 8 dereferenceable(192) %i.u, i64 192, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !13603
  store i64 0, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.cj, ptr noundef nonnull align 8 dereferenceable(472) %i.aa, i64 472, i1 false)
  %i.ck = load i64, ptr %1, align 8, !noundef !245
  %i.cl = add i64 %i.ck, -1
  store i64 %i.cl, ptr %1, align 8
  ret void

bb.aq:                                            ; preds = %bb.ao, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bz, %bb.ao ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %.body.i ]
  %i.cm = load i64, ptr %1, align 8, !noundef !245
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %1, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_20TypeVariableSubValueNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !13619 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @926, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @753, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @755)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtCs8K4cjrcxBsw_6hir_ty5infer5unify11could_unify0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTQNtNtNtBa_11next_solver15obligation_ctxt14ObligationCtxtEE9call_onceBa_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !13620 {
bb.a:
  tail call void @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB4_14ObligationCtxt24try_evaluate_obligations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtCs8K4cjrcxBsw_6hir_ty5infer5unify18could_unify_deeply0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTQNtNtNtBa_11next_solver15obligation_ctxt14ObligationCtxtEE9call_onceBa_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !13621 {
bb.a:
  tail call void @_RNvMs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver15obligation_ctxtNtB4_14ObligationCtxt39evaluate_obligations_error_on_ambiguity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit15HasErrorVisitorINtB4_11TypeVisitorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE11visit_constB1r_(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !guid !13622 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtB13_15HasErrorVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull %0)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit15HasErrorVisitorINtB4_11TypeVisitorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE12visit_regionB1r_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 !guid !13623 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %1, align 4 ; 2 uses
  %i.a = icmp ne i32 %.sroa.0.0.copyload, 17
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp eq i32 %.sroa.0.0.copyload, 22
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit15HasErrorVisitorINtB4_11TypeVisitorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE15visit_predicateB1r_(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !guid !13624 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RINvXsj_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB6_9PredicateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtB1a_15HasErrorVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull %0)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit15HasErrorVisitorINtB4_11TypeVisitorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE8visit_tyB1r_(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !guid !13625 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RINvXs5_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit18TypeSuperVisitableNtNtB8_8interner10DbInternerE16super_visit_withNtBW_15HasErrorVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull %0)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaMQbKjKCVRW_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #18 !guid !13626 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @927, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot5fudge15InferenceFudgerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtBa_8interner10DbInternerE14fold_predicateBc_(ptr noalias nofree noundef align 8 dereferenceable(120) %0, ptr noundef nonnull %1) unnamed_addr #0 !guid !13627 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB6_9PredicateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB8_8interner10DbInternerE15super_fold_withNtNtNtNtB8_5infer8snapshot5fudge15InferenceFudgerEBa_(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #20

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #21

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsaMQbKjKCVRW_12tracing_core5fieldNtNtCshzWfHUSfYae_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB2f_7sources4once4OnceBU_EINtNtB2d_3map3MapINtNtNtB2h_3ops5range14RangeInclusivemENCINvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonicalNtB4z_9InferCtxt21instantiate_canonicalINtB4x_13QueryResponseNtNtB4B_2ty2TyEE0EEE9from_iterB4D_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB6_18CanonicalVarValuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE11instantiateNCINvMNtNtB1l_5infer9canonicalNtB2C_9InferCtxt21instantiate_canonicalINtB2A_13QueryResponseNtNtB1l_2ty2TyEEs_0EB1n_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical9CanonicalNtNtB8_8interner10DbInternerINtB4_13QueryResponseNtNtB8_2ty2TyEEINtB2_12CanonicalExtB2B_E11instantiateBa_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB2f_7sources4once4OnceBU_EINtNtB2d_3map3MapINtNtNtB2h_3ops5range14RangeInclusivemENCINvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonicalNtB4z_9InferCtxt21instantiate_canonicalINtNtBW_5solve10QueryInputNtNtB4B_8interner10DbInternerNtNtB4B_9predicate9PredicateEE0EEE9from_iterB4D_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB6_18CanonicalVarValuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE11instantiateNCINvMNtNtB1l_5infer9canonicalNtB2C_9InferCtxt21instantiate_canonicalINtNtB8_5solve10QueryInputB1h_NtNtB1l_9predicate9PredicateEEs_0EB1n_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical9CanonicalNtNtB8_8interner10DbInternerINtNtB1g_5solve10QueryInputB29_NtNtB8_9predicate9PredicateEEINtB2_12CanonicalExtB2B_E11instantiateBa_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB2f_7sources4once4OnceBU_EINtNtB2d_3map3MapINtNtNtB2h_3ops5range14RangeInclusivemENCINvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonicalNtB4z_9InferCtxt21instantiate_canonicalNtNtB4B_2ty2TyE0EEE9from_iterB4D_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB6_18CanonicalVarValuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE11instantiateNCINvMNtNtB1l_5infer9canonicalNtB2C_9InferCtxt21instantiate_canonicalNtNtB1l_2ty2TyEs_0EB1n_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical9CanonicalNtNtB8_8interner10DbInternerNtNtB8_2ty2TyEINtB2_12CanonicalExtB2B_E11instantiateBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB2f_7sources4once4OnceBU_EINtNtB2d_3map3MapINtNtNtB2h_3ops5range14RangeInclusivemENCINvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonicalNtB4z_9InferCtxt21instantiate_canonicalTNtNtB4B_2ty2TyB65_EE0EEE9from_iterB4D_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB6_18CanonicalVarValuesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE11instantiateNCINvMNtNtB1l_5infer9canonicalNtB2C_9InferCtxt21instantiate_canonicalTNtNtB1l_2ty2TyB3C_EEs_0EB1n_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical9CanonicalNtNtB8_8interner10DbInternerTNtNtB8_2ty2TyB2C_EEINtB2_12CanonicalExtB2B_E11instantiateBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_10GenericArg9expect_ty(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE7new_var(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty15new_placeholder(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region15new_placeholder(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const15new_placeholder(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs8K4cjrcxBsw_6hir_ty5infers0_1__NtB5_19InferenceDiagnosticINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtNtB7_11next_solver8interner10DbInternerE9fold_withNtNtNtB5_5unify18resolve_completely8ResolverEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 16 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvXsp_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_17StoredGenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withNtNtNtNtBa_5infer5unify18resolve_completely8ResolverEBa_(ptr noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvXs15_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB7_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withNtNtNtNtBb_5infer5unify18resolve_completely8ResolverEBb_(ptr noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_8StoredTyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withNtNtNtNtBa_5infer5unify18resolve_completely8ResolverEBa_(ptr noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitors1_1__NtB5_5PlaceINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtNtBd_11next_solver8interner10DbInternerE9fold_withNtNtNtBb_5unify18resolve_completely8ResolverEBd_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE26has_vars_bound_at_or_aboveBS_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate6RelateNtNtB8_8interner10DbInternerE6relateNtNtNtNtB8_5infer6relate10generalize11GeneralizerEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(72), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE26has_vars_bound_at_or_aboveBS_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate6RelateNtNtB8_8interner10DbInternerE6relateNtNtNtNtB8_5infer6relate10generalize11GeneralizerEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(72), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1P_NtCsaMQbKjKCVRW_12tracing_core5fieldbNtB6_5Value6record(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind5TyVidENtB5_5Value6recordCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceENtB5_5Value6recordCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtB5_5Value6recordB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvXs1_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingINtB5_14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1w_8interner10DbInternerEINtNtB7_7combine25PredicateEmittingRelationB1s_B2m_E4spanB1y_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingINtB6_14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1x_8interner10DbInternerEINtNtB8_7combine25PredicateEmittingRelationB1t_B2n_E19register_predicatesAINtNtBa_14predicate_kind10ClauseKindB2n_Ej1_EB1z_(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingINtB6_14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1x_8interner10DbInternerEINtNtB8_7combine25PredicateEmittingRelationB1t_B2n_E19register_predicatesAINtNtBa_14predicate_kind13PredicateKindB2n_Ej1_EB1z_(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relating14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1r_8interner10DbInternerEINtB8_12TypeRelationB2h_E6relateNtNtB1r_2ty2TyEB1t_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(96), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10const_kind8ConstVidENtB5_5Value6recordCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtB5_5Value6recordB14_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingINtB6_14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1x_8interner10DbInternerEINtB8_12TypeRelationB2n_E20relate_with_varianceNtNtB1x_6consts5ConstEB1z_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(96), i8 noundef range(i8 0, 4), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB4_5ConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB6_9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBc_8interner10DbInternerE20relate_with_varianceNtNtBc_6consts5ConstEBe_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(136), i8 noundef range(i8 0, 4), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB13_14predicate_kind13PredicateKindB1Q_EEENtB5_5Value6recordB1W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kind13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtB5_5Value6recordB2d_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB13_7ty_kind5FnSigB1Q_EEENtB5_5Value6recordB1W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtB5_5Value6recordB1W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB13_9predicate16SubtypePredicateB1Q_EEENtB5_5Value6recordB1W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16SubtypePredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtB5_5Value6recordB2a_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB13_9predicate17OutlivesPredicateB1Q_NtNtB1U_6region6RegionEEENtB5_5Value6recordB1W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB29_6region6RegionEENtB5_5Value6recordB2b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsx_NtCsaMQbKjKCVRW_12tracing_core5fieldINtB5_10DebugValueRINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB13_9predicate19ExistentialTraitRefB1Q_EEENtB5_5Value6recordB1W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

end_hunk_0
begin_hunk_1_@llvm.umin.i32
!13351 = !{!13255}
!13352 = !{!13254, !13255}
!13353 = !{!13257}
!13354 = !{!13258}
!13355 = !{!13257, !13258}
!13356 = !{!13260}
!13357 = !{!13262}
!13358 = !{!13263}
!13359 = !{!13262, !13263}
!13360 = !{!13265}
!13361 = !{!13267}
!13362 = !{!13268}
!13363 = !{!13269, !13267, !13268}
!13364 = !{!13271, !13269, !13267, !13268}
!13365 = !{!13275, !13274, !13273, !13269, !13267, !13268}
!13366 = !{!13275, !13274, !13269, !13267, !13268}
!13367 = !{!13278}
!13368 = !{!13279}
!13369 = !{!13278, !13267}
!13370 = !{!13281, !13278, !13279, !13280, !13269, !13267, !13268}
!13371 = !{!13281, !13279, !13280, !13269, !13268}
!13372 = !{!13278, !13279}
!13373 = !{!13269, !13268}
!13374 = !{!13285, !13284, !13283, !13279, !13269, !13267, !13268}
!13375 = !{!13285, !13284, !13283, !13279}
!13376 = !{!13287, !13267}
!13377 = !{!13281, !13279, !13280}
!13378 = !{!13289}
!13379 = !{!13290}
!13380 = !{!13289, !13290}
!13381 = !{!13292}
!13382 = !{!13294}
!13383 = !{!13296}
!13384 = !{!13297}
!13385 = !{!13299, !13296, !13297, !13298}
!13386 = !{!13299, !13297, !13298}
!13387 = !{!13296, !13297}
!13388 = !{!13301}
!13389 = !{!13303}
!13390 = !{!13303, !13301}
!13391 = !{!13307, !13303, !13306, !13305, !13301, !13304}
!13392 = !{!13311, !13310}
!13393 = !{!13303, !13306, !13301, !13304}
!13394 = !{!13313}
!13395 = !{!13315}
!13396 = !{!13317}
!13397 = !{!13318}
!13398 = !{!13317, !13318, !13319}
!13399 = !{!13322}
!13400 = !{!13323}
!13401 = !{!13323, !13317, !13318}
!13402 = !{!13322, !13323, !13317, !13318}
!13403 = !{!13322, !13317, !13318}
!13404 = !{!13318, !13319}
!13405 = !{!13325}
!13406 = !{!13326}
!13407 = !{!13325, !13326}
!13408 = !{!13328}
!13409 = !{!13330, !13328}
!13410 = !{!13332}
!13411 = !{!13334}
!13412 = !{!13336}
!13413 = !{!13338}
!13414 = !{!13340}
!13415 = !{!13342}
!13416 = !{!13342, !13340, !13338, !13336, !13334, !13332, !13328}
!13417 = !{!13342, !13340, !13338, !13336, !13334, !13332}
!13418 = !{i64 7791097120504125246}
!13419 = !{i64 -6729876008047724929}
!13420 = !{i64 -3674983002584925502}
!13421 = !{i64 3377817970739972000}
!13422 = distinct !{!13422, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_"}
!13423 = distinct !{!13423, !13422, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_: argument 0"}
!13424 = !{i64 4963100268512483854}
!13425 = !{!13423}
!13426 = distinct !{!13426, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_"}
!13427 = distinct !{!13427, !13426, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_: argument 0"}
!13428 = !{i64 -5011864377811484732}
!13429 = !{!13427}
!13430 = distinct !{!13430, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_"}
!13431 = distinct !{!13431, !13430, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_: argument 0"}
!13432 = !{i64 8415698559753524347}
!13433 = !{!13431}
!13434 = distinct !{!13434, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_"}
!13435 = distinct !{!13435, !13434, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_: argument 0"}
!13436 = !{i64 696352459157995140}
!13437 = !{!13435}
!13438 = distinct !{!13438, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_"}
!13439 = distinct !{!13439, !13438, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_: argument 0"}
!13440 = !{i64 -3136520535848870110}
!13441 = !{!13439}
!13442 = distinct !{!13442, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner15PatternInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_"}
!13443 = distinct !{!13443, !13442, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner15PatternInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_: argument 0"}
!13444 = !{i64 -8159395810360239563}
!13445 = !{!13443}
!13446 = distinct !{!13446, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_"}
!13447 = distinct !{!13447, !13446, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate17PredicateInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4l_: argument 0"}
!13448 = !{i64 -60500376921465871}
!13449 = !{!13447}
!13450 = distinct !{!13450, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4n_"}
!13451 = distinct !{!13451, !13450, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEINtNtB2f_4util11SharedValueuEEEEE8split_atB4n_: argument 0"}
!13452 = !{i64 5305399634308662526}
!13453 = !{!13451}
!13454 = distinct !{!13454, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB4q_6ClauseEINtNtB2f_4util11SharedValueuEEEEE8split_atB4u_"}
!13455 = distinct !{!13455, !13454, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate21ClausesCachedTypeInfoNtB4q_6ClauseEINtNtB2f_4util11SharedValueuEEEEE8split_atB4u_: argument 0"}
!13456 = !{i64 -8058456075517648411}
!13457 = !{!13455}
!13458 = distinct !{!13458, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5z_"}
!13459 = distinct !{!13459, !13458, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5z_: argument 0"}
!13460 = !{i64 -1965131447772130607}
!13461 = !{!13459}
!13462 = distinct !{!13462, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4u_9predicate20ExistentialPredicateB5h_EEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5n_"}
!13463 = distinct !{!13463, !13462, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4u_9predicate20ExistentialPredicateB5h_EEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5n_: argument 0"}
!13464 = !{i64 -7124016967862861284}
!13465 = !{!13463}
!13466 = distinct !{!13466, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5B_"}
!13467 = distinct !{!13467, !13466, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical16CanonicalVarKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5B_: argument 0"}
!13468 = !{i64 -7958998036101429549}
!13469 = !{!13467}
!13470 = distinct !{!13470, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB5A_11generic_arg10GenericArgEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5C_"}
!13471 = distinct !{!13471, !13470, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate17OutlivesPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB5A_11generic_arg10GenericArgEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5C_: argument 0"}
!13472 = !{i64 5941860272874976110}
!13473 = !{!13471}
!13474 = distinct !{!13474, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB4s_5LocalEEEINtNtB2f_4util11SharedValueuEEEEE8split_atB4u_"}
!13475 = distinct !{!13475, !13474, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB4s_5LocalEEEINtNtB2f_4util11SharedValueuEEEEE8split_atB4u_: argument 0"}
!13476 = !{i64 4577993103527122713}
!13477 = !{!13475}
!13478 = distinct !{!13478, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEINtNtB2f_4util11SharedValueuEEEEE8split_atCs8K4cjrcxBsw_6hir_ty"}
!13479 = distinct !{!13479, !13478, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEINtNtB2f_4util11SharedValueuEEEEE8split_atCs8K4cjrcxBsw_6hir_ty: argument 0"}
!13480 = !{i64 4689368966850641457}
!13481 = !{!13479}
!13482 = distinct !{!13482, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_"}
!13483 = distinct !{!13483, !13482, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_: argument 0"}
!13484 = !{i64 5684197020938122478}
!13485 = !{!13483}
!13486 = distinct !{!13486, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_"}
!13487 = distinct !{!13487, !13486, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_: argument 0"}
!13488 = !{i64 -4092782393267222925}
!13489 = !{!13487}
!13490 = distinct !{!13490, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_"}
!13491 = distinct !{!13491, !13490, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_: argument 0"}
!13492 = !{i64 -7384441223878841072}
!13493 = !{!13491}
!13494 = distinct !{!13494, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_"}
!13495 = distinct !{!13495, !13494, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_: argument 0"}
!13496 = !{i64 1174428952266043242}
!13497 = !{!13495}
!13498 = distinct !{!13498, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_"}
!13499 = distinct !{!13499, !13498, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEINtNtB2f_4util11SharedValueuEEEEE8split_atB4v_: argument 0"}
!13500 = !{i64 -5790368193058901123}
!13501 = !{!13499}
!13502 = distinct !{!13502, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB5x_2ty2TyEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5z_"}
!13503 = distinct !{!13503, !13502, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe8thin_arc7ThinArcuTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB5x_2ty2TyEEINtNtB2f_4util11SharedValueuEEEEE8split_atB5z_: argument 0"}
!13504 = !{i64 5893146234597900308}
!13505 = !{!13503}
!13506 = !{i64 -5594121004860956356}
!13507 = !{i64 837470708872255054}
!13508 = !{i64 1906674367446963408}
!13509 = !{i64 8306483815193508270}
!13510 = !{i64 -5705082287626703762}
!13511 = !{i64 2730080065950317944}
!13512 = !{i64 37918925576788518}
!13513 = !{i64 6319345004456246977}
!13514 = !{i64 -7095611773665094957}
!13515 = !{i64 8703808151231198191}
!13516 = !{i64 8113999764452060228}
!13517 = !{i64 -7708967262579016220}
!13518 = !{i64 1176381003265153009}
!13519 = !{i64 768148858775123092}
!13520 = distinct !{!13520, i1 true, !"_RINvYINtNtCsity1gTxgZvF_18tracing_subscriber8registry13ScopeFromRootINtNtNtB8_5layer7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB6_7sharded8RegistryEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB2E_3num7nonzero7NonZerojENCNvXs_NvB2w_10advance_byB3_NtB4e_13SpecAdvanceBy15spec_advance_by0INtNtB2E_6option6OptionB3A_EECs8K4cjrcxBsw_6hir_ty"}
!13521 = distinct !{!13521, !13520, !"_RINvYINtNtCsity1gTxgZvF_18tracing_subscriber8registry13ScopeFromRootINtNtNtB8_5layer7layered7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB6_7sharded8RegistryEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB2E_3num7nonzero7NonZerojENCNvXs_NvB2w_10advance_byB3_NtB4e_13SpecAdvanceBy15spec_advance_by0INtNtB2E_6option6OptionB3A_EECs8K4cjrcxBsw_6hir_ty: argument 0"}
!13522 = distinct !{!13522, i1 true, !"_RNvXs3_NtCsity1gTxgZvF_18tracing_subscriber8registryINtB5_13ScopeFromRootINtNtNtB7_5layer7layered7LayeredNtNtNtB7_6filter7targets7TargetsNtNtB5_7sharded8RegistryEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty"}
!13523 = distinct !{!13523, !13522, !"_RNvXs3_NtCsity1gTxgZvF_18tracing_subscriber8registryINtB5_13ScopeFromRootINtNtNtB7_5layer7layered7LayeredNtNtNtB7_6filter7targets7TargetsNtNtB5_7sharded8RegistryEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty: argument 1"}
!13524 = distinct !{!13524, i1 true, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtB11_5layer7layered7LayeredNtNtNtB11_6filter7targets7TargetsNtNtBZ_7sharded8RegistryEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8K4cjrcxBsw_6hir_ty"}
!13525 = distinct !{!13525, !13524, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsity1gTxgZvF_18tracing_subscriber8registry7SpanRefINtNtNtB11_5layer7layered7LayeredNtNtNtB11_6filter7targets7TargetsNtNtBZ_7sharded8RegistryEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs8K4cjrcxBsw_6hir_ty: argument 1"}
!13526 = !{i64 -7132089571546582945}
!13527 = !{!13521}
!13528 = !{!13525, !13523, !13521}
!13529 = !{!13523}
!13530 = !{!13525}
!13531 = !{i64 -8693211565881117334}
!13532 = !{i64 1918103950985805592}
!13533 = !{i64 6236999451705740996}
!13534 = !{i64 -8148706284886306259}
!13535 = !{i64 -6708322093220024663}
!13536 = !{i64 -4396449751813889425}
!13537 = !{i64 6478450593828742920}
!13538 = !{i64 2673525975012384113}
!13539 = distinct !{!13539, i1 true, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty"}
!13540 = distinct !{!13540, !13539, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind6IntVidENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty: argument 1"}
!13541 = !{i64 -1583482032569408619}
!13542 = !{!13540}
!13543 = distinct !{!13543, i1 true, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty"}
!13544 = distinct !{!13544, !13543, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind8FloatVidENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty: argument 1"}
!13545 = !{i64 -5253815256167250340}
!13546 = !{!13544}
!13547 = distinct !{!13547, i1 true, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_"}
!13548 = distinct !{!13548, !13547, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable10TyVidEqKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_: argument 1"}
!13549 = !{i64 1358918252919876913}
!13550 = !{!13548}
!13551 = distinct !{!13551, i1 true, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable11TyVidSubKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_"}
!13552 = distinct !{!13552, !13551, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variable11TyVidSubKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_: argument 1"}
!13553 = !{i64 752640497343750500}
!13554 = !{!13552}
!13555 = distinct !{!13555, i1 true, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_"}
!13556 = distinct !{!13556, !13555, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key11ConstVidKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_: argument 1"}
!13557 = !{i64 -7562212990794216515}
!13558 = !{!13556}
!13559 = distinct !{!13559, i1 true, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_"}
!13560 = distinct !{!13560, !13559, !"_RNvXsc_NtCsciM7tI7r4rL_3ena5unifyINtB5_8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBS_: argument 1"}
!13561 = !{i64 -2198506091635453940}
!13562 = !{i32 -2, i32 8}
!13563 = !{!13560}
!13564 = !{i64 805793272481511966}
!13565 = !{i64 5156924247700626421}
!13566 = !{i64 6297825058812316094}
!13567 = !{i64 1086678604180875961}
!13568 = !{i64 -8751992778550816823}
!13569 = !{i64 2299523812230131890}
!13570 = !{i64 -4780745620421855755}
!13571 = !{i64 -5072520010105614871}
!13572 = !{i64 3465336985113716835}
!13573 = !{i64 -37533559686489398}
!13574 = !{i64 4603480712911986821}
!13575 = !{i64 -2194795137464327367}
!13576 = !{i64 6920665731186085785}
!13577 = !{i64 -4361533841336563304}
!13578 = !{i64 4320674146551061534}
!13579 = !{i64 3018573403294183510}
!13580 = !{i64 7528451730680467714}
!13581 = !{i64 -778610673224160303}
!13582 = !{i64 -3760513913707742275}
!13583 = distinct !{!13583, i1 true, !"_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer14InferCtxtInnerE6borrowBP_"}
!13584 = distinct !{!13584, !13583, !"_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer14InferCtxtInnerE6borrowBP_: argument 0"}
!13585 = distinct !{!13585, i1 true, !"_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_14InferCtxtInnerNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!13586 = distinct !{!13586, !13585, !"_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_14InferCtxtInnerNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!13587 = distinct !{!13587, !13585, !"_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_14InferCtxtInnerNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!13588 = distinct !{!13588, i1 true, !"_RNvXse_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_19TypeVariableStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!13589 = distinct !{!13589, !13588, !"_RNvXse_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_19TypeVariableStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!13590 = distinct !{!13590, !13588, !"_RNvXse_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer13type_variableNtB5_19TypeVariableStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!13591 = distinct !{!13591, i1 true, !"_RNvXs9_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_23RegionConstraintStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!13592 = distinct !{!13592, !13591, !"_RNvXs9_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_23RegionConstraintStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!13593 = distinct !{!13593, !13591, !"_RNvXs9_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_23RegionConstraintStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!13594 = distinct !{!13594, i1 true, !"_RNvXsd_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_20RegionConstraintDataNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!13595 = distinct !{!13595, !13594, !"_RNvXsd_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_20RegionConstraintDataNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!13596 = distinct !{!13596, !13594, !"_RNvXsd_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_20RegionConstraintDataNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!13597 = distinct !{!13597, i1 true, !"_RNvXs4_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer12opaque_types5tableNtB5_17OpaqueTypeStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!13598 = distinct !{!13598, !13597, !"_RNvXs4_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer12opaque_types5tableNtB5_17OpaqueTypeStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!13599 = distinct !{!13599, !13597, !"_RNvXs4_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer12opaque_types5tableNtB5_17OpaqueTypeStorageNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!13600 = !{i64 -6363098473702024775}
!13601 = !{!13584}
!13602 = !{!13586}
!13603 = !{!13587, !13586}
!13604 = !{!13590, !13589, !13587, !13586}
!13605 = !{!13587}
!13606 = !{!13590, !13587}
!13607 = !{!13589, !13587, !13586}
!13608 = !{!13592}
!13609 = !{!13593, !13592, !13587, !13586}
!13610 = !{!13596, !13595, !13593, !13592, !13587, !13586}
!13611 = !{!13593, !13587}
!13612 = !{!13596, !13593, !13587}
!13613 = !{!13595, !13593, !13592, !13587, !13586}
!13614 = !{!13592, !13587, !13586}
!13615 = !{!13592, !13586}
!13616 = !{!13599, !13598, !13587, !13586}
!13617 = !{!13599, !13587}
!13618 = !{!13598, !13587, !13586}
!13619 = !{i64 2920024293861418596}
!13620 = !{i64 -3867308374946764897}
!13621 = !{i64 6499666526940986122}
!13622 = !{i64 -2982419829954284271}
!13623 = !{i64 -2041604044431920065}
!13624 = !{i64 5307423932264222948}
!13625 = !{i64 -1256679417778951611}
!13626 = !{i64 171158800788169784}
!13627 = !{i64 1570535950643603230}
end_hunk_1
