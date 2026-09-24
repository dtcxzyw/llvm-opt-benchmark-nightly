Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.00?download=true
inline.NumInlined: 12191
inline.NumDeleted: 6876
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph21ProvisionalCacheEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE6retainNCNCNvMs7_BI_INtBI_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB1Y_6solver13SolverContextEB1U_E45clear_dependent_provisional_results_for_rerun00EB20_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.a, align 4, !noalias !152, !noundef !10
  %i.x = load <4 x i32>, ptr %i.t, align 4, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  %.not.i.i11.i = icmp ne i32 %i.w, %i.j
  %i.y = icmp ne <4 x i32> %i.x, zeroinitializer
  %i.z = bitcast <4 x i1> %i.y to i4
  %spec.select.i.i12.i = icmp eq i4 %i.z, 0
  %.sroa.0.0.i.i13.i = or i1 %.not.i.i11.i, %spec.select.i.i12.i
  br i1 %.sroa.0.0.i.i13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw nsw i64 %.sroa.8.134.i, 1       ; 2 uses
  invoke void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB18_9CycleHeadENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph21ProvisionalCacheEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit14.i unwind label %.loopexit.i, !noalias !151

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.sroa.15.133.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %i.u, i64 128, i1 false), !noalias !151
  %i.ac = add i64 %.sroa.15.133.i, 1
  %i.ad = add nuw nsw i64 %.sroa.8.134.i, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph21ProvisionalCacheEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit14.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph21ProvisionalCacheEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit14.i: ; preds = %bb.h, %bb.g
  %.sroa.15.2.i = phi i64 [ %i.ac, %bb.h ], [ %.sroa.15.133.i, %bb.g ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.ad, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.8.2.i, %i.d
  br i1 %i.ae, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph21ProvisionalCacheEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit._crit_edge.i

.loopexit.i:                                      ; preds = %bb.g, %bb.e
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.8.134.i, %bb.e ], [ %i.aa, %bb.g ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.133.i, %.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.ph.i, %.loopexit.i ], [ %i.q, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.af = sub i64 %i.d, %.sroa.8.0.i              ; 2 uses
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.sroa.8.0.i
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %.sroa.15.0.i
  %i.ai = shl nuw nsw i64 %i.af, 7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ag, i64 %i.ai, i1 false), !noalias !153
  %i.aj = add i64 %i.af, %.sroa.15.0.i
  store i64 %i.aj, ptr %i.c, align 8, !alias.scope !148, !noalias !154
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph21ProvisionalCacheEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE10retain_mutNCINvB2_6retainNCNCNvMs7_BI_INtBI_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB1Y_6solver13SolverContextEB1U_E45clear_dependent_provisional_results_for_rerun00E0EB20_.exit: ; preds = %bb.c, %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph21ProvisionalCacheEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBK_9predicate20ExistentialPredicateB1x_EEE8dedup_byNCNvMs5_B5_Bv_5dedup0EB1D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 5 uses
  %i.c = icmp ult i64 %i.b, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread
  %.sroa.0.049 = phi i64 [ 1, %bb.b ], [ %i.bf, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread ] ; 5 uses
  %i.g = getelementptr [40 x i8], ptr %i.f, i64 %.sroa.0.049 ; 16 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -32      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = load i32, ptr %i.k, align 8, !range !13, !alias.scope !197, !noalias !198, !noundef !10 ; 5 uses
  %i.m = icmp ne i32 %i.l, 3
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i32 %i.l, -2
  %i.o = icmp samesign ugt i32 %i.l, 1
  %narrow.i.i.i = select i1 %i.o, i32 %i.n, i32 1 ; 2 uses
  %i.p = getelementptr i8, ptr %i.g, i64 -16
  %i.q = load i32, ptr %i.p, align 8, !range !13, !alias.scope !198, !noalias !197, !noundef !10 ; 4 uses
  %i.r = icmp ne i32 %i.q, 3
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nsw i32 %i.q, -2
  %i.t = icmp samesign ugt i32 %i.q, 1
  %narrow2.i.i.i = select i1 %i.t, i32 %i.s, i32 1
  %i.u = icmp eq i32 %narrow.i.i.i, %narrow2.i.i.i
  br i1 %i.u, label %bb.d, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i32 %narrow.i.i.i, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = load <2 x i32>, ptr %i.i, align 8, !alias.scope !197, !noalias !198
  %i.w = load <2 x i32>, ptr %i.j, align 8, !alias.scope !198, !noalias !197
  %i.x = icmp eq <2 x i32> %i.v, %i.w             ; 2 uses
  %i.y = extractelement <2 x i1> %i.x, i64 0
  %i.z = extractelement <2 x i1> %i.x, i64 1
  %.sroa.0.0.i.i.i.i.i = select i1 %i.z, i1 %i.y, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i, label %.split.i.i, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = getelementptr i8, ptr %i.g, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.ac = icmp eq i32 %i.l, %i.q
  br i1 %i.ac, label %bb.h, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = trunc nuw i32 %i.l to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !205, !noalias !206, !noundef !10
  %i.ag = getelementptr i8, ptr %i.g, i64 -8
  %i.ah = load i32, ptr %i.ag, align 8, !alias.scope !206, !noalias !205, !noundef !10
  %i.ai = icmp eq i32 %i.af, %i.ah                ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.ai, label %.split.i.i.i.i, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

