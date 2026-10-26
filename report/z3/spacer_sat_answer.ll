Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_sat_answer?download=true
inline.NumInlined: 633
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6spacer20ground_sat_answer_op13mk_proof_stepERNS0_5frameE:bb.a

.lr.ph38.i.i.i:                                   ; preds = %.lr.ph38.i.i.i.preheader, %.lr.ph38.backedge.i.i.i
  %.137.i.i.i = phi ptr [ %.pn.i, %.lr.ph38.backedge.i.i.i ], [ %i.aw, %.lr.ph38.i.i.i.preheader ] ; 3 uses
  %i.bi = load ptr, ptr %.137.i.i.i, align 8, !tbaa !161 ; 4 uses
  %i.bj = icmp ult ptr %i.bi, inttoptr (i64 2 to ptr)
  br i1 %i.bj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !159
  %i.bm = icmp eq i32 %i.bl, %i.as
  %i.bn = icmp eq ptr %i.bi, %i.aq
  %or.cond31.i.i.i = and i1 %i.bn, %i.bm
  br i1 %or.cond31.i.i.i, label %.loopexit68, label %.lr.ph38.backedge.i.i.i

bb.m:                                             ; preds = %.lr.ph38.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  br label %.lr.ph38.backedge.i.i.i

.lr.ph38.backedge.i.i.i:                          ; preds = %bb.l, %bb.m
  %.pn.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16
  br label %.lr.ph38.i.i.i, !llvm.loop !5

.loopexit68:                                      ; preds = %bb.i, %bb.l
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.l ], [ %.035.i.i.i, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i29, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30, label %bb.n

bb.n:                                             ; preds = %.loopexit68
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !101
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !101
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30: ; preds = %bb.n, %.loopexit68
  %i.bt = icmp eq ptr %i.ap, null
  br i1 %i.bt, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30
  %i.bu = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !96 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !96
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i30
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.p
  %.pre.i.i31 = load ptr, ptr %i.d, align 8, !tbaa !192 ; 2 uses
  %.phi.trans.insert.i.i32 = getelementptr inbounds i8, ptr %.pre.i.i31, i64 -4
  %.pre2.i.i33 = load i32, ptr %.phi.trans.insert.i.i32, align 4, !tbaa !96
  br label %bb.q

bb.q:                                             ; preds = %.noexc34, %bb.o
  %i.bz = phi ptr [ %.pre.i.i31, %.noexc34 ], [ %i.ap, %bb.o ] ; 4 uses
  %i.ca = phi i32 [ %.pre2.i.i33, %.noexc34 ], [ %i.bv, %bb.o ] ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %i.cc = zext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cc
  store ptr %i.bp, ptr %i.cd, align 8, !tbaa !162
  %i.ce = add i32 %i.ca, 1
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !96
  %i.cf = getelementptr inbounds nuw i8, ptr %.01577, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.am
  br i1 %.not, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader, label %bb.h

.critedge.preheader:                              ; preds = %bb.u, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.cg = phi ptr [ %i.ci, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ null, %bb.u ]
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.critedge

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader ] ; 3 uses
  %i.ci = phi ptr [ %i.dc, %bb.u ], [ %.ph, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !96
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp samesign ult i64 %indvars.iv, %i.cl
  br i1 %i.cm, label %bb.r, label %.critedge.preheader

bb.r:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.sroa.2.0.insert.shift.i = shl nuw i64 %indvars.iv, 32
  %i.cn = load ptr, ptr %2, align 8, !tbaa !188   ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !96 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !96
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  invoke void @_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.t
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !188 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !96
  br label %bb.u

bb.u:                                             ; preds = %.noexc36, %bb.s
  %i.cu = phi i32 [ %.pre2.i, %.noexc36 ], [ %i.cq, %bb.s ]
  %i.cv = phi ptr [ %.pre.i, %.noexc36 ], [ %i.cn, %bb.s ]
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  store i64 %.sroa.2.0.insert.shift.i, ptr %i.cx, align 4
  %i.cy = load ptr, ptr %2, align 8, !tbaa !188
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !96
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !192 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.critedge.preheader, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !335

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.p, %bb.a, %bb.b, %.loopexit, %bb.f, %bb.ac
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %.critedge.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %.pre87 = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %i.cg, %.critedge.preheader ] ; 4 uses
  %.0 = phi i32 [ %i.dx, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ 0, %.critedge.preheader ] ; 3 uses
  %i.de = icmp eq ptr %.pre87, null
  br i1 %i.de, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38.thread

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38: ; preds = %.critedge
  %.not22.not = icmp eq i32 %.0, 0
  br i1 %.not22.not, label %bb.v, label %.loopexit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38.thread: ; preds = %.critedge
  %i.df = getelementptr inbounds i8, ptr %.pre87, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !96 ; 2 uses
  %.not2266 = icmp ugt i32 %.0, %i.dg
  br i1 %.not2266, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !108, !nonnull !76, !align !77
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  store i64 %i.di, ptr %6, align 8, !tbaa !78
  store ptr null, ptr %i.ch, align 8, !tbaa !82
  %i.dj = load ptr, ptr %3, align 8, !tbaa !191   ; 4 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !96 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !96
  %i.dp = icmp eq i32 %i.dm, %i.do
  br i1 %i.dp, label %bb.x, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc44 unwind label %bb.y

