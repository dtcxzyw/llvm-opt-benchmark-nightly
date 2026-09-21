Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.03?download=true
inline.NumInlined: 1114
inline.NumDeleted: 661
begin_hunk_0_@_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1w_9predicate20ExistentialPredicateB2j_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics:bb.a
  store i64 %i.e, ptr %0, align 8, !alias.scope !1735
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1735
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1735
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1738, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1738, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !1738
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  br label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1741
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1741
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1741
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1744, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1744, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !1744
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  br label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1747
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1747
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1747
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENtNtNtB8_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1750, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1750, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !1750
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  br label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1753
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1753
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1753
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENtNtNtB8_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1756, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1756, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !1756
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  br label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1759
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1759
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1759
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i64, ptr %i.d, align 8, !range !1760, !noundef !4
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB22_11AstChildrenNtB1Y_4StmtENCNvMs3_NtB22_8node_extNtB1Y_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1z_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtCscFGNKo4Sl5v_9itertools9Itertools4joinB4o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 13 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %3, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1829
  %i.p = load i64, ptr %1, align 8, !range !9, !alias.scope !1830, !noalias !1831, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, 2
  br i1 %.not.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_.exit.thread.i, label %bb.b

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1829
  br label %bb.al

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !5, !alias.scope !1838, !noalias !1839
  %i.t = trunc nuw i64 %.pre.i.i.i.i.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1841
  br i1 %i.t, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !1839
  %i.u = load i64, ptr %i.f, align 8, !range !7, !noalias !1841, !noundef !4 ; 2 uses
  %.not.i.i.peel.i.i.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.peel.i.i.i.i.i, label %bb.d, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %.val.i.i.peel.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !5, !alias.scope !1842, !noalias !1839, !noundef !4
  %.val3.i.i.peel.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1842, !noalias !1839 ; 3 uses
  %i.v = icmp eq i64 %.val.i.i.peel.i.i.i.i.i, 0
  %i.w = icmp eq ptr %.val3.i.i.peel.i.i.i.i.i, null
  %or.cond.i.i.i.peel.i.i.i.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i.peel.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics.exit.thread20.i.peel.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.val3.i.i.peel.i.i.i.i.i, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !1839, !noundef !4
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !noalias !1839
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics.exit.thread20.i.peel.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.peel.i.i.i.i.i) #26
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics.exit.thread20.i.peel.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !1839

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics.exit.thread20.i.peel.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  store i64 0, ptr %i.q, align 8, !alias.scope !1842, !noalias !1839
  %.pre.i.i = load i64, ptr %1, align 8, !range !5, !alias.scope !1843, !noalias !1844
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics.exit.thread20.i.peel.i.i.i.i.i, %bb.b
  %i.ab = phi i64 [ %.pre.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics.exit.thread20.i.peel.i.i.i.i.i ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %.loopexit19.i.i.i.i.i

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  %i.ad = load ptr, ptr %i.s, align 8, !alias.scope !1847, !noalias !1844, !noundef !4 ; 6 uses
  store ptr null, ptr %i.s, align 8, !alias.scope !1847, !noalias !1844
  %.not.i.i.i.peel.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.peel.i.i.i.i.i, label %.loopexit19.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !1848, !noundef !4 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.loopexit20.i.i.i.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %i.ae, align 4, !noalias !1848
  %i.ai = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.ad)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel.i.i.i.i.i unwind label %.loopexit.i.loopexit.split-lp.i.i.i.i.i, !noalias !1848 ; 2 uses

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel.i.i.i.i.i: ; preds = %bb.i
  %i.aj = load i32, ptr %i.ae, align 4, !noalias !1848, !noundef !4
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ae, align 4, !noalias !1848
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel.i.i.i.i.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ad) #26, !noalias !1848
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel.i.i.i.i.i
  %.val.i.peel.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !5, !alias.scope !1849, !noalias !1844, !noundef !4
  %.val3.i.peel.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1849, !noalias !1844 ; 3 uses
  %i.am = icmp eq i64 %.val.i.peel.i.i.i.i.i, 0
  %i.an = icmp eq ptr %.val3.i.peel.i.i.i.i.i, null
  %or.cond.i.i.peel.i.i.i.i.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i.i.peel.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.val3.i.peel.i.i.i.i.i, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !1844, !noundef !4
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !noalias !1844
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.peel.i.i.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i unwind label %.loopexit.split-lp25.i.i.i.i.i, !noalias !1844

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  store i64 1, ptr %i.q, align 8, !alias.scope !1849, !noalias !1844
  store ptr %i.ai, ptr %i.r, align 8, !alias.scope !1849, !noalias !1844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1850
  call void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !1839
  %i.as = load i64, ptr %i.f, align 8, !range !7, !noalias !1850, !noundef !4 ; 2 uses
  %.not.i.i.i30.i.i.i.i = icmp eq i64 %i.as, -1
  br i1 %.not.i.i.i30.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !5, !alias.scope !1838, !noalias !1839, !noundef !4
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1838, !noalias !1839 ; 3 uses
  %i.at = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  %i.au = icmp eq ptr %.val3.i.i.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !1839, !noundef !4
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !noalias !1839
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i unwind label %.loopexit18.i.i.i.i.i, !noalias !1839

common.resume:                                    ; preds = %bb.ap, %bb.bd, %bb.p, %.loopexit.i.i.i.i.i.i, %bb.t, %bb.ad, %bb.ae, %bb.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.dr, %bb.bd ], [ %i.cv, %bb.aj ], [ %i.cl, %bb.ag ], [ %lpad.phi.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i, %bb.p ], [ %lpad.phi28.i.i.i.i.i, %bb.ae ], [ %i.ch, %bb.ad ], [ %lpad.phi.i.i.i.i.i.i, %bb.t ], [ %i.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i ], [ %.pn, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

.loopexit18.i.i.i.i.i:                            ; preds = %bb.o
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit18.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit18.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  store i64 0, ptr %i.q, align 8, !alias.scope !1838, !noalias !1839
  br label %common.resume

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.as, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i ], [ %i.ci, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i ]
  %.sroa.8.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0.copyload14.i.i.i.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx13.i.i.i.i.i.i, align 8, !noalias !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1853
  br label %bb.af

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i.i
  store i64 0, ptr %i.q, align 8, !alias.scope !1838, !noalias !1839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  %i.az = load i64, ptr %1, align 8, !range !5, !alias.scope !1855, !noalias !1844, !noundef !4
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.q, label %.loopexit19.i.i.i.i.i

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.bb = load ptr, ptr %i.s, align 8, !alias.scope !1857, !noalias !1844, !noundef !4 ; 6 uses
  store ptr null, ptr %i.s, align 8, !alias.scope !1857, !noalias !1844
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 6 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !1858, !noundef !4 ; 2 uses
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %.loopexit20.i.i.i.i.i, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.bf = add nuw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.bc, align 4, !noalias !1858
  %i.bg = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.bb)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i, !noalias !1858 ; 2 uses

.loopexit20.i.i.i.i.i:                            ; preds = %bb.r, %bb.h
  %.lcssa13.i.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %i.bc, %bb.r ]
  %.lcssa10.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.bb, %bb.r ]
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #25
          to label %.noexc3.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !1858

.noexc3.i.i.i.i.i.i.i.i.i:                        ; preds = %.loopexit20.i.i.i.i.i
  unreachable

.loopexit.i.loopexit.i.i.i.i.i:                   ; preds = %bb.s
  %lpad.loopexit21.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.loopexit.split-lp.i.i.i.i.i:          ; preds = %bb.i
  %lpad.loopexit.split-lp22.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.loopexit20.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i.i
  %i.bh = phi ptr [ %.lcssa13.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %i.bc, %.loopexit.i.loopexit.i.i.i.i.i ], [ %i.ae, %.loopexit.i.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  %i.bi = phi ptr [ %.lcssa10.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %i.bb, %.loopexit.i.loopexit.i.i.i.i.i ], [ %i.ad, %.loopexit.i.loopexit.split-lp.i.i.i.i.i ]
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ], [ %lpad.loopexit21.i.i.i.i.i, %.loopexit.i.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp22.i.i.i.i.i, %.loopexit.i.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !noalias !1858, !noundef !4
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bh, align 4, !noalias !1858
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.t, label %common.resume

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bi) #26
          to label %common.resume unwind label %bb.v, !noalias !1858

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.bm = load i32, ptr %i.bc, align 4, !noalias !1858, !noundef !4
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bc, align 4, !noalias !1858
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bb) #26, !noalias !1858
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !1858
  unreachable