bb.j:                                             ; preds = %bb.h
  br i1 %i.ai, label %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

.split.i.i.i.i:                                   ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.g, i64 -12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !range !14, !alias.scope !205, !noalias !206, !noundef !10
  %i.am = load i32, ptr %i.aj, align 4, !range !14, !alias.scope !206, !noalias !205, !noundef !10
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.g, i64 -12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !range !14, !alias.scope !205, !noalias !206, !noundef !10
  %i.ar = load i32, ptr %i.ao, align 4, !range !14, !alias.scope !206, !noalias !205, !noundef !10
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.k, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

bb.k:                                             ; preds = %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !207, !noalias !208, !nonnull !10, !noundef !10
  %.val1.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !208, !noalias !207, !nonnull !10, !noundef !10
  %i.at = icmp eq ptr %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.at, label %.split3.i.i, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

.split3.i.i:                                      ; preds = %bb.k
  %.val2.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !207, !noalias !208, !nonnull !10, !noundef !10
  %.val3.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !208, !noalias !207, !nonnull !10, !noundef !10
  %i.au = icmp eq ptr %.val2.i.i.i.i, %.val3.i.i.i.i
  br i1 %i.au, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

.split.i.i:                                       ; preds = %bb.f
  %i.av = getelementptr i8, ptr %i.g, i64 -24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val10.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !197, !noalias !198, !nonnull !10, !noundef !10
  %.val11.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !198, !noalias !197, !nonnull !10, !noundef !10
  %i.ax = icmp eq ptr %.val10.i.i.i, %.val11.i.i.i
  br i1 %i.ax, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i: ; preds = %bb.d
  %i.ay = load <2 x i32>, ptr %i.i, align 8, !alias.scope !197, !noalias !198
  %i.az = load <2 x i32>, ptr %i.j, align 8, !alias.scope !198, !noalias !197
  %i.ba = icmp eq <2 x i32> %i.ay, %i.az          ; 2 uses
  %i.bb = extractelement <2 x i1> %i.ba, i64 0
  %i.bc = extractelement <2 x i1> %i.ba, i64 1
  %.sroa.0.0.i.i12.i.i.i = select i1 %i.bc, i1 %i.bb, i1 false
  br i1 %.sroa.0.0.i.i12.i.i.i, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit: ; preds = %.split3.i.i, %.split.i.i, %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !209, !noalias !210, !nonnull !10, !noundef !10
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !210, !noalias !209, !nonnull !10, !noundef !10
  %i.bd = icmp eq ptr %.val.i.i, %.val1.i.i
  br i1 %i.bd, label %.preheader, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread

.preheader:                                       ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit
  %.sroa.5.050 = add nuw nsw i64 %.sroa.0.049, 1  ; 2 uses
  %i.be = icmp samesign ult i64 %.sroa.5.050, %i.b
  br i1 %i.be, label %.lr.ph, label %._crit_edge

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread: ; preds = %bb.i, %bb.g, %bb.j, %.split.i.i.i.i, %bb.k, %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %bb.f, %bb.c, %.split.i.i, %.split3.i.i, %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit
  %i.bf = add nuw nsw i64 %.sroa.0.049, 1         ; 2 uses
  %.not = icmp eq i64 %i.bf, %i.b
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.049, %.preheader ], [ %.sroa.11.1, %bb.t ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %.sroa.5.052 = phi i64 [ %.sroa.5.0, %bb.t ], [ %.sroa.5.050, %.preheader ] ; 2 uses
  %.sroa.11.051 = phi i64 [ %.sroa.11.1, %bb.t ], [ %.sroa.0.049, %.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %.sroa.5.052 ; 9 uses
  %i.bh = getelementptr [40 x i8], ptr %i.f, i64 %.sroa.11.051 ; 9 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bh, i64 -32    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !range !13, !alias.scope !217, !noalias !218, !noundef !10 ; 5 uses
  %i.bn = icmp ne i32 %i.bm, 3
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nsw i32 %i.bm, -2
  %i.bp = icmp samesign ugt i32 %i.bm, 1
  %narrow.i.i.i10 = select i1 %i.bp, i32 %i.bo, i32 1 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 -16
  %i.br = load i32, ptr %i.bq, align 8, !range !13, !alias.scope !218, !noalias !217, !noundef !10 ; 4 uses
  %i.bs = icmp ne i32 %i.br, 3
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nsw i32 %i.br, -2
  %i.bu = icmp samesign ugt i32 %i.br, 1
  %narrow2.i.i.i11 = select i1 %i.bu, i32 %i.bt, i32 1
  %i.bv = icmp eq i32 %narrow.i.i.i10, %narrow2.i.i.i11
  br i1 %i.bv, label %bb.l, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

bb.l:                                             ; preds = %.lr.ph
  switch i32 %narrow.i.i.i10, label %bb.m [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i13
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bw = load <2 x i32>, ptr %i.bj, align 8, !alias.scope !217, !noalias !218
  %i.bx = load <2 x i32>, ptr %i.bk, align 8, !alias.scope !218, !noalias !217
  %i.by = icmp eq <2 x i32> %i.bw, %i.bx          ; 2 uses
  %i.bz = extractelement <2 x i1> %i.by, i64 0
  %i.ca = extractelement <2 x i1> %i.by, i64 1
  %.sroa.0.0.i.i.i.i.i32 = select i1 %i.ca, i1 %i.bz, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i32, label %.split.i.i33, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cc = getelementptr i8, ptr %i.bh, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.cd = icmp eq i32 %i.bm, %i.br
  br i1 %i.cd, label %bb.p, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

bb.p:                                             ; preds = %bb.o
  %i.ce = trunc nuw i32 %i.bm to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !alias.scope !225, !noalias !226, !noundef !10
  %i.ch = getelementptr i8, ptr %i.bh, i64 -8
  %i.ci = load i32, ptr %i.ch, align 8, !alias.scope !226, !noalias !225, !noundef !10
  %i.cj = icmp eq i32 %i.cg, %i.ci                ; 2 uses
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.cj, label %.split.i.i.i.i27, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

bb.r:                                             ; preds = %bb.p
  br i1 %i.cj, label %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i21, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

.split.i.i.i.i27:                                 ; preds = %bb.q
  %i.ck = getelementptr i8, ptr %i.bh, i64 -12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !range !14, !alias.scope !225, !noalias !226, !noundef !10
  %i.cn = load i32, ptr %i.ck, align 4, !range !14, !alias.scope !226, !noalias !225, !noundef !10
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.s, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i21: ; preds = %bb.r
  %i.cp = getelementptr i8, ptr %i.bh, i64 -12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !range !14, !alias.scope !225, !noalias !226, !noundef !10
  %i.cs = load i32, ptr %i.cp, align 4, !range !14, !alias.scope !226, !noalias !225, !noundef !10
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.s, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

bb.s:                                             ; preds = %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i21, %.split.i.i.i.i27
  %.val.i.i.i.i22 = load ptr, ptr %i.bj, align 8, !alias.scope !227, !noalias !228, !nonnull !10, !noundef !10
  %.val1.i.i.i.i23 = load ptr, ptr %i.bk, align 8, !alias.scope !228, !noalias !227, !nonnull !10, !noundef !10
  %i.cu = icmp eq ptr %.val.i.i.i.i22, %.val1.i.i.i.i23
  br i1 %i.cu, label %.split3.i.i24, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

.split3.i.i24:                                    ; preds = %bb.s
  %.val2.i.i.i.i25 = load ptr, ptr %i.cb, align 8, !alias.scope !227, !noalias !228, !nonnull !10, !noundef !10
  %.val3.i.i.i.i26 = load ptr, ptr %i.cc, align 8, !alias.scope !228, !noalias !227, !nonnull !10, !noundef !10
  %i.cv = icmp eq ptr %.val2.i.i.i.i25, %.val3.i.i.i.i26
  br i1 %i.cv, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

.split.i.i33:                                     ; preds = %bb.n
  %i.cw = getelementptr i8, ptr %i.bh, i64 -24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val10.i.i.i34 = load ptr, ptr %i.cx, align 8, !alias.scope !217, !noalias !218, !nonnull !10, !noundef !10
  %.val11.i.i.i35 = load ptr, ptr %i.cw, align 8, !alias.scope !218, !noalias !217, !nonnull !10, !noundef !10
  %i.cy = icmp eq ptr %.val10.i.i.i34, %.val11.i.i.i35
  br i1 %i.cy, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i13: ; preds = %bb.l
  %i.cz = load <2 x i32>, ptr %i.bj, align 8, !alias.scope !217, !noalias !218
  %i.da = load <2 x i32>, ptr %i.bk, align 8, !alias.scope !218, !noalias !217
  %i.db = icmp eq <2 x i32> %i.cz, %i.da          ; 2 uses
  %i.dc = extractelement <2 x i1> %i.db, i64 0
  %i.dd = extractelement <2 x i1> %i.db, i64 1
  %.sroa.0.0.i.i12.i.i.i18 = select i1 %i.dd, i1 %i.dc, i1 false
  br i1 %.sroa.0.0.i.i12.i.i.i18, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

.thread:                                          ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36: ; preds = %.split3.i.i24, %.split.i.i33, %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i13
  %.val.i.i19 = load ptr, ptr %i.bg, align 8, !alias.scope !229, !noalias !230, !nonnull !10, !noundef !10
  %.val1.i.i20 = load ptr, ptr %i.bi, align 8, !alias.scope !230, !noalias !229, !nonnull !10, !noundef !10
  %i.de = icmp eq ptr %.val.i.i19, %.val1.i.i20
  br i1 %i.de, label %bb.t, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread: ; preds = %bb.q, %bb.o, %bb.r, %.split.i.i.i.i27, %bb.s, %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i21, %bb.n, %.lr.ph, %.split.i.i33, %.split3.i.i24, %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i13, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  %i.df = add i64 %.sroa.11.051, 1
  br label %bb.t

bb.t:                                             ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread
  %.sroa.11.1 = phi i64 [ %i.df, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36.thread ], [ %.sroa.11.051, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBM_9predicate20ExistentialPredicateB1z_EEE5dedup0B1F_.exit36 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.052, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE5drainINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFromjEEB1Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %i.c = icmp ult i64 %i.b, 82351536043346213
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECs8K4cjrcxBsw_6hir_ty(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE5drainINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFromjEEB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %i.c = icmp ult i64 %i.b, 72057594037927936
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range9RangeFromjEECs8K4cjrcxBsw_6hir_ty(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE6retainNCNvMs0_NtBK_11trait_goalsINtNtBK_9eval_ctxt8EvalCtxtNtNtB1Y_6solver13SolverContextB1U_E31unsound_prefer_builtin_dyn_impls0_0EB20_:bb.a
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB29_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %bb.s
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #27, !noalias !1673
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit.i

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1681
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.15.142.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i64 72, i1 false), !noalias !1673
  %i.bf = add i64 %.sroa.15.142.i, 1
  %i.bg = add nuw nsw i64 %.sroa.8.143.i, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1W_.exit.i: ; preds = %bb.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB29_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, %bb.r
  %.sroa.15.2.i = phi i64 [ %i.bf, %bb.u ], [ %.sroa.15.142.i, %bb.r ], [ %.sroa.15.142.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB29_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.bg, %bb.u ], [ %i.bb, %bb.r ], [ %i.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB29_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ] ; 2 uses
  %i.bh = icmp samesign ult i64 %.sroa.8.2.i, %i.l
  br i1 %i.bh, label %bb.l, label %._crit_edge.i

.loopexit.split-lp.i.body:                        ; preds = %bb.k, %bb.t, %.loopexit.i
  %.sroa.15.3.i = phi i64 [ %.sroa.15.142.i, %bb.t ], [ %.sroa.15.142.i, %.loopexit.i ], [ %.sroa.0.0.i, %bb.k ] ; 2 uses
  %.sroa.8.3.i = phi i64 [ %i.bb, %bb.t ], [ %.sroa.8.143.i, %.loopexit.i ], [ %i.ai, %bb.k ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.ak, %bb.k ]
  %i.bi = sub i64 %i.l, %.sroa.8.3.i              ; 2 uses
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.8.3.i
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.15.3.i
  %i.bl = mul nuw nsw i64 %i.bi, 72
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull align 8 %i.bj, i64 %i.bl, i1 false), !noalias !1684
  %i.bm = add i64 %i.bi, %.sroa.15.3.i
  store i64 %i.bm, ptr %i.k, align 8, !alias.scope !1673, !noalias !1685
  resume { ptr, i32 } %eh.lpad-body.i

_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE10retain_mutNCINvB2_6retainNCNvMs0_NtBK_11trait_goalsINtNtBK_9eval_ctxt8EvalCtxtNtNtB1Y_6solver13SolverContextB1U_E31unsound_prefer_builtin_dyn_impls0_0E0EB20_.exit: ; preds = %bb.h, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtBM_9predicate9PredicateEE5drainNtNtNtCshzWfHUSfYae_4core3ops5range9RangeFullEBO_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs8K4cjrcxBsw_6hir_ty(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceE6retainNCNvMs0_NtNtBH_7closure8analysisNtBH_16InferenceContext20compute_min_captures0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1693, !noalias !1694, !noundef !10 ; 6 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceE10retain_mutNCINvB2_6retainNCNvMs0_NtNtBH_7closure8analysisNtBH_16InferenceContext20compute_min_captures0E0EBJ_.exit, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1693, !noalias !1694, !nonnull !10, !noundef !10 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader21.i
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader21.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RNCINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceE6retainNCNvMs0_NtNtBJ_7closure8analysisNtBJ_16InferenceContext20compute_min_captures0E0BL_(ptr nonnull readonly align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(104) %i.g) #25, !noalias !1693
  %i.i = add nuw nsw i64 %.sroa.0.0.i, 1          ; 5 uses
  br i1 %i.h, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, %i.b
  br i1 %i.j, label %_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceE10retain_mutNCINvB2_6retainNCNvMs0_NtNtBH_7closure8analysisNtBH_16InferenceContext20compute_min_captures0E0EBJ_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.g)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !noalias !1695

.preheader.i:                                     ; preds = %bb.d
  %i.k = icmp samesign ult i64 %i.i, %i.b
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.h, %.lr.ph.i
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.8.133.i, %.lr.ph.i ], [ %i.n, %bb.h ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i, %.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.15.2.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !1693, !noalias !1694
  br label %_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceE10retain_mutNCINvB2_6retainNCNvMs0_NtNtBH_7closure8analysisNtBH_16InferenceContext20compute_min_captures0E0EBJ_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i
  %.sroa.8.133.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i ], [ %i.i, %.preheader.i ] ; 4 uses
  %.sroa.15.132.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %.sroa.8.133.i ; 5 uses
  %i.m = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceE6retainNCNvMs0_NtNtBJ_7closure8analysisNtBJ_16InferenceContext20compute_min_captures0E0BL_(ptr nonnull readonly align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(104) %i.l)
          to label %bb.e unwind label %.loopexit.i, !noalias !1693

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.m, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw nsw i64 %.sroa.8.133.i, 1        ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor5PlaceEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %bb.h unwind label %bb.g, !noalias !1695

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.k unwind label %bb.i, !noalias !1695

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs8K4cjrcxBsw_6hir_ty5infer18CaptureSourceStackj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i unwind label %.loopexit.i, !noalias !1695

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #26, !noalias !1695
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %.sroa.15.132.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.s, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 104, i1 false), !noalias !1695
  %i.t = add i64 %.sroa.15.132.i, 1
  %i.u = add nuw nsw i64 %.sroa.8.133.i, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEBF_.exit.i: ; preds = %bb.j, %bb.h
  %.sroa.15.2.i = phi i64 [ %i.t, %bb.j ], [ %.sroa.15.132.i, %bb.h ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.u, %bb.j ], [ %i.n, %bb.h ] ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

bb.k:                                             ; preds = %bb.g, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.3.i = phi i64 [ %.sroa.15.132.i, %bb.g ], [ %.sroa.15.132.i, %.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.3.i = phi i64 [ %i.n, %bb.g ], [ %.sroa.8.0.ph.i, %.loopexit.i ], [ %i.i, %.loopexit.split-lp.i ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.w = sub i64 %i.b, %.sroa.8.3.i               ; 2 uses
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %.sroa.8.3.i
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %.sroa.15.3.i
  %i.z = mul nuw nsw i64 %i.w, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.z, i1 false), !noalias !1696
  %i.aa = add i64 %i.w, %.sroa.15.3.i
  store i64 %i.aa, ptr %i.a, align 8, !alias.scope !1693, !noalias !1697
  resume { ptr, i32 } %eh.lpad-body.i

_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceE10retain_mutNCINvB2_6retainNCNvMs0_NtNtBH_7closure8analysisNtBH_16InferenceContext20compute_min_captures0E0EBJ_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %.val11 = load i32, ptr %i.g, align 4, !noundef !10
  %.val12 = load i32, ptr %i.h, align 4, !noundef !10
  %i.i = icmp eq i32 %.val11, %.val12
  %.sroa.5.023 = add nuw nsw i64 %.sroa.0.022, 1  ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %.val.prol = load i32, ptr %i.m, align 4, !noundef !10 ; 2 uses
  %.val10.prol = load i32, ptr %i.o, align 4, !noundef !10
  %i.p = icmp eq i32 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i32 %.val.prol, ptr %i.n, align 4
  %i.q = add nuw i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw nsw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %.val = load i32, ptr %i.s, align 4, !noundef !10 ; 2 uses
  %.val10 = load i32, ptr %i.u, align 4, !noundef !10
  %i.v = icmp eq i32 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %.val, ptr %i.t, align 4
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %.val.1 = load i32, ptr %i.y, align 4, !noundef !10 ; 2 uses
  %.val10.1 = load i32, ptr %i.aa, align 4, !noundef !10
  %i.ab = icmp eq i32 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i32 %.val.1, ptr %i.z, align 4
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgE6retainNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB1Y_8EvalCtxtNtNtBJ_6solver13SolverContextNtNtBJ_8interner10DbInternerE17evaluate_goal_raws2_0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1705, !noalias !1706, !noundef !10 ; 6 uses
  %i.e = icmp ult i64 %i.d, 1152921504606846976
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgE10retain_mutNCINvB2_6retainNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB2i_8EvalCtxtNtNtBJ_6solver13SolverContextNtNtBJ_8interner10DbInternerE17evaluate_goal_raws2_0E0EBL_.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1705, !noalias !1706, !nonnull !10, !noundef !10 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader23.i
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.c ], [ 0, %.preheader23.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.0.0.i
  %.val11.i = load ptr, ptr %i.i, align 8, !noalias !1707, !nonnull !10, !noundef !10
  %i.j = call fastcc noundef zeroext i1 @_RNCINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgE6retainNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB20_8EvalCtxtNtNtBL_6solver13SolverContextNtNtBL_8interner10DbInternerE17evaluate_goal_raws2_0E0BN_(ptr nonnull readonly align 8 dereferenceable(16) %i.a, ptr nonnull %.val11.i) #25, !noalias !1705
  %i.k = add nuw nsw i64 %.sroa.0.0.i, 1          ; 4 uses
  br i1 %i.j, label %bb.c, label %.preheader.i, !prof !12

.preheader.i:                                     ; preds = %bb.b
  %i.l = icmp samesign ult i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.k, %i.d
  br i1 %i.m, label %_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgE10retain_mutNCINvB2_6retainNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB2i_8EvalCtxtNtNtBJ_6solver13SolverContextNtNtBJ_8interner10DbInternerE17evaluate_goal_raws2_0E0EBL_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.f ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.c, align 8, !alias.scope !1705, !noalias !1706
  br label %_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgE10retain_mutNCINvB2_6retainNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB2i_8EvalCtxtNtNtBJ_6solver13SolverContextNtNtBJ_8interner10DbInternerE17evaluate_goal_raws2_0E0EBL_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.7.031.i = phi i64 [ %.sroa.7.0.i, %bb.f ], [ %i.k, %.preheader.i ] ; 3 uses
  %.sroa.13.030.i = phi i64 [ %.sroa.13.1.i, %bb.f ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.7.031.i ; 3 uses
  %.val9.i = load ptr, ptr %i.n, align 8, !noalias !1707, !nonnull !10, !noundef !10
  %i.o = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgE6retainNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB20_8EvalCtxtNtNtBL_6solver13SolverContextNtNtBL_8interner10DbInternerE17evaluate_goal_raws2_0E0BN_(ptr nonnull readonly align 8 dereferenceable(16) %i.a, ptr nonnull %.val9.i)
          to label %bb.d unwind label %bb.g, !noalias !1705

bb.d:                                             ; preds = %.lr.ph.i
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.13.030.i
  %i.q = load i64, ptr %i.n, align 8, !noalias !1707
  store i64 %i.q, ptr %i.p, align 8, !noalias !1707
  %i.r = add i64 %.sroa.13.030.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.13.1.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.13.030.i, %bb.d ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.031.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = sub nuw nsw i64 %i.d, %.sroa.7.031.i     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.13.030.i
  %i.v = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.n, i64 %i.v, i1 false), !noalias !1708
  %i.w = add i64 %i.t, %.sroa.13.030.i
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !1705, !noalias !1709
  resume { ptr, i32 } %i.s

_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgE10retain_mutNCINvB2_6retainNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtINtB2i_8EvalCtxtNtNtBJ_6solver13SolverContextNtNtBJ_8interner10DbInternerE17evaluate_goal_raws2_0E0EBL_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7inspect16InspectCandidateE6retainNCNvMs2_BH_NtBH_11InspectGoal27unique_applicable_candidate0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1717, !noundef !10 ; 8 uses
  %i.c = icmp ult i64 %i.b, 54901024028897476
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7inspect16InspectCandidateE10retain_mutNCINvB2_6retainNCNvMs2_BH_NtBH_11InspectGoal27unique_applicable_candidate0E0EBL_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1717, !nonnull !10, !noundef !10 ; 9 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %i.b, 72057594037927932
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader.i.new
  %.sroa.0.0.i = phi i64 [ 0, %.preheader.i.new ], [ %i.s, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.3, %bb.f ]
  %i.h = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %.val9.i = load i8, ptr %i.i, align 8, !noalias !1717
  %.not.i = icmp eq i8 %.val9.i, -1
  %i.j = or disjoint i64 %.sroa.0.0.i, 1          ; 3 uses
  br i1 %.not.i, label %.loopexit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 48
  %.val9.i.1 = load i8, ptr %i.l, align 8, !noalias !1717
  %.not.i.1 = icmp eq i8 %.val9.i.1, -1
  %i.m = or disjoint i64 %.sroa.0.0.i, 2          ; 3 uses
  br i1 %.not.i.1, label %.loopexit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 48
  %.val9.i.2 = load i8, ptr %i.o, align 8, !noalias !1717
  %.not.i.2 = icmp eq i8 %.val9.i.2, -1
  %i.p = or disjoint i64 %.sroa.0.0.i, 3          ; 3 uses
  br i1 %.not.i.2, label %.loopexit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [168 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 48
  %.val9.i.3 = load i8, ptr %i.r, align 8, !noalias !1717
  %.not.i.3 = icmp eq i8 %.val9.i.3, -1
  %i.s = add nuw nsw i64 %.sroa.0.0.i, 4          ; 3 uses
  br i1 %.not.i.3, label %.loopexit, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_1
