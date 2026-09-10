Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.08?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2694
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB7_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1G_8interner10DbInternerE18compute_trait_goalB1I_:bb.a
  %i.xs = phi ptr [ %.pre261.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvMs0_NtBV_11trait_goalsINtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E22merge_trait_candidates0s6_0EB2b_.exit..loopexit_crit_edge.i.i ], [ %i.xg, %_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB7_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1G_8interner10DbInternerE31unsound_prefer_builtin_dyn_implB1I_.exit.i.i ], [ %i.xg, %bb.mu ]
  %.sroa.032.0.i.i = phi i8 [ 0, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvMs0_NtBV_11trait_goalsINtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E22merge_trait_candidates0s6_0EB2b_.exit..loopexit_crit_edge.i.i ], [ 1, %_RNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB7_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1G_8interner10DbInternerE31unsound_prefer_builtin_dyn_implB1I_.exit.i.i ], [ 1, %bb.mu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5692
  invoke fastcc void @_RNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1q_8interner10DbInternerE20try_merge_candidatesB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.xs, i64 noundef %i.xr)
          to label %bb.mv unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.mv:                                            ; preds = %.loopexit.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.xu = load i64, ptr %i.xt, align 8, !range !28, !noalias !5692, !noundef !18
  %.not55.i.i45 = icmp eq i64 %i.xu, 2
  br i1 %.not55.i.i45, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !5697
  store i8 %.sroa.032.0.i.i, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5692
  br label %bb.my

bb.mx:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5692
  %i.xv = load ptr, ptr %i.ua, align 8, !alias.scope !5688, !noalias !5693, !nonnull !18, !align !26, !noundef !18
  %i.xw = load ptr, ptr %i.uh, align 8, !alias.scope !5688, !noalias !5693, !nonnull !18, !noundef !18
  %i.xx = load i64, ptr %i.ui, align 8, !alias.scope !5688, !noalias !5693, !noundef !18
  invoke fastcc void @_RNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1q_8interner10DbInternerE8flounderB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef align 8 dereferenceable(152) %i.xv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.xw, i64 noundef %i.xx)
          to label %bb.ng unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.my:                                            ; preds = %bb.ni, %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5692
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %bb.na unwind label %bb.mz, !noalias !5691

bb.mz:                                            ; preds = %bb.my
  %i.xy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %.body.i.i.i unwind label %bb.nb, !noalias !5691

bb.na:                                            ; preds = %bb.my
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i.i unwind label %bb.nc, !noalias !5691

bb.nb:                                            ; preds = %bb.mz
  %i.xz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !5691
  unreachable

bb.nc:                                            ; preds = %bb.na
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.nc, %bb.mz
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ya, %bb.nc ], [ %i.xy, %bb.mz ]
  %.val1.i.i.i = load ptr, ptr %i.ue, align 8, !alias.scope !5719, !noalias !5693, !align !26, !noundef !18
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly19FailedCandidateInfoECs8K4cjrcxBsw_6hir_ty(ptr %.val1.i.i.i) #48
          to label %.body.i33 unwind label %bb.nf, !noalias !5691

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i.i: ; preds = %bb.na
  %.val.i95.i.i = load ptr, ptr %i.ue, align 8, !alias.scope !5719, !noalias !5693, !align !26, !noundef !18 ; 4 uses
  %i.yb = icmp eq ptr %.val.i95.i.i, null
  br i1 %i.yb, label %bb.qg, label %bb.nd

bb.nd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i.i
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i95.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBL_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE22merge_trait_candidates0EB2m_.exit.sink.split.i.i unwind label %bb.ne, !noalias !5720

common.resume.sink.split.i.i:                     ; preds = %bb.pc, %bb.ne
  %.val.i95.sink.i.i = phi ptr [ %.val.i95.i.i, %bb.ne ], [ %.val.i151.i.i, %bb.pc ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.yc, %bb.ne ], [ %i.acn, %bb.pc ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i95.sink.i.i, i64 noundef 32, i64 noundef 8) #50, !noalias !5691
  br label %.body.i33

bb.ne:                                            ; preds = %bb.nd
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i.i

bb.nf:                                            ; preds = %.body.i.i.i
  %i.yd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !5691
  unreachable

bb.ng:                                            ; preds = %bb.mx
  %i.ye = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.yf = load i8, ptr %i.ye, align 8, !range !45, !noalias !5692, !noundef !18
  %i.yg = icmp eq i8 %i.yf, -1
  br i1 %i.yg, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !noalias !5697
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %.sink129.i.sroa.phi = phi ptr [ %.sink129.i.sroa.gep, %bb.nh ], [ %.sink129.i.sroa.gep58, %bb.ng ]
  store i8 -1, ptr %.sink129.i.sroa.phi, align 8, !alias.scope !5687, !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5692
  br label %bb.my

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBL_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE22merge_trait_candidates0EB2m_.exit.sink.split.i.i: ; preds = %bb.pb, %bb.nd
  %.val.i151.sink.i.i = phi ptr [ %.val.i151.i.i, %bb.pb ], [ %.val.i95.i.i, %bb.nd ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i151.sink.i.i, i64 noundef 32, i64 noundef 8) #50, !noalias !5691
  br label %bb.qg

bb.nj:                                            ; preds = %bb.mq
  %i.yh = extractvalue { i64, i64 } %i.wn, 0
  %i.yi = extractvalue { i64, i64 } %i.wn, 1
  store i64 0, ptr %i.ui, align 8, !alias.scope !5721, !noalias !5722
  store ptr %i.ae, ptr %i.m, align 8, !alias.scope !5710, !noalias !5723
  %i.yj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.yh, ptr %i.yj, align 8, !alias.scope !5710, !noalias !5723
  %i.yk = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.yi, ptr %i.yk, align 8, !alias.scope !5710, !noalias !5723
  %i.yl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.yl, align 8, !alias.scope !5710, !noalias !5723
  %i.ym = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.pre260.i.i, ptr %i.ym, align 8, !alias.scope !5710, !noalias !5723
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtB2_12SpecFromIterBU_INtNtB4_10extract_if9ExtractIfBU_NCNCNvMs0_NtBZ_11trait_goalsINtNtBZ_9eval_ctxt8EvalCtxtNtNtB2d_6solver13SolverContextB29_E22merge_trait_candidates0s5_0EE9from_iterB2f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.nk unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5692
  %i.yn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !noalias !5692, !nonnull !18, !noundef !18
  %i.yp = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.yq = load i64, ptr %i.yp, align 8, !noalias !5692, !noundef !18
  invoke fastcc void @_RNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1q_8interner10DbInternerE20try_merge_candidatesB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.yo, i64 noundef %i.yq)
          to label %bb.nm unwind label %bb.nl, !noalias !5691

bb.nl:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i.i.i, %bb.nk
  %i.yr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #48
          to label %.body99.i.i unwind label %bb.ny, !noalias !5691

bb.nm:                                            ; preds = %bb.nk
  %i.ys = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.yt = load i64, ptr %i.ys, align 8, !range !28, !noalias !5692, !noundef !18
  %.not56.i.i43 = icmp eq i64 %i.yt, 2
  br i1 %.not56.i.i43, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !5697
  store i8 2, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5692
  br label %bb.nt

bb.no:                                            ; preds = %bb.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5692
  %i.yu = load ptr, ptr %i.ua, align 8, !alias.scope !5688, !noalias !5693, !nonnull !18, !align !26, !noundef !18 ; 3 uses
  %i.yv = load ptr, ptr %i.yn, align 8, !noalias !5692, !nonnull !18, !noundef !18
  %i.yw = load i64, ptr %i.yp, align 8, !noalias !5692, !noundef !18 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5724)
  call void @llvm.experimental.noalias.scope.decl(metadata !5725)
  %i.yx = icmp eq i64 %i.yw, 0
  br i1 %i.yx, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.no, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i
  %.sroa.08.0.i.i.i.i = phi i64 [ %i.zi, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i ], [ 0, %bb.no ] ; 2 uses
  %.sroa.06.0.i.i.i.i = phi i32 [ %.sroa.04.0.i.i.i.i.i, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i ], [ 131328, %bb.no ] ; 6 uses
  %i.yy = getelementptr inbounds nuw [72 x i8], ptr %i.yv, i64 %.sroa.08.0.i.i.i.i
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 56 ; 2 uses
  %i.za = load i8, ptr %i.yz, align 8, !range !57, !alias.scope !5726, !noalias !5727, !noundef !18
  %.not.i.i.i.i.i = icmp eq i8 %i.za, 2
  br i1 %.not.i.i.i.i.i, label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i, label %bb.np

