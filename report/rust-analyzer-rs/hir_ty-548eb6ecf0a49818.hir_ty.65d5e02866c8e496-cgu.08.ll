Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.08?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2694
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec10extract_ifINtB4_9ExtractIfINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENCNCNvMs0_NtB13_11trait_goalsINtNtB13_9eval_ctxt8EvalCtxtNtNtB2h_6solver13SolverContextB2d_E22merge_trait_candidates0s5_0ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2j_:bb.a
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.p ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val = load i8, ptr %i.s, align 8, !range !149, !noundef !119
  %i.t = icmp eq i8 %.val, 3
  %i.u = add i64 %i.p, 1                          ; 3 uses
  br i1 %i.t, label %.split.us, label %bb.f

bb.e:                                             ; preds = %.split.us, %bb.d
  ret void

bb.f:                                             ; preds = %.lr.ph.split
  %i.v = sub i64 %i.p, %.fr
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  %exitcond.not = icmp eq i64 %i.u, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph.split, %bb.b
  %.us-phi = phi i64 [ %i.n, %bb.b ], [ %i.u, %.lr.ph.split ]
  %.us-phi4 = phi ptr [ %i.k, %bb.b ], [ %i.r, %.lr.ph.split ]
  store i64 %.us-phi, ptr %i.a, align 8
  %i.x = add i64 %.fr, 1
  store i64 %i.x, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.us-phi4, i64 72, i1 false)
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec10extract_ifINtB4_9ExtractIfTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB16_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtB16_8interner10DbInternerEEENCINvMNtB16_7fulfillNtB4V_17ObligationStorage13drain_pendingNCNvMs0_B4V_NtB4V_15FulfillmentCtxt24try_evaluate_obligations0E0ENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((32, 40)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #17 !guid !9815 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !119 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !119
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -2, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !119, !align !127, !noundef !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !119, !noundef !119
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %i.b
  %i.k = add nuw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !119
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec10extract_ifINtB4_9ExtractIfTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB16_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtB16_8interner10DbInternerEEENCINvMNtB16_7fulfillNtB4V_17ObligationStorage13drain_pendingNCNvMs0_B4V_NtB4V_15FulfillmentCtxt40drain_stalled_obligations_for_coroutines0E0ENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 !guid !9822 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !119 ; 3 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 3 uses
  %i.e = icmp ult i64 %.promoted, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !119, !align !127, !noundef !119
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !9823, !nonnull !119, !align !127, !noundef !119 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !9823, !nonnull !119, !align !143, !noundef !119 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !9823, !noundef !119 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.fr = freeze i64 %i.r                          ; 3 uses
  %.not = icmp eq i64 %.fr, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %i.s = phi i64 [ %i.w, %bb.b ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.t = load ptr, ptr %i.g, align 8, !nonnull !119, !noundef !119
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.t, i64 %i.s ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9826
  store ptr %i.i, ptr %i.a, align 8, !noalias !9826
  store ptr %i.u, ptr %i.n, align 8, !noalias !9826
  store ptr %i.k, ptr %i.o, align 8, !noalias !9826
  store i64 %i.m, ptr %i.p, align 8, !noalias !9826
  %i.v = call noundef zeroext i1 @_RINvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshotNtB5_9InferCtxt5probebNCNCNvMs0_NtB7_7fulfillNtB1s_15FulfillmentCtxt40drain_stalled_obligations_for_coroutines00EB9_(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !9823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9826
  %i.w = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.w, ptr %i.b, align 8
  br i1 %i.v, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %exitcond7.not = icmp eq i64 %i.w, %i.d
  br i1 %exitcond7.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -2, ptr %i.x, align 8
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.y = phi i64 [ %i.ac, %bb.d ], [ %.promoted, %.lr.ph ] ; 3 uses
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !119, !noundef !119
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %i.z, i64 %i.y ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9825)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9826
  store ptr %i.i, ptr %i.a, align 8, !noalias !9826
  store ptr %i.aa, ptr %i.n, align 8, !noalias !9826
  store ptr %i.k, ptr %i.o, align 8, !noalias !9826
  store i64 %i.m, ptr %i.p, align 8, !noalias !9826
  %i.ab = call noundef zeroext i1 @_RINvMNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshotNtB5_9InferCtxt5probebNCNCNvMs0_NtB7_7fulfillNtB1s_15FulfillmentCtxt40drain_stalled_obligations_for_coroutines00EB9_(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !9823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9826
  %i.ac = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.b, align 8
  br i1 %i.ab, label %.split.us, label %bb.d

bb.c:                                             ; preds = %.split.us, %._crit_edge
  ret void

bb.d:                                             ; preds = %.lr.ph.split
  %i.ad = load ptr, ptr %i.g, align 8, !nonnull !119, !noundef !119
  %i.ae = sub i64 %i.y, %.fr
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, i64 96, i1 false)
  %exitcond.not = icmp eq i64 %i.ac, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.u, %.lr.ph.split.us ], [ %i.aa, %.lr.ph.split ]
  %i.ag = add i64 %.fr, 1
  store i64 %i.ag, ptr %i.q, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.us-phi, i64 96, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec10extract_ifINtB4_9ExtractIfTINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB16_9predicate9PredicateEINtNtCshzWfHUSfYae_4core6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtB16_8interner10DbInternerEEENCNCNvMNtB16_7fulfillNtB4W_17ObligationStorage23on_fulfillment_overflow00ENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 !guid !9829 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !119 ; 3 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 3 uses
  %i.f = icmp ult i64 %.promoted, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !119, !align !127, !noundef !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !119, !align !127, !noundef !119 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.fr = freeze i64 %i.l                          ; 3 uses
  %.not = icmp eq i64 %.fr, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %i.m = phi i64 [ %i.z, %bb.b ], [ %.promoted, %.lr.ph ] ; 3 uses
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !119, !noundef !119
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %i.m ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9830)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i.us = load ptr, ptr %i.p, align 8, !alias.scope !9830, !nonnull !119, !noundef !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val2.i.us = load ptr, ptr %i.q, align 8, !alias.scope !9830, !nonnull !119, !noundef !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9830
  %i.r = load ptr, ptr %.val, align 8, !noalias !9830, !nonnull !119, !align !127, !noundef !119
  %.val3.i.us = load i32, ptr %i.o, align 8, !range !124, !alias.scope !9830, !noundef !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val4.i.us = load i32, ptr %i.s, align 4, !alias.scope !9830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9830
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false)
  store i64 -1, ptr %i.t, align 8, !alias.scope !9830
  call void @_RNvXs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtB4_21SolverDelegateEvalExt18evaluate_root_goalB1d_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noundef nonnull align 8 %i.r, ptr noundef nonnull %.val.i.us, ptr noundef nonnull %.val2.i.us, i32 noundef %.val3.i.us, i32 %.val4.i.us, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !9830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9830
  %i.u = load i64, ptr %i.b, align 8, !range !126, !noalias !9830, !noundef !119
  %.not.i.us = icmp eq i64 %i.u, -2
  br i1 %.not.i.us, label %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread.us, label %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.us

