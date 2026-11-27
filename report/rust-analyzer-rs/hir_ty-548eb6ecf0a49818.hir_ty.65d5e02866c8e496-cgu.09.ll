Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.09?download=true
inline.NumInlined: 5162
inline.NumDeleted: 2096
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMss_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE21region_param_expectedB19_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.g, ptr %i.k, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtB6_5Debug3fmtBD_, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @111, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #44
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMss_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE23type_param_out_of_rangeB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(20) %1, ptr noundef nonnull %2) unnamed_addr #19 !guid !9325 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i32, ptr %i.d, align 4, !noundef !31
  store i32 %.val, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsf_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_7ParamTyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtB6_5Debug3fmtBD_, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #44
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMss_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24const_param_out_of_rangeB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(20) %1, ptr noundef nonnull %2) unnamed_addr #19 !guid !9326 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i32, ptr %i.d, align 4, !noundef !31
  store i32 %.val, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB5_10ParamConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB4_5ConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtB6_5Debug3fmtBD_, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #44
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMss_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE25region_param_out_of_rangeB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(20) %1, ptr noundef nonnull %2) unnamed_addr #19 !guid !9327 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i32, ptr %i.d, align 4, !noundef !31
  store i32 %.val, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_16EarlyParamRegionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtB6_5Debug3fmtBD_, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @117, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE7releaseCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 !guid !9330 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9331)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !53, !alias.scope !9331, !noundef !31
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !alias.scope !9331
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !9331, !noundef !31 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !alias.scope !9331, !nonnull !31, !noundef !31
  %i.i = and i64 %i.g, -2251799813685248          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.k = cmpxchg ptr %i.j, i64 %i.g, i64 %i.i acq_rel acquire, align 8, !noalias !9331 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.k, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.l = or disjoint i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i, %.preheader.i
  %.pn19.i = phi { i64, i1 } [ %i.o, %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.k, %.preheader.i ]
  %.sroa.01.0.i.pn.i = extractvalue { i64, i1 } %.pn19.i, 0 ; 2 uses
  %i.m = and i64 %.sroa.01.0.i.pn.i, 3
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.d, label %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i, !prof !80

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9331
  store i64 2, ptr %i.b, align 8, !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9331
  store ptr %i.b, ptr %i.a, align 8, !noalias !9331
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !9331
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @233, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #44, !noalias !9331
  unreachable

_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.c
  %i.o = cmpxchg ptr %i.j, i64 %.sroa.01.0.i.pn.i, i64 %i.l acq_rel acquire, align 8, !noalias !9331 ; 2 uses
  %.sroa.18.0.in.i12.i = extractvalue { i64, i1 } %i.o, 1
  br i1 %.sroa.18.0.in.i12.i, label %_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsx_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE13expect_regionB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #1 !guid !9332 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !52, !noundef !31
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @119, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsx_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE9expect_tyB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #1 !guid !9333 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !52, !noundef !31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @121, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #44
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBv_14predicate_kind13PredicateKindB1i_EEINtB2_10EquivalentBq_E10equivalentB1o_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #20 !guid !9355 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9359)
  %i.a = load i64, ptr %0, align 8, !range !9360, !alias.scope !9361, !noundef !31 ; 3 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 8) ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !9360, !alias.scope !9362, !noundef !31 ; 3 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 8)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %.split17.i
    i64 2, label %bb.o
    i64 3, label %bb.q
    i64 4, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.u
    i64 5, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i
  ]