bb.np:                                            ; preds = %.preheader.i.i.i
  %.sroa.05.0.copyload.i.i.i.i.i = load i32, ptr %i.yz, align 8, !alias.scope !5726, !noalias !5727 ; 5 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i32 %.sroa.06.0.i.i.i.i, 16 ; 2 uses
  %.sroa.510.0.extract.shift.i.i.i.i.i.i = lshr i32 %.sroa.05.0.copyload.i.i.i.i.i, 16 ; 2 uses
  %.sroa.611.0.extract.shift.i.i.i.i.i.i = and i32 %.sroa.05.0.copyload.i.i.i.i.i, -16777216
  %i.zb = and i32 %.sroa.06.0.i.i.i.i, 16711680
  %.not.i.i.i.i.i.i = icmp eq i32 %i.zb, 131072
  %i.zc = and i32 %.sroa.05.0.copyload.i.i.i.i.i, 16711680
  %.not33.i.i.i.i.i.i = icmp eq i32 %i.zc, 131072 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  br i1 %.not33.i.i.i.i.i.i, label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i.i.i, label %bb.ns

bb.nr:                                            ; preds = %bb.np
  %..sroa.510.0.extract.shift.i.i.i.i.i.i = select i1 %.not33.i.i.i.i.i.i, i32 2, i32 %.sroa.510.0.extract.shift.i.i.i.i.i.i
  %..i.i.i.i.i.i = select i1 %.not33.i.i.i.i.i.i, i32 0, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i.i.i

bb.ns:                                            ; preds = %bb.nq
  %i.zd = trunc i32 %.sroa.5.0.extract.shift.i.i.i.i.i.i to i1
  %i.ze = and i32 %.sroa.06.0.i.i.i.i, 16777216
  %.not35.i.i.i.i.i.i = icmp eq i32 %i.ze, 0
  %spec.select.i.i.i.i.i.i = select i1 %i.zd, i32 1, i32 %.sroa.510.0.extract.shift.i.i.i.i.i.i
  %.sroa.032.0.i.i.i.i.i.i = select i1 %.not35.i.i.i.i.i.i, i32 %.sroa.611.0.extract.shift.i.i.i.i.i.i, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i.i.i

_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i.i.i: ; preds = %bb.ns, %bb.nr, %bb.nq
  %.sroa.016.0.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i, %bb.ns ], [ %..sroa.510.0.extract.shift.i.i.i.i.i.i, %bb.nr ], [ %.sroa.5.0.extract.shift.i.i.i.i.i.i, %bb.nq ]
  %.sroa.7.0.i.i.i.i.i.i = phi i32 [ %.sroa.032.0.i.i.i.i.i.i, %bb.ns ], [ %..i.i.i.i.i.i, %bb.nr ], [ 16777216, %bb.nq ]
  %3 = trunc i32 %.sroa.06.0.i.i.i.i to i1
  %i.zf = and i32 %.sroa.05.0.copyload.i.i.i.i.i, 1
  %.37.i.i.i.i.i.i = select i1 %3, i32 %i.zf, i32 0
  %i.zg = and i32 %.sroa.06.0.i.i.i.i, 256
  %.not36.i.i.i.i.i.i = icmp eq i32 %i.zg, 0
  %.sroa.314.0.insert.ext.i.i.i.i.i.i = shl nuw i32 %.sroa.016.0.i.i.i.i.i.i, 16
  %.sroa.314.0.insert.shift.i.i.i.i.i.i = and i32 %.sroa.314.0.insert.ext.i.i.i.i.i.i, 16711680
  %i.zh = and i32 %.sroa.05.0.copyload.i.i.i.i.i, 65280
  %.sroa.213.0.insert.ext.i.i.i.i.i.i = select i1 %.not36.i.i.i.i.i.i, i32 0, i32 %i.zh
  %.sroa.314.0.insert.insert.i.i.i.i.i.i = or disjoint i32 %.37.i.i.i.i.i.i, %.sroa.213.0.insert.ext.i.i.i.i.i.i
  %.sroa.213.0.insert.insert.i.i.i.i.i.i = or i32 %.sroa.314.0.insert.insert.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i
  %.sroa.012.0.insert.insert.i.i.i.i.i.i = or i32 %.sroa.213.0.insert.insert.i.i.i.i.i.i, %.sroa.314.0.insert.shift.i.i.i.i.i.i
  br label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i

_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i: ; preds = %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i.i.i, %.preheader.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i32 [ %.sroa.012.0.insert.insert.i.i.i.i.i.i, %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.zi = add nuw nsw i64 %.sroa.08.0.i.i.i.i, 1  ; 2 uses
  %i.zj = icmp eq i64 %i.zi, %i.yw
  br i1 %i.zj, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i.i.i, label %.preheader.i.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i.i.i: ; preds = %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i, %bb.no
  %.sroa.04.0.i.i.i.i = phi i32 [ 131328, %bb.no ], [ %.sroa.04.0.i.i.i.i.i, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5729
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yu, i64 88
  %i.zl = load ptr, ptr %i.zk, align 8, !alias.scope !5730, !noalias !5731, !nonnull !18, !align !26, !noundef !18
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.zm, i64 32, i1 false), !noalias !5732
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yu, i64 144
  %i.zo = load i32, ptr %i.zn, align 8, !alias.scope !5730, !noalias !5731, !noundef !18
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yu, i64 96
  %i.zq = load ptr, ptr %i.zp, align 8, !alias.scope !5730, !noalias !5731, !nonnull !18, !noundef !18
  invoke void @_RINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical27response_no_constraints_rawNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB1w_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, i32 noundef %i.zo, ptr noundef nonnull %i.zq, i32 %.sroa.04.0.i.i.i.i)
          to label %bb.nx unwind label %bb.nl, !noalias !5691

bb.nt:                                            ; preds = %bb.nx, %bb.nn
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.nv unwind label %bb.nu, !noalias !5691

bb.nu:                                            ; preds = %bb.nt
  %i.zr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body99.i.i unwind label %bb.nw, !noalias !5691

bb.nv:                                            ; preds = %bb.nt
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit101.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.nw:                                            ; preds = %bb.nu
  %i.zs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !5691
  unreachable

bb.nx:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5692
  store i8 -1, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  br label %bb.nt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit101.i.i: ; preds = %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5692
  br label %bb.mk

bb.ny:                                            ; preds = %bb.pu, %.body.thread.i.i, %bb.pg, %bb.pd, %.body149.i.i, %bb.nl, %.body99.i.i
  %i.zt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !5691
  unreachable

bb.nz:                                            ; preds = %bb.mp
  %i.zu = extractvalue { i64, i64 } %i.wj, 0
  %i.zv = extractvalue { i64, i64 } %i.wj, 1
  store i64 0, ptr %i.ui, align 8, !alias.scope !5733, !noalias !5734
  store ptr %i.ae, ptr %i.s, align 8, !alias.scope !5708, !noalias !5735
  %i.zw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.zu, ptr %i.zw, align 8, !alias.scope !5708, !noalias !5735
  %i.zx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.zv, ptr %i.zx, align 8, !alias.scope !5708, !noalias !5735
  %i.zy = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %i.zy, align 8, !alias.scope !5708, !noalias !5735
  %i.zz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.pre260.i.i, ptr %i.zz, align 8, !alias.scope !5708, !noalias !5735
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtB2_12SpecFromIterBU_INtNtB4_10extract_if9ExtractIfBU_NCNCNvMs0_NtBZ_11trait_goalsINtNtBZ_9eval_ctxt8EvalCtxtNtNtB2d_6solver13SolverContextB29_E22merge_trait_candidates0s3_0EE9from_iterB2f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s)
          to label %bb.oa unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5692
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !noalias !5692, !nonnull !18, !noundef !18
  %i.aac = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.aad = load i64, ptr %i.aac, align 8, !noalias !5692, !noundef !18
  invoke fastcc void @_RNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1q_8interner10DbInternerE20try_merge_candidatesB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aab, i64 noundef %i.aad)
          to label %bb.oc unwind label %bb.pd, !noalias !5691