_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.us: ; preds = %.lr.ph.split.us
  %i.v = load i8, ptr %i.j, align 4, !range !133, !noalias !9830, !noundef !119
  %i.w = trunc nuw i8 %i.v to i1
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b), !noalias !9830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9830
  %i.x = add nuw i64 %i.m, 1                      ; 2 uses
  store i64 %i.x, ptr %i.c, align 8
  br i1 %i.w, label %bb.b, label %.split.us

_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread.us: ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9830
  %i.y = add nuw i64 %i.m, 1                      ; 2 uses
  store i64 %i.y, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread.us, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.us
  %i.z = phi i64 [ %i.y, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread.us ], [ %i.x, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.us ] ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.e
  br i1 %i.aa, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -2, ptr %i.ab, align 8
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.ac = phi i64 [ %i.ap, %bb.d ], [ %.promoted, %.lr.ph ] ; 4 uses
  %i.ad = load ptr, ptr %i.h, align 8, !nonnull !119, !noundef !119
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %i.ac ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9830)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !9830, !nonnull !119, !noundef !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val2.i = load ptr, ptr %i.ag, align 8, !alias.scope !9830, !nonnull !119, !noundef !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9830
  %i.ah = load ptr, ptr %.val, align 8, !noalias !9830, !nonnull !119, !align !127, !noundef !119
  %.val3.i = load i32, ptr %i.ae, align 8, !range !124, !alias.scope !9830, !noundef !119
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.val4.i = load i32, ptr %i.ai, align 4, !alias.scope !9830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9830
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false)
  store i64 -1, ptr %i.aj, align 8, !alias.scope !9830
  call void @_RNvXs_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve9eval_ctxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtB4_21SolverDelegateEvalExt18evaluate_root_goalB1d_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull %.val.i, ptr noundef nonnull %.val2.i, i32 noundef %.val3.i, i32 %.val4.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !9830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9830
  %i.ak = load i64, ptr %i.b, align 8, !range !126, !noalias !9830, !noundef !119
  %.not.i = icmp eq i64 %i.ak, -2
  br i1 %.not.i, label %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread, label %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit

_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread: ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9830
  %i.al = add nuw i64 %i.ac, 1                    ; 2 uses
  store i64 %i.al, ptr %i.c, align 8
  br label %bb.d

_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit: ; preds = %.lr.ph.split
  %i.am = load i8, ptr %i.j, align 4, !range !133, !noalias !9830, !noundef !119
  %i.an = trunc nuw i8 %i.am to i1
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13GoalStalledOnNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b), !noalias !9830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9830
  %i.ao = add nuw i64 %i.ac, 1                    ; 2 uses
  store i64 %i.ao, ptr %i.c, align 8
  br i1 %i.an, label %bb.d, label %.split.us

bb.c:                                             ; preds = %.split.us, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit
  %i.ap = phi i64 [ %i.al, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.thread ], [ %i.ao, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit ] ; 2 uses
  %i.aq = load ptr, ptr %i.h, align 8, !nonnull !119, !noundef !119
  %i.ar = sub i64 %i.ac, %.fr
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %i.aq, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.as, ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i64 96, i1 false)
  %i.at = icmp ult i64 %i.ap, %i.e
  br i1 %i.at, label %.lr.ph.split, label %._crit_edge

.split.us:                                        ; preds = %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.us
  %.us-phi = phi ptr [ %i.o, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit.us ], [ %i.ae, %_RNCNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7fulfillNtB6_17ObligationStorage23on_fulfillment_overflow00Ba_.exit ]
  %i.au = add i64 %.fr, 1
  store i64 %i.au, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.us-phi, i64 96, i1 false)
  br label %bb.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIternNtNtB6_7set_val9SetValZSTINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIternENCINvMse_NtB6_3setINtB3p_8BTreeSetnE16from_sorted_iterB2H_E0EENtNtNtB20_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(64) %1) unnamed_addr #11 personality ptr @rust_eh_personality !guid !9847 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted = load i128, ptr %1, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !119 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.promoted17 = load ptr, ptr %i.d, align 8      ; 4 uses
  %extract.t18 = trunc i128 %.promoted to i2
  switch i2 %extract.t18, label %.preheader [
    i2 -2, label %bb.b
    i2 0, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread9
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %.promoted17, %i.c
  br i1 %i.e, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread9, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted17, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !alias.scope !9848
  br label %.preheader

.preheader:                                       ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread, %bb.a
  %.ph = phi ptr [ %.promoted17, %bb.a ], [ %i.f, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread ]
  %.sroa.6.08.ph.in = phi ptr [ %i.a, %bb.a ], [ %.promoted17, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread ]
  %.sroa.6.08.ph = load i128, ptr %.sroa.6.08.ph.in, align 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader
  %i.g = phi ptr [ %.ph, %.preheader ], [ %i.i, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9853)
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %bb.f, label %bb.e

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread9: ; preds = %bb.a, %bb.b
  store i128 2, ptr %1, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread9
  %.sink = phi i128 [ 1, %bb.g ], [ 1, %bb.f ], [ 0, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIternENCINvMse_NtNtNtB13_11collections5btree3setINtB1V_8BTreeSetnE16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread9 ]
  store i128 %.sink, ptr %0, align 16
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !9854
  %i.j = load i128, ptr %i.g, align 16, !noalias !9855, !noundef !119 ; 2 uses
  store i128 %i.j, ptr %i.a, align 16, !alias.scope !9849
  %.not = icmp eq i128 %.sroa.6.08.ph, %i.j
  br i1 %.not, label %bb.c, label %bb.g

bb.f:                                             ; preds = %bb.c
  store i128 0, ptr %1, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.6.08.ph, ptr %i.k, align 16
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  store i128 1, ptr %1, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.6.08.ph, ptr %i.l, align 16
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB1a_10ElaboratorB2b_NtNtB2f_9predicate6ClauseEEENtNtNtB8_6traits8iterator8Iterator3nthB2h_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((8, 12)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #15 personality ptr @rust_eh_personality !guid !9858 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB1g_10ElaboratorB2h_NtNtB2l_9predicate6ClauseEENtB4_13SpecAdvanceBy15spec_advance_byB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef range(i64 1, 0) %2), !noalias !9859
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit.thread

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit: ; preds = %bb.a
  call void @_RNvXs3_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborateINtB5_14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB1c_NtNtB1g_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB1i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
  %.pr = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !119
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.c, align 8
  store i64 %i.e, ptr %0, align 8
  br label %bb.c

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit.thread: ; preds = %bb.a, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9elaborate14FilterToTraitsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB5_10ElaboratorB16_NtNtB1a_9predicate6ClauseEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3nthB1c_.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtNtB7_7ty_kind7closure25CoroutineClosureSignatureNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_16TypeVisitableExtB1D_E26has_vars_bound_at_or_aboveB1J_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 !guid !9860 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = call noundef zeroext i1 @_RINvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtBW_22HasEscapingVarsVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.d, label %_RINvXNvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closures6_1__INtB5_25CoroutineClosureSignatureNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB9_5visit13TypeVisitableB1B_E10visit_withNtB2E_22HasEscapingVarsVisitorEB1H_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = call noundef zeroext i1 @_RINvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtBW_22HasEscapingVarsVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.f, label %_RINvXNvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closures6_1__INtB5_25CoroutineClosureSignatureNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB9_5visit13TypeVisitableB1B_E10visit_withNtB2E_22HasEscapingVarsVisitorEB1H_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef zeroext i1 @_RINvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtBW_22HasEscapingVarsVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.g, label %_RINvXNvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closures6_1__INtB5_25CoroutineClosureSignatureNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB9_5visit13TypeVisitableB1B_E10visit_withNtB2E_22HasEscapingVarsVisitorEB1H_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef zeroext i1 @_RINvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtBW_22HasEscapingVarsVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_RINvXNvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closures6_1__INtB5_25CoroutineClosureSignatureNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB9_5visit13TypeVisitableB1B_E10visit_withNtB2E_22HasEscapingVarsVisitorEB1H_.exit

_RINvXNvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kind7closures6_1__INtB5_25CoroutineClosureSignatureNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB9_5visit13TypeVisitableB1B_E10visit_withNtB2E_22HasEscapingVarsVisitorEB1H_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.d ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6select10ImplSourceuEINtB5_16TypeVisitableExtNtNtBT_8interner10DbInternerE14error_reportedBV_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #0 !guid !9865 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9866
  store i32 98304, ptr %i.b, align 4, !noalias !9866
  %i.c = load i64, ptr %0, align 8, !range !163, !alias.scope !9867, !noundef !119 ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = add i64 %i.c, -9223372036854775807
  %i.f = select i1 %i.d, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtB1h_19HasTypeFlagsVisitorEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.h, label %bb.f, label %_RINvXNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6selects0_1__INtB5_25ImplSourceUserDefinedDatauEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtB1E_19HasTypeFlagsVisitorEBb_.exit.i.i

_RINvXNvNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6selects0_1__INtB5_25ImplSourceUserDefinedDatauEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtB1E_19HasTypeFlagsVisitorEBb_.exit.i.i: ; preds = %bb.c
  %i.i = call noundef zeroext i1 @_RINvXs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtCsbSS6DM8SDEO_5alloc3vec3VecuEINtB6_13TypeVisitableNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE10visit_withNtB6_19HasTypeFlagsVisitorEB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.i, label %bb.f, label %_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6select10ImplSourceuEINtB5_16TypeVisitableExtNtNtBT_8interner10DbInternerE14has_type_flagsBV_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = call noundef zeroext i1 @_RINvXs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtCsbSS6DM8SDEO_5alloc3vec3VecuEINtB6_13TypeVisitableNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE10visit_withNtB6_19HasTypeFlagsVisitorEB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.k, label %bb.g, label %_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6select10ImplSourceuEINtB5_16TypeVisitableExtNtNtBT_8interner10DbInternerE14has_type_flagsBV_.exit

bb.e:                                             ; preds = %bb.a
end_hunk_0
