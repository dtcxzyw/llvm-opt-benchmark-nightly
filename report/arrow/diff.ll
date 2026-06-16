inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4DiffEv:bb.a
_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i, %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i
  %.sroa.2.0.copyload.i.i = phi i32 [ %.sroa.2.0.copyload.i.pre.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i ], [ %i.bk, %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i ]
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.pre.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i ], [ %i.bi, %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i ]
  invoke void @_ZNSt6vectorIbSaIbEE15_M_insert_rangeIPKbEEvSt13_Bit_iteratorT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bg)
          to label %_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit unwind label %bb.l

_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit: ; preds = %_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.bz = load i64, ptr %i.j, align 8, !tbaa !537 ; 2 uses
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !536
  %i.cb = sub nsw i64 %i.bz, %i.ca
  %i.cc = load i64, ptr %i.r, align 8, !tbaa !539
  %i.cd = load i64, ptr %i.k, align 8, !tbaa !538
  %i.ce = sub nsw i64 %i.cc, %i.cd
  %i.cf = icmp eq i64 %i.cb, %i.ce
  br i1 %i.cf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit
  %i.cg = load ptr, ptr %i.am, align 8, !tbaa !558
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !408
  %i.ci = icmp eq i64 %i.ch, %i.bz
  br i1 %i.ci, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.j
  store i64 0, ptr %i.ab, align 8, !tbaa !541
  %.pre70142 = load i64, ptr %i.ac, align 8, !tbaa !555
  br label %._crit_edge

bb.k:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.body

bb.l:                                             ; preds = %_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.body

bb.m:                                             ; preds = %bb.j, %_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit
  %.val1261.pr = load i64, ptr %i.ab, align 8, !tbaa !541
  %.not62 = icmp eq i64 %.val1261.pr, -1
  %.pre70 = load i64, ptr %i.ac, align 8, !tbaa !555 ; 2 uses
  br i1 %.not62, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit
  %i.cm = phi i64 [ %.pre70, %.lr.ph ], [ %i.fj, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit ] ; 3 uses
  %i.cn = add nsw i64 %i.cm, 1                    ; 4 uses
  store i64 %i.cn, ptr %i.ac, align 8, !tbaa !555
  %i.co = add nsw i64 %i.cm, 2
  %i.cp = add nsw i64 %i.cm, 3
  %i.cq = mul nsw i64 %i.cp, %i.co
  %i.cr = sdiv i64 %i.cq, 2                       ; 4 uses
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !559 ; 3 uses
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !558 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 3 uses
  %i.cy = icmp ugt i64 %i.cr, %i.cx
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nuw nsw i64 %i.cr, %i.cx
  invoke void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.cs, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.o
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !555
  br label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i

bb.p:                                             ; preds = %bb.n
  %i.da = icmp ult i64 %i.cr, %i.cx
  br i1 %i.da, label %bb.q, label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, %i.db
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.q
  store ptr %i.db, ptr %i.cl, align 8, !tbaa !559
  br label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i

_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i:          ; preds = %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i, %bb.q, %bb.p, %.noexc
  %i.dc = phi i64 [ %.pre.i, %.noexc ], [ %i.cn, %bb.p ], [ %i.cn, %bb.q ], [ %i.cn, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i ] ; 3 uses
  %i.dd = add nsw i64 %i.dc, 1                    ; 2 uses
  %i.de = add nsw i64 %i.dc, 2
  %i.df = mul nsw i64 %i.de, %i.dd                ; 2 uses
  %i.dg = sdiv i64 %i.df, 2                       ; 4 uses
  %i.dh = load ptr, ptr %i.bh, align 8, !tbaa !542 ; 2 uses
  %i.di = load i32, ptr %i.bj, align 8, !tbaa !543 ; 2 uses
  %i.dj = load ptr, ptr %i.bf, align 8, !tbaa !542 ; 2 uses
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = shl nsw i64 %i.dm, 3
  %i.do = zext i32 %i.di to i64
  %i.dp = add nsw i64 %i.dn, %i.do                ; 2 uses
  %i.dq = icmp ult i64 %i.dg, %i.dp
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i
  %i.dr = sdiv i64 %i.df, 128
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dr
  %i.dt = and i64 %i.dg, -9223372036854775745
  %i.du = icmp ugt i64 %i.dt, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.du, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ds, i64 %storemerge.idx.i.i.i.i.i
  %i.dv = trunc i64 %i.dg to i32
  %i.dw = and i32 %i.dv, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.bh, align 8
  store i32 %i.dw, ptr %i.bj, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i
  %i.dx = sub nuw i64 %i.dg, %i.dp
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr %i.dh, i32 %i.di, i64 noundef %i.dx, i1 noundef zeroext false)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.s
  %.pre87.i = load i64, ptr %i.ac, align 8, !tbaa !555 ; 2 uses
  %.pre89.i = add nsw i64 %.pre87.i, 1
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i