bb.ob:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEEB3u_.exit136.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i._crit_edge.i.i
  %.sroa.038.3.ph.i.i = phi i1 [ true, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i._crit_edge.i.i ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEEB3u_.exit136.i.i ]
  %lpad.thr_comm.split-lp.i.i39 = landingpad { ptr, i32 }
          cleanup
  br label %.body99.i.i

bb.oc:                                            ; preds = %bb.oa
  %i.aae = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.aaf = load i64, ptr %i.aae, align 8, !range !28, !noalias !5692, !noundef !18 ; 2 uses
  %.not57.i.i36 = icmp eq i64 %i.aaf, 2
  br i1 %.not57.i.i36, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !5692
  %i.aag = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.aah = load i64, ptr %i.aag, align 8, !noalias !5692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5692
  %i.aai = trunc nuw i64 %i.aaf to i1
  br i1 %i.aai, label %bb.oj, label %bb.ok

bb.oe:                                            ; preds = %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5692
  %i.aaj = load ptr, ptr %i.ua, align 8, !alias.scope !5688, !noalias !5693, !nonnull !18, !align !26, !noundef !18 ; 3 uses
  %i.aak = load ptr, ptr %i.aaa, align 8, !noalias !5692, !nonnull !18, !noundef !18
  %i.aal = load i64, ptr %i.aac, align 8, !noalias !5692, !noundef !18 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5736)
  call void @llvm.experimental.noalias.scope.decl(metadata !5737)
  %i.aam = icmp eq i64 %i.aal, 0
  br i1 %i.aam, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i128.i.i, label %.preheader.i102.i.i

.preheader.i102.i.i:                              ; preds = %bb.oe, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i
  %.sroa.08.0.i.i103.i.i = phi i64 [ %i.aax, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i ], [ 0, %bb.oe ] ; 2 uses
  %.sroa.06.0.i.i104.i.i = phi i32 [ %.sroa.04.0.i.i.i127.i.i, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i ], [ 131328, %bb.oe ] ; 6 uses
  %i.aan = getelementptr inbounds nuw [72 x i8], ptr %i.aak, i64 %.sroa.08.0.i.i103.i.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 56 ; 2 uses
  %i.aap = load i8, ptr %i.aao, align 8, !range !57, !alias.scope !5738, !noalias !5739, !noundef !18
  %.not.i.i.i105.i.i = icmp eq i8 %i.aap, 2
  br i1 %.not.i.i.i105.i.i, label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i, label %bb.of

bb.of:                                            ; preds = %.preheader.i102.i.i
  %.sroa.05.0.copyload.i.i.i106.i.i = load i32, ptr %i.aao, align 8, !alias.scope !5738, !noalias !5739 ; 5 uses
  %.sroa.5.0.extract.shift.i.i.i.i107.i.i = lshr i32 %.sroa.06.0.i.i104.i.i, 16 ; 2 uses
  %.sroa.510.0.extract.shift.i.i.i.i108.i.i = lshr i32 %.sroa.05.0.copyload.i.i.i106.i.i, 16 ; 2 uses
  %.sroa.611.0.extract.shift.i.i.i.i109.i.i = and i32 %.sroa.05.0.copyload.i.i.i106.i.i, -16777216
  %i.aaq = and i32 %.sroa.06.0.i.i104.i.i, 16711680
  %.not.i.i.i.i110.i.i = icmp eq i32 %i.aaq, 131072
  %i.aar = and i32 %.sroa.05.0.copyload.i.i.i106.i.i, 16711680
  %.not33.i.i.i.i111.i.i = icmp eq i32 %i.aar, 131072 ; 3 uses
  br i1 %.not.i.i.i.i110.i.i, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  br i1 %.not33.i.i.i.i111.i.i, label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i115.i.i, label %bb.oi

bb.oh:                                            ; preds = %bb.of
  %..sroa.510.0.extract.shift.i.i.i.i130.i.i = select i1 %.not33.i.i.i.i111.i.i, i32 2, i32 %.sroa.510.0.extract.shift.i.i.i.i108.i.i
  %..i.i.i.i131.i.i = select i1 %.not33.i.i.i.i111.i.i, i32 0, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i115.i.i

bb.oi:                                            ; preds = %bb.og
  %i.aas = trunc i32 %.sroa.5.0.extract.shift.i.i.i.i107.i.i to i1
  %i.aat = and i32 %.sroa.06.0.i.i104.i.i, 16777216
  %.not35.i.i.i.i112.i.i = icmp eq i32 %i.aat, 0
  %spec.select.i.i.i.i113.i.i = select i1 %i.aas, i32 1, i32 %.sroa.510.0.extract.shift.i.i.i.i108.i.i
  %.sroa.032.0.i.i.i.i114.i.i = select i1 %.not35.i.i.i.i112.i.i, i32 %.sroa.611.0.extract.shift.i.i.i.i109.i.i, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i115.i.i

_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i115.i.i: ; preds = %bb.oi, %bb.oh, %bb.og
  %.sroa.016.0.i.i.i.i116.i.i = phi i32 [ %spec.select.i.i.i.i113.i.i, %bb.oi ], [ %..sroa.510.0.extract.shift.i.i.i.i130.i.i, %bb.oh ], [ %.sroa.5.0.extract.shift.i.i.i.i107.i.i, %bb.og ]
  %.sroa.7.0.i.i.i.i117.i.i = phi i32 [ %.sroa.032.0.i.i.i.i114.i.i, %bb.oi ], [ %..i.i.i.i131.i.i, %bb.oh ], [ 16777216, %bb.og ]
  %4 = trunc i32 %.sroa.06.0.i.i104.i.i to i1
  %i.aau = and i32 %.sroa.05.0.copyload.i.i.i106.i.i, 1
  %.37.i.i.i.i118.i.i = select i1 %4, i32 %i.aau, i32 0
  %i.aav = and i32 %.sroa.06.0.i.i104.i.i, 256
  %.not36.i.i.i.i119.i.i = icmp eq i32 %i.aav, 0
  %.sroa.314.0.insert.ext.i.i.i.i120.i.i = shl nuw i32 %.sroa.016.0.i.i.i.i116.i.i, 16
  %.sroa.314.0.insert.shift.i.i.i.i121.i.i = and i32 %.sroa.314.0.insert.ext.i.i.i.i120.i.i, 16711680
  %i.aaw = and i32 %.sroa.05.0.copyload.i.i.i106.i.i, 65280
  %.sroa.213.0.insert.ext.i.i.i.i122.i.i = select i1 %.not36.i.i.i.i119.i.i, i32 0, i32 %i.aaw
  %.sroa.314.0.insert.insert.i.i.i.i123.i.i = or disjoint i32 %.37.i.i.i.i118.i.i, %.sroa.213.0.insert.ext.i.i.i.i122.i.i
  %.sroa.213.0.insert.insert.i.i.i.i124.i.i = or i32 %.sroa.314.0.insert.insert.i.i.i.i123.i.i, %.sroa.7.0.i.i.i.i117.i.i
  %.sroa.012.0.insert.insert.i.i.i.i125.i.i = or i32 %.sroa.213.0.insert.insert.i.i.i.i124.i.i, %.sroa.314.0.insert.shift.i.i.i.i121.i.i
  br label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i

