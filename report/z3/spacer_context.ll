Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_context?download=true
inline.NumInlined: 5724
inline.NumDeleted: 1767
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN6spacer16pred_transformer23updt_solver_with_lemmasEPNS_11prop_solverERKS0_P3appj:bb.a
  %i.bn = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.bn, null
  br i1 %.not.i4.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !170, !nonnull !159, !align !160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !172
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !172
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bo, ptr noundef nonnull %i.bn)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  store ptr %i.bj, ptr %7, align 8, !tbaa !161
  %i.bt = load ptr, ptr %0, align 8, !tbaa !262, !nonnull !159, !align !160
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  invoke void @_ZNK6spacer7sym_mux10shift_exprEP4exprjjR7obj_refIS1_11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef %i.bj, i32 noundef 0, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true)
          to label %_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit: ; preds = %bb.o
  %i.bv = load ptr, ptr %7, align 8, !tbaa !161
  invoke void @_ZN6spacer5lemma8mk_instsER10ref_vectorI4expr11ast_managerEPS2_(ptr noundef nonnull align 8 dereferenceable(109) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.bv)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit
  invoke void @_ZN6spacer5lemma12mk_expr_coreEv(ptr noundef nonnull align 8 dereferenceable(109) %i.bg)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !161
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, 65535
  %.not91 = icmp eq i32 %i.bz, 2
  br i1 %.not91, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6spacer5lemma12mk_expr_coreEv(ptr noundef nonnull align 8 dereferenceable(109) %i.bg)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !161
  invoke void @_ZN6spacer11ground_exprEP4exprR7obj_refIS0_11ast_managerER10ref_vectorI3appS3_E(ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %0, align 8, !tbaa !262, !nonnull !159, !align !160
  %i.cc = load ptr, ptr %8, align 8, !tbaa !161
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  invoke void @_ZNK6spacer7sym_mux10shift_exprEP4exprjjR7obj_refIS1_11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef %i.cc, i32 noundef 0, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true)
          to label %_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit54 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit54: ; preds = %bb.t
  %i.ce = load ptr, ptr %8, align 8, !tbaa !161   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !172
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !172
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.u, %_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit54
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !246 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !168 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !168
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.w:                                             ; preds = %bb.v, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.w
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !246 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !168
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.v, %.noexc55
  %i.cp = phi i32 [ %.pre2.i.i, %.noexc55 ], [ %i.cl, %bb.v ] ; 2 uses
  %i.cq = phi ptr [ %.pre.i.i, %.noexc55 ], [ %i.ci, %bb.v ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cs
  store ptr %i.ce, ptr %i.ct, align 8, !tbaa !247
  %i.cu = add i32 %i.cp, 1
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !168
  br label %bb.x

.loopexit:                                        ; preds = %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ad, %bb.x, %bb.w, %bb.t, %bb.r, %bb.p, %bb.o, %bb.n, %bb.j, %bb.s, %_ZNK6spacer7manager11formula_n2oEP4exprR7obj_refIS1_11ast_managerEjb.exit
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.q
  invoke void @_ZN6spacer5lemma12mk_expr_coreEv(ptr noundef nonnull align 8 dereferenceable(109) %i.bg)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %i.bi, align 8, !tbaa !161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, 65535
  %.not92 = icmp eq i32 %i.cy, 2
  br i1 %.not92, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !179, !nonnull !159, !align !160
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 642
  %i.db = load i8, ptr %i.da, align 2, !tbaa !511, !range !223, !noundef !159
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dd = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i58, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !172
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !172
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59: ; preds = %bb.ab, %bb.aa
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !246 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !168 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !168
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i59
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.ad
  %.pre.i.i60 = load ptr, ptr %i.e, align 8, !tbaa !246 ; 2 uses
  %.phi.trans.insert.i.i61 = getelementptr inbounds i8, ptr %.pre.i.i60, i64 -4
  %.pre2.i.i62 = load i32, ptr %.phi.trans.insert.i.i61, align 4, !tbaa !168
  br label %.thread

.thread:                                          ; preds = %.noexc63, %bb.ac
  %i.do = phi i32 [ %.pre2.i.i62, %.noexc63 ], [ %i.dk, %bb.ac ] ; 2 uses
  %i.dp = phi ptr [ %.pre.i.i60, %.noexc63 ], [ %i.dh, %bb.ac ] ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %i.dr = zext i32 %i.do to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr
  store ptr %i.dd, ptr %i.ds, align 8, !tbaa !247
  %i.dt = add i32 %i.do, 1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !168
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

bb.ae:                                            ; preds = %bb.z
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !246 ; 2 uses
  %i.du = icmp eq ptr %.pre, null
  br i1 %i.du, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.ae, %.thread
  %i.dv = phi ptr [ %i.dp, %.thread ], [ %.pre, %bb.ae ] ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !168 ; 2 uses
  %.not103 = icmp eq i32 %i.dx, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %wide.trip.count = zext i32 %i.dx to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.aj, %bb.ae, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.dy = phi ptr [ null, %bb.ae ], [ %i.dv, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %i.et, %bb.aj ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !367 ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, 65534
  br i1 %i.eb, label %bb.ak, label %bb.al

bb.af:                                            ; preds = %bb.ai, %.lr.ph
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aj
  %i.ed = phi ptr [ %i.dv, %.lr.ph.preheader ], [ %i.et, %bb.aj ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !158, !nonnull !159, !align !160
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !247
  %i.eh = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ee, i32 noundef 0, i32 noundef 9, ptr noundef %3, ptr noundef %i.eg)
          to label %_ZN11ast_manager10mk_impliesEP4exprS1_.exit unwind label %bb.af ; 3 uses

_ZN11ast_manager10mk_impliesEP4exprS1_.exit:      ; preds = %.lr.ph
  %.not.i.i.i.i.i67 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i67, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !172
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !172
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.ag, %_ZN11ast_manager10mk_impliesEP4exprS1_.exit
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !246 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !247 ; 3 uses
  %i.eo = load ptr, ptr %6, align 8, !tbaa !256, !nonnull !159, !align !160
  %.not.i.i.i4.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i4.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !172
  %i.er = add i32 %i.eq, -1                       ; 2 uses
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !172
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.eo, ptr noundef nonnull %i.en)
          to label %.noexc69 unwind label %bb.af

.noexc69:                                         ; preds = %bb.ai
  %.pre.i.i68 = load ptr, ptr %i.e, align 8, !tbaa !246
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc69, %bb.ah, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.et = phi ptr [ %i.el, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ], [ %i.el, %bb.ah ], [ %.pre.i.i68, %.noexc69 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  store ptr %i.eh, ptr %i.eu, align 8, !tbaa !247
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !895

bb.ak:                                            ; preds = %._crit_edge
  %9 = icmp eq ptr %i.dy, null
  br i1 %9, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i: ; preds = %bb.ak
  %i.ev = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !168 ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ey
  %.not9.i = icmp eq i32 %i.ew, 0
  br i1 %.not9.i, label %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i, %.noexc71
  %.010.i = phi ptr [ %i.fb, %.noexc71 ], [ %i.dy, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i ] ; 2 uses
  %i.fa = load ptr, ptr %.010.i, align 8, !tbaa !247
  invoke void @_ZN6spacer11prop_solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(156) %1, ptr noundef %i.fa)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %.lr.ph.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i70 = icmp eq ptr %i.fb, %i.ez
  br i1 %.not.i70, label %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerE.exit, label %.lr.ph.i

bb.al:                                            ; preds = %._crit_edge
  %i.fc = add nuw nsw i32 %i.ea, 1
  %10 = icmp eq ptr %i.dy, null
  br i1 %10, label %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerE.exit, label %.split

bb.am:                                            ; preds = %.lr.ph.i74
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.split:                                           ; preds = %bb.al, %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerEj.exit
  %.098 = phi i32 [ %i.fn, %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerEj.exit ], [ 1, %bb.al ] ; 2 uses
  %i.fe = load ptr, ptr %i.e, align 8, !tbaa !246 ; 4 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerEj.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i72

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i72: ; preds = %.split
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !168 ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fj
  %.not9.i73 = icmp eq i32 %i.fh, 0
  br i1 %.not9.i73, label %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerEj.exit, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i72, %.noexc77
  %.010.i75 = phi ptr [ %i.fm, %.noexc77 ], [ %i.fe, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i72 ] ; 2 uses
  %i.fl = load ptr, ptr %.010.i75, align 8, !tbaa !247
  invoke void @_ZN6spacer11prop_solver11assert_exprEP4exprj(ptr noundef nonnull align 8 dereferenceable(156) %1, ptr noundef %i.fl, i32 noundef %.098)
          to label %.noexc77 unwind label %bb.am

.noexc77:                                         ; preds = %.lr.ph.i74
  %i.fm = getelementptr inbounds nuw i8, ptr %.010.i75, i64 8 ; 2 uses
  %.not.i76 = icmp eq ptr %i.fm, %i.fk
  br i1 %.not.i76, label %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerEj.exit, label %.lr.ph.i74

_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerEj.exit: ; preds = %.noexc77, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i72, %.split
  %i.fn = add i32 %.098, 1                        ; 2 uses
  %.not37 = icmp ugt i32 %i.fn, %i.fc
  br i1 %.not37, label %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerE.exit, label %.split, !llvm.loop !896

_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerEj.exit, %.noexc71, %bb.al, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !246  ; 5 uses
  %i.fo = icmp eq ptr %.pr, null
  br i1 %i.fo, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78:         ; preds = %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerE.exit
  %i.fp = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !168 ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %.pr, i64 %i.fs
  %.not.i79 = icmp eq i32 %i.fq, 0
  br i1 %.not.i79, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86, label %.lr.ph.i.i80

.lr.ph.i.i80:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83
  %.06.i.i81 = phi ptr [ %i.ga, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83 ], [ %.pr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78 ] ; 2 uses
  %i.fu = load ptr, ptr %.06.i.i81, align 8, !tbaa !247 ; 3 uses
  %i.fv = load ptr, ptr %6, align 8, !tbaa !256, !nonnull !159, !align !160
  %.not.i.i.i.i.i82 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i82, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i80
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !172
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !172
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ao, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fv, ptr noundef nonnull %i.fu)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83 unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83: ; preds = %bb.ao, %bb.an, %.lr.ph.i.i80
  %i.ga = getelementptr inbounds nuw i8, ptr %.06.i.i81, i64 8 ; 2 uses
  %i.gb = icmp ult ptr %i.ga, %i.ft
  br i1 %i.gb, label %.lr.ph.i.i80, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84, !llvm.loop !8

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i83
  %.pre.i85 = load ptr, ptr %i.e, align 8, !tbaa !246 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i85, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78
  %i.gc = phi ptr [ %.pre.i85, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84 ], [ %.pr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i78 ]
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -4
  store i32 0, ptr %i.gd, align 4, !tbaa !168
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %bb.ak, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i86, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i84, %_ZN6spacer11prop_solver12assert_exprsERK10ref_vectorI4expr11ast_managerE.exit
  %i.ge = load ptr, ptr %8, align 8, !tbaa !161   ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i88, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.gf = load ptr, ptr %i.o, align 8, !tbaa !170, !nonnull !159, !align !160
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !172
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !172
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.aq, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gf, ptr noundef nonnull %i.ge)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #27
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.gm = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i89, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit90, label %bb.as