.noexc44:                                         ; preds = %bb.x
  %.pre.i41 = load ptr, ptr %3, align 8, !tbaa !191 ; 2 uses
  %.phi.trans.insert.i42 = getelementptr inbounds i8, ptr %.pre.i41, i64 -4
  %.pre2.i43 = load i32, ptr %.phi.trans.insert.i42, align 4, !tbaa !96
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !192
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %.noexc44, %bb.w
  %.pre = phi ptr [ %.pre.pre, %.noexc44 ], [ %.pre87, %bb.w ]
  %i.dq = phi i32 [ %.pre2.i43, %.noexc44 ], [ %i.dm, %bb.w ] ; 2 uses
  %i.dr = phi ptr [ %.pre.i41, %.noexc44 ], [ %i.dj, %bb.w ] ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.dt = zext i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dt ; 2 uses
  store i64 %i.di, ptr %i.du, align 8, !tbaa !78
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr null, ptr %i.dv, align 8, !tbaa !82
  %i.dw = add i32 %i.dq, 1
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.dx = add i32 %.0, 1
  br label %.critedge, !llvm.loop !336

bb.y:                                             ; preds = %bb.x
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38.thread
  %.0.i.i39 = phi i32 [ %i.dg, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38.thread ], [ 0, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit38 ]
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !108, !nonnull !76, !align !77
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !127
  %i.ec = invoke noundef ptr @_ZN11ast_manager16mk_hyper_resolveEjPKP3appP4exprRK7svectorISt4pairIjjEjERK6vectorI10ref_vectorIS4_S_ELb1EjE(ptr noundef nonnull align 8 dereferenceable(952) %i.dz, i32 noundef %.0.i.i39, ptr noundef %.pre87, ptr noundef %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.z:                                             ; preds = %.loopexit
  %.not.i.i.i.i47 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i47, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !101
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !101
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.aa, %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !82 ; 4 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !96 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !96
  %i.en = icmp eq i32 %i.ek, %i.em
  br i1 %i.en, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.ac
  %.pre.i.i48 = load ptr, ptr %i.eg, align 8, !tbaa !82 ; 2 uses
  %.phi.trans.insert.i.i49 = getelementptr inbounds i8, ptr %.pre.i.i48, i64 -4
  %.pre2.i.i50 = load i32, ptr %.phi.trans.insert.i.i49, align 4, !tbaa !96
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc51, %bb.ab
  %i.eo = phi i32 [ %.pre2.i.i50, %.noexc51 ], [ %i.ek, %bb.ab ] ; 2 uses
  %i.ep = phi ptr [ %.pre.i.i48, %.noexc51 ], [ %i.eh, %bb.ab ] ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -4
  %i.er = zext i32 %i.eo to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.er
  store ptr %i.ec, ptr %i.es, align 8, !tbaa !97
  %i.et = add i32 %i.eo, 1
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !96
  %i.eu = load ptr, ptr %5, align 8, !tbaa !127   ; 3 uses
  %.not.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %i.i, align 8, !tbaa !156, !nonnull !76, !align !77
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !101
  %i.ey = add i32 %i.ex, -1                       ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !101
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.af, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ev, ptr noundef nonnull %i.eu)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #16
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !192 ; 5 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 -4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !96 ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fh
  %.not.i53 = icmp eq i32 %i.ff, 0
  br i1 %.not.i53, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i55 = phi ptr [ %i.fp, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.fc, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.fj = load ptr, ptr %.06.i.i55, align 8, !tbaa !162 ; 3 uses
  %i.fk = load ptr, ptr %4, align 8, !tbaa !194, !nonnull !76, !align !77
  %.not.i.i.i.i.i56 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i56, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i54
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !101
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !101
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ai, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fk, ptr noundef nonnull %i.fj)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.ak

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i54
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.i.i55, i64 8 ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %i.fi
  br i1 %i.fq, label %.lr.ph.i.i54, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !10

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i57 = load ptr, ptr %i.d, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %.pre.i57, null
  br i1 %.not.i.i.i58, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.fr = phi ptr [ %.pre.i57, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.fc, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ]
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fs)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #16
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #16
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.fx = load ptr, ptr %3, align 8, !tbaa !191
  %.not.i.i59 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i59, label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i unwind label %bb.am

.noexc.i:                                         ; preds = %bb.al
  %i.fy = load ptr, ptr %3, align 8, !tbaa !191
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fz)
          to label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %.noexc.i, %bb.al
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #16
  unreachable

_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.gc = load ptr, ptr %2, align 8, !tbaa !188   ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i60, label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gd)
          to label %_ZN6vectorISt4pairIjjELb0EjED2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #16
  unreachable

_ZN6vectorISt4pairIjjELb0EjED2Ev.exit:            ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.ec

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.y ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN6vectorISt4pairIjjELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn24.pn.pn
}

declare noundef ptr @_ZN11ast_manager11mk_assertedEP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11ast_manager15mk_modus_ponensEP3appS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !163    ; 3 uses
end_hunk_0
