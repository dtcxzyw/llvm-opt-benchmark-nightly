Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/eliminate_predicates?download=true
inline.NumInlined: 1922
inline.NumDeleted: 805
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN20eliminate_predicates18process_to_excludeER8ast_mark:bb.a
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  store ptr %i.bi, ptr %i.bv, align 8, !tbaa !285
  %i.bw = add i32 %i.br, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !33
  %indvars.iv.next.i58.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i59.i = icmp eq i64 %indvars.iv.next.i58.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i59.i, label %thread-pre-split.backedgethread-pre-split.i, label %.lr.ph.i.outer.i, !llvm.loop !487

_Z17for_each_ast_argsI4sortEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.i: ; preds = %bb.q
  br i1 %.0910.i.ph.i, label %_Z17for_each_ast_argsI4sortEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.thread.i, label %thread-pre-split.backedgethread-pre-split.i

_Z17for_each_ast_argsI4sortEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.thread.i: ; preds = %_Z17for_each_ast_argsI4sortEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.i, %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !130
  %i.bz = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.by)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.r:                                             ; preds = %_Z17for_each_ast_argsI4sortEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.thread.i
  br i1 %i.bz, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !130 ; 2 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !261   ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !33
  %i.ch = icmp eq i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.u, label %thread-pre-split.backedgethread-pre-split.sink.split.i

bb.u:                                             ; preds = %bb.t, %bb.s
  invoke void @_ZN6vectorIP3astLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.w:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !89 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_Z11is_uninterpPK9func_decl.exit.thread.i.i, label %_Z11is_uninterpPK9func_decl.exit.i.i

_Z11is_uninterpPK9func_decl.exit.i.i:             ; preds = %bb.w
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !93
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %_Z11is_uninterpPK9func_decl.exit.thread.i.i, label %_ZZN20eliminate_predicates18process_to_excludeER8ast_markEN4procclEP9func_decl.exit.i

_Z11is_uninterpPK9func_decl.exit.thread.i.i:      ; preds = %_Z11is_uninterpPK9func_decl.exit.i.i, %bb.w
  %i.co = load ptr, ptr %1, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.ag, i1 noundef zeroext true)
          to label %_ZZN20eliminate_predicates18process_to_excludeER8ast_markEN4procclEP9func_decl.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !inline_history !488

_ZZN20eliminate_predicates18process_to_excludeER8ast_markEN4procclEP9func_decl.exit.i: ; preds = %_Z11is_uninterpPK9func_decl.exit.thread.i.i, %_Z11is_uninterpPK9func_decl.exit.i.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !49
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.ag, i1 noundef zeroext true)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.x:                                             ; preds = %_ZZN20eliminate_predicates18process_to_excludeER8ast_markEN4procclEP9func_decl.exit.i
  %i.cu = load ptr, ptr %2, align 8, !tbaa !261   ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33
  %i.cx = add i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !33
  br label %thread-pre-split.backedge.i

bb.y:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !84
  %i.da = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.cz)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.z:                                             ; preds = %bb.y
  br i1 %i.da, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !84 ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !261   ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !33 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !33
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.ac, label %thread-pre-split.backedgethread-pre-split.sink.split.i

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void @_ZN6vectorIP3astLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.ae:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !96 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.not.i68.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i68.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.thread.i, label %.lr.ph.preheader.i69.i

.lr.ph.preheader.i69.i:                           ; preds = %bb.ae
  %wide.trip.count.i70.i = zext i32 %i.dl to i64  ; 2 uses
  br label %.lr.ph.i71.outer.i

.lr.ph.i71.outer.i:                               ; preds = %.thread63.i, %.lr.ph.preheader.i69.i
  %indvars.iv.i72.ph.i = phi i64 [ %indvars.iv.next.i7665.i, %.thread63.i ], [ 0, %.lr.ph.preheader.i69.i ]
  %.0910.i73.ph.i = phi i1 [ false, %.thread63.i ], [ true, %.lr.ph.preheader.i69.i ]
  br label %.lr.ph.i71.i

.lr.ph.i71.i:                                     ; preds = %bb.ai, %.lr.ph.i71.outer.i
  %indvars.iv.i72.i = phi i64 [ %indvars.iv.next.i76.i, %bb.ai ], [ %indvars.iv.i72.ph.i, %.lr.ph.i71.outer.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i72.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !104 ; 2 uses
  %i.dp = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.do)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.loopexit.i

