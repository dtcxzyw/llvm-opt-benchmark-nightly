inline.NumInlined: 6953
inline.NumDeleted: 4383
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1a_5solve19VisibleForLeakCheckEINtNtNtBa_5slice4iter4IterB14_EEB2h_
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicate16RegionConstraintNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB1a_5solve19VisibleForLeakCheckEINtNtNtBa_5slice4iter4IterB14_EEB2h_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB1c_9predicate9PredicateEINtNtBa_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtB1c_8interner10DbInternerEEEINtNtNtBa_5slice4iter4IterB14_EEB1e_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10GoalSourceINtB17_4GoalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2g_9predicate9PredicateEEINtNtNtBa_5slice4iter4IterB14_EEB2i_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtNtB1b_9autoderef13AutoderefKindEINtNtNtBa_5slice4iter4IterB14_EEB1b_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence16IsFirstInputTypeEINtNtNtBa_5slice4iter4IterB14_EEB1b_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @110) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor5PlaceNtB17_13FakeReadCauseINtCsjpcu9PwIgok_8smallvec8SmallVecANtB1d_18CaptureSourceStackj2_EEINtNtNtBa_5slice4iter4IterB14_EEB1f_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor5PlaceNtB1d_11CaptureInfoEINtNtNtBa_5slice4iter4IterB14_EEB1f_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @112) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRoINtNtNtBa_5slice4iter4IteroEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !625
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt17truncate_from_intnEBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(18) %0, i128 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %2) #49
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #46, !noalias !626
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = trunc i64 %2 to i8                       ; 2 uses
  %.not.i3 = icmp eq i8 %i.c, 0
  br i1 %.not.i3, label %bb.f, label %_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw.exit4, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #46, !noalias !629
  unreachable

_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw.exit4: ; preds = %bb.e
  %.neg = mul i64 %2, 120
  %i.d = and i64 %.neg, 120
  %i.e = zext nneg i64 %i.d to i128               ; 3 uses
  %i.f = lshr i128 -1, %i.e
  %i.g = and i128 %i.f, %1
  %i.h = shl i128 %1, %i.e
  %i.i = ashr exact i128 %i.h, %i.e
  %i.j = icmp ne i128 %i.i, %1
  %i.k = zext i1 %i.j to i8
  store i8 %i.c, ptr %0, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i128 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.k, ptr %i.l, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(18) %0, i128 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %3 = trunc i64 %2 to i8                         ; 2 uses
  %i.b = icmp eq i8 %3, 0
  br i1 %i.b, label %bb.d, label %_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw.exit, !prof !8

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %2) #49
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #46, !noalias !632
  unreachable

_RNvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB5_9ScalarInt3raw.exit: ; preds = %bb.b
  %.neg = mul i64 %2, 120
  %4 = and i64 %.neg, 120
  %5 = zext nneg i64 %4 to i128
  %6 = lshr i128 -1, %5                           ; 2 uses
  %7 = and i128 %6, %1
  %8 = icmp ugt i128 %1, %6
  store i8 %3, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i128 %7, ptr %.sroa.4.0..sroa_idx, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.d = zext i1 %8 to i8
  store i8 %i.d, ptr %i.c, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugMap7entriesRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatERINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterB13_B27_EEB2I_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !captures !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8, !captures !625
  %i.i = call noundef nonnull align 8 ptr @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13PatAdjustmentEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugMap7entriesRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprERINtCs83ee1IJTiSq_6either6EitherNtB1B_7FieldIdNtB1B_12TupleFieldIdEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterB13_B28_EECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtCs83ee1IJTiSq_6either6EitherNtB1i_7FieldIdNtB1i_12TupleFieldIdEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !captures !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8, !captures !625
  %i.i = call noundef nonnull align 8 ptr @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @118) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtCs83ee1IJTiSq_6either6EitherNtB1i_7FieldIdNtB1i_12TupleFieldIdEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugMap7entriesRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprERINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6callee22DeferredCallResolutionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterB13_B28_EEB2L_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6callee22DeferredCallResolutionEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !captures !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8, !captures !625
  %i.i = call noundef nonnull align 8 ptr @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @119) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6callee22DeferredCallResolutionEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugMap7entriesRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprERINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterB13_B28_EEB2M_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !captures !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8, !captures !625
  %i.i = call noundef nonnull align 8 ptr @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugMap7entriesRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprERNtNtCs8K4cjrcxBsw_6hir_ty5infer11ClosureDataINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterB13_B28_EEB2c_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCs8K4cjrcxBsw_6hir_ty5infer11ClosureDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !captures !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8, !captures !625
  %i.i = call noundef nonnull align 8 ptr @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @121) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCs8K4cjrcxBsw_6hir_ty5infer11ClosureDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugMap7entriesRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprERTNtB1B_10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterB13_B28_EEB2x_(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprETNtB1i_10FunctionIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg17StoredGenericArgsEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !captures !625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_const:bb.a
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [18 x i8], align 1                ; 3 uses
  %i.o = alloca [18 x i8], align 1                ; 3 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [32 x i8], align 16               ; 6 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [48 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [8 x i8], align 8                ; 7 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [16 x i8], align 16              ; 4 uses
  %i.bb = alloca [16 x i8], align 16              ; 4 uses
  %i.bc = alloca [16 x i8], align 16              ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 25 uses
  %i.be = alloca [16 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.bf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !align !73, !noundef !4 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !range !2286, !noundef !4 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !noundef !4 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 352
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !4, !nonnull !4
  call void %i.bn(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.be, ptr noundef nonnull %i.bf, i32 noundef %i.bj, i32 noundef %i.bl) #47
  %i.bo = load ptr, ptr %i.be, align 8, !noundef !4
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.bp = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208: ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !align !73, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.sroa.03.0.copyload = load i32, ptr %1, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.86.0.copyload = load ptr, ptr %.sroa.86.0..sroa_idx, align 8 ; 6 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 8 uses
  %i.bs = icmp ne i32 %.sroa.03.0.copyload, 27
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i32 %.sroa.03.0.copyload, -2
  %i.bu = icmp ugt i32 %.sroa.03.0.copyload, 1
  %narrow = select i1 %i.bu, i32 %i.bt, i32 25
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.j
    i32 11, label %bb.m
    i32 12, label %bb.q
    i32 13, label %bb.r
    i32 14, label %bb.m
    i32 15, label %bb.s
    i32 16, label %bb.j
    i32 17, label %bb.s
    i32 18, label %bb.s
    i32 19, label %bb.s
    i32 20, label %bb.s
    i32 21, label %bb.t
    i32 22, label %bb.u
    i32 23, label %bb.w
    i32 24, label %bb.w
    i32 25, label %bb.w
    i32 26, label %bb.w
    i32 27, label %bb.w
    i32 28, label %bb.w
  ]

bb.b:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  unreachable

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %.not185 = icmp eq i64 %3, 0
  br i1 %.not185, label %bb.y, label %bb.x

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval5pad16(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext false)
  %i.bv = load i128, ptr %i.bc, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.bw = trunc i128 %i.bv to i32                 ; 2 uses
  %i.bx = xor i32 %i.bw, 55296
  %i.by = add i32 %i.bx, -1114112
  %i.bz = icmp ult i32 %i.by, -1112064
  br i1 %i.bz, label %bb.ab, label %bb.aa

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval5pad16(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext true)
  %i.ca = load i128, ptr %i.bb, align 16, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  switch i8 %.sroa.5.0.copyload, label %bb.b [
    i8 0, label %bb.ac
    i8 1, label %bb.ai
    i8 2, label %bb.ad
    i8 3, label %bb.ae
    i8 4, label %bb.af
    i8 5, label %bb.ag
  ]

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval5pad16(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext false)
  %i.cb = load i128, ptr %i.ba, align 16, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  switch i8 %.sroa.5.0.copyload, label %bb.b [
    i8 0, label %bb.al
    i8 1, label %bb.ar
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ao
    i8 5, label %bb.ap
  ]

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  switch i8 %.sroa.5.0.copyload, label %bb.b [
    i8 0, label %bb.au
    i8 1, label %bb.av
    i8 2, label %bb.aw
    i8 3, label %bb.ax
  ]

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.cc = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.cd = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.ce = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.86.0.copyload) ]
  store ptr %.sroa.86.0.copyload, ptr %i.v, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval15try_const_usize(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.u, ptr noundef nonnull %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.bh, ptr noundef nonnull %.sroa.10.0.copyload)
  %i.cf = load i128, ptr %i.u, align 16, !range !6068, !noundef !4
  %i.cg = trunc nuw i128 %i.cf to i1
  br i1 %i.cg, label %bb.bb, label %bb.bd

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.ch = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval5pad16(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext false)
  %i.ci = load i128, ptr %i.w, align 16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !4 ; 4 uses
  %i.cl = icmp ugt i64 %i.ck, 2305843009213693951
  br i1 %i.cl, label %7, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %6 = trunc i64 %i.ck to i8                      ; 2 uses
  %i.cm = icmp eq i8 %6, 0
  br i1 %i.cm, label %bb.o, label %bb.p, !prof !8