bb.as:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.gn = load ptr, ptr %i.n, align 8, !tbaa !170, !nonnull !159, !align !160
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !172
  %i.gq = add i32 %i.gp, -1                       ; 2 uses
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !172
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.at, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit90

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gn, ptr noundef nonnull %i.gm)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit90 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #27
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit90:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.gu = getelementptr inbounds nuw i8, ptr %.031100, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gu, %i.m
  br i1 %.not, label %._crit_edge102, label %bb.j

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.am, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ec, %bb.af ], [ %i.fd, %bb.am ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit93, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spacer16pred_transformer22update_solver_with_rfsEPNS_11prop_solverERKS0_P3appj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %5 = alloca %class.obj_ref, align 8             ; 7 uses
  %6 = alloca %class.obj_ref, align 8             ; 7 uses
  %7 = alloca %class.obj_ref, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158, !nonnull !159, !align !160 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !162
  %i.e = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.c, i32 noundef 0, i32 noundef 8, ptr noundef %3)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %bb.i ; 6 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !172
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !172
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager6mk_notEP4expr.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.e, ptr %5, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !158, !nonnull !159, !align !160 ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !350  ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %_ZNK15ref_vector_coreIN6spacer10reach_factE21ref_unmanaged_wrapperIS1_EE3endEv.exit

_ZNK15ref_vector_coreIN6spacer10reach_factE21ref_unmanaged_wrapperIS1_EE3endEv.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !168  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %.not51 = icmp eq i32 %i.o, 0
  br i1 %.not51, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreIN6spacer10reach_factE21ref_unmanaged_wrapperIS1_EE3endEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = add i32 %4, 1
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit50
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !172
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !172
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.i, ptr noundef nonnull %i.bv)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.b, %_ZNK15ref_vector_coreIN6spacer10reach_factE21ref_unmanaged_wrapperIS1_EE3endEv.exit, %._crit_edge, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit26, label %bb.f
end_hunk_0