.noexc82.i:                                       ; preds = %.lr.ph.i71.i
  br i1 %i.dp, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.noexc82.i
  %i.dq = load ptr, ptr %2, align 8, !tbaa !261   ; 4 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !33 ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !33
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.ah, label %.thread63.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  invoke void @_ZN6vectorIP3astLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc83.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i

.noexc83.i:                                       ; preds = %bb.ah
  %.pre.i.i79.i = load ptr, ptr %2, align 8, !tbaa !261 ; 2 uses
  %.phi.trans.insert.i.i80.i = getelementptr inbounds i8, ptr %.pre.i.i79.i, i64 -4
  %.pre2.i.i81.i = load i32, ptr %.phi.trans.insert.i.i80.i, align 4, !tbaa !33
  br label %.thread63.i

bb.ai:                                            ; preds = %.noexc82.i
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i72.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i76.i, %wide.trip.count.i70.i
  br i1 %exitcond.not.i77.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.i, label %.lr.ph.i71.i, !llvm.loop !489

.thread63.i:                                      ; preds = %.noexc83.i, %bb.ag
  %i.dx = phi i32 [ %.pre2.i.i81.i, %.noexc83.i ], [ %i.dt, %bb.ag ] ; 2 uses
  %i.dy = phi ptr [ %.pre.i.i79.i, %.noexc83.i ], [ %i.dq, %bb.ag ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.ea = zext i32 %i.dx to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea
  store ptr %i.do, ptr %i.eb, align 8, !tbaa !285
  %i.ec = add i32 %i.dx, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !33
  %indvars.iv.next.i7665.i = add nuw nsw i64 %indvars.iv.i72.i, 1 ; 2 uses
  %exitcond.not.i7766.i = icmp eq i64 %indvars.iv.next.i7665.i, %wide.trip.count.i70.i
  br i1 %exitcond.not.i7766.i, label %thread-pre-split.backedgethread-pre-split.i, label %.lr.ph.i71.outer.i, !llvm.loop !489

_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.i: ; preds = %bb.ai
  br i1 %.0910.i73.ph.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.thread.i, label %thread-pre-split.backedgethread-pre-split.i

_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.thread.i: ; preds = %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.i, %bb.ae
  %i.ed = load ptr, ptr %3, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.ag, i1 noundef zeroext true)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.aj:                                            ; preds = %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.thread.i
  %i.eg = load ptr, ptr %2, align 8, !tbaa !261   ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !33
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !33
  br label %thread-pre-split.backedge.i

bb.ak:                                            ; preds = %bb.g
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !490 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !345
  %i.ep = zext i32 %i.eo to i64
  %.idx.i.i = shl nuw nsw i64 %i.ep, 4            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i.i
  %.not.i84.i = icmp eq i32 %i.el, 0
  br i1 %.not.i84.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread.i, label %.lr.ph.preheader.i85.i

.lr.ph.preheader.i85.i:                           ; preds = %bb.ak
  %wide.trip.count.i86.i = zext i32 %i.el to i64  ; 2 uses
  br label %.lr.ph.i87.outer.i

.lr.ph.i87.outer.i:                               ; preds = %.thread70.i, %.lr.ph.preheader.i85.i
  %indvars.iv.i88.ph.i = phi i64 [ %indvars.iv.next.i9272.i, %.thread70.i ], [ 0, %.lr.ph.preheader.i85.i ]
  %.0910.i89.ph.i = phi i1 [ false, %.thread70.i ], [ true, %.lr.ph.preheader.i85.i ]
  br label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %bb.ao, %.lr.ph.i87.outer.i
  %indvars.iv.i88.i = phi i64 [ %indvars.iv.next.i92.i, %bb.ao ], [ %indvars.iv.i88.ph.i, %.lr.ph.i87.outer.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i88.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !104 ; 2 uses
  %i.es = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.er)
          to label %.noexc98.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

.noexc98.i:                                       ; preds = %.lr.ph.i87.i
  br i1 %i.es, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.noexc98.i
  %i.et = load ptr, ptr %2, align 8, !tbaa !261   ; 4 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !33 ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !33
  %i.ez = icmp eq i32 %i.ew, %i.ey
  br i1 %i.ez, label %bb.an, label %.thread70.i

