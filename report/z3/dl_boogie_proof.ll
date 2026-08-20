inline.NumInlined: 628
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7datalog19mk_input_resolutionER7obj_refI3app11ast_managerE:bb.a

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZN6vectorISt4pairIjjELb0EjE5resetEv.exit
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !31 ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ee
  %.not.i108 = icmp eq i32 %i.ec, 0
  br i1 %.not.i108, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.em, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.dz, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.eg = load ptr, ptr %.06.i.i, align 8, !tbaa !30 ; 3 uses
  %i.eh = load ptr, ptr %3, align 8, !tbaa !34, !nonnull !13, !align !14
  %.not.i.i.i.i.i109 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i109, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !32
  %i.ek = add i32 %i.ej, -1                       ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !32
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.aq, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.eh, ptr noundef nonnull %i.eg)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.aq, %bb.ap, %.lr.ph.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.en = icmp ult ptr %i.em, %i.ef
  br i1 %i.en, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !60

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i110 = load ptr, ptr %i.f, align 8, !tbaa !17 ; 2 uses
  %.not.i.i111 = icmp eq ptr %.pre.i110, null
  br i1 %.not.i.i111, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.eo = phi ptr [ %.pre.i110, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.dz, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -4
  store i32 0, ptr %i.ep, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %i.eq = phi ptr [ %i.eo, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.thread

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.thread: ; preds = %_ZN6vectorISt4pairIjjELb0EjE5resetEv.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.er = phi ptr [ null, %_ZN6vectorISt4pairIjjELb0EjE5resetEv.exit ], [ %i.eq, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !32
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !32
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.thread, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.ev = phi ptr [ %i.er, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.thread ], [ %i.eq, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !31 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !31
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc113 unwind label %.loopexit.split-lp

.noexc113:                                        ; preds = %bb.as
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !31
  br label %bb.at

bb.at:                                            ; preds = %.noexc113, %bb.ar
  %i.fc = phi i32 [ %.pre2.i.i, %.noexc113 ], [ %i.ey, %bb.ar ] ; 2 uses
  %i.fd = phi ptr [ %.pre.i.i, %.noexc113 ], [ %i.ev, %bb.ar ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.ff = zext i32 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  store ptr %i.db, ptr %i.fg, align 8, !tbaa !30
  %i.fh = add i32 %i.fc, 1
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !31
  %i.fi = load ptr, ptr %12, align 8, !tbaa !27
  %.not.i114 = icmp eq ptr %i.fi, null
  br i1 %.not.i114, label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE5resetEv.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc115 unwind label %.loopexit.split-lp

.noexc115:                                        ; preds = %bb.au
  %i.fj = load ptr, ptr %12, align 8, !tbaa !27
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -4
  store i32 0, ptr %i.fk, align 4, !tbaa !31
  br label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE5resetEv.exit

_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE5resetEv.exit: ; preds = %bb.at, %.noexc115
  %i.fl = load ptr, ptr %i.bk, align 8, !tbaa !40 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.critedge258, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE5resetEv.exit, %.critedge259
  %i.fn = phi ptr [ %i.ik, %.critedge259 ], [ %i.fl, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE5resetEv.exit ] ; 5 uses
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %.critedge259 ], [ 0, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE5resetEv.exit ] ; 4 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !31
  %i.fq = zext i32 %i.fp to i64
  %i.fr = icmp samesign ult i64 %indvars.iv288, %i.fq
  br i1 %i.fr, label %bb.aw, label %.critedge258

.critedge258:                                     ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %.critedge259, %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE5resetEv.exit
  %i.fs = load ptr, ptr %i.f, align 8, !tbaa !17  ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit119, label %bb.av

bb.av:                                            ; preds = %.critedge258
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !31
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit119

bb.aw:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv288
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !59
  %i.fy = load ptr, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %.critedge259, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124.lr.ph: ; preds = %bb.aw
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !31 ; 2 uses
  %i.gc = icmp ugt i32 %i.gb, 1
  br i1 %i.gc, label %.lr.ph.preheader, label %.critedge259

.lr.ph.preheader:                                 ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124.lr.ph
  %wide.trip.count = zext i32 %i.gb to i64
  br label %.lr.ph

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124: ; preds = %.lr.ph
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count
  br i1 %exitcond.not, label %.critedge259, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124
  %indvars.iv285 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next286, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv285
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !30 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !58
  %i.gh = add i32 %i.gg, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gj = zext i32 %i.gh to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !59
  %i.gm = icmp eq ptr %i.gl, %i.fx
  br i1 %i.gm, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i130, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i130: ; preds = %.lr.ph
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !32
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !32
  %i.gq = load ptr, ptr %i.f, align 8, !tbaa !17  ; 4 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i130
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !31 ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gq, i64 -8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !31
  %i.gw = icmp eq i32 %i.gt, %i.gv
  br i1 %i.gw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i130
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc134 unwind label %bb.bf

.noexc134:                                        ; preds = %bb.ay
  %.pre.i.i131 = load ptr, ptr %i.f, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert.i.i132 = getelementptr inbounds i8, ptr %.pre.i.i131, i64 -4
  %.pre2.i.i133 = load i32, ptr %.phi.trans.insert.i.i132, align 4, !tbaa !31
  br label %bb.az

bb.az:                                            ; preds = %.noexc134, %bb.ax
  %i.gx = phi i32 [ %.pre2.i.i133, %.noexc134 ], [ %i.gt, %bb.ax ] ; 2 uses
  %i.gy = phi ptr [ %.pre.i.i131, %.noexc134 ], [ %i.gq, %bb.ax ] ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -4
  %i.ha = zext i32 %i.gx to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.ha
  store ptr %i.ge, ptr %i.hb, align 8, !tbaa !30
  %i.hc = add i32 %i.gx, 1
  store i32 %i.hc, ptr %i.gz, align 4, !tbaa !31
  %i.hd = add nuw nsw i64 %indvars.iv288, 1
  %i.he = load ptr, ptr %9, align 8, !tbaa !24    ; 4 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hg = getelementptr inbounds i8, ptr %i.he, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !31 ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.he, i64 -8
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !31
  %i.hk = icmp eq i32 %i.hh, %i.hj
  br i1 %i.hk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  invoke void @_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc137 unwind label %bb.bg

.noexc137:                                        ; preds = %bb.bb
  %.pre.i136 = load ptr, ptr %9, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i136, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !31
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %.noexc137
  %i.hl = phi i32 [ %.pre2.i, %.noexc137 ], [ %i.hh, %bb.ba ]
  %i.hm = phi ptr [ %.pre.i136, %.noexc137 ], [ %i.he, %bb.ba ]
  %i.hn = zext i32 %i.hl to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hn
  store i64 %i.hd, ptr %i.ho, align 4
  %i.hp = load ptr, ptr %9, align 8, !tbaa !24
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -4 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !31
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store i64 %i.d, ptr %15, align 8, !tbaa !16
  store ptr null, ptr %i.bl, align 8, !tbaa !40
  %i.ht = load ptr, ptr %12, align 8, !tbaa !27   ; 4 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !31 ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.ht, i64 -8
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !31
  %i.hz = icmp eq i32 %i.hw, %i.hy
  br i1 %i.hz, label %bb.be, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

bb.be:                                            ; preds = %bb.bd, %bb.bc
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc141 unwind label %bb.bh

.noexc141:                                        ; preds = %bb.be
  %.pre.i138 = load ptr, ptr %12, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert.i139 = getelementptr inbounds i8, ptr %.pre.i138, i64 -4
  %.pre2.i140 = load i32, ptr %.phi.trans.insert.i139, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %.noexc141, %bb.bd
  %i.ia = phi i32 [ %.pre2.i140, %.noexc141 ], [ %i.hw, %bb.bd ] ; 2 uses
  %i.ib = phi ptr [ %.pre.i138, %.noexc141 ], [ %i.ht, %bb.bd ] ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.id = zext i32 %i.ia to i64
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.id ; 2 uses
  store i64 %i.d, ptr %i.ie, align 8, !tbaa !16
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr null, ptr %i.if, align 8, !tbaa !40
  %i.ig = add i32 %i.ia, 1
  store i32 %i.ig, ptr %i.ic, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %.pre298 = load ptr, ptr %i.bk, align 8, !tbaa !40
  br label %.critedge259

bb.bf:                                            ; preds = %bb.ay
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bg:                                            ; preds = %bb.bb
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bh:                                            ; preds = %bb.be
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.br

.critedge259:                                     ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124, %bb.aw, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.ik = phi ptr [ %.pre298, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ], [ %i.fn, %bb.aw ], [ %i.fn, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124.lr.ph ], [ %i.fn, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit124 ] ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %.critedge258, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !61

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit119: ; preds = %bb.av, %.critedge258
  %.0.i.i118 = phi i32 [ %i.fv, %bb.av ], [ 0, %.critedge258 ]
  %i.im = invoke noundef ptr @_ZN11ast_manager16mk_hyper_resolveEjPKP3appP4exprRK7svectorISt4pairIjjEjERK6vectorI10ref_vectorIS4_S_ELb1EjE(ptr noundef nonnull align 8 dereferenceable(952) %i.b, i32 noundef %.0.i.i118, ptr noundef %i.fs, ptr noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bi unwind label %.loopexit.split-lp ; 3 uses

bb.bi:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit119
  %i.in = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv291 ; 2 uses
  %i.ip = load ptr, ptr %4, align 8, !tbaa !34, !nonnull !13, !align !14
  %.not.i.i149 = icmp eq ptr %i.im, null
  br i1 %.not.i.i149, label %_ZN11ast_manager7inc_refEP3ast.exit.i150, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !32
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !32
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i150

_ZN11ast_manager7inc_refEP3ast.exit.i150:         ; preds = %bb.bj, %bb.bi
  %i.it = load ptr, ptr %i.io, align 8, !tbaa !30 ; 3 uses
  %.not.i3.i151 = icmp eq ptr %i.it, null
  br i1 %.not.i3.i151, label %_ZNK11ast_manager10is_impliesEPK4exprRPS0_S4_.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i150
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !32
  %i.iw = add i32 %i.iv, -1                       ; 2 uses
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !32
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bl, label %_ZNK11ast_manager10is_impliesEPK4exprRPS0_S4_.exit.thread

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ip, ptr noundef nonnull %i.it)
          to label %_ZNK11ast_manager10is_impliesEPK4exprRPS0_S4_.exit.thread unwind label %bb.bq

_ZNK11ast_manager10is_impliesEPK4exprRPS0_S4_.exit.thread: ; preds = %bb.bl, %_ZN11ast_manager7inc_refEP3ast.exit.i150, %bb.bk
  store ptr %i.im, ptr %i.io, align 8, !tbaa !30
  %.pr.pre = load ptr, ptr %i.bk, align 8, !tbaa !40 ; 5 uses
  %i.iy = icmp eq ptr %.pr.pre, null
  br i1 %i.iy, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit165, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i155

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i155:        ; preds = %_ZNK11ast_manager10is_impliesEPK4exprRPS0_S4_.exit.thread
  %i.iz = getelementptr inbounds i8, ptr %.pr.pre, i64 -4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !31 ; 2 uses
  %i.jb = zext i32 %i.ja to i64
  %i.jc = shl nuw nsw i64 %i.jb, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %.pr.pre, i64 %i.jc
  %.not.i156 = icmp eq i32 %i.ja, 0
  br i1 %.not.i156, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i164, label %.lr.ph.i.i157

.lr.ph.i.i157:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i155, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i160
  %.06.i.i158 = phi ptr [ %i.jk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i160 ], [ %.pr.pre, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i155 ] ; 2 uses
  %i.je = load ptr, ptr %.06.i.i158, align 8, !tbaa !59 ; 3 uses
  %i.jf = load ptr, ptr %14, align 8, !tbaa !62, !nonnull !13, !align !14
  %.not.i.i.i.i.i159 = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i159, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i160, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i157
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !32
  %i.ji = add i32 %i.jh, -1                       ; 2 uses
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !32
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.bn, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i160

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jf, ptr noundef nonnull %i.je)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i160 unwind label %bb.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i160: ; preds = %bb.bn, %bb.bm, %.lr.ph.i.i157
  %i.jk = getelementptr inbounds nuw i8, ptr %.06.i.i158, i64 8 ; 2 uses
  %i.jl = icmp ult ptr %i.jk, %i.jd
  br i1 %i.jl, label %.lr.ph.i.i157, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i161, !llvm.loop !64

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i161: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i160
  %.pre.i162 = load ptr, ptr %i.bk, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %.pre.i162, null
  br i1 %.not.i.i.i163, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit165, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i164

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i164: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i161, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i155
  %i.jm = phi ptr [ %.pre.i162, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i161 ], [ %.pr.pre, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i155 ]
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit165 unwind label %bb.bo

bb.bo:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i164
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #17
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #17
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit165: ; preds = %bb.al, %_ZNK11ast_manager10is_impliesEPK4expr.exit.i, %bb.ak, %bb.aj, %_ZNK11ast_manager10is_impliesEPK4exprRPS0_S4_.exit.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i161, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %._crit_edge, label %bb.aj, !llvm.loop !65

bb.bq:                                            ; preds = %bb.bl
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bh, %bb.bg, %bb.bf, %bb.bq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ii, %bb.bg ], [ %i.js, %bb.bq ], [ %i.ih, %bb.bf ], [ %i.ij, %bb.bh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.dh

_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit:     ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i, %._crit_edge
  %i.jt = phi ptr [ %i.cu, %_ZN11ast_manager7inc_refEP3ast.exit.i.i ], [ null, %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i ], [ %i.cn, %._crit_edge ]
  %i.ju = load ptr, ptr %i.g, align 8, !tbaa !17  ; 3 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit168, label %bb.bs

bb.bs:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !31
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit168

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit168: ; preds = %bb.bs, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit
  %.0.i.i167 = phi i32 [ %i.jx, %bb.bs ], [ 0, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit ]
  %i.jy = invoke noundef ptr @_ZN11ast_manager16mk_hyper_resolveEjPKP3appP4exprRK7svectorISt4pairIjjEjERK6vectorI10ref_vectorIS4_S_ELb1EjE(ptr noundef nonnull align 8 dereferenceable(952) %i.b, i32 noundef %.0.i.i167, ptr noundef %i.ju, ptr noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bt unwind label %bb.ai     ; 3 uses
end_hunk_0