_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i:            ; preds = %.noexc13, %bb.r
  %.pre-phi.i = phi i64 [ %i.dd, %bb.r ], [ %.pre89.i, %.noexc13 ]
  %i.dy = phi i64 [ %i.dc, %bb.r ], [ %.pre87.i, %.noexc13 ] ; 6 uses
  %i.dz = add nsw i64 %i.dy, -1
  %i.ea = mul nsw i64 %i.dz, %i.dy
  %i.eb = sdiv i64 %i.ea, 2                       ; 2 uses
  %i.ec = mul nsw i64 %i.dy, %.pre-phi.i
  %i.ed = sdiv i64 %i.ec, 2                       ; 3 uses
  %i.ee = icmp sgt i64 %i.dy, 0
  br i1 %i.ee, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i
  %.pre88.i = load ptr, ptr %i.am, align 8, !tbaa !558
  br label %bb.t

.preheader.i:                                     ; preds = %.noexc14
  %i.ef = icmp sgt i64 %i.fh, 0
  br i1 %i.ef, label %.lr.ph78.i, label %._crit_edge.i

bb.t:                                             ; preds = %.noexc14, %.lr.ph.i
  %i.eg = phi ptr [ %.pre88.i, %.lr.ph.i ], [ %i.fd, %.noexc14 ]
  %i.eh = phi i64 [ %i.dy, %.lr.ph.i ], [ %i.fh, %.noexc14 ] ; 3 uses
  %.075.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fg, %.noexc14 ] ; 3 uses
  %i.ei = add nsw i64 %i.eh, -1
  %i.ej = add nsw i64 %.075.i, %i.eb              ; 2 uses
  %i.ek = mul nsw i64 %i.ei, %i.eh
  %.neg.i.i = sdiv i64 %i.ek, -2
  %i.el = add i64 %.neg.i.i, %i.ej
  %i.em = shl nsw i64 %i.el, 1
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !408 ; 3 uses
  %i.ep = load i64, ptr %i.k, align 8, !tbaa !538
  %i.eq = load i64, ptr %i.d, align 8, !tbaa !536
  %reass.sub = sub i64 %i.eo, %i.eh
  %i.er = add i64 %reass.sub, 1
  %i.es = add i64 %i.er, %i.ep
  %i.et = sub i64 %i.es, %i.eq
  %i.eu = add i64 %i.et, %i.em
  %i.ev = load i64, ptr %i.r, align 8, !tbaa !408 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.smin.i64(i64 %i.ev, i64 %i.eu)
  %i.ew = load i64, ptr %i.j, align 8, !tbaa !537 ; 2 uses
  %.not.i.i = icmp ne i64 %i.eo, %i.ew
  %i.ex = zext i1 %.not.i.i to i64
  %spec.select.i.i = add nsw i64 %i.eo, %i.ex     ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !548 ; 2 uses
  %i.ey = load ptr, ptr %.val.i.i.i, align 8, !tbaa !446
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef i64 %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i.i, i64 noundef %spec.select.i.i, i64 noundef %i.ew, i64 noundef %.sroa.speculated.i.i, i64 noundef %i.ev)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit, !inline_history !561