_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i: ; preds = %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i115.i.i, %.preheader.i102.i.i
  %.sroa.04.0.i.i.i127.i.i = phi i32 [ %.sroa.012.0.insert.insert.i.i.i.i125.i.i, %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i115.i.i ], [ %.sroa.06.0.i.i104.i.i, %.preheader.i102.i.i ] ; 2 uses
  %i.aax = add nuw nsw i64 %.sroa.08.0.i.i103.i.i, 1 ; 2 uses
  %i.aay = icmp eq i64 %i.aax, %i.aal
  br i1 %i.aay, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i128.i.i, label %.preheader.i102.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i128.i.i: ; preds = %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i, %bb.oe
  %.sroa.04.0.i.i129.i.i = phi i32 [ 131328, %bb.oe ], [ %.sroa.04.0.i.i.i127.i.i, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i126.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5741
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaj, i64 88
  %i.aba = load ptr, ptr %i.aaz, align 8, !alias.scope !5742, !noalias !5743, !nonnull !18, !align !26, !noundef !18
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.abb, i64 32, i1 false), !noalias !5744
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaj, i64 144
  %i.abd = load i32, ptr %i.abc, align 8, !alias.scope !5742, !noalias !5743, !noundef !18
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaj, i64 96
  %i.abf = load ptr, ptr %i.abe, align 8, !alias.scope !5742, !noalias !5743, !nonnull !18, !noundef !18
  invoke void @_RINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical27response_no_constraints_rawNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB1w_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i32 noundef %i.abd, ptr noundef nonnull %i.abf, i32 %.sroa.04.0.i.i129.i.i)
          to label %bb.oz unwind label %bb.pd, !noalias !5691

bb.oj:                                            ; preds = %bb.od
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !5697
  store i8 1, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.or

bb.ok:                                            ; preds = %bb.od
  %i.abg = load ptr, ptr %i.aaa, align 8, !noalias !5692, !nonnull !18, !noundef !18 ; 4 uses
  %i.abh = load i64, ptr %i.t, align 8, !range !21, !noalias !5692, !noundef !18
  %i.abi = load i64, ptr %i.aac, align 8, !noalias !5692, !noundef !18 ; 4 uses
  %i.abj = icmp ult i64 %i.abi, 128102389400760776
  call void @llvm.assume(i1 %i.abj)
  %.idx246.i.i = mul nuw nsw i64 %i.abi, 72
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 %.idx246.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5692
  store ptr %i.abg, ptr %i.o, align 8, !noalias !5692
  %.sroa.018.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.018.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.abh, ptr %.sroa.018.sroa.3.0..sroa_idx.i.i, align 8, !noalias !5692
  %.sroa.018.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.abk, ptr %.sroa.018.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5692
  %.sroa.2.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.abl = icmp eq i64 %i.abi, 0
  br i1 %i.abl, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i._crit_edge.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.preheader.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.preheader.i.i: ; preds = %bb.ok
  %i.abm = add nuw nsw i64 %i.abi, 2305843009213693951
  %i.abn = and i64 %i.abm, 2305843009213693951
  %i.abo = add nuw nsw i64 %i.abn, 1
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.preheader.i.i
  %i.abp = phi ptr [ %i.abr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ %i.abg, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.preheader.i.i ] ; 3 uses
  %i.abq = phi i64 [ %i.abt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ 0, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.preheader.i.i ] ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 72 ; 5 uses
  %.sroa.5.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.abp, i64 56
  %.sroa.5.0.copyload2.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx1.i.i.i, align 8, !noalias !5745
  %.not.i.i.i38 = icmp eq i8 %.sroa.5.0.copyload2.i.i.i, -1
  br i1 %.not.i.i.i38, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i._crit_edge.i.i, label %bb.om

bb.ol:                                            ; preds = %bb.oy
  %i.abs = landingpad { ptr, i32 }
          cleanup
  store ptr %i.abr, ptr %.sroa.018.sroa.2.0..sroa_idx.i.i, align 8, !noalias !5692
  store i64 %i.abt, ptr %.sroa.2.0..sroa_idx.i.i37, align 8, !noalias !5692
  br label %.body149.i.i

.body149.i.i:                                     ; preds = %bb.ox, %bb.ol
  %eh.lpad-body150.i.i = phi { ptr, i32 } [ %i.abs, %bb.ol ], [ %i.ace, %bb.ox ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2h_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.body99.i.i unwind label %bb.ny, !noalias !5691

bb.om:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.i.i
  %.sroa.5194.sroa.0.0.copyload.i.i = load ptr, ptr %i.abp, align 8, !noalias !5746 ; 5 uses
  %i.abt = add nuw nsw i64 %i.abq, 1              ; 3 uses
  %.not59.i.i = icmp eq i64 %i.aah, %i.abq
  br i1 %.not59.i.i, label %bb.ov, label %bb.oy

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i._crit_edge.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.i.i, %bb.ok
  %.lcssa240.i.i = phi i64 [ 0, %bb.ok ], [ %i.abo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ %i.abq, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.i.i ]
  %i.abu = phi ptr [ %i.abg, %bb.ok ], [ %i.abk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ %i.abr, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.i.i ]
  store ptr %i.abu, ptr %.sroa.018.sroa.2.0..sroa_idx.i.i, align 8, !noalias !5692
  store i64 %.lcssa240.i.i, ptr %.sroa.2.0..sroa_idx.i.i37, align 8, !noalias !5692
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2h_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEEB3u_.exit136.i.i unwind label %bb.ob, !noalias !5691

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEEB3u_.exit136.i.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5692
  %i.abv = load ptr, ptr %i.ua, align 8, !alias.scope !5688, !noalias !5693, !nonnull !18, !align !26, !noundef !18
  %i.abw = load ptr, ptr %i.ue, align 8, !alias.scope !5688, !noalias !5693, !align !26, !noundef !18
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 112
  %i.aby = load ptr, ptr %i.abx, align 8, !noalias !5691, !nonnull !18, !align !26, !noundef !18
  invoke void @_RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE28ignore_candidate_head_usagesB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aby, ptr noalias noundef align 8 %i.abw)
          to label %bb.on unwind label %bb.ob, !noalias !5691

bb.on:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEEB3u_.exit136.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !5697
  store i8 1, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit147.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit147.i.i: ; preds = %bb.ot, %bb.on
  %.sroa.038.4.i.i = phi i8 [ 0, %bb.on ], [ 1, %bb.ot ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5692
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %bb.op unwind label %bb.oo, !noalias !5691

bb.oo:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit147.i.i
  %i.abz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %.body.i.i40 unwind label %bb.oq, !noalias !5691

bb.op:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit147.i.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit142.i.i unwind label %bb.pa, !noalias !5691

bb.oq:                                            ; preds = %bb.oo
  %i.aca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !5691
  unreachable

bb.or:                                            ; preds = %bb.oz, %bb.oj
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.ot unwind label %bb.os, !noalias !5691

bb.os:                                            ; preds = %bb.or
  %i.acb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body99.i.i unwind label %bb.ou, !noalias !5691

bb.ot:                                            ; preds = %bb.or
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit147.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.ou:                                            ; preds = %bb.os
  %i.acc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !5691
  unreachable

bb.ov:                                            ; preds = %bb.om
  %i.acd = icmp eq ptr %.sroa.5194.sroa.0.0.copyload.i.i, null
  br i1 %i.acd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.5194.sroa.0.0.copyload.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB29_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i unwind label %bb.ox, !noalias !5747

bb.ox:                                            ; preds = %bb.ow
  %i.ace = landingpad { ptr, i32 }
          cleanup
  store ptr %i.abr, ptr %.sroa.018.sroa.2.0..sroa_idx.i.i, align 8, !noalias !5692
  store i64 %i.abt, ptr %.sroa.2.0..sroa_idx.i.i37, align 8, !noalias !5692
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5194.sroa.0.0.copyload.i.i, i64 noundef 32, i64 noundef 8) #50, !noalias !5747
  br label %.body149.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB29_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %bb.ow
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5194.sroa.0.0.copyload.i.i, i64 noundef 32, i64 noundef 8) #50, !noalias !5747
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i