7:                                                ; preds = %bb.m
  call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %i.ck) #49, !noalias !7286
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #46, !noalias !7289
  unreachable

bb.p:                                             ; preds = %bb.n
  %.neg.i = mul i64 %i.ck, 120
  %i.cn = and i64 %.neg.i, 120
  %i.co = zext nneg i64 %i.cn to i128
  %i.cp = lshr i128 -1, %i.co                     ; 2 uses
  %8 = icmp ugt i128 %i.ci, %i.cp
  br i1 %8, label %bb.ea, label %bb.dz, !prof !8

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ]
  store ptr %.sroa.10.0.copyload, ptr %i.az, align 8
  %.sroa.031.0.copyload = load i32, ptr %.sroa.10.0.copyload, align 8 ; 3 uses
  %i.cq = icmp ne i32 %.sroa.031.0.copyload, 27
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add i32 %.sroa.031.0.copyload, -2
  %i.cs = icmp ugt i32 %.sroa.031.0.copyload, 1
  %narrow168 = select i1 %i.cs, i32 %i.cr, i32 25
  switch i32 %narrow168, label %bb.bl [
    i32 5, label %bb.bm
    i32 7, label %bb.bn
    i32 10, label %bb.bo
    i32 16, label %bb.bp
  ]

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.ct = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.cu = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.cv = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.86.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.cw = call fastcc noundef nonnull ptr @_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_(ptr nonnull %1) #47 ; 2 uses
  store ptr %i.cw, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.cx = load ptr, ptr %5, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.v, label %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit, !prof !8

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #49
          to label %.noexc209 unwind label %bb.eg

.noexc209:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit208
  %i.da = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.x:                                             ; preds = %bb.c
  %i.db = load i8, ptr %2, align 1, !noundef !4
  %i.dc = icmp ne i8 %i.db, 0
  %i.dd = zext i1 %i.dc to i128
  %i.de = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 1, ptr %i.de, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i128 %i.dd, ptr %.sroa.4.0..sroa_idx, align 2
  store i8 0, ptr %i.bd, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.c
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #46
  unreachable