bb.an:                                            ; preds = %bb.am, %bb.al
  invoke void @_ZN6vectorIP3astLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i

.noexc99.i:                                       ; preds = %bb.an
  %.pre.i.i95.i = load ptr, ptr %2, align 8, !tbaa !261 ; 2 uses
  %.phi.trans.insert.i.i96.i = getelementptr inbounds i8, ptr %.pre.i.i95.i, i64 -4
  %.pre2.i.i97.i = load i32, ptr %.phi.trans.insert.i.i96.i, align 4, !tbaa !33
  br label %.thread70.i

bb.ao:                                            ; preds = %.noexc98.i
  %indvars.iv.next.i92.i = add nuw nsw i64 %indvars.iv.i88.i, 1 ; 2 uses
  %exitcond.not.i93.i = icmp eq i64 %indvars.iv.next.i92.i, %wide.trip.count.i86.i
  br i1 %exitcond.not.i93.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.i, label %.lr.ph.i87.i, !llvm.loop !489

.thread70.i:                                      ; preds = %.noexc99.i, %bb.am
  %i.fa = phi i32 [ %.pre2.i.i97.i, %.noexc99.i ], [ %i.ew, %bb.am ] ; 2 uses
  %i.fb = phi ptr [ %.pre.i.i95.i, %.noexc99.i ], [ %i.et, %bb.am ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fd = zext i32 %i.fa to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fd
  store ptr %i.er, ptr %i.fe, align 8, !tbaa !285
  %i.ff = add i32 %i.fa, 1
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !33
  %indvars.iv.next.i9272.i = add nuw nsw i64 %indvars.iv.i88.i, 1 ; 2 uses
  %exitcond.not.i9373.i = icmp eq i64 %indvars.iv.next.i9272.i, %wide.trip.count.i86.i
  br i1 %exitcond.not.i9373.i, label %thread-pre-split.backedgethread-pre-split.i, label %.lr.ph.i87.outer.i, !llvm.loop !489

_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.i: ; preds = %bb.ao
  br i1 %.0910.i89.ph.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100._Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread_crit_edge.i, label %thread-pre-split.backedgethread-pre-split.i

_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100._Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread_crit_edge.i: ; preds = %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.i
  %.pre35.i = load i32, ptr %i.en, align 4, !tbaa !345
  %.pre36.i = zext i32 %.pre35.i to i64
  %.pre37.i = shl nuw nsw i64 %.pre36.i, 4
  br label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread.i

_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread.i: ; preds = %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100._Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread_crit_edge.i, %bb.ak
  %.pre-phi.i = phi i64 [ %.pre37.i, %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100._Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread_crit_edge.i ], [ %.idx.i.i, %bb.ak ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !491 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.em, i64 %.pre-phi.i
  %.not.i101.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i101.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.thread.i, label %.lr.ph.preheader.i102.i

.lr.ph.preheader.i102.i:                          ; preds = %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread.i
  %wide.trip.count.i103.i = zext i32 %i.fh to i64 ; 2 uses
  br label %.lr.ph.i104.outer.i

.lr.ph.i104.outer.i:                              ; preds = %.thread77.i, %.lr.ph.preheader.i102.i
  %indvars.iv.i105.ph.i = phi i64 [ %indvars.iv.next.i10979.i, %.thread77.i ], [ 0, %.lr.ph.preheader.i102.i ]
  %.0910.i106.ph.i = phi i1 [ false, %.thread77.i ], [ true, %.lr.ph.preheader.i102.i ]
  br label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %bb.as, %.lr.ph.i104.outer.i
  %indvars.iv.i105.i = phi i64 [ %indvars.iv.next.i109.i, %bb.as ], [ %indvars.iv.i105.ph.i, %.lr.ph.i104.outer.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i105.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !104 ; 2 uses
  %i.fk = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.fj)
          to label %.noexc115.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

.noexc115.i:                                      ; preds = %.lr.ph.i104.i
  br i1 %i.fk, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %.noexc115.i
  %i.fl = load ptr, ptr %2, align 8, !tbaa !261   ; 4 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !33
  %i.fr = icmp eq i32 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ar, label %.thread77.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  invoke void @_ZN6vectorIP3astLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc116.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i

.noexc116.i:                                      ; preds = %bb.ar
  %.pre.i.i112.i = load ptr, ptr %2, align 8, !tbaa !261 ; 2 uses
  %.phi.trans.insert.i.i113.i = getelementptr inbounds i8, ptr %.pre.i.i112.i, i64 -4
  %.pre2.i.i114.i = load i32, ptr %.phi.trans.insert.i.i113.i, align 4, !tbaa !33
  br label %.thread77.i

bb.as:                                            ; preds = %.noexc115.i
  %indvars.iv.next.i109.i = add nuw nsw i64 %indvars.iv.i105.i, 1 ; 2 uses
  %exitcond.not.i110.i = icmp eq i64 %indvars.iv.next.i109.i, %wide.trip.count.i103.i
  br i1 %exitcond.not.i110.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.i, label %.lr.ph.i104.i, !llvm.loop !489

.thread77.i:                                      ; preds = %.noexc116.i, %bb.aq
  %i.fs = phi i32 [ %.pre2.i.i114.i, %.noexc116.i ], [ %i.fo, %bb.aq ] ; 2 uses
  %i.ft = phi ptr [ %.pre.i.i112.i, %.noexc116.i ], [ %i.fl, %bb.aq ] ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -4
  %i.fv = zext i32 %i.fs to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fv
  store ptr %i.fj, ptr %i.fw, align 8, !tbaa !285
  %i.fx = add i32 %i.fs, 1
  store i32 %i.fx, ptr %i.fu, align 4, !tbaa !33
  %indvars.iv.next.i10979.i = add nuw nsw i64 %indvars.iv.i105.i, 1 ; 2 uses
  %exitcond.not.i11080.i = icmp eq i64 %indvars.iv.next.i10979.i, %wide.trip.count.i103.i
  br i1 %exitcond.not.i11080.i, label %thread-pre-split.backedgethread-pre-split.i, label %.lr.ph.i104.outer.i, !llvm.loop !489

_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.i: ; preds = %bb.as
  br i1 %.0910.i106.ph.i, label %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.thread.i, label %thread-pre-split.backedgethread-pre-split.i

thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i: ; preds = %bb.aw, %bb.ac, %bb.u
  %.sink.ph.i = phi ptr [ %i.ca, %bb.u ], [ %i.gg, %bb.aw ], [ %i.db, %bb.ac ]
  %.pre.i63.i = load ptr, ptr %2, align 8, !tbaa !261 ; 2 uses
  %.phi.trans.insert.i64.i = getelementptr inbounds i8, ptr %.pre.i63.i, i64 -4
  %.pre2.i65.i = load i32, ptr %.phi.trans.insert.i64.i, align 4, !tbaa !33
  br label %thread-pre-split.backedgethread-pre-split.sink.split.i

thread-pre-split.backedgethread-pre-split.sink.split.i: ; preds = %bb.av, %thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i, %bb.ab, %bb.t
  %.sink138.i.a = phi ptr [ %i.gh, %bb.av ], [ %i.cb, %bb.t ], [ %i.dc, %bb.ab ], [ %.pre.i63.i, %thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i ] ; 2 uses
  %.sink137.i = phi i32 [ %i.gk, %bb.av ], [ %i.ce, %bb.t ], [ %i.df, %bb.ab ], [ %.pre2.i65.i, %thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.gg, %bb.av ], [ %i.ca, %bb.t ], [ %i.db, %bb.ab ], [ %.sink.ph.i, %thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i ]
  %i.fy = getelementptr inbounds i8, ptr %.sink138.i.a, i64 -4
  %i.fz = zext i32 %.sink137.i to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sink138.i.a, i64 %i.fz
  store ptr %.sink.i, ptr %i.ga, align 8, !tbaa !285
  %i.gb = add i32 %.sink137.i, 1
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !33
  br label %thread-pre-split.backedgethread-pre-split.i

thread-pre-split.backedgethread-pre-split.i:      ; preds = %.thread70.i, %.thread77.i, %.thread63.i, %.thread.i, %thread-pre-split.backedgethread-pre-split.sink.split.i, %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.i, %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.i, %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.i, %_Z17for_each_ast_argsI4sortEbR10ptr_vectorI3astER8ast_markjPKPT_.exit.i, %bb.g
  %.pr.pr.i = load ptr, ptr %2, align 8, !tbaa !261
  br label %thread-pre-split.backedge.i

thread-pre-split.backedge.i:                      ; preds = %bb.az, %thread-pre-split.backedgethread-pre-split.i, %bb.aj, %bb.x, %bb.k, %bb.i
  %.pr.i = phi ptr [ %.pr.pr.i, %thread-pre-split.backedgethread-pre-split.i ], [ %i.eg, %bb.aj ], [ %i.gs, %bb.az ], [ %i.cu, %bb.x ], [ %i.az, %bb.k ], [ %i.as, %bb.i ] ; 2 uses
  %i.gc = icmp eq ptr %.pr.i, null
  br i1 %i.gc, label %.loopexit, label %_ZNK6vectorIP3astLb0EjE5emptyEv.exit.lr.ph.i, !llvm.loop !486

_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.thread.i: ; preds = %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.i, %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit100.thread.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !346
  %i.gf = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.ge)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.at:                                            ; preds = %_Z17for_each_ast_argsI4exprEbR10ptr_vectorI3astER8ast_markjPKPT_.exit117.thread.i
  br i1 %i.gf, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !346 ; 2 uses
  %i.gh = load ptr, ptr %2, align 8, !tbaa !261   ; 4 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !33 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gh, i64 -8
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !33
  %i.gn = icmp eq i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.aw, label %thread-pre-split.backedgethread-pre-split.sink.split.i

bb.aw:                                            ; preds = %bb.av, %bb.au
  invoke void @_ZN6vectorIP3astLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %thread-pre-split.backedgethread-pre-split.sink.split.sink.split.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.ay:                                            ; preds = %bb.at
  %i.gp = load ptr, ptr %3, align 8, !tbaa !49
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.ag, i1 noundef zeroext true)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.az:                                            ; preds = %bb.ay
  %i.gs = load ptr, ptr %2, align 8, !tbaa !261   ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -4 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !33
  %i.gv = add i32 %i.gu, -1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !33
  br label %thread-pre-split.backedge.i