.noexc14:                                         ; preds = %bb.t
  %i.fc = add nsw i64 %i.fb, %spec.select.i.i
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !558 ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.fd, i64 %.075.i
  %i.ff = getelementptr [8 x i8], ptr %i.fe, i64 %i.ed
  store i64 %i.fc, ptr %i.ff, align 8, !tbaa !408
  %i.fg = add nuw nsw i64 %.075.i, 1              ; 2 uses
  %i.fh = load i64, ptr %i.ac, align 8, !tbaa !555 ; 5 uses
  %i.fi = icmp slt i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.t, label %.preheader.i, !llvm.loop !562

._crit_edge.i:                                    ; preds = %bb.v, %.preheader.i, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i
  %i.fj = phi i64 [ %i.fh, %.preheader.i ], [ %i.dy, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i ], [ %i.hg, %bb.v ] ; 7 uses
  %i.fk = load i64, ptr %i.j, align 8, !tbaa !537
  %i.fl = load i64, ptr %i.r, align 8, !tbaa !539
  %.not79.i = icmp slt i64 %i.fj, 0
  br i1 %.not79.i, label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %._crit_edge.i
  %i.fm = add nuw nsw i64 %i.fj, 1
  %i.fn = mul nuw nsw i64 %i.fm, %i.fj
  %.neg.i6284.i = lshr i64 %i.fn, 1
  %i.fo = load ptr, ptr %i.am, align 8, !tbaa !558
  %i.fp = load i64, ptr %i.k, align 8, !tbaa !538
  %i.fq = load i64, ptr %i.d, align 8, !tbaa !536
  %i.fr = add i64 %i.fj, %i.fq
  %i.fs = sub i64 %i.fp, %i.fr
  br label %bb.x

.lr.ph78.i:                                       ; preds = %.preheader.i, %bb.v
  %i.ft = phi i64 [ %i.hg, %bb.v ], [ %i.fh, %.preheader.i ] ; 3 uses
  %.04377.i = phi i64 [ %i.he, %bb.v ], [ 0, %.preheader.i ] ; 2 uses
  %.04476.i = phi i64 [ %i.hf, %bb.v ], [ 1, %.preheader.i ] ; 2 uses
  %i.fu = add nsw i64 %.04476.i, %i.ed            ; 5 uses
  %i.fv = load ptr, ptr %i.am, align 8, !tbaa !558 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !408
  %i.fy = load i64, ptr %i.k, align 8, !tbaa !538
  %i.fz = load i64, ptr %i.d, align 8, !tbaa !536
  %i.ga = load i64, ptr %i.r, align 8, !tbaa !408 ; 3 uses
  %i.gb = add nsw i64 %i.ft, -1
  %i.gc = add nsw i64 %.04377.i, %i.eb            ; 2 uses
  %i.gd = mul nsw i64 %i.gb, %i.ft
  %.neg.i53.i = sdiv i64 %i.gd, -2
  %i.ge = add i64 %.neg.i53.i, %i.gc
  %i.gf = shl nsw i64 %i.ge, 1
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gc
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !408 ; 3 uses
  %reass.sub63 = sub i64 %i.gf, %i.ft
  %i.gi = add i64 %reass.sub63, 1
  %i.gj = add i64 %i.gi, %i.fy
  %i.gk = sub i64 %i.gj, %i.fz
  %i.gl = add i64 %i.gk, %i.gh                    ; 2 uses
  %.sroa.speculated.i54.i = call i64 @llvm.smin.i64(i64 %i.ga, i64 %i.gl)
  %.not.i57.i = icmp sgt i64 %i.ga, %i.gl
  %i.gm = zext i1 %.not.i57.i to i64
  %spec.select.i58.i = add nsw i64 %.sroa.speculated.i54.i, %i.gm
  %.val.i.i59.i = load ptr, ptr %i.w, align 8, !tbaa !548 ; 2 uses
  %i.gn = load i64, ptr %i.j, align 8, !tbaa !537
  %i.go = load ptr, ptr %.val.i.i59.i, align 8, !tbaa !446
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = invoke noundef i64 %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i59.i, i64 noundef %i.gh, i64 noundef %i.gn, i64 noundef %spec.select.i58.i, i64 noundef %i.ga)
          to label %.noexc15 unwind label %.loopexit, !inline_history !561