bb.z:                                             ; preds = %bb.ee, %bb.dz, %bb.bx, %bb.bh, %bb.ay, %bb.as, %bb.aj, %bb.aa, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.df = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const11new_valtree(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ef

bb.aa:                                            ; preds = %bb.d
  %i.dg = icmp ult i32 %i.bw, 1114112
  call void @llvm.assume(i1 %i.dg)
  %i.dh = and i128 %i.bv, 2097151
  %i.di = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 4, ptr %i.di, align 1
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i128 %i.dh, ptr %.sroa.412.0..sroa_idx, align 2
  store i8 0, ptr %i.bd, align 8
  br label %bb.z

bb.ab:                                            ; preds = %bb.d
  %i.dj = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.ac:                                            ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !4
  br label %bb.ah

bb.ad:                                            ; preds = %bb.e
  br label %bb.ai

bb.ae:                                            ; preds = %bb.e
  br label %bb.ai

bb.af:                                            ; preds = %bb.e
  br label %bb.ai

bb.ag:                                            ; preds = %bb.e
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ac
  %.sroa.016.0 = phi i64 [ %i.dl, %bb.ac ], [ %i.dp, %bb.ai ]
  call fastcc void @_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt17truncate_from_intnEBc_(ptr noalias nofree noundef align 1 captures(none) dereferenceable(18) %i.o, i128 noundef %i.ca, i64 noundef %.sroa.016.0) #47
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  %i.dn = load i8, ptr %i.dm, align 1, !range !899, !noundef !4
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ak, label %bb.aj, !prof !8

bb.ai:                                            ; preds = %bb.e, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.sroa.0106.0 = phi i64 [ 128, %bb.ag ], [ 16, %bb.ad ], [ 32, %bb.ae ], [ 64, %bb.af ], [ 8, %bb.e ]
  %i.dp = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef %.sroa.0106.0)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.dq, ptr noundef nonnull align 1 dereferenceable(17) %i.o, i64 17, i1 false)
  store i8 0, ptr %i.bd, align 8
  br label %bb.z

bb.ak:                                            ; preds = %bb.ah
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #46
  unreachable

bb.al:                                            ; preds = %bb.f
  %i.dr = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !4
  br label %bb.aq

bb.am:                                            ; preds = %bb.f
  br label %bb.ar

bb.an:                                            ; preds = %bb.f
  br label %bb.ar

bb.ao:                                            ; preds = %bb.f
  br label %bb.ar

bb.ap:                                            ; preds = %bb.f
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.al
  %.sroa.021.0 = phi i64 [ %i.ds, %bb.al ], [ %i.dw, %bb.ar ]
  call fastcc void @_RINvMs6_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtreeNtB6_9ScalarInt18truncate_from_uintoEBc_(ptr noalias nofree noundef align 1 captures(none) dereferenceable(18) %i.n, i128 noundef %i.cb, i64 noundef %.sroa.021.0) #47
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  %i.du = load i8, ptr %i.dt, align 1, !range !899, !noundef !4
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.at, label %bb.as, !prof !8

bb.ar:                                            ; preds = %bb.f, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.0107.0 = phi i64 [ 128, %bb.ap ], [ 16, %bb.am ], [ 32, %bb.an ], [ 64, %bb.ao ], [ 8, %bb.f ]
  %i.dw = call noundef i64 @_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size9from_bitsyECs8K4cjrcxBsw_6hir_ty(i64 noundef %.sroa.0107.0)
  br label %bb.aq

bb.as:                                            ; preds = %bb.aq
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.dx, ptr noundef nonnull align 1 dereferenceable(17) %i.n, i64 17, i1 false)
  store i8 0, ptr %i.bd, align 8
  br label %bb.z

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #46
  unreachable

bb.au:                                            ; preds = %bb.g
  %.not350 = icmp eq i64 %3, 2
  br i1 %.not350, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit, label %.critedge

bb.av:                                            ; preds = %bb.g
  %.not349 = icmp eq i64 %3, 4
  br i1 %.not349, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit, label %.critedge352

bb.aw:                                            ; preds = %bb.g
  %i.dy = icmp eq i64 %3, 8
  br i1 %i.dy, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit197, label %bb.az

bb.ax:                                            ; preds = %bb.g
  %i.dz = icmp eq i64 %3, 16
  br i1 %i.dz, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit, label %bb.ba

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.au
  %.sroa.0111.0.copyload = load i16, ptr %2, align 1
  %i.ea = zext i16 %.sroa.0111.0.copyload to i128
  br label %bb.ay

.critedge:                                        ; preds = %bb.au
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #46
  unreachable