_ZNK6vectorIP3astLb0EjE5emptyEv.exit.lr.ph.i._crit_edge: ; preds = %_ZNK6vectorIP3astLb0EjE5emptyEv.exit.lr.ph.i, %_ZNK6vectorIP3astLb0EjE5emptyEv.exit.i
  %.lcssa = phi ptr [ %i.ai, %_ZNK6vectorIP3astLb0EjE5emptyEv.exit.i ], [ %.pr27.i, %_ZNK6vectorIP3astLb0EjE5emptyEv.exit.lr.ph.i ]
  %i.gw = getelementptr inbounds i8, ptr %.lcssa, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gw)
          to label %.loopexit unwind label %bb.ba

bb.ba:                                            ; preds = %_ZNK6vectorIP3astLb0EjE5emptyEv.exit.lr.ph.i._crit_edge
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #21
  unreachable

.loopexit.split-lp.i:                             ; preds = %bb.ax, %bb.ad, %bb.v, %bb.l, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.go, %bb.ax ], [ %i.bd, %bb.l ], [ %i.ci, %bb.v ], [ %i.dj, %bb.ad ], [ %lpad.loopexit.split-lp19.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp86.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp90.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit16.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit18.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit84.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit89.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit93.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp94.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ]
  call void @_ZN6vectorIP3astLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN8ast_markD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.i

.loopexit:                                        ; preds = %thread-pre-split.backedge.i, %_ZNK6vectorIP3astLb0EjE5emptyEv.exit.lr.ph.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.gz = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gz, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph52
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #2

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #2

declare void @_Z12verbose_lockv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Z14verbose_unlockv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN20eliminate_predicates12update_modelEP9func_decl(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref.44, align 8          ; 8 uses
  %3 = alloca %class.ref_vector.40, align 8       ; 9 uses
  %4 = alloca %class.obj_ref.1, align 8           ; 13 uses
  %5 = alloca %class.obj_ref, align 8             ; 11 uses
  %6 = alloca %class.vector.73, align 8           ; 8 uses
  %7 = alloca %class.obj_ref.1, align 8           ; 6 uses
  %8 = alloca %class.obj_ref.1, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113, !nonnull !27, !align !28 ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %3, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  store ptr null, ptr %i.d, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.f, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %6, align 8, !tbaa !199
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 9 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !94
  %i.i = shl i32 %i.h, 1
  %i.j = add i32 %i.i, 3                          ; 7 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !67   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
end_hunk_0