.noexc15:                                         ; preds = %.lr.ph78.i
  %i.gs = add nsw i64 %i.gr, %i.gh                ; 2 uses
  %.not47.i = icmp slt i64 %i.gs, %i.fx
  br i1 %.not47.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc15
  %i.gt = load ptr, ptr %i.bf, align 8, !tbaa !542
  %i.gu = sdiv i64 %i.fu, 64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = and i64 %i.fu, -9223372036854775745
  %i.gx = icmp ugt i64 %i.gw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.gx, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.gv, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.gy = and i64 %i.fu, 63
  %i.gz = shl nuw i64 1, %i.gy
  %i.ha = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !408
  %i.hb = or i64 %i.ha, %i.gz
  store i64 %i.hb, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !408
  %i.hc = load ptr, ptr %i.am, align 8, !tbaa !558
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.fu
  store i64 %i.gs, ptr %i.hd, align 8, !tbaa !408
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc15
  %i.he = add nuw nsw i64 %.04377.i, 1            ; 2 uses
  %i.hf = add nuw nsw i64 %.04476.i, 1
  %i.hg = load i64, ptr %i.ac, align 8, !tbaa !555 ; 3 uses
  %i.hh = icmp slt i64 %i.he, %i.hg
  br i1 %i.hh, label %.lr.ph78.i, label %._crit_edge.i, !llvm.loop !563

bb.w:                                             ; preds = %bb.x
  %i.hi = add nuw nsw i64 %.04280.i, 1            ; 2 uses
  %.not.i13 = icmp sgt i64 %i.hi, %i.fj
  br i1 %.not.i13, label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split, label %bb.x, !llvm.loop !564

bb.x:                                             ; preds = %bb.w, %.lr.ph82.i
  %.04280.i = phi i64 [ 0, %.lr.ph82.i ], [ %i.hi, %bb.w ] ; 2 uses
  %i.hj = add nsw i64 %.04280.i, %i.ed            ; 4 uses
  %i.hk = sub i64 %i.hj, %.neg.i6284.i
  %i.hl = shl nsw i64 %i.hk, 1
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.hj
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !408 ; 2 uses
  %invariant.op.i = add i64 %i.fs, %i.hn
  %.reass.i = add i64 %invariant.op.i, %i.hl
  %i.ho = icmp eq i64 %i.hn, %i.fk
  %i.hp = icmp sle i64 %i.fl, %.reass.i
  %i.hq = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %i.hq, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  store i64 %i.hj, ptr %i.ab, align 8, !tbaa !541
  br label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit

_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split: ; preds = %bb.w, %._crit_edge.i
  %.val12.pr = load i64, ptr %i.ab, align 8, !tbaa !541
  br label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit

_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit: ; preds = %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split, %bb.y
  %.val12 = phi i64 [ %.val12.pr, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split ], [ %i.hj, %bb.y ]
  %.not = icmp eq i64 %.val12, -1
  br i1 %.not, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit, %.thread, %bb.m
  %i.hr = phi i64 [ %.pre70142, %.thread ], [ %.pre70, %bb.m ], [ %i.fj, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit ]
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !517 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !565
  %i.hu = add nsw i64 %i.hr, 1                    ; 3 uses
  store i64 %i.hu, ptr %i.a, align 8, !tbaa !408, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !565
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.788") align 8 %3, i64 noundef %i.hu, ptr noundef %i.ht)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %._crit_edge
  %i.hv = load ptr, ptr %3, align 8, !tbaa !58, !noalias !565
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.aa, label %bb.z, !prof !61