bb.ay:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit197, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.523.0 = phi i128 [ %i.ea, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit ], [ %i.ec, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit ], [ %i.ed, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit197 ], [ %.sroa.0285.0.copyload, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit ]
  %.sroa.022.0 = phi i8 [ 2, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit ], [ 4, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit ], [ 8, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit197 ], [ 16, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8K4cjrcxBsw_6hir_ty.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %.sroa.022.0, ptr %i.eb, align 1
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_const:bb.a
  %i.hx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.hy, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 336
  %i.ia = load i64, ptr %i.hz, align 16, !noundef !4
  %i.ib = invoke { ptr, i64 } @_RNvMs_Cs8K4cjrcxBsw_6hir_tyNtB4_9MemoryMap3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0133.0.copyload, i64 noundef %i.ia)
          to label %bb.dc unwind label %bb.da     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.ic = extractvalue { ptr, i64 } %i.ib, 0      ; 2 uses
  %.not172 = icmp eq ptr %i.ic, null
  br i1 %.not172, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.id = extractvalue { ptr, i64 } %i.ib, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.ie = invoke noundef nonnull ptr @_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_const(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.j, ptr noundef nonnull %i.hl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ic, i64 noundef %i.id, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.i)
          to label %bb.df unwind label %bb.da

bb.de:                                            ; preds = %bb.dc
  %i.if = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
          to label %bb.dg unwind label %bb.da

bb.df:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df
  %.sroa.0.5 = phi ptr [ %i.ie, %bb.df ], [ %i.if, %bb.de ]
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE10drop_innerB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.br

bb.dh:                                            ; preds = %bb.cy
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit unwind label %bb.bi

bb.di:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.0112.0.copyload = load i64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ih = call fastcc noundef nonnull ptr @_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_(ptr nonnull %.sroa.10.0.copyload) #47 ; 2 uses
  store ptr %i.ih, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ii = load ptr, ptr %5, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ij = atomicrmw add ptr %i.ii, i64 1 monotonic, align 8
  %i.ik = icmp slt i64 %i.ij, 0
  br i1 %i.ik, label %bb.dj, label %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit231, !prof !8

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #49
          to label %.noexc230 unwind label %bb.ds

.noexc230:                                        ; preds = %bb.dj
  unreachable

_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit231: ; preds = %bb.di
  store ptr %i.ii, ptr %i.ab, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.bj, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %i.bl, ptr %i.im, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.bh, i64 344
  %i.io = load ptr, ptr %i.in, align 8, !invariant.load !4, !nonnull !4
  call void %i.io(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ad, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.ih, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ip = load i64, ptr %i.ad, align 8, !range !916, !noundef !4
  %.not180 = icmp eq i64 %i.ip, -1
  br i1 %.not180, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.iq = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.br

bb.dl:                                            ; preds = %bb.dp, %bb.do, %bb.dm
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE10drop_innerB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit unwind label %bb.bi

bb.dm:                                            ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.is = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.it, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 336
  %i.iv = load i64, ptr %i.iu, align 16, !noundef !4
  %i.iw = invoke { ptr, i64 } @_RNvMs_Cs8K4cjrcxBsw_6hir_tyNtB4_9MemoryMap3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0112.0.copyload, i64 noundef %i.iv)
          to label %bb.dn unwind label %bb.dl     ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %i.ix = extractvalue { ptr, i64 } %i.iw, 0      ; 2 uses
  %.not181 = icmp eq ptr %i.ix, null
  br i1 %.not181, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.iy = extractvalue { ptr, i64 } %i.iw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.iz = invoke noundef nonnull ptr @_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_const(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull %.sroa.10.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ix, i64 noundef %i.iy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.g)
          to label %bb.dq unwind label %bb.dl

bb.dp:                                            ; preds = %bb.dn
  %i.ja = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
          to label %bb.dr unwind label %bb.dl

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %.sroa.0.6 = phi ptr [ %i.iz, %bb.dq ], [ %i.ja, %bb.dp ]
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE10drop_innerB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.br

bb.ds:                                            ; preds = %bb.dj
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit unwind label %bb.bi

bb.dt:                                            ; preds = %bb.bm, %bb.bl
  %i.jc = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.jd = icmp ult i64 %i.jc, 5
  br i1 %i.jd, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt
  %i.je = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_consts_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.je, label %bb.dv [
    i8 0, label %bb.dx
    i8 1, label %bb.dw
    i8 2, label %bb.dw
  ], !prof !719