bb.oy:                                            ; preds = %bb.om
  %i.acf = load ptr, ptr %i.ua, align 8, !alias.scope !5688, !noalias !5693, !nonnull !18, !align !26, !noundef !18
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 112
  %i.ach = load ptr, ptr %i.acg, align 8, !noalias !5691, !nonnull !18, !align !26, !noundef !18
  invoke void @_RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE28ignore_candidate_head_usagesB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ach, ptr noalias noundef align 8 %.sroa.5194.sroa.0.0.copyload.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i unwind label %bb.ol, !noalias !5691

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %bb.oy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB29_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, %bb.ov
  %i.aci = icmp eq ptr %i.abr, %i.abk
  br i1 %i.aci, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i._crit_edge.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2h_.exit.i.i.i

bb.oz:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i128.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false), !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5692
  store i8 -1, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  br label %bb.or

bb.pa:                                            ; preds = %bb.op, %bb.mc
  %.sroa.038.6.i.i = phi i8 [ 1, %bb.mc ], [ %.sroa.038.4.i.i, %bb.op ]
  %i.acj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i40

.body.i.i40:                                      ; preds = %bb.pa, %bb.oo
  %.sroa.038.6.lpad-body.i.i = phi i8 [ %.sroa.038.4.i.i, %bb.oo ], [ %.sroa.038.6.i.i, %bb.pa ]
  %eh.lpad-body.i.i41 = phi { ptr, i32 } [ %i.abz, %bb.oo ], [ %i.acj, %bb.pa ] ; 2 uses
  %i.ack = trunc nuw i8 %.sroa.038.6.lpad-body.i.i to i1
  br i1 %i.ack, label %.body.thread.i.i, label %.body.i33

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit142.i.i: ; preds = %bb.op
  %i.acl = trunc nuw i8 %.sroa.038.4.i.i to i1
  br i1 %i.acl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i, label %bb.qg

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit142.i.i, %bb.mc
  call void @llvm.experimental.noalias.scope.decl(metadata !5748)
  %.val.i151.i.i = load ptr, ptr %i.ue, align 8, !alias.scope !5749, !noalias !5693, !align !26, !noundef !18 ; 4 uses
  %i.acm = icmp eq ptr %.val.i151.i.i, null
  br i1 %i.acm, label %bb.qg, label %bb.pb

bb.pb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i151.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBL_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE22merge_trait_candidates0EB2m_.exit.sink.split.i.i unwind label %bb.pc, !noalias !5750

bb.pc:                                            ; preds = %bb.pb
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i.i

bb.pd:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i128.i.i, %bb.oa
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #48
          to label %.body99.i.i unwind label %bb.ny, !noalias !5691

bb.pe:                                            ; preds = %bb.mo
  %i.aco = extractvalue { i64, i64 } %i.wd, 0
  %i.acp = extractvalue { i64, i64 } %i.wd, 1
  store i64 0, ptr %i.ui, align 8, !alias.scope !5751, !noalias !5752
  store ptr %i.ae, ptr %i.w, align 8, !alias.scope !5705, !noalias !5753
  %i.acq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.aco, ptr %i.acq, align 8, !alias.scope !5705, !noalias !5753
  %i.acr = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.acp, ptr %i.acr, align 8, !alias.scope !5705, !noalias !5753
  %i.acs = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %i.acs, align 8, !alias.scope !5705, !noalias !5753
  %i.act = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %.pre260.i.i, ptr %i.act, align 8, !alias.scope !5705, !noalias !5753
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEINtB2_12SpecFromIterBU_INtNtB4_10extract_if9ExtractIfBU_NCNCNvMs0_NtBZ_11trait_goalsINtNtBZ_9eval_ctxt8EvalCtxtNtNtB2d_6solver13SolverContextB29_E22merge_trait_candidates0s1_0EE9from_iterB2f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.w)
          to label %bb.pf unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5692
  %i.acu = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !noalias !5692, !nonnull !18, !noundef !18
  %i.acw = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.acx = load i64, ptr %i.acw, align 8, !noalias !5692, !noundef !18
  invoke fastcc void @_RNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1q_8interner10DbInternerE20try_merge_candidatesB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.acv, i64 noundef %i.acx)
          to label %bb.ph unwind label %bb.pg, !noalias !5691

bb.pg:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i180.i.i, %bb.pf
  %i.acy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #48
          to label %.body99.i.i unwind label %bb.ny, !noalias !5691

bb.ph:                                            ; preds = %bb.pf
  %i.acz = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ada = load i64, ptr %i.acz, align 8, !range !28, !noalias !5692, !noundef !18
  %.not61.i.i = icmp eq i64 %i.ada, 2
  br i1 %.not61.i.i, label %bb.pj, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !noalias !5697
  store i8 2, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5692
  br label %bb.po

bb.pj:                                            ; preds = %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5692
  %i.adb = load ptr, ptr %i.ua, align 8, !alias.scope !5688, !noalias !5693, !nonnull !18, !align !26, !noundef !18 ; 3 uses
  %i.adc = load ptr, ptr %i.acu, align 8, !noalias !5692, !nonnull !18, !noundef !18
  %i.add = load i64, ptr %i.acw, align 8, !noalias !5692, !noundef !18 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5754)
  call void @llvm.experimental.noalias.scope.decl(metadata !5755)
  %i.ade = icmp eq i64 %i.add, 0
  br i1 %i.ade, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i180.i.i, label %.preheader.i154.i.i

.preheader.i154.i.i:                              ; preds = %bb.pj, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i
  %.sroa.08.0.i.i155.i.i = phi i64 [ %i.adp, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i ], [ 0, %bb.pj ] ; 2 uses
  %.sroa.06.0.i.i156.i.i = phi i32 [ %.sroa.04.0.i.i.i179.i.i, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i ], [ 131328, %bb.pj ] ; 6 uses
  %i.adf = getelementptr inbounds nuw [72 x i8], ptr %i.adc, i64 %.sroa.08.0.i.i155.i.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 56 ; 2 uses
  %i.adh = load i8, ptr %i.adg, align 8, !range !57, !alias.scope !5756, !noalias !5757, !noundef !18
  %.not.i.i.i157.i.i = icmp eq i8 %i.adh, 2
  br i1 %.not.i.i.i157.i.i, label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i, label %bb.pk

bb.pk:                                            ; preds = %.preheader.i154.i.i
  %.sroa.05.0.copyload.i.i.i158.i.i = load i32, ptr %i.adg, align 8, !alias.scope !5756, !noalias !5757 ; 5 uses
  %.sroa.5.0.extract.shift.i.i.i.i159.i.i = lshr i32 %.sroa.06.0.i.i156.i.i, 16 ; 2 uses
  %.sroa.510.0.extract.shift.i.i.i.i160.i.i = lshr i32 %.sroa.05.0.copyload.i.i.i158.i.i, 16 ; 2 uses
  %.sroa.611.0.extract.shift.i.i.i.i161.i.i = and i32 %.sroa.05.0.copyload.i.i.i158.i.i, -16777216
  %i.adi = and i32 %.sroa.06.0.i.i156.i.i, 16711680
  %.not.i.i.i.i162.i.i = icmp eq i32 %i.adi, 131072
  %i.adj = and i32 %.sroa.05.0.copyload.i.i.i158.i.i, 16711680
  %.not33.i.i.i.i163.i.i = icmp eq i32 %i.adj, 131072 ; 3 uses
  br i1 %.not.i.i.i.i162.i.i, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  br i1 %.not33.i.i.i.i163.i.i, label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i167.i.i, label %bb.pn

bb.pm:                                            ; preds = %bb.pk
  %..sroa.510.0.extract.shift.i.i.i.i182.i.i = select i1 %.not33.i.i.i.i163.i.i, i32 2, i32 %.sroa.510.0.extract.shift.i.i.i.i160.i.i
  %..i.i.i.i183.i.i = select i1 %.not33.i.i.i.i163.i.i, i32 0, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i167.i.i