default.unreachable:                              ; preds = %bb.e, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 9
  br i1 %i.f, label %bb.d, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9364)
  %i.g = icmp eq i64 %i.a, %i.c
  br i1 %i.g, label %bb.e, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.e:                                             ; preds = %bb.d
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %.split6.i.a
    i64 6, label %.split.i
    i64 7, label %bb.m
    i64 8, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9366)
  %i.j = load <2 x i32>, ptr %i.h, align 8, !alias.scope !9367
  %i.k = load <2 x i32>, ptr %i.i, align 8, !alias.scope !9368
  %i.l = icmp eq <2 x i32> %i.j, %i.k             ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.n, i1 %i.m, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.g, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !9367, !nonnull !31, !noundef !31
  %.val5.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !9368, !nonnull !31, !noundef !31
  %i.q = icmp eq ptr %.val4.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.q, label %.split13.i.a, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split13.i.a:                                     ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !range !53, !alias.scope !9367, !noundef !31
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i8, ptr %i.t, align 8, !range !53, !alias.scope !9368, !noundef !31
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val12.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %i.y = icmp eq ptr %.val11.i.i.i, %.val12.i.i.i
  br i1 %i.y, label %.split7.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val6.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %i.ab = icmp eq ptr %.val5.i.i.i, %.val6.i.i.i
  br i1 %i.ab, label %.split15.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.j:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9372)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i17.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !9373, !nonnull !31, !noundef !31
  %.val1.i18.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !9374, !nonnull !31, !noundef !31
  %i.ag = icmp eq ptr %.val.i17.i.i.i, %.val1.i18.i.i.i
  br i1 %i.ag, label %bb.k, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ai, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ah) #40
  br i1 %i.aj, label %.split8.i.a, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split8.i.a:                                      ; preds = %bb.k
  %.val2.i20.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !9373, !nonnull !31, !noundef !31
  %.val3.i21.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !9374, !nonnull !31, !noundef !31
  %i.ak = icmp eq ptr %.val2.i20.i.i.i, %.val3.i21.i.i.i
  br i1 %i.ak, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.l:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val16.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %i.an = icmp eq ptr %.val15.i.i.i, %.val16.i.i.i
  br i1 %i.an, label %.split11.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split6.i.a:                                      ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val2.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %i.aq = icmp eq ptr %.val.i.i.i, %.val2.i.i.i
  br i1 %i.aq, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split.i:                                         ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val14.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %i.at = icmp eq ptr %.val13.i.i.i, %.val14.i.i.i
  br i1 %i.at, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.m:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9376)
  %i.aw = load <2 x i32>, ptr %i.au, align 8, !alias.scope !9377
  %i.ax = load <2 x i32>, ptr %i.av, align 8, !alias.scope !9378
  %i.ay = icmp eq <2 x i32> %i.aw, %i.ax          ; 2 uses
  %i.az = extractelement <2 x i1> %i.ay, i64 0
  %i.ba = extractelement <2 x i1> %i.ay, i64 1
  %.sroa.0.0.i.i.i26.i.i.i = select i1 %i.ba, i1 %i.az, i1 false
  br i1 %.sroa.0.0.i.i.i26.i.i.i, label %bb.n, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i28.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !9377, !nonnull !31, !noundef !31
  %.val5.i29.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !9378, !nonnull !31, !noundef !31
  %i.bd = icmp eq ptr %.val4.i28.i.i.i, %.val5.i29.i.i.i
  br i1 %i.bd, label %.split10.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split10.i:                                       ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !range !53, !alias.scope !9377, !noundef !31
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load i8, ptr %i.bg, align 8, !range !53, !alias.scope !9378, !noundef !31
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split7.i:                                        ; preds = %bb.h
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9.i.i.i = load ptr, ptr %3, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val10.i.i.i = load ptr, ptr %2, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %4 = icmp eq ptr %.val9.i.i.i, %.val10.i.i.i
  br i1 %4, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split15.i:                                       ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7.i.i.i.a = load ptr, ptr %i.bk, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val8.i.i.i.a = load ptr, ptr %i.bj, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %i.bl = icmp eq ptr %.val7.i.i.i.a, %.val8.i.i.i.a
  br i1 %i.bl, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split11.i:                                       ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !9369, !nonnull !31, !noundef !31
  %.val4.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !9370, !nonnull !31, !noundef !31
  %i.bo = icmp eq ptr %.val3.i.i.i, %.val4.i.i.i
  br i1 %i.bo, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split17.i:                                       ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load <2 x i32>, ptr %i.bp, align 8, !alias.scope !9361
  %i.bs = load <2 x i32>, ptr %i.bq, align 8, !alias.scope !9362
  %i.bt = icmp eq <2 x i32> %i.br, %i.bs          ; 2 uses
  %i.bu = extractelement <2 x i1> %i.bt, i64 0
  %i.bv = extractelement <2 x i1> %i.bt, i64 1
  %.sroa.0.0.i.i.i.i = select i1 %i.bv, i1 %i.bu, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.o:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load i8, ptr %i.by, align 8, !range !53, !alias.scope !9361, !noundef !31
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !range !53, !alias.scope !9362, !noundef !31
  %i.cc = icmp eq i8 %i.bz, %i.cb
  br i1 %i.cc, label %bb.p, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val15.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val16.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.cf = icmp eq ptr %.val15.i.i, %.val16.i.i
  br i1 %i.cf, label %.split16.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split16.i:                                       ; preds = %bb.p
  %.val13.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val14.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.cg = icmp eq ptr %.val13.i.i, %.val14.i.i
  br i1 %i.cg, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.q:                                             ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val12.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.cj = icmp eq ptr %.val11.i.i, %.val12.i.i
  br i1 %i.cj, label %.split14.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split14.i:                                       ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val10.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.cm = icmp eq ptr %.val9.i.i, %.val10.i.i
  br i1 %i.cm, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.r:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val19.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val20.i.i = load ptr, ptr %i.co, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.cp = icmp eq ptr %.val19.i.i, %.val20.i.i
  br i1 %i.cp, label %.split12.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split12.i:                                       ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val18.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.cs = icmp eq ptr %.val17.i.i, %.val18.i.i
  br i1 %i.cs, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.s:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9380)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i21.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !9381, !nonnull !31, !noundef !31
  %.val1.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !9382, !nonnull !31, !noundef !31
  %i.cx = icmp eq ptr %.val.i21.i.i, %.val1.i.i.i
  br i1 %i.cx, label %bb.t, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = tail call fastcc noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cz, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cy) #40
  br i1 %i.da, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.u:                                             ; preds = %bb.b
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i.i = load ptr, ptr %i.db, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val8.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.dd = icmp eq ptr %.val7.i.i, %.val8.i.i
  br i1 %i.dd, label %bb.v, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i = load ptr, ptr %i.df, align 8, !alias.scope !9361, !nonnull !31, !noundef !31
  %.val6.i.i = load ptr, ptr %i.de, align 8, !alias.scope !9362, !nonnull !31, !noundef !31
  %i.dg = icmp eq ptr %.val5.i.i, %.val6.i.i
  br i1 %i.dg, label %.split9.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split9.i:                                        ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load i8, ptr %i.dh, align 8, !range !53, !alias.scope !9361, !noundef !31
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load i8, ptr %i.dj, align 8, !range !53, !alias.scope !9362, !noundef !31
  %i.dl = icmp eq i8 %i.di, %i.dk
  br i1 %i.dl, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i: ; preds = %bb.t
  %.val2.i22.i.i.a = load ptr, ptr %i.cv, align 8, !alias.scope !9381, !nonnull !31, !noundef !31
  %.val3.i23.i.i.a = load ptr, ptr %i.cw, align 8, !alias.scope !9382, !nonnull !31, !noundef !31
  %i.dm = icmp eq ptr %.val2.i22.i.i.a, %.val3.i23.i.i.a
  br i1 %i.dm, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i: ; preds = %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i, %.split9.i, %.split12.i, %.split14.i, %.split16.i, %.split17.i, %.split11.i, %.split15.i, %.split7.i, %.split10.i, %.split.i, %.split6.i.a, %.split8.i.a, %.split13.i.a, %bb.e, %bb.c, %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.do, align 8, !alias.scope !9356, !nonnull !31, !noundef !31
  %.val1.i = load ptr, ptr %i.dn, align 8, !alias.scope !9357, !nonnull !31, !noundef !31
  %i.dp = icmp eq ptr %.val.i, %.val1.i
  br label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit: ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %.split13.i.a, %bb.h, %bb.i, %bb.j, %bb.k, %.split8.i.a, %bb.l, %.split6.i.a, %.split.i, %bb.m, %bb.n, %.split10.i, %.split7.i, %.split15.i, %.split11.i, %.split17.i, %bb.o, %bb.p, %.split16.i, %bb.q, %.split14.i, %bb.r, %.split12.i, %bb.s, %bb.t, %bb.u, %bb.v, %.split9.i, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i
  %.sroa.0.0.i = phi i1 [ %i.dp, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i ], [ false, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i ], [ false, %.split17.i ], [ false, %.split.i ], [ false, %.split6.i.a ], [ false, %.split7.i ], [ false, %.split8.i.a ], [ false, %.split9.i ], [ false, %.split10.i ], [ false, %.split11.i ], [ false, %.split12.i ], [ false, %.split13.i.a ], [ false, %.split14.i ], [ false, %.split15.i ], [ false, %.split16.i ], [ false, %bb.u ], [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.p ], [ false, %bb.v ], [ false, %bb.l ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcastINtNtB4_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4_14predicate_kind13PredicateKindB16_EEINtB2_6UpcastB16_NtNtB1a_9predicate9PredicateE6upcastB1c_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 !guid !9383 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXsq_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9PredicateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcast10UpcastFromNtNtB7_8interner10DbInternerINtNtB1b_6binder6BinderB23_INtNtB1b_14predicate_kind13PredicateKindB23_EEE11upcast_from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcastINtNtB4_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4_9predicate8TraitRefB16_EEINtB2_6UpcastB16_NtNtB1a_9predicate9PredicateE6upcastB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 !guid !9384 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXsw_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9PredicateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcast10UpcastFromNtNtB7_8interner10DbInternerINtNtB1b_6binder6BinderB23_INtNtB1b_9predicate8TraitRefB23_EEE11upcast_from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXNtCs39E2wp1vf7X_6intern2gcINtB2_15InternedStorageNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedENtB2_7Storage3lenBV_(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9385 {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 24) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10initializeNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4A_13InternStorageB20_E3get0E0zEB26_(ptr noundef nonnull align 8 @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE)
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, align 8, !nonnull !31, !noundef !31
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 8), align 8, !noundef !31 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2B_4util11SharedValueuEEEEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB6q_8adapters3map8map_foldRBQ_jjNCNvXs2_B2B_INtB2B_7DashMapB41_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2B_1t3MapB41_uB8g_E4__len0NCINvXsK_NtB6o_5accumjNtB9D_3Sum3sumINtB7a_3MapBF_B7K_EE0E0EB4H_.exit, label %.preheader

.preheader:                                       ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.q, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i ], [ 0, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.p, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i ], [ 0, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ]
  %i.f = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %.sroa.04.0.i ; 6 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 3 uses
  %i.h = icmp ugt i64 %i.g, -9
  br i1 %i.h, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !43