bb.w:                                             ; preds = %bb.u, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !5, !alias.scope !1849, !noalias !1844, !noundef !4
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1849, !noalias !1844 ; 3 uses
  %i.bq = icmp eq i64 %.val.i.i.i.i.i.i, 0
  %i.br = icmp eq ptr %.val3.i.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !1844, !noundef !4
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4, !noalias !1844
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i.i.i.i) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i unwind label %.loopexit24.i.i.i.i.i, !noalias !1844

.loopexit19.i.i.i.i.i:                            ; preds = %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i, %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECscA5P7HRgTCP_15ide_diagnostics.exit.i.peel.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1860
  %i.bx = load i64, ptr %i.bw, align 8, !range !5, !alias.scope !1861, !noalias !1862, !noundef !4
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.z, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.thread.i.i

bb.z:                                             ; preds = %.loopexit19.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz), !noalias !1862
  %i.ca = load i64, ptr %i.e, align 8, !range !7, !noalias !1860, !noundef !4 ; 2 uses
  %.not.i6.i.i.i.i.i.i = icmp eq i64 %i.ca, -1
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.aa, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %.val.i7.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !range !5, !alias.scope !1861, !noalias !1862, !noundef !4
  %.val3.i8.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !1861, !noalias !1862 ; 3 uses
  %i.cb = icmp eq i64 %.val.i7.i.i.i.i.i.i, 0
  %i.cc = icmp eq ptr %.val3.i8.i.i.i.i.i.i, null
  %or.cond.i.i9.i.i.i.i.i.i = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond.i.i9.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread14.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %.val3.i8.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noalias !1862, !noundef !4
  %i.cf = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 4, !noalias !1862
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ac, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread14.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i8.i.i.i.i.i.i) #26
          to label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread14.i.i.i.i unwind label %bb.ad, !noalias !1862

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread14.i.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  store i64 0, ptr %i.bw, align 8, !alias.scope !1861, !noalias !1862
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ch = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.bw, align 8, !alias.scope !1861, !noalias !1862
  br label %common.resume

.loopexit24.i.i.i.i.i:                            ; preds = %bb.y
  %lpad.loopexit26.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp25.i.i.i.i.i:                   ; preds = %bb.m
  %lpad.loopexit.split-lp27.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp25.i.i.i.i.i, %.loopexit24.i.i.i.i.i
  %.lcssa16.i.i.i.i.i = phi ptr [ %i.bg, %.loopexit24.i.i.i.i.i ], [ %i.ai, %.loopexit.split-lp25.i.i.i.i.i ]
  %lpad.phi28.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit26.i.i.i.i.i, %.loopexit24.i.i.i.i.i ], [ %lpad.loopexit.split-lp27.i.i.i.i.i, %.loopexit.split-lp25.i.i.i.i.i ]
  store i64 1, ptr %i.q, align 8, !alias.scope !1849, !noalias !1844
  store ptr %.lcssa16.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !1849, !noalias !1844
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  store i64 1, ptr %i.q, align 8, !alias.scope !1849, !noalias !1844
  store ptr %i.bg, ptr %i.r, align 8, !alias.scope !1849, !noalias !1844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1863
  call void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !1839
  %i.ci = load i64, ptr %i.f, align 8, !range !7, !noalias !1863, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, !llvm.loop !1796

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i: ; preds = %bb.z
  %.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0.copyload3.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i, align 8, !noalias !1865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1860
  br label %bb.af

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i
  %.sroa.0.19.i.i.i.i = phi i64 [ %.lcssa.i.i.i.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i ], [ %i.ca, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i ]
  %.sroa.7.18.i.i.i.i = phi ptr [ %.sroa.8.0.copyload14.i.i.i.i.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i ], [ %.sroa.7.0.copyload3.i.i.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1866
  store i64 %.sroa.0.19.i.i.i.i, ptr %i.g, align 8, !noalias !1866
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %.sroa.7.18.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1866
  %.val.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !1867, !noalias !1868, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1870
  store ptr %.val.i.i.i.i, ptr %i.d, align 8, !noalias !1870
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB4_11IndentLevelNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1870
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.ck, align 8, !noalias !1870
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXssf_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4StmtNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1870
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @14, ptr noundef nonnull %i.d)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i unwind label %bb.ag, !noalias !1868

bb.ag:                                            ; preds = %bb.af
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val12.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1869, !noalias !1871, !nonnull !4, !noundef !4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val12.i.i.i.i.i, i64 48 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !1872, !noundef !4
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  store i32 %i.co, ptr %i.cm, align 4, !noalias !1872
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.ag
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val12.i.i.i.i.i) #26
          to label %common.resume unwind label %bb.ah, !noalias !1872

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1870
  %.val10.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1869, !noalias !1871, !nonnull !4, !noundef !4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i, i64 48 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !noalias !1872, !noundef !4
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !noalias !1872
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i15.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i15.i.i.i.i.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val10.i.i.i.i.i) #26, !noalias !1872
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.i.i

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i.i.i.i.i
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !1872
  unreachable

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.thread.i.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread14.i.i.i.i, %.loopexit19.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1860
  store i64 -1, ptr %i.i, align 8, !alias.scope !1873, !noalias !1874
  br label %bb.ai

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i15.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1866
  %.pr.i.i = load i64, ptr %i.i, align 8, !noalias !1875 ; 2 uses
  %.not6.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not6.i.i, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.thread.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_7flatten7FlatMapINtBE_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2f_11AstChildrenNtB2b_4StmtENCNvMs3_NtB2f_8node_extNtB2b_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EEEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_.exit.i unwind label %bb.aj, !noalias !1831

bb.aj:                                            ; preds = %bb.ai
  %i.cv = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %1, align 8, !alias.scope !1830, !noalias !1831
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #28
          to label %common.resume unwind label %bb.ak, !noalias !1831

bb.ak:                                            ; preds = %bb.aj
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !1831
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_.exit.i: ; preds = %bb.ai
  store i64 2, ptr %1, align 8, !alias.scope !1830, !noalias !1831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1829
  call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_.exit.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_.exit.thread.i
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  %i.cy = load i64, ptr %i.cx, align 8, !range !11, !alias.scope !1878, !noalias !1879, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.cy, -2
  br i1 %.not.i.i.i, label %bb.an, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_.exit: ; preds = %bb.al
  %.sroa.7.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -1, ptr %i.cx, align 8, !alias.scope !1880, !noalias !1881
  %.not = icmp eq i64 %i.cy, -1
  br i1 %.not, label %bb.an, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_.exit

bb.am:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_.exit.i.i
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i, i64 16, i1 false), !noalias !1827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1829
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre58 = load i64, ptr %.phi.trans.insert, align 8, !range !11, !alias.scope !1882, !noalias !1883
  %4 = icmp ult i64 %.pre58, -2
  %5 = select i1 %4, i64 %3, i64 0
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_.exit