bb.pn:                                            ; preds = %bb.pl
  %i.adk = trunc i32 %.sroa.5.0.extract.shift.i.i.i.i159.i.i to i1
  %i.adl = and i32 %.sroa.06.0.i.i156.i.i, 16777216
  %.not35.i.i.i.i164.i.i = icmp eq i32 %i.adl, 0
  %spec.select.i.i.i.i165.i.i = select i1 %i.adk, i32 1, i32 %.sroa.510.0.extract.shift.i.i.i.i160.i.i
  %.sroa.032.0.i.i.i.i166.i.i = select i1 %.not35.i.i.i.i164.i.i, i32 %.sroa.611.0.extract.shift.i.i.i.i161.i.i, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i167.i.i

_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i167.i.i: ; preds = %bb.pn, %bb.pm, %bb.pl
  %.sroa.016.0.i.i.i.i168.i.i = phi i32 [ %spec.select.i.i.i.i165.i.i, %bb.pn ], [ %..sroa.510.0.extract.shift.i.i.i.i182.i.i, %bb.pm ], [ %.sroa.5.0.extract.shift.i.i.i.i159.i.i, %bb.pl ]
  %.sroa.7.0.i.i.i.i169.i.i = phi i32 [ %.sroa.032.0.i.i.i.i166.i.i, %bb.pn ], [ %..i.i.i.i183.i.i, %bb.pm ], [ 16777216, %bb.pl ]
  %5 = trunc i32 %.sroa.06.0.i.i156.i.i to i1
  %i.adm = and i32 %.sroa.05.0.copyload.i.i.i158.i.i, 1
  %.37.i.i.i.i170.i.i = select i1 %5, i32 %i.adm, i32 0
  %i.adn = and i32 %.sroa.06.0.i.i156.i.i, 256
  %.not36.i.i.i.i171.i.i = icmp eq i32 %i.adn, 0
  %.sroa.314.0.insert.ext.i.i.i.i172.i.i = shl nuw i32 %.sroa.016.0.i.i.i.i168.i.i, 16
  %.sroa.314.0.insert.shift.i.i.i.i173.i.i = and i32 %.sroa.314.0.insert.ext.i.i.i.i172.i.i, 16711680
  %i.ado = and i32 %.sroa.05.0.copyload.i.i.i158.i.i, 65280
  %.sroa.213.0.insert.ext.i.i.i.i174.i.i = select i1 %.not36.i.i.i.i171.i.i, i32 0, i32 %i.ado
  %.sroa.314.0.insert.insert.i.i.i.i175.i.i = or disjoint i32 %.37.i.i.i.i170.i.i, %.sroa.213.0.insert.ext.i.i.i.i174.i.i
  %.sroa.213.0.insert.insert.i.i.i.i176.i.i = or i32 %.sroa.314.0.insert.insert.i.i.i.i175.i.i, %.sroa.7.0.i.i.i.i169.i.i
  %.sroa.012.0.insert.insert.i.i.i.i177.i.i = or i32 %.sroa.213.0.insert.insert.i.i.i.i176.i.i, %.sroa.314.0.insert.shift.i.i.i.i173.i.i
  br label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i

_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i: ; preds = %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i167.i.i, %.preheader.i154.i.i
  %.sroa.04.0.i.i.i179.i.i = phi i32 [ %.sroa.012.0.insert.insert.i.i.i.i177.i.i, %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i167.i.i ], [ %.sroa.06.0.i.i156.i.i, %.preheader.i154.i.i ] ; 2 uses
  %i.adp = add nuw nsw i64 %.sroa.08.0.i.i155.i.i, 1 ; 2 uses
  %i.adq = icmp eq i64 %i.adp, %i.add
  br i1 %i.adq, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i180.i.i, label %.preheader.i154.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i180.i.i: ; preds = %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i, %bb.pj
  %.sroa.04.0.i.i181.i.i = phi i32 [ 131328, %bb.pj ], [ %.sroa.04.0.i.i.i179.i.i, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i178.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5759
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adb, i64 88
  %i.ads = load ptr, ptr %i.adr, align 8, !alias.scope !5760, !noalias !5761, !nonnull !18, !align !26, !noundef !18
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.adt, i64 32, i1 false), !noalias !5762
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adb, i64 144
  %i.adv = load i32, ptr %i.adu, align 8, !alias.scope !5760, !noalias !5761, !noundef !18
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adb, i64 96
  %i.adx = load ptr, ptr %i.adw, align 8, !alias.scope !5760, !noalias !5761, !nonnull !18, !noundef !18
  invoke void @_RINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical27response_no_constraints_rawNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB1w_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.adv, ptr noundef nonnull %i.adx, i32 %.sroa.04.0.i.i181.i.i)
          to label %bb.ps unwind label %bb.pg, !noalias !5691

bb.po:                                            ; preds = %bb.ps, %bb.pi
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.pq unwind label %bb.pp, !noalias !5691

bb.pp:                                            ; preds = %bb.po
  %i.ady = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body99.i.i unwind label %bb.pr, !noalias !5691

bb.pq:                                            ; preds = %bb.po
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit190.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !5691

bb.pr:                                            ; preds = %bb.pp
  %i.adz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !5691
  unreachable

bb.ps:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i180.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !5697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5692
  store i8 -1, ptr %.sink129.i.sroa.gep, align 8, !alias.scope !5687, !noalias !5697
  br label %bb.po

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit190.i.i: ; preds = %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5692
  br label %bb.mk

.body.thread.i.i:                                 ; preds = %.body.i.i40, %bb.mb
  %eh.lpad-body224.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i41, %.body.i.i40 ], [ %i.vd, %bb.mb ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ue) #48
          to label %.body.i33 unwind label %bb.ny, !noalias !5691

bb.pt:                                            ; preds = %.body99.i.i
  br i1 %.sroa.038.0.i.i32, label %bb.pu, label %.body.i33

bb.pu:                                            ; preds = %bb.pt
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph19CandidateHeadUsagesECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ue) #48
          to label %.body.i33 unwind label %bb.ny, !noalias !5691

bb.pv:                                            ; preds = %bb.lo
  %i.aea = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !5685
  %i.aeb = icmp ult i64 %i.aea, 2
  br i1 %i.aeb, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.qb, %bb.qa, %bb.px, %bb.pv
  store i64 2, ptr %i.ag, align 8, !noalias !5685
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr null, ptr %i.aec, align 8, !noalias !5685
  br label %bb.qd

bb.px:                                            ; preds = %bb.pv
  %i.aed = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidates10___CALLSITE, i64 16) monotonic, align 8, !noalias !5685 ; 3 uses
  switch i8 %i.aed, label %bb.py [
    i8 0, label %bb.pw
    i8 1, label %bb.pz
    i8 2, label %bb.pz
  ], !prof !27

bb.py:                                            ; preds = %bb.px
  %i.aee = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidates10___CALLSITE)
          to label %bb.qa unwind label %bb.lp, !noalias !5702 ; 2 uses

bb.pz:                                            ; preds = %bb.px, %bb.qa, %bb.px
  %.sroa.010.0.i = phi i8 [ %i.aee, %bb.qa ], [ %i.aed, %bb.px ], [ %i.aed, %bb.px ]
  %i.aef = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidates10___CALLSITE, align 8, !noalias !5685, !nonnull !18, !align !26, !noundef !18
  %i.aeg = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aef, i8 noundef %.sroa.010.0.i)
          to label %bb.qb unwind label %bb.lp, !noalias !5702

bb.qa:                                            ; preds = %bb.py
  %.not.i = icmp eq i8 %i.aee, 0
  br i1 %.not.i, label %bb.pw, label %bb.pz

bb.qb:                                            ; preds = %bb.pz
  br i1 %i.aeg, label %bb.qc, label %bb.pw