_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %.preheader
  %i.i = add nuw i64 %i.g, 4
  %i.j = cmpxchg weak ptr %i.f, i64 %i.g, i64 %i.i acquire monotonic, align 8
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.c, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !81

_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %.preheader
  tail call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 128 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !31
  %i.n = atomicrmw add ptr %i.f, i64 -4 release, align 8
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %bb.d, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 128 %i.f)
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i: ; preds = %bb.d, %bb.c
  %i.p = add i64 %i.m, %.sroa.02.0.i              ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2B_4util11SharedValueuEEEEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB6q_8adapters3map8map_foldRBQ_jjNCNvXs2_B2B_INtB2B_7DashMapB41_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2B_1t3MapB41_uB8g_E4__len0NCINvXsK_NtB6o_5accumjNtB9D_3Sum3sumINtB7a_3MapBF_B7K_EE0E0EB4H_.exit, label %.preheader

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2B_4util11SharedValueuEEEEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB6q_8adapters3map8map_foldRBQ_jjNCNvXs2_B2B_INtB2B_7DashMapB41_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2B_1t3MapB41_uB8g_E4__len0NCINvXsK_NtB6o_5accumjNtB9D_3Sum3sumINtB7a_3MapBF_B7K_EE0E0EB4H_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit
  %.sroa.0.0.i = phi i64 [ 0, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ], [ %i.p, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs39E2wp1vf7X_6intern2gcINtB2_15InternedStorageNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedENtB2_7Storage4markBV_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9444 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 24) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10initializeNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4A_13InternStorageB20_E3get0E0zEB26_(ptr noundef nonnull align 8 @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE)
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx9.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref8multiple8RefMultiINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuEEB29_.exit11, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit
  %.promoted63.i23 = phi i64 [ %i.au, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref8multiple8RefMultiINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuEEB29_.exit11 ], [ undef, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ] ; 2 uses
  %.promoted12.i.i17 = phi ptr [ %.promoted12.i.i19, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref8multiple8RefMultiINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuEEB29_.exit11 ], [ undef, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ]
  %.pre.i.i13 = phi ptr [ %.pre.i.i15, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref8multiple8RefMultiINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuEEB29_.exit11 ], [ undef, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ]
  %i.g = phi ptr [ %.lcssa43, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref8multiple8RefMultiINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuEEB29_.exit11 ], [ null, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ] ; 7 uses
  %i.h = phi i64 [ %.lcssa38, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs2WklPA5QxgX_7dashmap6mapref8multiple8RefMultiINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuEEB29_.exit11 ], [ 0, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9445)
  %.not.i106 = icmp eq ptr %i.g, null             ; 2 uses
  %i.i = icmp eq i64 %.promoted63.i23, 0
  %or.cond.i107 = select i1 %.not.i106, i1 true, i1 %i.i
  br i1 %or.cond.i107, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %.pre = load i16, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx.i, align 8, !alias.scope !9446
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.val16.i.peel = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 8), align 8, !noalias !9447, !noundef !31 ; 2 uses
  %i.j = icmp eq i64 %i.h, %.val16.i.peel
  br i1 %i.j, label %.loopexit146, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9448)
  %i.k = load ptr, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, align 8, !alias.scope !9448, !noalias !9447, !nonnull !31, !noundef !31
  %i.l = icmp ult i64 %i.h, %.val16.i.peel
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %i.h ; 8 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8, !noalias !9449 ; 3 uses
  %i.o = icmp ugt i64 %i.n, -9
  br i1 %i.o, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.peel, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.peel, !prof !43