bb.dv:                                            ; preds = %bb.du
  %i.jf = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_consts_10___CALLSITE) #50 ; 2 uses
  %i.jg = icmp eq i8 %i.jf, 0
  br i1 %i.jg, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.du, %bb.dv
  %.sroa.077.0 = phi i8 [ %i.jf, %bb.dv ], [ %i.je, %bb.du ], [ %i.je, %bb.du ]
  %i.jh = load ptr, ptr @_RNvNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_consts_10___CALLSITE, align 8, !nonnull !4, !align !73, !noundef !4
  %i.ji = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jh, i8 noundef %.sroa.077.0)
  br i1 %i.ji, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.dy, %bb.dw
  %i.jj = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.br

bb.dy:                                            ; preds = %bb.dw
  %i.jk = load ptr, ptr @_RNvNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree19allocation_to_consts_10___CALLSITE, align 8, !nonnull !4, !align !73, !noundef !4 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %3, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.az, ptr %i.af, align 8
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.jm, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4145.0..sroa_idx, align 8
  store ptr @278, ptr %i.ah, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.af, ptr %i.jn, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @195, ptr %i.jo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 1, ptr %i.k, align 8
  %.sroa.079.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ai, ptr %.sroa.079.sroa.4.0..sroa_idx, align 8
  %.sroa.079.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.079.sroa.5.0..sroa_idx, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.jl, ptr %.sroa.480.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.dx

bb.dz:                                            ; preds = %bb.p
  %9 = and i128 %i.cp, %i.ci
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %6, ptr %i.jp, align 1
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i128 %9, ptr %.sroa.4309.0..sroa_idx, align 2
  store i8 0, ptr %i.bd, align 8
  br label %bb.z

bb.ea:                                            ; preds = %bb.p
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
  unreachable

_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit: ; preds = %bb.u
  store ptr %i.cx, ptr %i.x, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.bj, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.bl, ptr %i.jr, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.bh, i64 344
  %i.jt = load ptr, ptr %i.js, align 8, !invariant.load !4, !nonnull !4
  call void %i.jt(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.cw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ju = load i64, ptr %i.z, align 8, !range !916, !noundef !4
  %.not167 = icmp eq i64 %i.ju, -1
  br i1 %.not167, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.jv = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB2_5Const5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0)
  br label %bb.ef

bb.ec:                                            ; preds = %_RNvMs7_NtCs39E2wp1vf7X_6intern12intern_sliceINtB5_16InternedSliceRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate14ClausesStorageE8to_ownedB1a_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !nonnull !4, !noundef !4
  store ptr %i.jx, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.86.0.copyload, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !noundef !4
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.86.0.copyload, i64 16 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7341
  store ptr %i.ka, ptr %i.b, align 8, !alias.scope !7344
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.kb, ptr %.sroa.4267.0..sroa_idx, align 8, !alias.scope !7344
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5268.0..sroa_idx, align 8, !alias.scope !7344
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aa, ptr %.sroa.6269.0..sroa_idx, align 8, !alias.scope !7344
  %.sroa.7270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %0, ptr %.sroa.7270.0..sroa_idx, align 8, !alias.scope !7344
  %.sroa.8271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %5, ptr %.sroa.8271.0..sroa_idx, align 8, !alias.scope !7344
  %.sroa.9272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %2, ptr %.sroa.9272.0..sroa_idx, align 8, !alias.scope !7344
  %.sroa.10273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %3, ptr %.sroa.10273.0..sroa_idx, align 8, !alias.scope !7344
  %.sroa.11274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %4, ptr %.sroa.11274.0..sroa_idx, align 8, !alias.scope !7344
  %i.kc = invoke noundef nonnull ptr @_RINvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8internerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstINtB3_15CollectAndApplyBN_NtBP_6ConstsE17collect_and_applyINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2F_9enumerate9EnumerateINtNtB2F_6copied6CopiedINtNtNtB2J_5slice4iter4IterNtNtBR_2ty2TyEEENCNvNtBP_7valtree19allocation_to_consts0_0ENCINvMsP_BP_B24_13new_from_iterB2A_BN_E0EBT_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE10drop_innerB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit unwind label %bb.bi

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7341
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.kc, ptr %i.ke, align 8
  store i8 1, ptr %i.bd, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE10drop_innerB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.z