bb.z:                                             ; preds = %.noexc27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11StructArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %bb.ez

bb.aa:                                            ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ia = load <2 x ptr>, ptr %i.hx, align 8, !tbaa !237, !noalias !574
  store ptr null, ptr %i.hz, align 8, !tbaa !378, !noalias !574
  store <2 x ptr> %i.ia, ptr %4, align 16, !tbaa !237, !alias.scope !575, !noalias !565
  store ptr null, ptr %i.hx, align 8, !tbaa !576, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !565
  %i.ib = shl i64 %i.hu, 3
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.303") align 8 %5, i64 noundef %i.ib, ptr noundef %i.ht)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ic = load ptr, ptr %5, align 8, !tbaa !58, !noalias !565
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.ae, label %bb.ac, !prof !61

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11StructArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %bb.ep

bb.ad:                                            ; preds = %bb.aa
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !585, !noalias !586 ; 2 uses
  store i64 %i.ig, ptr %6, align 8, !tbaa !585, !alias.scope !587, !noalias !565
  store ptr null, ptr %i.if, align 8, !tbaa !585, !noalias !586
  %.cast.i = inttoptr i64 %i.ig to ptr
  %i.ih = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8            ; 2 uses
  %i.ij = load i64, ptr %i.ab, align 8, !tbaa !541, !noalias !565 ; 3 uses
  %i.ik = load i64, ptr %i.ac, align 8, !tbaa !555, !noalias !565 ; 5 uses
  %i.il = load ptr, ptr %i.am, align 8, !tbaa !558, !noalias !565
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ij
  %i.in = load i64, ptr %i.im, align 8, !tbaa !408 ; 3 uses
  %i.io = icmp sgt i64 %i.ik, 0
  br i1 %i.io, label %.lr.ph.i22, label %._crit_edge.i16

.lr.ph.i22:                                       ; preds = %bb.ae
  %i.ip = load i64, ptr %i.r, align 8, !tbaa !408, !noalias !565
  %i.iq = load i64, ptr %i.k, align 8, !tbaa !538, !noalias !565
  %i.ir = load i64, ptr %i.d, align 8, !tbaa !536, !noalias !565
  %i.is = add nuw nsw i64 %i.ik, 1
  %i.it = mul nuw nsw i64 %i.is, %i.ik
  %.neg.i266.i = lshr i64 %i.it, 1
  %i.iu = sub i64 %i.ij, %.neg.i266.i
  %i.iv = shl nsw i64 %i.iu, 1
  %.neg42 = sub i64 %i.in, %i.ik
  %i.iw = add i64 %.neg42, %i.iv
  %i.ix = add i64 %i.iw, %i.iq
  %i.iy = sub i64 %i.ix, %i.ir
  %.sroa.speculated.i.i23 = call i64 @llvm.smin.i64(i64 %i.ip, i64 %i.iy)
  br label %bb.af

._crit_edge.i16:                                  ; preds = %bb.af, %bb.ae
  %.sroa.023.0.lcssa.i = phi i64 [ %i.in, %bb.ae ], [ %i.kw, %bb.af ]
  %i.iz = load ptr, ptr %4, align 16, !tbaa !576, !noalias !565
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !70
  %i.jd = and i8 %i.jc, -2
  store i8 %i.jd, ptr %i.jb, align 1, !tbaa !70
  %i.je = load i64, ptr %i.d, align 8, !tbaa !536, !noalias !565
  %i.jf = sub nsw i64 %.sroa.023.0.lcssa.i, %i.je
  store i64 %i.jf, ptr %i.ii, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !591
  store ptr null, ptr %9, align 16, !tbaa !481, !alias.scope !588, !noalias !565
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRlSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ag unwind label %.thread.i