_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.peel: ; preds = %bb.d
  %i.p = add nuw i64 %i.n, 4
  %i.q = cmpxchg weak ptr %i.m, i64 %i.n, i64 %i.p acquire monotonic, align 8, !noalias !9449
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.noexc.peel, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.peel, !prof !81

_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.peel: ; preds = %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.peel, %bb.d
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.m)
          to label %.noexc.peel unwind label %.loopexit.loopexit.split-lp, !noalias !9449

.noexc.peel:                                      ; preds = %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.peel, %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.peel
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9450)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9450, !noalias !9447, !nonnull !31, !noundef !31 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !9450, !noalias !9447, !noundef !31
  %i.w = getelementptr i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1        ; 2 uses
  %.val4.i.i.peel = load <16 x i8>, ptr %i.t, align 16, !noalias !9451
  %i.y = icmp sgt <16 x i8> %.val4.i.i.peel, splat (i8 -1) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !9450, !noalias !9447, !noundef !31 ; 4 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !9452
  %i.ac = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 25) 24, i64 noundef 8) #37, !noalias !9452 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit150, label %bb.e, !prof !40

bb.e:                                             ; preds = %.noexc.peel
  store i64 1, ptr %i.ac, align 8, !noalias !9447
  %.sroa.429.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %.sroa.429.0..sroa_idx.i.peel, align 8, !noalias !9447
  %.sroa.530.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.m, ptr %.sroa.530.0..sroa_idx.i.peel, align 8, !noalias !9447
  br i1 %.not.i106, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !9453
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB1A_4util11SharedValueuEEEEE9drop_slowB3G_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %.sroa.5.0..sroa_idx) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel unwind label %.body.thread.loopexit.split-lp, !noalias !9454

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel: ; preds = %bb.g, %bb.f, %bb.e
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9445
  store ptr %i.t, ptr %.sroa.58.0..sroa_idx9.i, align 8, !alias.scope !9445
  store ptr %i.z, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx.i, align 8, !alias.scope !9445
  store ptr %i.x, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx9.sroa_idx.i, align 8, !alias.scope !9445
  store <16 x i1> %i.y, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx.i, align 8, !alias.scope !9445
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !9445
  %i.ag = add nuw i64 %i.h, 1                     ; 3 uses
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9445
  %i.ah = icmp eq i64 %i.ab, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i
  %i.ai = phi i64 [ %i.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i ], [ %i.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel ] ; 4 uses
  %i.aj = phi ptr [ %i.bp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i ], [ %i.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel ] ; 4 uses
  %.val16.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 8), align 8, !noalias !9447, !noundef !31 ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %.val16.i
  br i1 %i.ak, label %.loopexit146.thread, label %bb.i

._crit_edge.loopexit:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2q_4util11SharedValueuEEEEEINtB34_7RawIterB3P_EEEEB4w_.exit.i.peel
end_hunk_0