bb.ef:                                            ; preds = %bb.h, %bb.i, %bb.j, %bb.l, %bb.r, %bb.s, %bb.t, %bb.w, %bb.ab, %bb.bj, %bb.br, %bb.eb, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.0.7 = phi ptr [ %i.bp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultRNtCskVLyBV5N46_15ra_ap_rustc_abi16TargetDataLayoutNtNtCsgIpRO4v45SJ_7base_db6target15TargetLoadErrorEECs8K4cjrcxBsw_6hir_ty.exit ], [ %i.df, %bb.z ], [ %i.dj, %bb.ab ], [ %i.cc, %bb.h ], [ %i.cd, %bb.i ], [ %i.ey, %bb.bj ], [ %i.ch, %bb.l ], [ %.sroa.0.2, %bb.br ], [ %i.ct, %bb.r ], [ %i.ce, %bb.j ], [ %i.cu, %bb.s ], [ %i.cv, %bb.t ], [ %i.jv, %bb.eb ], [ %i.da, %bb.w ]
  ret ptr %.sroa.0.7

bb.eg:                                            ; preds = %bb.v
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit unwind label %bb.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEINtB2_10EquivalentBq_E10equivalentB1I_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !2762, !noundef !4
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !align !2762, !noundef !4
  %i.a = getelementptr i8, ptr %.val, i64 120
  %.val.i = load i32, ptr %i.a, align 8, !noundef !4
  %i.b = getelementptr i8, ptr %.val1, i64 120
  %.val1.i = load i32, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i32 %.val.i, %.val1.i
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs8K4cjrcxBsw_6hir_ty11next_solverNtB2_10DefaultAnyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(2424) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 10)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsbSS6DM8SDEO_5alloc6borrowINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtB2_7ToOwned8to_ownedCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCs39E2wp1vf7X_6intern6symbol6SymboluNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldNtB2_13FnMutDelegateNtB2_24BoundVarReplacerDelegate10replace_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !73, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4
  %i.h = call noundef nonnull ptr %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldNtB2_13FnMutDelegateNtB2_24BoundVarReplacerDelegate13replace_const(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !73, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  %i.g = tail call noundef nonnull ptr %i.f(ptr noundef nonnull %i.b, i32 noundef %1) #47
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldNtB2_13FnMutDelegateNtB2_24BoundVarReplacerDelegate14replace_region(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !73, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  %i.g = call noundef nonnull ptr %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB2_12GenericShuntIBE_INtNtB2_3map3MapINtNtB2_5chain5ChainINtNtNtB4_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB2_6copied6CopiedINtNtNtB6_5slice4iter4IterB23_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB4a_11MirLowerCtx19lower_call_and_argsB1h_E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB4a_13MirLowerErrorEEINtNtB6_6option6OptionB5Q_EENtNtNtB4_6traits8iterator8Iterator4nextB4e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [28 x i8], align 4          ; 5 uses
  %.sroa.5 = alloca [28 x i8], align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7348)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !7348, !noalias !7351, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7356
  store ptr %i.a, ptr %i.c, align 8, !noalias !7357
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.f, align 8, !noalias !7357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7357
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !7361, !noalias !7362, !nonnull !4, !align !73, !noundef !4
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBa_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterB1J_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB3Q_11MirLowerCtx19lower_call_and_argsBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtB3Q_13MirLowerErrorEEB59_8try_folduNCINvXB8_IB61_B60_INtNtBc_6option6OptionB6J_EEB59_8try_folduNCINvNvB59_12try_for_each4callNtB3S_7OperandINtNtNtBc_3ops12control_flow11ControlFlowB9d_ENcNtB9r_5Break0E0B9r_E0IB9s_B9r_EE0IB9s_Bay_EEB3U_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !7363
  %i.i = load i32, ptr %i.b, align 8, !range !7364, !noalias !7357, !noundef !4 ; 4 uses
  %.not.i.i = icmp eq i32 %i.i, -3
  br i1 %.not.i.i, label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB20_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB47_11MirLowerCtx19lower_call_and_argsB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB47_13MirLowerErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionB5N_EEB6B_8try_folduNCINvNvB6B_12try_for_each4callNtB49_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8J_ENcNtB8X_5Break0E0B8X_E0IB8Y_B8X_EEB4b_.exit.thread.i, label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB20_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB47_11MirLowerCtx19lower_call_and_argsB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB47_13MirLowerErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionB5N_EEB6B_8try_folduNCINvNvB6B_12try_for_each4callNtB49_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8J_ENcNtB8X_5Break0E0B8X_E0IB8Y_B8X_EEB4b_.exit.i

_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB20_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB47_11MirLowerCtx19lower_call_and_argsB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB47_13MirLowerErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionB5N_EEB6B_8try_folduNCINvNvB6B_12try_for_each4callNtB49_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8J_ENcNtB8X_5Break0E0B8X_E0IB8Y_B8X_EEB4b_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7356
  br label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB24_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB4b_11MirLowerCtx19lower_call_and_argsB1i_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB4b_13MirLowerErrorEEINtNtB7_6option6OptionB5R_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB77_12try_for_each4callNtB4d_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8j_ENcNtB8x_5Break0E0B8x_EB4f_.exit.thread

_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB20_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB47_11MirLowerCtx19lower_call_and_argsB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB47_13MirLowerErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionB5N_EEB6B_8try_folduNCINvNvB6B_12try_for_each4callNtB49_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8J_ENcNtB8X_5Break0E0B8X_E0IB8Y_B8X_EEB4b_.exit.i: ; preds = %bb.a
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx2.i, i64 28, i1 false), !noalias !7365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7356
  %.not.i = icmp eq i32 %i.i, -2
  br i1 %.not.i, label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB24_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB4b_11MirLowerCtx19lower_call_and_argsB1i_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB4b_13MirLowerErrorEEINtNtB7_6option6OptionB5R_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB77_12try_for_each4callNtB4d_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8j_ENcNtB8x_5Break0E0B8x_EB4f_.exit.thread, label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB24_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB4b_11MirLowerCtx19lower_call_and_argsB1i_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB4b_13MirLowerErrorEEINtNtB7_6option6OptionB5R_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB77_12try_for_each4callNtB4d_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8j_ENcNtB8x_5Break0E0B8x_EB4f_.exit