bb.af:                                            ; preds = %bb.af, %.lr.ph.i22
  %.067217.i = phi i64 [ %i.ij, %.lr.ph.i22 ], [ %i.ks, %bb.af ] ; 3 uses
  %.sroa.speculated.i.pn216.i = phi i64 [ %.sroa.speculated.i.i23, %.lr.ph.i22 ], [ %.sroa.speculated.i90.i, %bb.af ]
  %.sroa.023.0215.i = phi i64 [ %i.in, %.lr.ph.i22 ], [ %i.kw, %bb.af ] ; 2 uses
  %.069214.i = phi i64 [ %i.ik, %.lr.ph.i22 ], [ %i.kn, %bb.af ] ; 7 uses
  %i.jh = load ptr, ptr %i.bf, align 8, !tbaa !542, !noalias !565
  %i.ji = sdiv i64 %.067217.i, 64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = and i64 %.067217.i, -9223372036854775745
  %i.jl = icmp ugt i64 %i.jk, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i24 = select i1 %i.jl, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i25 = getelementptr inbounds i8, ptr %i.jj, i64 %storemerge.idx.i.i.i.i.i.i24
  %i.jm = and i64 %.067217.i, 63
  %i.jn = shl nuw i64 1, %i.jm
  %i.jo = load i64, ptr %storemerge.i.i.i.i.i.i25, align 8, !tbaa !408
  %i.jp = and i64 %i.jo, %i.jn
  %i.jq = icmp ne i64 %i.jp, 0                    ; 3 uses
  %i.jr = load ptr, ptr %4, align 16, !tbaa !576, !noalias !565 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 9
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !592, !range !86, !noundef !87
  %i.ju = trunc nuw i8 %i.jt to i1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jw = load i8, ptr %i.jv, align 8, !range !86
  %i.jx = trunc nuw i8 %i.jw to i1
  %i.jy = select i1 %i.ju, i1 %i.jx, i1 false, !prof !61
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = select i1 %i.jy, ptr %i.ka, ptr null, !prof !61
  %.neg.i88.i = sext i1 %i.jq to i8
  %i.kc = lshr i64 %.069214.i, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kc ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !70  ; 2 uses
  %i.kf = xor i8 %i.ke, %.neg.i88.i
  %i.kg = and i64 %.069214.i, 7
  %i.kh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !70, !noalias !565
  %i.kj = and i8 %i.kf, %i.ki
  %i.kk = xor i8 %i.kj, %i.ke
  store i8 %i.kk, ptr %i.kd, align 1, !tbaa !70
  %i.kl = load i64, ptr %i.d, align 8, !tbaa !536, !noalias !565 ; 2 uses
  %i.km = load i64, ptr %i.k, align 8, !tbaa !538, !noalias !565 ; 2 uses
  %.068.v.neg.i = select i1 %i.jq, i64 -1, i64 1
  %i.kn = add nsw i64 %.069214.i, -1              ; 3 uses
  %.neg.neg.i = sub i64 %.sroa.speculated.i.pn216.i, %.sroa.023.0215.i
  %.neg203.i = add i64 %.neg.neg.i, %i.kn
  %.neg204.i = add i64 %.neg203.i, %.068.v.neg.i
  %.068.neg.i = add i64 %.neg204.i, %i.kl
  %i.ko = sub i64 %.068.neg.i, %i.km
  %i.kp = sdiv i64 %i.ko, 2                       ; 2 uses
  %i.kq = mul nsw i64 %i.kn, %.069214.i
  %i.kr = lshr i64 %i.kq, 1
  %i.ks = add nsw i64 %i.kp, %i.kr                ; 2 uses
  %i.kt = shl nsw i64 %i.kp, 1
  %i.ku = load ptr, ptr %i.am, align 8, !tbaa !558, !noalias !565
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.ks
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !408 ; 4 uses
  %i.kx = add i64 %.069214.i, %i.kl
  %reass.sub64 = sub i64 %i.km, %i.kx
  %i.ky = add i64 %reass.sub64, 1
  %i.kz = add i64 %i.ky, %i.kw
  %i.la = add i64 %i.kz, %i.kt
  %i.lb = load i64, ptr %i.r, align 8, !tbaa !408, !noalias !565
end_hunk_0