bb.an:                                            ; preds = %bb.al, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_.exit
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.ap:                                            ; preds = %.body, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.aq ], [ %eh.lpad-body, %.body ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #28
          to label %common.resume unwind label %bb.bf

bb.aq:                                            ; preds = %bb.as, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_.exit: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_.exit, %bb.am
  %.pr.i.i.sink = phi i64 [ %.pr.i.i, %bb.am ], [ %i.cy, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_.exit ]
  %.sroa.7.sink = phi ptr [ %.sroa.7, %bb.am ], [ %.sroa.7.0..sroa_idx28, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_.exit ]
  %.pr.i.i.sink.a = phi i64 [ %5, %bb.am ], [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.pr.i.i.sink, ptr %i.m, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sink, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.pr.i.i.sink.a, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ar unwind label %bb.aq

bb.ar:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_.exit
  %i.db = load i64, ptr %i.j, align 8, !range !5, !noundef !4
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !range !26, !noundef !4 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.dc, label %bb.as, label %bb.at, !prof !8

bb.as:                                            ; preds = %bb.ar
  %i.dg = load i64, ptr %i.df, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.de, i64 %i.dg) #25
          to label %bb.bg unwind label %bb.aq

bb.at:                                            ; preds = %bb.ar
  %i.dh = load ptr, ptr %i.df, align 8, !nonnull !4, !noundef !4
  %i.di = icmp ule i64 %.pr.i.i.sink.a, %i.de
  call void @llvm.assume(i1 %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.de, ptr %i.l, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.dh, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  %i.dj = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @18, ptr noundef nonnull @17, ptr noundef nonnull %i.k)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %.lr.ph.split.us.i.i.i, %bb.ax, %bb.aw, %bb.at
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.az, %bb.au
  %eh.lpad-body = phi { ptr, i32 } [ %i.dk, %bb.au ], [ %i.do, %bb.az ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #28
          to label %bb.ap unwind label %bb.bf

bb.av:                                            ; preds = %bb.at
  br i1 %i.dj, label %bb.aw, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCscA5P7HRgTCP_15ide_diagnostics.exit, !prof !8

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #30
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %bb.aw
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1886
  store ptr %i.l, ptr %i.c, align 8, !noalias !1887
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.dl, align 8, !noalias !1887
  %i.dm = load i64, ptr %1, align 8, !range !9, !alias.scope !1888, !noalias !1889, !noundef !4
  %.not.i.i23 = icmp eq i64 %i.dm, 2
  br i1 %.not.i.i23, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCscA5P7HRgTCP_15ide_diagnostics.exit
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1P_11AstChildrenNtB1L_4StmtENCNvMs3_NtB1P_8node_extNtB1L_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvMNtNtBc_3ops9try_traitINtB6b_17NeverShortCircuituE10wrap_mut_2uNtNtCsbSS6DM8SDEO_5alloc6string6StringNCINvNvB5m_8for_each4callB7b_NCNvYINtNtB8_5chain5ChainBN_IB1m_B7b_EENtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B6w_EB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc25 unwind label %bb.au

.noexc25:                                         ; preds = %bb.ax
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB12_7flatten7FlatMapINtBE_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2f_11AstChildrenNtB2b_4StmtENCNvMs3_NtB2f_8node_extNtB2b_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EEEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.ba, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCscA5P7HRgTCP_15ide_diagnostics.exit
  %i.dn = load i64, ptr %i.da, align 8, !range !11, !alias.scope !1888, !noalias !1889, !noundef !4 ; 3 uses
  %.not6.i.i24 = icmp eq i64 %i.dn, -2
  br i1 %.not6.i.i24, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %.noexc25
  %i.do = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %1, align 8, !alias.scope !1888, !noalias !1889
  br label %.body

bb.ba:                                            ; preds = %.noexc25
  store i64 2, ptr %1, align 8, !alias.scope !1888, !noalias !1889
  br label %bb.ay

bb.bb:                                            ; preds = %bb.ay
  %i.dp = load ptr, ptr %i.c, align 8, !noalias !1887, !nonnull !4, !align !16, !noundef !4
  %i.dq = load ptr, ptr %i.dl, align 8, !noalias !1887, !nonnull !4, !align !16, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  store i64 -1, ptr %i.da, align 8, !alias.scope !1891, !noalias !1892
  %.not7.i.i.i = icmp eq i64 %i.dn, -1
  br i1 %.not7.i.i.i, label %bb.bc, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.bb
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i.i.i, i64 16, i1 false), !noalias !1894
  store i64 %i.dn, ptr %i.b, align 8, !noalias !1893
  invoke fastcc void @_RNCINvMNtNtCshzWfHUSfYae_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtCsbSS6DM8SDEO_5alloc6string6StringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtB29_8adapters5chain5ChainINtNtB3a_3map3MapINtNtB3a_7flatten7FlatMapINtNtB9_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB4L_11AstChildrenNtB4H_4StmtENCNvMs3_NtB4L_8node_extNtB4H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB4i_B1k_EENtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B77_(ptr nonnull align 8 dereferenceable(24) %i.dp, ptr nonnull readonly align 8 dereferenceable(16) %i.dq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b) #29
          to label %.noexc26 unwind label %bb.au

.noexc26:                                         ; preds = %.lr.ph.split.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1893
  store i64 -1, ptr %i.da, align 8, !alias.scope !1891, !noalias !1895
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc26, %bb.bb, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.bc
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.bf:                                            ; preds = %.body, %bb.ap
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bg:                                            ; preds = %bb.as
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBb_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB7_10filter_map9FilterMapINtNtNtB1m_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtCscFGNKo4Sl5v_9itertools9Itertools6uniqueB3R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04 = alloca [112 x i8], align 8          ; 5 uses
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.b = invoke { i64, i64 } @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @51)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtBG_10filter_map9FilterMapINtNtNtB1F_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEEB4a_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 0
  %i.e = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %.sroa.04.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.04, i64 112, i1 false)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.d, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.e, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCINvB1O_11term_searchNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0ENtCscFGNKo4Sl5v_9itertools9Itertools6uniqueCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04 = alloca [64 x i8], align 8           ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = invoke { i64, i64 } @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @51)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCINvB27_11term_searchNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0EECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 0
  %i.e = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.04.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04, i64 64, i1 false)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.d, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.e, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCINvB27_11term_searchNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0EECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !24, !noalias !1900, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.b, !prof !1901

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECscA5P7HRgTCP_15ide_diagnostics(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscA5P7HRgTCP_15ide_diagnostics.exit

_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECscA5P7HRgTCP_15ide_diagnostics(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataCscA5P7HRgTCP_15ide_diagnostics(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsjJXvCMGntp8_6syntax13syntax_editor7mappingNtB4_20SyntaxMappingBuilder8map_node(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathENCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorINtB12_3VecB1L_EEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB51_13FlattenCompatppE9iter_fold7flattenAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB61_3api10SyntaxNodeNtNtB1T_11syntax_node12RustLanguageEINtB6Q_11SyntaxTokenB7c_EEj2_uNCINvNvXsi_B51_B5e_B4c_4fold7flattenINtNtNtBc_5array4iter8IntoIterB5W_KB8c_EuQNCINvNvB4c_8for_each4callB5W_NCINvMsk_B12_IB3S_B5W_E14extend_trustedINtNtB8_5chain5ChainINtB51_7FlatMapBX_B5V_B2E_EIB8R_B5W_Kj1_EEE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecIBw_NtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBK_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1z_11SyntaxTokenB1U_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBR_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1G_11SyntaxTokenB21_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir13LifetimeParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtCs8Xq8PKFYOms_3hir4TypeuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir4ImplENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_Cs6oosyzwIepl_6ide_dbNtB4_12RootDatabaseNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory10whitespace(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBZ_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1O_11SyntaxTokenB29_EEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3T_7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtNtNtB2d_3ast9generated5nodes4PathEABU_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBL_B5w_EEs_0EINtNtNtB3X_5array4iter8IntoIterBU_Kj1_EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB2_12SyntaxEditor10insert_all(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use22insert_use_with_editor(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(5), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters10filter_map19filter_map_try_foldBX_NtNtBa_6string6StringuINtNtNtB1R_3ops12control_flow11ControlFlowB3K_ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0NCINvNvB1J_8find_map5checkB3K_B3K_NCNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB6F_6UniqueINtNtB2V_5chain5ChainINtNtB1R_6option8IntoIterB3K_EINtB2T_9FilterMapBI_B4R_EEEB1J_4next0E0E0B46_EB4Z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcJ_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcJ_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBes_Kja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBes_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB2k_NtBcJ_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB2k_NtBcJ_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0IBdq_NtBbO_10GenericArgEE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBbO_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBbO_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBdX_Kja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBdX_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1y_NtBbO_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1y_NtBbO_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0IBcv_NtBaT_10GenericArgEE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1P_11AstChildrenNtB1L_4StmtENCNvMs3_NtB1P_8node_extNtB1L_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvMNtNtBc_3ops9try_traitINtB6b_17NeverShortCircuituE10wrap_mut_2uNtNtCsbSS6DM8SDEO_5alloc6string6StringNCINvNvB5m_8for_each4callB7b_NCNvYINtNtB8_5chain5ChainBN_IB1m_B7b_EENtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B6w_EB4b_(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBi5_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBha_10GenericArgKja_EE0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBi5_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBha_10GenericArgEE0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBbw_INtNtB8_6copied6CopiedIB1m_NtBha_10GenericArgEENCNvBh6_5types0ENCNvMs1x_Bi5_NtBi5_4Type14type_arguments0EIBiL_IBO_IBjp_IB1m_NtNtBdX_2ty2TyEENCBkr_s_0EINtNtNtBa_7sources5empty5EmptyBkC_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBjP_Kja_EE0E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!1596 = distinct !{!1596, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2j_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB6_10filter_map19filter_map_try_foldB15_NtB17_5ConstuB1A_NvMs10_B17_B15_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4K_B2f_QNCB2P_s3_0E0E0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1597 = distinct !{!1597, !1596, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2j_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB6_10filter_map19filter_map_try_foldB15_NtB17_5ConstuB1A_NvMs10_B17_B15_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4K_B2f_QNCB2P_s3_0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1598 = distinct !{!1598, !1596, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2j_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB6_10filter_map19filter_map_try_foldB15_NtB17_5ConstuB1A_NvMs10_B17_B15_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4K_B2f_QNCB2P_s3_0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1599 = distinct !{!1599, !1596, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2j_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB6_10filter_map19filter_map_try_foldB15_NtB17_5ConstuB1A_NvMs10_B17_B15_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4K_B2f_QNCB2P_s3_0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 2"}
!1600 = distinct !{!1600, !"_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0CscA5P7HRgTCP_15ide_diagnostics"}
!1601 = distinct !{!1601, !1600, !"_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1602 = distinct !{!1602, !1600, !"_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1603 = distinct !{!1603, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtB4_9try_trait3Try11from_outputCscA5P7HRgTCP_15ide_diagnostics"}
!1604 = distinct !{!1604, !1603, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtB4_9try_trait3Try11from_outputCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1605 = distinct !{!1605, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemNtB1g_5ConstuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1g_11term_search4expr4ExprENvMs10_B1g_B1e_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1I_B2A_QNCINvNtB2E_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0E0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1606 = distinct !{!1606, !1605, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemNtB1g_5ConstuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1g_11term_search4expr4ExprENvMs10_B1g_B1e_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1I_B2A_QNCINvNtB2E_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1607 = distinct !{!1607, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs8Xq8PKFYOms_3hir5ConstNtNtNtB1i_11term_search4expr4ExprQNCINvNtB1K_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1608 = distinct !{!1608, !1607, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs8Xq8PKFYOms_3hir5ConstNtNtNtB1i_11term_search4expr4ExprQNCINvNtB1K_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1609 = distinct !{!1609, !1605, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemNtB1g_5ConstuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1g_11term_search4expr4ExprENvMs10_B1g_B1e_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1I_B2A_QNCINvNtB2E_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 2"}
!1610 = distinct !{!1610, !1605, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldNtCs8Xq8PKFYOms_3hir9AssocItemNtB1g_5ConstuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB1g_11term_search4expr4ExprENvMs10_B1g_B1e_8as_constNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1I_B2A_QNCINvNtB2E_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1611 = distinct !{!1611, !1607, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtCs8Xq8PKFYOms_3hir5ConstNtNtNtB1i_11term_search4expr4ExprQNCINvNtB1K_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs3_0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1612 = distinct !{!1612, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtB4_9try_trait3Try11from_outputCscA5P7HRgTCP_15ide_diagnostics"}
!1613 = distinct !{!1613, !1612, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtB4_9try_trait3Try11from_outputCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1614 = !{!1597}
!1615 = !{!1598}
!1616 = !{!1599}
!1617 = !{!1597, !1599}
!1618 = !{!1601}
!1619 = !{!1602, !1597, !1598, !1599}
!1620 = !{!1601, !1602, !1597, !1598, !1599}
!1621 = !{!1601, !1597, !1598}
!1622 = !{!1604, !1597}
!1623 = !{!1598, !1599}
!1624 = !{!1597, !1598}
!1625 = !{!1606}
!1626 = !{!1608}
!1627 = !{!1608, !1611, !1606, !1610, !1609, !1597, !1598, !1599}
!1628 = !{!1608, !1606, !1609, !1597}
!1629 = !{i64 -1, i64 -9223372036854775795}
!1630 = !{!1611, !1610, !1609, !1598, !1599}
!1631 = !{!1608, !1606, !1597}
!1632 = !{!1613, !1606, !1597}
!1633 = !{!1610, !1609, !1598, !1599}
!1634 = distinct !{!1634, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB18_4ImplEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB18_11term_search4expr4ExprEENCINvNtB2Y_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNtB6_3map12map_try_foldB15_INtB4R_3MapINtNtB2q_9into_iter8IntoIterNtB18_9AssocItemENCNCB3v_s2_00EuB1I_NCB3v_s2_0NCINvNvMsg_NtB6_7flattenINtB6Q_13FlattenCompatppE13iter_try_fold7flattenB5i_uB1I_NCINvNvXsi_B6Q_B73_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5i_uB1I_NCINvNtB6_10filter_map19filter_map_try_foldTB1v_B16_B5V_ETB1v_B16_NtB18_8FunctionEuB1I_NCB3v_s3_0NCIB2_Baa_uB1I_NCB3v_s4_0NCIB9i_Baa_TB16_B2n_EuB1I_NCB3v_s5_0NCINvNvB8h_8find_map5checkBbo_B2n_QNCB3v_s6_0E0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1635 = distinct !{!1635, !1634, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB18_4ImplEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB18_11term_search4expr4ExprEENCINvNtB2Y_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNtB6_3map12map_try_foldB15_INtB4R_3MapINtNtB2q_9into_iter8IntoIterNtB18_9AssocItemENCNCB3v_s2_00EuB1I_NCB3v_s2_0NCINvNvMsg_NtB6_7flattenINtB6Q_13FlattenCompatppE13iter_try_fold7flattenB5i_uB1I_NCINvNvXsi_B6Q_B73_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5i_uB1I_NCINvNtB6_10filter_map19filter_map_try_foldTB1v_B16_B5V_ETB1v_B16_NtB18_8FunctionEuB1I_NCB3v_s3_0NCIB2_Baa_uB1I_NCB3v_s4_0NCIB9i_Baa_TB16_B2n_EuB1I_NCB3v_s5_0NCINvNvB8h_8find_map5checkBbo_B2n_QNCB3v_s6_0E0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1636 = distinct !{!1636, !1634, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB18_4ImplEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB18_11term_search4expr4ExprEENCINvNtB2Y_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNtB6_3map12map_try_foldB15_INtB4R_3MapINtNtB2q_9into_iter8IntoIterNtB18_9AssocItemENCNCB3v_s2_00EuB1I_NCB3v_s2_0NCINvNvMsg_NtB6_7flattenINtB6Q_13FlattenCompatppE13iter_try_fold7flattenB5i_uB1I_NCINvNvXsi_B6Q_B73_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5i_uB1I_NCINvNtB6_10filter_map19filter_map_try_foldTB1v_B16_B5V_ETB1v_B16_NtB18_8FunctionEuB1I_NCB3v_s3_0NCIB2_Baa_uB1I_NCB3v_s4_0NCIB9i_Baa_TB16_B2n_EuB1I_NCB3v_s5_0NCINvNvB8h_8find_map5checkBbo_B2n_QNCB3v_s6_0E0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1637 = distinct !{!1637, !1634, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB18_4ImplEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB18_11term_search4expr4ExprEENCINvNtB2Y_7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0NCINvNtB6_3map12map_try_foldB15_INtB4R_3MapINtNtB2q_9into_iter8IntoIterNtB18_9AssocItemENCNCB3v_s2_00EuB1I_NCB3v_s2_0NCINvNvMsg_NtB6_7flattenINtB6Q_13FlattenCompatppE13iter_try_fold7flattenB5i_uB1I_NCINvNvXsi_B6Q_B73_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5i_uB1I_NCINvNtB6_10filter_map19filter_map_try_foldTB1v_B16_B5V_ETB1v_B16_NtB18_8FunctionEuB1I_NCB3v_s3_0NCIB2_Baa_uB1I_NCB3v_s4_0NCIB9i_Baa_TB16_B2n_EuB1I_NCB3v_s5_0NCINvNvB8h_8find_map5checkBbo_B2n_QNCB3v_s6_0E0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 2"}
!1638 = distinct !{!1638, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtB4_9try_trait3Try11from_outputCscA5P7HRgTCP_15ide_diagnostics"}
!1639 = distinct !{!1639, !1638, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtB4_9try_trait3Try11from_outputCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1640 = distinct !{!1640, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB12_4ImplEINtB4_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtB12_9AssocItemENCNCINvNtNtB12_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EuINtNtNtBa_3ops12control_flow11ControlFlowINtB1Q_3VecNtNtB2Z_4expr4ExprEENCB2U_s2_0NCINvNvMsg_NtB6_7flattenINtB5Y_13FlattenCompatppE13iter_try_fold7flattenB1B_uB4t_NCINvNvXsi_B5Y_B6b_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1B_uB4t_NCINvNtB6_10filter_map19filter_map_try_foldTB1p_B10_B2z_ETB1p_B10_NtB12_8FunctionEuB4t_NCB2U_s3_0NCINvNtB6_6filter15filter_try_foldB9i_uB4t_NCB2U_s4_0NCIB8q_B9i_TB10_B58_EuB4t_NCB2U_s5_0NCINvNvB7p_8find_map5checkBaY_B58_QNCB2U_s6_0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1641 = distinct !{!1641, !1640, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB12_4ImplEINtB4_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtB12_9AssocItemENCNCINvNtNtB12_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EuINtNtNtBa_3ops12control_flow11ControlFlowINtB1Q_3VecNtNtB2Z_4expr4ExprEENCB2U_s2_0NCINvNvMsg_NtB6_7flattenINtB5Y_13FlattenCompatppE13iter_try_fold7flattenB1B_uB4t_NCINvNvXsi_B5Y_B6b_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1B_uB4t_NCINvNtB6_10filter_map19filter_map_try_foldTB1p_B10_B2z_ETB1p_B10_NtB12_8FunctionEuB4t_NCB2U_s3_0NCINvNtB6_6filter15filter_try_foldB9i_uB4t_NCB2U_s4_0NCIB8q_B9i_TB10_B58_EuB4t_NCB2U_s5_0NCINvNvB7p_8find_map5checkBaY_B58_QNCB2U_s6_0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1642 = distinct !{!1642, !1640, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB12_4ImplEINtB4_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtB12_9AssocItemENCNCINvNtNtB12_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EuINtNtNtBa_3ops12control_flow11ControlFlowINtB1Q_3VecNtNtB2Z_4expr4ExprEENCB2U_s2_0NCINvNvMsg_NtB6_7flattenINtB5Y_13FlattenCompatppE13iter_try_fold7flattenB1B_uB4t_NCINvNvXsi_B5Y_B6b_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1B_uB4t_NCINvNtB6_10filter_map19filter_map_try_foldTB1p_B10_B2z_ETB1p_B10_NtB12_8FunctionEuB4t_NCB2U_s3_0NCINvNtB6_6filter15filter_try_foldB9i_uB4t_NCB2U_s4_0NCIB8q_B9i_TB10_B58_EuB4t_NCB2U_s5_0NCINvNvB7p_8find_map5checkBaY_B58_QNCB2U_s6_0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 2"}
!1643 = distinct !{!1643, !1640, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTNtCs8Xq8PKFYOms_3hir4TypeNtB12_4ImplEINtB4_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtB12_9AssocItemENCNCINvNtNtB12_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EuINtNtNtBa_3ops12control_flow11ControlFlowINtB1Q_3VecNtNtB2Z_4expr4ExprEENCB2U_s2_0NCINvNvMsg_NtB6_7flattenINtB5Y_13FlattenCompatppE13iter_try_fold7flattenB1B_uB4t_NCINvNvXsi_B5Y_B6b_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1B_uB4t_NCINvNtB6_10filter_map19filter_map_try_foldTB1p_B10_B2z_ETB1p_B10_NtB12_8FunctionEuB4t_NCB2U_s3_0NCINvNtB6_6filter15filter_try_foldB9i_uB4t_NCB2U_s4_0NCIB8q_B9i_TB10_B58_EuB4t_NCB2U_s5_0NCINvNvB7p_8find_map5checkBaY_B58_QNCB2U_s6_0E0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1644 = distinct !{!1644, !"_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0CscA5P7HRgTCP_15ide_diagnostics"}
!1645 = distinct !{!1645, !1644, !"_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1646 = distinct !{!1646, !1644, !"_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1647 = distinct !{!1647, !"_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB25_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EE6insertCscA5P7HRgTCP_15ide_diagnostics"}
!1648 = distinct !{!1648, !1647, !"_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB25_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EE6insertCscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1649 = distinct !{!1649, !1647, !"_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB25_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EE6insertCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1650 = distinct !{!1650, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB2l_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EEECscA5P7HRgTCP_15ide_diagnostics"}
!1651 = distinct !{!1651, !1650, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB2l_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EEECscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1652 = distinct !{!1652, !"_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB2M_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EuINtNtNtBg_3ops12control_flow11ControlFlowINtB21_3VecNtNtB3o_4expr4ExprEENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenB1G_uB4S_NCINvNtBc_10filter_map19filter_map_try_foldTNtB2M_4ImplNtB2M_4TypeB2K_ETB7Z_B8a_NtB2M_8FunctionEuB4S_NCB3j_s3_0NCINvNtBc_6filter15filter_try_foldB8q_uB4S_NCB3j_s4_0NCIB7k_B8q_TB8a_B5x_EuB4S_NCB3j_s5_0NCINvNvB6j_8find_map5checkBa6_B5x_QNCB3j_s6_0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1653 = distinct !{!1653, !1652, !"_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB2M_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EuINtNtNtBg_3ops12control_flow11ControlFlowINtB21_3VecNtNtB3o_4expr4ExprEENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenB1G_uB4S_NCINvNtBc_10filter_map19filter_map_try_foldTNtB2M_4ImplNtB2M_4TypeB2K_ETB7Z_B8a_NtB2M_8FunctionEuB4S_NCB3j_s3_0NCINvNtBc_6filter15filter_try_foldB8q_uB4S_NCB3j_s4_0NCIB7k_B8q_TB8a_B5x_EuB4S_NCB3j_s5_0NCINvNvB6j_8find_map5checkBa6_B5x_QNCB3j_s6_0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1654 = distinct !{!1654, !1652, !"_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenINtNtBc_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCNCINvNtNtB2M_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_00EuINtNtNtBg_3ops12control_flow11ControlFlowINtB21_3VecNtNtB3o_4expr4ExprEENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenB1G_uB4S_NCINvNtBc_10filter_map19filter_map_try_foldTNtB2M_4ImplNtB2M_4TypeB2K_ETB7Z_B8a_NtB2M_8FunctionEuB4S_NCB3j_s3_0NCINvNtBc_6filter15filter_try_foldB8q_uB4S_NCB3j_s4_0NCIB7k_B8q_TB8a_B5x_EuB4S_NCB3j_s5_0NCINvNvB6j_8find_map5checkBa6_B5x_QNCB3j_s6_0E0E0E0E0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1655 = !{!1635}
!1656 = !{!1636}
!1657 = !{!1635, !1637}
!1658 = !{!1635, !1636, !1637}
!1659 = !{!1635, !1636}
!1660 = !{!1639, !1635}
!1661 = !{!1636, !1637}
!1662 = !{!1641}
!1663 = !{!1641, !1636}
!1664 = !{!1643, !1642, !1635, !1637}
!1665 = !{!1643, !1641, !1642, !1635, !1636, !1637}
!1666 = !{!1643, !1641, !1635, !1636}
!1667 = !{!1646, !1645, !1643, !1641, !1642, !1635, !1636, !1637}
!1668 = !{!1646, !1643, !1641, !1635, !1636}
!1669 = !{!1648}
!1670 = !{!1651, !1649}
!1671 = !{!1648, !1654, !1653, !1643, !1641, !1642, !1635, !1636, !1637}
!1672 = !{!1649, !1648}
!1673 = !{!1654, !1643, !1641, !1642, !1635, !1636, !1637}
!1674 = !{!1653, !1641, !1642, !1636, !1637}
!1675 = distinct !{!1675, !"_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5S_4TypeEE0IB6z_NtB4r_10GenericArgEE0E0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1676 = distinct !{!1676, !1675, !"_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5S_4TypeEE0IB6z_NtB4r_10GenericArgEE0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1677 = distinct !{!1677, !1675, !"_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5S_4TypeEE0IB6z_NtB4r_10GenericArgEE0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1678 = distinct !{!1678, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callTjTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBe_6option6OptionRNtNtNtB1k_3hir8generics17LifetimeParamDataEEENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB3b_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4C_4TypeEE0IB5j_NtB3b_10GenericArgEE0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1679 = distinct !{!1679, !1678, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callTjTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBe_6option6OptionRNtNtNtB1k_3hir8generics17LifetimeParamDataEEENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB3b_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4C_4TypeEE0IB5j_NtB3b_10GenericArgEE0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1680 = distinct !{!1680, !"_RNCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB8_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1y_4TypeEE0IB2f_NtB8_10GenericArgEE0CscA5P7HRgTCP_15ide_diagnostics"}
!1681 = distinct !{!1681, !1680, !"_RNCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB8_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1y_4TypeEE0IB2f_NtB8_10GenericArgEE0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1682 = distinct !{!1682, !"_RNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4_4TypeEE0CscA5P7HRgTCP_15ide_diagnostics"}
!1683 = distinct !{!1683, !1682, !"_RNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4_4TypeEE0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1684 = distinct !{!1684, !1682, !"_RNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4_4TypeEE0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1685 = distinct !{!1685, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1686 = distinct !{!1686, !1685, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1687 = !{!1676}
!1688 = !{!1677}
!1689 = !{!1681, !1679, !1676, !1677}
!1690 = !{!1683}
!1691 = !{!1684}
!1692 = !{!1683, !1681, !1679, !1676, !1677}
!1693 = !{!1683, !1684, !1681, !1679, !1676, !1677}
!1694 = !{!1684, !1681, !1679, !1676, !1677}
!1695 = !{!1686}
!1696 = distinct !{!1696, !"_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5S_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4r_10GenericArgKja_EE0E0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1697 = distinct !{!1697, !1696, !"_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5S_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4r_10GenericArgKja_EE0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1698 = distinct !{!1698, !1696, !"_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5S_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4r_10GenericArgKja_EE0E0E0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1699 = distinct !{!1699, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callTjTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBe_6option6OptionRNtNtNtB1k_3hir8generics17LifetimeParamDataEEENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB3b_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4C_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB3b_10GenericArgKja_EE0E0CscA5P7HRgTCP_15ide_diagnostics"}
!1700 = distinct !{!1700, !1699, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callTjTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBe_6option6OptionRNtNtNtB1k_3hir8generics17LifetimeParamDataEEENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB3b_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4C_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB3b_10GenericArgKja_EE0E0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1701 = distinct !{!1701, !"_RNCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB8_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1y_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB8_10GenericArgKja_EE0CscA5P7HRgTCP_15ide_diagnostics"}
!1702 = distinct !{!1702, !1701, !"_RNCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB8_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB1y_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB8_10GenericArgKja_EE0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1703 = distinct !{!1703, !"_RNvXsw_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EINtNtCshzWfHUSfYae_4core7convert5AsRefSBS_E6as_refCscA5P7HRgTCP_15ide_diagnostics"}
!1704 = distinct !{!1704, !1703, !"_RNvXsw_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgKja_EINtNtCshzWfHUSfYae_4core7convert5AsRefSBS_E6as_refCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1705 = distinct !{!1705, !"_RNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4_4TypeEE0CscA5P7HRgTCP_15ide_diagnostics"}
!1706 = distinct !{!1706, !1705, !"_RNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4_4TypeEE0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1707 = distinct !{!1707, !1705, !"_RNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4_4TypeEE0CscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1708 = distinct !{!1708, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1709 = distinct !{!1709, !1708, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtCs8Xq8PKFYOms_3hir4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1710 = !{!1697}
!1711 = !{!1698}
!1712 = !{!1702, !1700, !1697, !1698}
!1713 = !{!1704}
!1714 = !{!1706}
!1715 = !{!1707}
!1716 = !{!1706, !1702, !1700, !1697, !1698}
!1717 = !{!1706, !1707, !1702, !1700, !1697, !1698}
!1718 = !{!1707, !1702, !1700, !1697, !1698}
!1719 = !{!1709}
!1720 = distinct !{!1720, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push"}
!1721 = distinct !{!1721, !1720, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push: argument 0"}
!1722 = !{!1721}
!1723 = distinct !{!1723, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str"}
!1724 = distinct !{!1724, !1723, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 1"}
!1725 = distinct !{!1725, !1723, !"_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str: argument 0"}
!1726 = distinct !{!1726, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCscA5P7HRgTCP_15ide_diagnostics"}
!1727 = distinct !{!1727, !1726, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1728 = !{!1724}
!1729 = !{!1727, !1725}
!1730 = distinct !{!1730, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBU_9predicate20ExistentialPredicateB1H_EEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1731 = distinct !{!1731, !1730, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBU_9predicate20ExistentialPredicateB1H_EEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1732 = !{!1731}
!1733 = distinct !{!1733, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBU_9predicate20ExistentialPredicateB1H_EEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics"}
!1734 = distinct !{!1734, !1733, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBU_9predicate20ExistentialPredicateB1H_EEENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1735 = !{!1734}
!1736 = distinct !{!1736, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1737 = distinct !{!1737, !1736, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1738 = !{!1737}
!1739 = distinct !{!1739, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics"}
!1740 = distinct !{!1740, !1739, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1741 = !{!1740}
!1742 = distinct !{!1742, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1743 = distinct !{!1743, !1742, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1744 = !{!1743}
!1745 = distinct !{!1745, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics"}
!1746 = distinct !{!1746, !1745, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1747 = !{!1746}
!1748 = distinct !{!1748, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1749 = distinct !{!1749, !1748, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1750 = !{!1749}
!1751 = distinct !{!1751, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics"}
!1752 = distinct !{!1752, !1751, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1753 = !{!1752}
!1754 = distinct !{!1754, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1755 = distinct !{!1755, !1754, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1756 = !{!1755}
!1757 = distinct !{!1757, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics"}
!1758 = distinct !{!1758, !1757, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1759 = !{!1758}
!1760 = !{i64 1, i64 0}
!1761 = distinct !{!1761, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_"}
!1762 = distinct !{!1762, !1761, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_: argument 0"}
!1763 = distinct !{!1763, !1761, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextB4t_: argument 1"}
!1764 = distinct !{!1764, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_"}
!1765 = distinct !{!1765, !1764, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_: argument 1"}
!1766 = distinct !{!1766, !1764, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2c_11AstChildrenNtB28_4StmtENCNvMs3_NtB2c_8node_extNtB28_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtCsbSS6DM8SDEO_5alloc6string6StringNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB4y_: argument 0"}
!1767 = distinct !{!1767, !"_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_"}
!1768 = distinct !{!1768, !1767, !"_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_: argument 0"}
!1769 = distinct !{!1769, !1767, !"_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBe_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1L_11AstChildrenNtB1H_4StmtENCNvMs3_NtB1L_8node_extNtB1H_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB47_: argument 1"}
!1770 = distinct !{!1770, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1O_11AstChildrenNtB1K_4StmtENCNvMs3_NtB1O_8node_extNtB1K_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtB9_6traits8iterator8Iterator4nextB4a_"}
!1771 = distinct !{!1771, !1770, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1O_11AstChildrenNtB1K_4StmtENCNvMs3_NtB1O_8node_extNtB1K_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtB9_6traits8iterator8Iterator4nextB4a_: argument 0"}
!1772 = distinct !{!1772, !1770, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1O_11AstChildrenNtB1K_4StmtENCNvMs3_NtB1O_8node_extNtB1K_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0ENtNtNtB9_6traits8iterator8Iterator4nextB4a_: argument 1"}
!1773 = distinct !{!1773, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1774 = distinct !{!1774, !1773, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1775 = distinct !{!1775, !"_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EINtB1V_11AstChildrenNtB1R_4StmtEENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1776 = distinct !{!1776, !1775, !"_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EINtB1V_11AstChildrenNtB1R_4StmtEENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1777 = distinct !{!1777, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics"}
!1778 = distinct !{!1778, !1777, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1779 = distinct !{!1779, !1773, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB1y_11AstChildrenNtB1u_4StmtENCNvMs3_NtB1y_8node_extNtB1u_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1780 = distinct !{!1780, !1775, !"_RNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1V_8node_extNtB1R_9BlockExpr10statements0EINtB1V_11AstChildrenNtB1R_4StmtEENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1781 = distinct !{!1781, !1777, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1782 = distinct !{!1782, !1777, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics: argument 1:Peel0"}
!1783 = distinct !{!1783, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1I_8node_extNtB1E_9BlockExpr10statements0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1784 = distinct !{!1784, !1783, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1I_8node_extNtB1E_9BlockExpr10statements0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0:Peel0"}
!1785 = distinct !{!1785, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1q_8node_extNtB1m_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1786 = distinct !{!1786, !1785, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1q_8node_extNtB1m_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0:Peel0"}
!1787 = distinct !{!1787, !"_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1788 = distinct !{!1788, !1787, !"_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1789 = distinct !{!1789, !1777, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics: argument 1:pre.rot"}
!1790 = distinct !{!1790, !1783, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1I_8node_extNtB1E_9BlockExpr10statements0EEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1791 = distinct !{!1791, !1785, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListENCNvMs3_NtB1q_8node_extNtB1m_9BlockExpr10statements0ENtNtNtB9_6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1792 = distinct !{!1792, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics"}
!1793 = distinct !{!1793, !1792, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1794 = distinct !{!1794, !1792, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1795 = distinct !{!1795, !1777, !"_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscA5P7HRgTCP_15ide_diagnostics: argument 1:h.rot"}
!1796 = distinct !{!1796, !1864}
!1797 = distinct !{!1797, !"_RNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0B7_"}
!1798 = distinct !{!1798, !1797, !"_RNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0B7_: argument 1"}
!1799 = distinct !{!1799, !1797, !"_RNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0B7_: argument 0"}
!1800 = distinct !{!1800, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1A_5ChainINtNtB1C_3map3MapINtNtB1C_7flatten7FlatMapINtB3_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB3h_11AstChildrenNtB3d_4StmtENCNvMs3_NtB3h_8node_extNtB3d_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB2X_BI_EENtNtNtB1E_6traits8iterator8Iterator4next0EB5D_"}
!1801 = distinct !{!1801, !1800, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1A_5ChainINtNtB1C_3map3MapINtNtB1C_7flatten7FlatMapINtB3_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB3h_11AstChildrenNtB3d_4StmtENCNvMs3_NtB3h_8node_extNtB3d_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB2X_BI_EENtNtNtB1E_6traits8iterator8Iterator4next0EB5D_: argument 0"}
!1802 = distinct !{!1802, !"_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3map3MapINtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB29_11AstChildrenNtB25_4StmtENCNvMs3_NtB29_8node_extNtB25_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1G_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtBa_6traits8iterator8Iterator4next0B4v_"}
!1803 = distinct !{!1803, !1802, !"_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3map3MapINtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB29_11AstChildrenNtB25_4StmtENCNvMs3_NtB29_8node_extNtB25_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1G_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtBa_6traits8iterator8Iterator4next0B4v_: argument 0"}
!1804 = distinct !{!1804, !1800, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1A_5ChainINtNtB1C_3map3MapINtNtB1C_7flatten7FlatMapINtB3_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB3h_11AstChildrenNtB3d_4StmtENCNvMs3_NtB3h_8node_extNtB3d_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB2X_BI_EENtNtNtB1E_6traits8iterator8Iterator4next0EB5D_: argument 2"}
!1805 = distinct !{!1805, !1802, !"_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3map3MapINtNtB8_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB29_11AstChildrenNtB25_4StmtENCNvMs3_NtB29_8node_extNtB25_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1G_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtBa_6traits8iterator8Iterator4next0B4v_: argument 1"}
!1806 = distinct !{!1806, !1800, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1A_5ChainINtNtB1C_3map3MapINtNtB1C_7flatten7FlatMapINtB3_8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB3h_11AstChildrenNtB3d_4StmtENCNvMs3_NtB3h_8node_extNtB3d_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB2X_BI_EENtNtNtB1E_6traits8iterator8Iterator4next0EB5D_: argument 1"}
!1807 = distinct !{!1807, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_"}
!1808 = distinct !{!1808, !1807, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_: argument 1"}
!1809 = distinct !{!1809, !1807, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB27_11AstChildrenNtB23_4StmtENCNvMs3_NtB27_8node_extNtB23_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1E_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintB4t_: argument 0"}
!1810 = distinct !{!1810, !"_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtBW_3map3MapINtNtBW_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2u_11AstChildrenNtB2q_4StmtENCNvMs3_NtB2u_8node_extNtB2q_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB21_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB66_NCNvYBR_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0EB4Q_"}
!1811 = distinct !{!1811, !1810, !"_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtBW_3map3MapINtNtBW_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2u_11AstChildrenNtB2q_4StmtENCNvMs3_NtB2u_8node_extNtB2q_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB21_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB66_NCNvYBR_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0EB4Q_: argument 0"}
!1812 = distinct !{!1812, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB28_11AstChildrenNtB24_4StmtENCNvMs3_NtB28_8node_extNtB24_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1F_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB7c_17NeverShortCircuituE10wrap_mut_2uB5K_NCINvNvB6o_8for_each4callB5K_NCNvYBO_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B7x_EB4u_"}
!1813 = distinct !{!1813, !1812, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB28_11AstChildrenNtB24_4StmtENCNvMs3_NtB28_8node_extNtB24_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1F_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB7c_17NeverShortCircuituE10wrap_mut_2uB5K_NCINvNvB6o_8for_each4callB5K_NCNvYBO_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B7x_EB4u_: argument 0"}
!1814 = distinct !{!1814, !1810, !"_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtBW_3map3MapINtNtBW_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2u_11AstChildrenNtB2q_4StmtENCNvMs3_NtB2u_8node_extNtB2q_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB21_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB66_NCNvYBR_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0EB4Q_: argument 2"}
!1815 = distinct !{!1815, !1810, !"_RINvXs2_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtNtBa_8adapters5chain5ChainINtNtBW_3map3MapINtNtBW_7flatten7FlatMapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB2u_11AstChildrenNtB2q_4StmtENCNvMs3_NtB2u_8node_extNtB2q_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB21_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB66_NCNvYBR_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0EB4Q_: argument 1"}
!1816 = distinct !{!1816, !1812, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB28_11AstChildrenNtB24_4StmtENCNvMs3_NtB28_8node_extNtB24_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1F_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB7c_17NeverShortCircuituE10wrap_mut_2uB5K_NCINvNvB6o_8for_each4callB5K_NCNvYBO_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B7x_EB4u_: argument 2"}
!1817 = distinct !{!1817, !1812, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB28_11AstChildrenNtB24_4StmtENCNvMs3_NtB28_8node_extNtB24_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EIB1F_NtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB7c_17NeverShortCircuituE10wrap_mut_2uB5K_NCINvNvB6o_8for_each4callB5K_NCNvYBO_NtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B7x_EB4u_: argument 1"}
!1818 = distinct !{!1818, !"_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB8_3ops9try_traitINtB2f_17NeverShortCircuituE10wrap_mut_2uBH_NCINvNvB1k_8for_each4callBH_NCNvYINtNtNtB1q_8adapters5chain5ChainINtNtB3U_3map3MapINtNtB3U_7flatten7FlatMapIB4_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB5b_11AstChildrenNtB57_4StmtENCNvMs3_NtB5b_8node_extNtB57_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EB3_ENtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B2A_EB7x_"}
!1819 = distinct !{!1819, !1818, !"_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB8_3ops9try_traitINtB2f_17NeverShortCircuituE10wrap_mut_2uBH_NCINvNvB1k_8for_each4callBH_NCNvYINtNtNtB1q_8adapters5chain5ChainINtNtB3U_3map3MapINtNtB3U_7flatten7FlatMapIB4_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB5b_11AstChildrenNtB57_4StmtENCNvMs3_NtB5b_8node_extNtB57_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EB3_ENtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B2A_EB7x_: argument 0"}
!1820 = distinct !{!1820, !"_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics"}
!1821 = distinct !{!1821, !1820, !"_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 1"}
!1822 = distinct !{!1822, !1818, !"_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB8_3ops9try_traitINtB2f_17NeverShortCircuituE10wrap_mut_2uBH_NCINvNvB1k_8for_each4callBH_NCNvYINtNtNtB1q_8adapters5chain5ChainINtNtB3U_3map3MapINtNtB3U_7flatten7FlatMapIB4_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB5b_11AstChildrenNtB57_4StmtENCNvMs3_NtB5b_8node_extNtB57_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EB3_ENtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B2A_EB7x_: argument 2"}
!1823 = distinct !{!1823, !1818, !"_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB8_4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB8_3ops9try_traitINtB2f_17NeverShortCircuituE10wrap_mut_2uBH_NCINvNvB1k_8for_each4callBH_NCNvYINtNtNtB1q_8adapters5chain5ChainINtNtB3U_3map3MapINtNtB3U_7flatten7FlatMapIB4_NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListEINtB5b_11AstChildrenNtB57_4StmtENCNvMs3_NtB5b_8node_extNtB57_9BlockExpr10statements0ENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers23remove_unnecessary_else5fixes0EB3_ENtCscFGNKo4Sl5v_9itertools9Itertools4join0E0E0B2A_EB7x_: argument 1"}
!1824 = distinct !{!1824, !1820, !"_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0:pre.rot"}
!1825 = distinct !{!1825, !1820, !"_RNvXsy_NtCshzWfHUSfYae_4core6optionINtB5_8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCscA5P7HRgTCP_15ide_diagnostics: argument 0:h.rot"}
!1826 = !{!1762}
!1827 = !{!1763}
!1828 = !{!1765}
!1829 = !{!1766, !1765, !1762, !1763}
!1830 = !{!1765, !1763}
!1831 = !{!1766, !1762}
!1832 = !{!1768}
!1833 = !{!1769}
!1834 = !{!1771}
!1835 = !{!1772}
!1836 = !{!1774}
!1837 = !{!1776}
!1838 = !{!1778, !1776, !1774, !1772, !1769, !1765, !1763}
!1839 = !{!1781, !1780, !1779, !1771, !1768, !1766, !1762}
!1840 = !{!1782}
!1841 = !{!1781, !1782, !1780, !1776, !1779, !1774, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1842 = !{!1782, !1776, !1774, !1772, !1769, !1765, !1763}
!1843 = !{!1784, !1776, !1774, !1772, !1769, !1765, !1763}
!1844 = !{!1780, !1779, !1771, !1768, !1766, !1762}
!1845 = !{!1784}
!1846 = !{!1786}
!1847 = !{!1788, !1786, !1784, !1776, !1774, !1772, !1769, !1765, !1763}
!1848 = !{!1786, !1784, !1780, !1779, !1771, !1768, !1766, !1762}
!1849 = !{!1776, !1774, !1772, !1769, !1765, !1763}
!1850 = !{!1781, !1789, !1780, !1776, !1779, !1774, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1851 = !{!1778}
!1852 = !{!1778, !1780, !1776, !1779, !1774, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1853 = !{!1781, !1778, !1780, !1776, !1779, !1774, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1854 = !{!1790}
!1855 = !{!1790, !1776, !1774, !1772, !1769, !1765, !1763}
!1856 = !{!1791}
!1857 = !{!1788, !1791, !1790, !1776, !1774, !1772, !1769, !1765, !1763}
!1858 = !{!1791, !1790, !1780, !1779, !1771, !1768, !1766, !1762}
!1859 = !{!1793}
!1860 = !{!1794, !1793, !1780, !1776, !1779, !1774, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1861 = !{!1793, !1776, !1774, !1772, !1769, !1765, !1763}
!1862 = !{!1794, !1780, !1779, !1771, !1768, !1766, !1762}
!1863 = !{!1781, !1795, !1780, !1776, !1779, !1774, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1864 = !{!"llvm.loop.peeled.count", i32 1}
!1865 = !{!1793, !1776, !1774, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1866 = !{!1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1867 = !{!1772, !1769, !1765, !1763}
!1868 = !{!1771, !1768, !1766, !1762}
!1869 = !{!1798}
!1870 = !{!1799, !1798, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1871 = !{!1799, !1771, !1772, !1768, !1769, !1766, !1765, !1762, !1763}
!1872 = !{!1799, !1771, !1768, !1766, !1762}
!1873 = !{!1771, !1768}
!1874 = !{!1772, !1769, !1766, !1765, !1762, !1763}
!1875 = !{!1765, !1762, !1763}
!1876 = !{!1801}
!1877 = !{!1803}
!1878 = !{!1805, !1804, !1763}
!1879 = !{!1803, !1801, !1806, !1762}
!1880 = !{!1803, !1805, !1801, !1804, !1762, !1763}
!1881 = !{!1806}
!1882 = !{!1808}
!1883 = !{!1809}
!1884 = !{!1811}
!1885 = !{!1813}
!1886 = !{!1811, !1815, !1814}
!1887 = !{!1813, !1817, !1816, !1811, !1815, !1814}
!1888 = !{!1813, !1811}
!1889 = !{!1817, !1816, !1815, !1814}
!1890 = !{!1819}
!1891 = !{!1821, !1819, !1813, !1811}
!1892 = !{!1824, !1823, !1822, !1817, !1816, !1815, !1814}
!1893 = !{!1819, !1823, !1822, !1813, !1817, !1816, !1811, !1815, !1814}
!1894 = !{!1823, !1822, !1817, !1816, !1815, !1814}
!1895 = !{!1825, !1823, !1822, !1817, !1816, !1815, !1814}
!1896 = distinct !{!1896, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscA5P7HRgTCP_15ide_diagnostics"}
!1897 = distinct !{!1897, !1896, !"_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1898 = distinct !{!1898, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECscA5P7HRgTCP_15ide_diagnostics"}
!1899 = distinct !{!1899, !1898, !"_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECscA5P7HRgTCP_15ide_diagnostics: argument 0"}
!1900 = !{!1899, !1897}
!1901 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