bb.qc:                                            ; preds = %bb.qb
  %i.aeh = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidates10___CALLSITE, align 8, !noalias !5685, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5685
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5685
  store ptr %i.ao, ptr %i.aj, align 8, !noalias !5685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5685
  store ptr %i.em, ptr %i.ai, align 8, !noalias !5685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5685
  store ptr %i.an, ptr %i.ah, align 8, !noalias !5685
  store ptr %i.aj, ptr %i.ak, align 8, !noalias !5685
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @243, ptr %i.aej, align 8, !noalias !5685
  %i.aek = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.ai, ptr %i.aek, align 8, !noalias !5685
  %i.ael = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @124, ptr %i.ael, align 8, !noalias !5685
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.ah, ptr %i.aem, align 8, !noalias !5685
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr @244, ptr %i.aen, align 8, !noalias !5685
  store i64 1, ptr %i.al, align 8, !noalias !5685
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !5685
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i47, align 8, !noalias !5685
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.aei, ptr %i.aeo, align 8, !noalias !5685
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aeh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al)
          to label %bb.qe unwind label %bb.lp, !noalias !5702

bb.qd:                                            ; preds = %bb.qe, %bb.pw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 40, i1 false), !noalias !5685
  %i.aep = load i64, ptr %i.am, align 8, !range !28, !noalias !5685, !noundef !18
  %.not41.i = icmp eq i64 %i.aep, 2
  br i1 %.not41.i, label %bb.lq, label %bb.qf

bb.qe:                                            ; preds = %bb.qc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5685
  br label %bb.qd

bb.qf:                                            ; preds = %bb.qd
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aeq)
          to label %bb.lq unwind label %bb.lp, !noalias !5702

bb.qg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit142.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtBL_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB2k_8interner10DbInternerE22merge_trait_candidates0EB2m_.exit.sink.split.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEEB2t_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5685
  %i.aer = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !5685
  %i.aes = icmp ult i64 %i.aer, 2
  br i1 %i.aes, label %bb.qh, label %bb.qm

bb.qh:                                            ; preds = %bb.qg
  %i.aet = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidatess_10___CALLSITE, i64 16) monotonic, align 8, !noalias !5685 ; 3 uses
  switch i8 %i.aet, label %bb.qi [
    i8 0, label %bb.qm
    i8 1, label %bb.qj
    i8 2, label %bb.qj
  ], !prof !27

bb.qi:                                            ; preds = %bb.qh
  %i.aeu = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidatess_10___CALLSITE)
          to label %bb.qk unwind label %bb.lp, !noalias !5702 ; 2 uses

bb.qj:                                            ; preds = %bb.qh, %bb.qk, %bb.qh
  %.sroa.018.0.i = phi i8 [ %i.aeu, %bb.qk ], [ %i.aet, %bb.qh ], [ %i.aet, %bb.qh ]
  %i.aev = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidatess_10___CALLSITE, align 8, !noalias !5685, !nonnull !18, !align !26, !noundef !18
  %i.aew = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aev, i8 noundef %.sroa.018.0.i)
          to label %bb.ql unwind label %bb.lp, !noalias !5702

bb.qk:                                            ; preds = %bb.qi
  %i.aex = icmp eq i8 %i.aeu, 0
  br i1 %i.aex, label %bb.qm, label %bb.qj

bb.ql:                                            ; preds = %bb.qj
  br i1 %i.aew, label %bb.qn, label %bb.qm

bb.qm:                                            ; preds = %bb.qo, %bb.ql, %bb.qk, %bb.qh, %bb.qg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !5763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !5685
  %i.aey = trunc nuw i8 %.sroa.021.1.i to i1
  %i.aez = load i64, ptr %i.am, align 8, !range !28, !noalias !5685
  %.not.i.i47.i = icmp ne i64 %i.aez, 2
  %or.cond69.not.i = select i1 %i.aey, i1 %.not.i.i47.i, i1 false
  br i1 %or.cond69.not.i, label %bb.qp, label %bb.rc

bb.qn:                                            ; preds = %bb.ql
  %i.afa = load ptr, ptr @_RNvNvMs0_NtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve11trait_goalsINtNtB9_9eval_ctxt8EvalCtxtppE22merge_trait_candidatess_10___CALLSITE, align 8, !noalias !5685, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5685
end_hunk_0
begin_hunk_1_@_RNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1q_8interner10DbInternerE28structurally_normalize_constB1s_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6667)
  call void @llvm.experimental.noalias.scope.decl(metadata !6668)
  call void @llvm.experimental.noalias.scope.decl(metadata !6669)
  %i.bc = icmp eq i64 %.pr, 0
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6670)
  call void @llvm.experimental.noalias.scope.decl(metadata !6671)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !6672, !nonnull !18, !noundef !18
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !6673
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ad:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %.thread56, %bb.b, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %.pn60, %.thread56 ], [ %lpad.thr_comm.split-lp, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %bb.b
  %i.bi = load i64, ptr %i.j, align 8, !range !28, !noalias !6674, !noundef !18
  %.not.i.i47 = icmp eq i64 %i.bi, 2
  br i1 %.not.i.i47, label %.thread56, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj)
          to label %.thread56 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread56
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

.thread56:                                        ; preds = %bb.ae, %bb.af, %bb.x, %bb.w
  %.pn60 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp66, %bb.w ], [ %i.ay, %bb.x ], [ %lpad.thr_comm.split-lp, %bb.af ], [ %lpad.thr_comm.split-lp, %bb.ae ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.j) #48
          to label %common.resume unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB4_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1q_8interner10DbInternerE8flounderB1s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 128102389400760776) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 17 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 %3, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.o = icmp ne i64 %i.n, 0                      ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.b:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i, %bb.aa, %bb.w, %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.o, label %common.resume, label %bb.al

bb.c:                                             ; preds = %bb.a, %bb.l
  %i.p = phi i64 [ %3, %bb.a ], [ %.pr, %bb.l ]   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.r, label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.h, %bb.g
  store i64 2, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.t, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounder10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.u, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !27

bb.g:                                             ; preds = %bb.f
  %i.v = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounder10___CALLSITE) ; 2 uses
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.g
  %.sroa.010.0 = phi i8 [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.u, %bb.f ]
  %i.w = load ptr, ptr @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounder10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.x = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w, i8 noundef %.sroa.010.0)
  br i1 %i.x, label %bb.i, label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounder10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @292, ptr %i.aa, align 8
  store i64 1, ptr %i.j, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.z, ptr %i.ab, align 8
  call void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.ac = load i64, ptr %i.k, align 8, !range !28, !noundef !18
  %.not39 = icmp eq i64 %i.ac, 2
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pr = load i64, ptr %i.m, align 8
  br label %bb.c

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ae = load ptr, ptr %i.l, align 8, !nonnull !18, !align !26, !noundef !18
  call void @llvm.experimental.noalias.scope.decl(metadata !6702)
  call void @llvm.experimental.noalias.scope.decl(metadata !6703)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i
  %.sroa.08.0.i.i = phi i64 [ %i.ap, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i ], [ 0, %bb.m ] ; 2 uses
  %.sroa.06.0.i.i = phi i32 [ %.sroa.04.0.i.i.i, %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i ], [ 131328, %bb.m ] ; 6 uses
  %i.af = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %.sroa.08.0.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !range !57, !alias.scope !6704, !noalias !6705, !noundef !18
  %.not.i.i.i = icmp eq i8 %i.ah, 2
  br i1 %.not.i.i.i, label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.preheader.i
  %.sroa.05.0.copyload.i.i.i = load i32, ptr %i.ag, align 8, !alias.scope !6704, !noalias !6705 ; 5 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %.sroa.06.0.i.i, 16 ; 2 uses
  %.sroa.510.0.extract.shift.i.i.i.i = lshr i32 %.sroa.05.0.copyload.i.i.i, 16 ; 2 uses
  %.sroa.611.0.extract.shift.i.i.i.i = and i32 %.sroa.05.0.copyload.i.i.i, -16777216
  %i.ai = and i32 %.sroa.06.0.i.i, 16711680
  %.not.i.i.i.i = icmp eq i32 %i.ai, 131072
  %i.aj = and i32 %.sroa.05.0.copyload.i.i.i, 16711680
  %.not33.i.i.i.i = icmp eq i32 %i.aj, 131072     ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not33.i.i.i.i, label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i, label %bb.q