_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntIBF_INtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB24_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB4b_11MirLowerCtx19lower_call_and_argsB1i_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB4b_13MirLowerErrorEEINtNtB7_6option6OptionB5R_EENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB77_12try_for_each4callNtB4d_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8j_ENcNtB8x_5Break0E0B8x_EB4f_.exit.thread: ; preds = %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB20_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB47_11MirLowerCtx19lower_call_and_argsB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB47_13MirLowerErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionB5N_EEB6B_8try_folduNCINvNvB6B_12try_for_each4callNtB49_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8J_ENcNtB8X_5Break0E0B8X_E0IB8Y_B8X_EEB4b_.exit.thread.i, %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_5chain5ChainINtNtNtB5_7sources4once4OnceINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEEINtNtB3_6copied6CopiedINtNtNtB7_5slice4iter4IterB20_EEENCINvMs3_NtNtCs8K4cjrcxBsw_6hir_ty3mir5lowerNtB47_11MirLowerCtx19lower_call_and_argsB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB47_13MirLowerErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvXB3_IBF_BE_INtNtB7_6option6OptionB5N_EEB6B_8try_folduNCINvNvB6B_12try_for_each4callNtB49_7OperandINtNtNtB7_3ops12control_flow11ControlFlowB8J_ENcNtB8X_5Break0E0B8X_E0IB8Y_B8X_EEB4b_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEEB1k_.exit

end_hunk_2