bb.p:                                             ; preds = %bb.n
  %..sroa.510.0.extract.shift.i.i.i.i = select i1 %.not33.i.i.i.i, i32 2, i32 %.sroa.510.0.extract.shift.i.i.i.i
  %..i.i.i.i = select i1 %.not33.i.i.i.i, i32 0, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ak = trunc i32 %.sroa.5.0.extract.shift.i.i.i.i to i1
  %i.al = and i32 %.sroa.06.0.i.i, 16777216
  %.not35.i.i.i.i = icmp eq i32 %i.al, 0
  %spec.select.i.i.i.i = select i1 %i.ak, i32 1, i32 %.sroa.510.0.extract.shift.i.i.i.i
  %.sroa.032.0.i.i.i.i = select i1 %.not35.i.i.i.i, i32 %.sroa.611.0.extract.shift.i.i.i.i, i32 16777216
  br label %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i

_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.016.0.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.q ], [ %..sroa.510.0.extract.shift.i.i.i.i, %bb.p ], [ %.sroa.5.0.extract.shift.i.i.i.i, %bb.o ]
  %.sroa.7.0.i.i.i.i = phi i32 [ %.sroa.032.0.i.i.i.i, %bb.q ], [ %..i.i.i.i, %bb.p ], [ 16777216, %bb.o ]
  %4 = trunc i32 %.sroa.06.0.i.i to i1
  %i.am = and i32 %.sroa.05.0.copyload.i.i.i, 1
  %.37.i.i.i.i = select i1 %4, i32 %i.am, i32 0
  %i.an = and i32 %.sroa.06.0.i.i, 256
  %.not36.i.i.i.i = icmp eq i32 %i.an, 0
  %.sroa.314.0.insert.ext.i.i.i.i = shl nuw i32 %.sroa.016.0.i.i.i.i, 16
  %.sroa.314.0.insert.shift.i.i.i.i = and i32 %.sroa.314.0.insert.ext.i.i.i.i, 16711680
  %i.ao = and i32 %.sroa.05.0.copyload.i.i.i, 65280
  %.sroa.213.0.insert.ext.i.i.i.i = select i1 %.not36.i.i.i.i, i32 0, i32 %i.ao
  %.sroa.314.0.insert.insert.i.i.i.i = or disjoint i32 %.37.i.i.i.i, %.sroa.213.0.insert.ext.i.i.i.i
  %.sroa.213.0.insert.insert.i.i.i.i = or i32 %.sroa.314.0.insert.insert.i.i.i.i, %.sroa.7.0.i.i.i.i
  %.sroa.012.0.insert.insert.i.i.i.i = or i32 %.sroa.213.0.insert.insert.i.i.i.i, %.sroa.314.0.insert.shift.i.i.i.i
  br label %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i

_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i: ; preds = %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i, %.preheader.i
  %.sroa.04.0.i.i.i = phi i32 [ %.sroa.012.0.insert.insert.i.i.i.i, %_RNvMsg_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB5_9MaybeInfo2or.exit.i.i.i ], [ %.sroa.06.0.i.i, %.preheader.i ] ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.08.0.i.i, 1      ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %i.p
  br i1 %i.aq, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i, label %.preheader.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i: ; preds = %_RNCNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextNtNtB1s_8interner10DbInternerE19bail_with_ambiguity0B1u_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6707
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !6708, !noalias !6709, !nonnull !18, !align !26, !noundef !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !6707
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !6708, !noalias !6709, !noundef !18
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !6708, !noalias !6709, !nonnull !18, !noundef !18
  invoke void @_RINvNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9canonical27response_no_constraints_rawNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB1w_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.av, ptr noundef nonnull %i.ax, i32 %.sroa.04.0.i.i.i)
          to label %bb.s unwind label %bb.b

bb.r:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 -1, ptr %i.ay, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly9CandidateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve9MaybeInfoNCNvMs_BV_INtNtBV_9eval_ctxt8EvalCtxtNtNtB29_6solver13SolverContextB25_E19bail_with_ambiguity0EB2b_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.az = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounders_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bb, label %bb.v [
    i8 0, label %bb.z
    i8 1, label %bb.w
    i8 2, label %bb.w
  ], !prof !27

bb.v:                                             ; preds = %bb.u
  %i.bc = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounders_10___CALLSITE)
          to label %bb.x unwind label %bb.b       ; 2 uses

bb.w:                                             ; preds = %bb.u, %bb.u, %bb.x
  %.sroa.018.0 = phi i8 [ %i.bc, %bb.x ], [ %i.bb, %bb.u ], [ %i.bb, %bb.u ]
  %i.bd = load ptr, ptr @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounders_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18
  %i.be = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bd, i8 noundef %.sroa.018.0)
          to label %bb.y unwind label %bb.b

bb.x:                                             ; preds = %bb.v
  %i.bf = icmp eq i8 %i.bc, 0
  br i1 %i.bf, label %bb.z, label %bb.w

bb.y:                                             ; preds = %bb.w
  br i1 %i.be, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.u, %bb.t, %bb.ab, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bg = load i64, ptr %i.k, align 8, !range !28
  %.not.i.i = icmp eq i64 %i.bg, 2
  %or.cond = select i1 %i.o, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.bh = load ptr, ptr @_RNvNvMs_NtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solveINtNtB6_9eval_ctxt8EvalCtxtppE8flounders_10___CALLSITE, align 8, !nonnull !18, !align !26, !noundef !18 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @38, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %bb.ab unwind label %bb.b

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.ac:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk)
          to label %.thread49 unwind label %bb.ae

bb.ad:                                            ; preds = %bb.k
  %lpad.thr_comm.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %.thread51

bb.ae:                                            ; preds = %bb.ac
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread51

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %.thread49, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.thread49:                                        ; preds = %bb.ac
  %.pr65 = load i64, ptr %i.k, align 8, !alias.scope !6710 ; 2 uses
  %.not.i.i42 = icmp eq i64 %.pr65, 2
  br i1 %.not.i.i42, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.af

bb.af:                                            ; preds = %.thread49
  %i.bm = load i64, ptr %i.bk, align 8, !range !30, !alias.scope !6711, !noundef !18
  %i.bn = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, i64 noundef %i.bm)
          to label %bb.ah unwind label %bb.ag     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #48
          to label %common.resume unwind label %bb.ak

bb.ah:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !6712)
  call void @llvm.experimental.noalias.scope.decl(metadata !6713)
  call void @llvm.experimental.noalias.scope.decl(metadata !6714)
  call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  %i.bp = icmp eq i64 %.pr65, 0
  br i1 %i.bp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6716)
  call void @llvm.experimental.noalias.scope.decl(metadata !6717)
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !6718, !nonnull !18, !noundef !18
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !6719
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bq) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.ak:                                            ; preds = %bb.ag
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %.thread51, %bb.b, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.ag ], [ %.pn55, %.thread51 ], [ %lpad.thr_comm.split-lp, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %bb.b
  %i.bv = load i64, ptr %i.k, align 8, !range !28, !noalias !6720, !noundef !18
  %.not.i.i43 = icmp eq i64 %i.bv, 2
  br i1 %.not.i.i43, label %.thread51, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bw)
          to label %.thread51 unwind label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread51
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

.thread51:                                        ; preds = %bb.al, %bb.am, %bb.ae, %bb.ad
  %.pn55 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp61, %bb.ad ], [ %i.bl, %bb.ae ], [ %lpad.thr_comm.split-lp, %bb.am ], [ %lpad.thr_comm.split-lp, %bb.al ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #48
          to label %common.resume unwind label %bb.an
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir15data_structures11delayed_mapINtB4_10DelayedMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyB1t_E11cold_insertB1z_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #18 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyBN_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir15data_structures11delayed_mapINtB4_10DelayedMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyB1t_E8cold_getB1z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
