inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@HUF_readStats:bb.a
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !39 ; 3 uses
  %i.cv = icmp eq i16 %i.cu, -1
  br i1 %i.cv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = sext i16 %i.cu to i32
  %.not78.i.i.1 = icmp sgt i32 %i.cg, %i.cw
  %spec.select.i.i.1 = select i1 %.not78.i.i.1, i16 %.269.i.i, i16 0
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cx = trunc i64 %indvars.iv.next.i.i to i8
  %i.cy = add i32 %.171.i.i, -1
  %i.cz = zext i32 %.171.i.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cx, ptr %i.db, align 2, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.1 = phi i16 [ 1, %bb.r ], [ %i.cu, %bb.q ]
  %.171.i.i.1 = phi i32 [ %i.cy, %bb.r ], [ %.171.i.i, %bb.q ] ; 3 uses
  %.269.i.i.1 = phi i16 [ %.269.i.i, %bb.r ], [ %spec.select.i.i.1, %bb.q ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i16 %.sink.i.i.1, ptr %i.dc, align 2, !tbaa !39
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.i.i.preheader.unr-lcssa, label %bb.m, !llvm.loop !40

.preheader79.i.i.preheader.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.i.i.preheader.unr-lcssa, %bb.l
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06782.i.i.epil.init = phi i16 [ 1, %bb.l ], [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 2 uses
  %.07081.i.i.epil.init = phi i32 [ %i.bz, %bb.l ], [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i32 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !39 ; 3 uses
  %i.df = icmp eq i16 %i.de, -1
  br i1 %i.df, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.dg = sext i16 %i.de to i32
  %.not78.i.i.epil = icmp sgt i32 %i.cg, %i.dg
  %spec.select.i.i.epil = select i1 %.not78.i.i.epil, i16 %.06782.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader
  %i.dh = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.di = add i32 %.07081.i.i.epil.init, -1
  %i.dj = zext i32 %.07081.i.i.epil.init to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  store i8 %i.dh, ptr %i.dl, align 2, !tbaa !35
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.u, %bb.t
  %.sink.i.i.epil = phi i16 [ 1, %bb.u ], [ %i.de, %bb.t ]
  %.171.i.i.epil = phi i32 [ %i.di, %bb.u ], [ %.07081.i.i.epil.init, %bb.t ]
  %.269.i.i.epil = phi i16 [ %.06782.i.i.epil.init, %bb.u ], [ %spec.select.i.i.epil, %bb.t ]
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i.i.epil, ptr %i.dm, align 2, !tbaa !39
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.171.i.i.lcssa = phi i32 [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.171.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.269.i.i.lcssa = phi i16 [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.269.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %.06287.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv90.i.i
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !39 ; 5 uses
  %i.dp = icmp sgt i16 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader79.i.i
  %i.dq = trunc i64 %indvars.iv90.i.i to i8       ; 3 uses
  %i.dr = icmp eq i16 %i.do, 1
  br i1 %i.dr, label %.epil.preheader168, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %i.ds = and i16 %i.do, 32766
  %unroll_iter173 = zext nneg i16 %i.ds to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.new
  %.185.i.i = phi i32 [ %.06287.i.i, %.lr.ph.i.i.new ], [ %.2.i.i.1, %bb.z ] ; 2 uses
  %niter174 = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter174.next.1, %bb.z ]
  %i.dt = zext nneg i32 %.185.i.i to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.dq, ptr %i.dv, align 2, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.1.pn.i.i = phi i32 [ %.185.i.i, %bb.v ], [ %.2.i.i, %bb.w ]
  %.pn.i.i = add nuw i32 %i.cd, %.1.pn.i.i
  %.2.i.i = and i32 %.pn.i.i, %i.bz               ; 4 uses
  %i.dw = icmp ugt i32 %.2.i.i, %.171.i.i.lcssa
  br i1 %i.dw, label %bb.w, label %bb.x, !llvm.loop !41

bb.x:                                             ; preds = %bb.w
  %i.dx = zext nneg i32 %.2.i.i to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i8 %i.dq, ptr %i.dz, align 2, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.1.pn.i.i.1 = phi i32 [ %.2.i.i, %bb.x ], [ %.2.i.i.1, %bb.y ]
  %.pn.i.i.1 = add nuw i32 %i.cd, %.1.pn.i.i.1
  %.2.i.i.1 = and i32 %.pn.i.i.1, %i.bz           ; 5 uses
  %i.ea = icmp ugt i32 %.2.i.i.1, %.171.i.i.lcssa
  br i1 %i.ea, label %bb.y, label %bb.z, !llvm.loop !41

bb.z:                                             ; preds = %bb.y
  %niter174.next.1 = add i32 %niter174, 2         ; 2 uses
  %niter174.ncmp.1 = icmp eq i32 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.v, !llvm.loop !42

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.z
  %i.eb = and i16 %i.do, 1
  %lcmp.mod170.not = icmp eq i16 %i.eb, 0
  br i1 %lcmp.mod170.not, label %._crit_edge.i.i, label %.epil.preheader168

.epil.preheader168:                               ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.185.i.i.epil.init = phi i32 [ %.06287.i.i, %.lr.ph.i.i ], [ %.2.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod172 = trunc i16 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.ec = zext nneg i32 %.185.i.i.epil.init to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i8 %i.dq, ptr %i.ee, align 2, !tbaa !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader168
  %.1.pn.i.i.epil = phi i32 [ %.185.i.i.epil.init, %.epil.preheader168 ], [ %.2.i.i.epil, %bb.aa ]
  %.pn.i.i.epil = add nuw i32 %i.cd, %.1.pn.i.i.epil
  %.2.i.i.epil = and i32 %.pn.i.i.epil, %i.bz     ; 3 uses
  %i.ef = icmp ugt i32 %.2.i.i.epil, %.171.i.i.lcssa
  br i1 %i.ef, label %bb.aa, label %._crit_edge.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.aa, %.preheader79.i.i
  %.1.lcssa.i.i = phi i32 [ %.06287.i.i, %.preheader79.i.i ], [ %.2.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.2.i.i.epil, %bb.aa ] ; 2 uses
  %indvars.iv.next91.i.i = add nuw nsw i64 %indvars.iv90.i.i, 1 ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %indvars.iv.next91.i.i, %wide.trip.count.i.i
  br i1 %exitcond94.not.i.i, label %bb.ab, label %.preheader79.i.i, !llvm.loop !43

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.eg = trunc nuw nsw i32 %i.bw to i16
  %.not77.i.i = icmp eq i32 %.1.lcssa.i.i, 0
  br i1 %.not77.i.i, label %.preheader.preheader.i.i, label %FSE_buildDTable.exit.thread.i

.preheader.preheader.i.i:                         ; preds = %bb.ab
  %wide.trip.count98.i.i = zext nneg i32 %i.by to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %indvars.iv95.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next96.i.i, %.preheader.i.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv95.i.i ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !35
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !39 ; 2 uses
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 2, !tbaa !39
  %i.eo = zext i16 %i.em to i32                   ; 2 uses
  %i.ep = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eo, i1 true)
  %i.eq = xor i32 %i.ep, 31
  %i.er = sub nsw i32 %i.bw, %i.eq                ; 2 uses
  %i.es = trunc nsw i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  store i8 %i.es, ptr %i.et, align 1, !tbaa !36
  %i.eu = and i32 %i.er, 255
  %i.ev = shl i32 %i.eo, %i.eu
  %i.ew = sub i32 %i.ev, %i.by
  %i.ex = trunc i32 %i.ew to i16
  store i16 %i.ex, ptr %i.eh, align 4, !tbaa !33
  %indvars.iv.next96.i.i = add nuw nsw i64 %indvars.iv95.i.i, 1 ; 2 uses
  %exitcond99.not.i.i = icmp eq i64 %indvars.iv.next96.i.i, %wide.trip.count98.i.i
  br i1 %exitcond99.not.i.i, label %bb.ac, label %.preheader.i.i, !llvm.loop !44

FSE_buildDTable.exit.thread.i:                    ; preds = %bb.ab, %bb.k, %bb.j
  %.0.i.ph.i = phi i64 [ -1, %bb.ab ], [ -44, %bb.k ], [ -46, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %FSE_decompress.exit.thread

bb.ac:                                            ; preds = %.preheader.i.i
  store i16 %i.eg, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.269.i.i.lcssa, ptr %.sroa.4.0..sroa_idx.i.i, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ey = sub nsw i64 %i.g, %i.bt                 ; 13 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt ; 44 uses
  %.not.i.i = icmp eq i16 %.269.i.i.lcssa, 0
  %6 = icmp eq i64 %i.ey, 0                       ; 2 uses
  br i1 %.not.i.i, label %9, label %7

7:                                                ; preds = %bb.ac
  br i1 %6, label %FSE_decompress.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %7
  %8 = icmp ugt i64 %i.ey, 7
  br i1 %8, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.g
  %i.fa = getelementptr i8, ptr %.ptr.i.i, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !10  ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !10
  %i.fe = zext i8 %i.fd to i64                    ; 7 uses
  switch i64 %i.ey, label %bb.am [
    i64 7, label %bb.ag
    i64 6, label %bb.ah
    i64 5, label %bb.ai
    i64 4, label %bb.aj
    i64 3, label %bb.ak
    i64 2, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 6
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !10
  %i.fh = zext i8 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 48
  %i.fj = or disjoint i64 %i.fi, %i.fe
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fk = phi i64 [ %i.fj, %bb.ag ], [ %i.fe, %bb.af ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 5
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !10
  %i.fn = zext i8 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 40
  %i.fp = add nuw nsw i64 %i.fo, %i.fk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.fq = phi i64 [ %i.fp, %bb.ah ], [ %i.fe, %bb.af ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !10
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 32
  %i.fv = add nuw nsw i64 %i.fu, %i.fq
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.fw = phi i64 [ %i.fv, %bb.ai ], [ %i.fe, %bb.af ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !10
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 24
  %i.gb = add nuw nsw i64 %i.ga, %i.fw
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %i.gc = phi i64 [ %i.gb, %bb.aj ], [ %i.fe, %bb.af ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 16
  %i.gh = add nuw nsw i64 %i.gg, %i.gc
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.gi = phi i64 [ %i.gh, %bb.ak ], [ %i.fe, %bb.af ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !10
  %i.gl = zext i8 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 8
  %i.gn = add nuw nsw i64 %i.gm, %i.gi
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.sroa.0269.2.i.i = phi i64 [ %i.fe, %bb.af ], [ %i.gn, %bb.al ]
  %i.go = getelementptr i8, ptr %i.br, i64 %i.g
  %i.gp = getelementptr i8, ptr %i.go, i64 -1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !10  ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.thread319.i.i

BIT_initDStream.exit.thread319.i.i:               ; preds = %bb.am
  %i.gs = zext i8 %i.gq to i32
  %i.gt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gs, i1 true)
  %i.gu = trunc nuw nsw i64 %i.ey to i32
  %i.gv = shl nuw nsw i32 %i.gu, 3
  %reass.sub = sub nsw i32 %i.gt, %i.gv
  %i.gw = add nsw i32 %reass.sub, 41
  br label %bb.an

BIT_initDStream.exit.i.i:                         ; preds = %bb.ae
  %.add.i.i = add nsw i64 %i.ey, -8               ; 2 uses
  %.ptr377.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.add.i.i
  %.val.i.i.i = load i64, ptr %.ptr377.i.i, align 1
  %i.gx = zext i8 %i.fb to i32
  %i.gy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gx, i1 true)
  %i.gz = xor i32 %i.gy, 31
  %i.ha = sub nuw nsw i32 8, %i.gz
  %i.hb = icmp ult i64 %i.ey, -119
  br i1 %i.hb, label %bb.an, label %FSE_decompress.exit.thread

bb.an:                                            ; preds = %BIT_initDStream.exit.i.i, %BIT_initDStream.exit.thread319.i.i
  %.sroa.0269.3329.i.i = phi i64 [ %.sroa.0269.2.i.i, %BIT_initDStream.exit.thread319.i.i ], [ %.val.i.i.i, %BIT_initDStream.exit.i.i ] ; 3 uses
  %.sroa.27270.3328.i.i = phi i32 [ %i.gw, %BIT_initDStream.exit.thread319.i.i ], [ %i.ha, %BIT_initDStream.exit.i.i ] ; 2 uses
  %.sroa.61277.3327.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit.thread319.i.i ], [ %.add.i.i, %BIT_initDStream.exit.i.i ] ; 5 uses
  %i.hc = and i32 %.sroa.27270.3328.i.i, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl i64 %.sroa.0269.3329.i.i, %i.hd
  %i.hf = lshr i64 %i.he, 1
  %i.hg = xor i32 %i.bw, 63
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = lshr i64 %i.hf, %i.hh                   ; 3 uses
  %i.hj = add nuw nsw i32 %.sroa.27270.3328.i.i, %i.bw ; 7 uses
  %i.hk = icmp samesign ugt i32 %i.hj, 64
  br i1 %i.hk, label %FSE_initDState.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i = icmp slt i64 %.sroa.61277.3327.idx.i.i, 8
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = lshr i32 %i.hj, 3
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = and i32 %i.hj, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ho = icmp eq i64 %.sroa.61277.3327.idx.i.i, 0
  br i1 %i.ho, label %FSE_initDState.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hp = lshr i32 %i.hj, 3
  %i.hq = zext nneg i32 %i.hp to i64
  %.024.i.i378.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.3327.idx.i.i, i64 %i.hq) ; 2 uses
  %.024.i.i.i.i = trunc nsw i64 %.024.i.i378.i.i to i32
  %i.hr = and i64 %.024.i.i378.i.i, 4294967295
  %i.hs = shl nsw i32 %.024.i.i.i.i, 3
  %i.ht = sub nsw i32 %i.hj, %i.hs
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i:          ; preds = %bb.ar, %bb.ap
  %.pn379.i.i = phi i64 [ %i.hr, %bb.ar ], [ %i.hm, %bb.ap ]
  %.sroa.27270.4.i.i = phi i32 [ %i.ht, %bb.ar ], [ %i.hn, %bb.ap ]
  %.sroa.61277.3327.ptr.add.i.i = sub nsw i64 %.sroa.61277.3327.idx.i.i, %.pn379.i.i ; 2 uses
  %.sroa.61277.4.ptr.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61277.3327.ptr.add.i.i
  %.val30.i.sink.i.i.i = load i64, ptr %.sroa.61277.4.ptr.i.i, align 1
  br label %FSE_initDState.exit.i.i

FSE_initDState.exit.i.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i, %bb.aq, %bb.an
  %.sroa.61277.5.idx.i.i = phi i64 [ %.sroa.61277.3327.idx.i.i, %bb.an ], [ 0, %bb.aq ], [ %.sroa.61277.3327.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 6 uses
  %.sroa.27270.5.i.i = phi i32 [ %i.hj, %bb.an ], [ %i.hj, %bb.aq ], [ %.sroa.27270.4.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.0269.4.i.i = phi i64 [ %.sroa.0269.3329.i.i, %bb.an ], [ %.sroa.0269.3329.i.i, %bb.aq ], [ %.val30.i.sink.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %i.hu = and i32 %.sroa.27270.5.i.i, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl i64 %.sroa.0269.4.i.i, %i.hv
  %i.hx = lshr i64 %i.hw, 1
  %i.hy = lshr i64 %i.hx, %i.hh                   ; 3 uses
  %i.hz = add nsw i32 %.sroa.27270.5.i.i, %i.bw   ; 7 uses
  %i.ia = icmp ugt i32 %i.hz, 64
  br i1 %i.ia, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %bb.as

bb.as:                                            ; preds = %FSE_initDState.exit.i.i
  %.not.i.i38.i.i = icmp slt i64 %.sroa.61277.5.idx.i.i, 8
  br i1 %.not.i.i38.i.i, label %bb.at, label %FSE_initDState.exit43.i.thread235.i

FSE_initDState.exit43.i.thread235.i:              ; preds = %bb.as
  %i.ib = lshr i32 %i.hz, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = and i32 %i.hz, 7
  %.sroa.61277.5.ptr.add.i238.i = sub nuw nsw i64 %.sroa.61277.5.idx.i.i, %i.ic ; 2 uses
  %.sroa.61277.6.ptr.i239.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.61277.5.ptr.add.i238.i
  %.val30.i.sink.i41.i240.i = load i64, ptr %.sroa.61277.6.ptr.i239.i, align 1
  br label %.lr.ph.i.preheader

bb.at:                                            ; preds = %bb.as
  %i.ie = icmp eq i64 %.sroa.61277.5.idx.i.i, 0
  br i1 %i.ie, label %.lr.ph.i.preheader, label %FSE_initDState.exit43.i.i

FSE_initDState.exit43.i.i:                        ; preds = %bb.at
  %i.if = lshr i32 %i.hz, 3
  %i.ig = zext nneg i32 %i.if to i64
  %.024.i.i42380.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.5.idx.i.i, i64 %i.ig) ; 2 uses
  %.024.i.i42.i.i = trunc i64 %.024.i.i42380.i.i to i32
  %i.ih = and i64 %.024.i.i42380.i.i, 4294967295
  %i.ii = shl i32 %.024.i.i42.i.i, 3
  %i.ij = sub i32 %i.hz, %i.ii                    ; 3 uses
  %.sroa.61277.5.ptr.add.i.i = sub nsw i64 %.sroa.61277.5.idx.i.i, %i.ih ; 3 uses
  %.sroa.61277.6.ptr.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61277.5.ptr.add.i.i
  %.val30.i.sink.i41.i.i = load i64, ptr %.sroa.61277.6.ptr.i.i, align 1
  %i.ik = icmp ugt i32 %i.ij, 64
  br i1 %i.ik, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %FSE_initDState.exit43.i.i, %bb.at, %FSE_initDState.exit43.i.thread235.i
  %.sroa.0269.0.i99.i.ph = phi i64 [ %.val30.i.sink.i41.i240.i, %FSE_initDState.exit43.i.thread235.i ], [ %.sroa.0269.4.i.i, %bb.at ], [ %.val30.i.sink.i41.i.i, %FSE_initDState.exit43.i.i ]
  %.sroa.27270.0.i98.i.ph = phi i32 [ %i.id, %FSE_initDState.exit43.i.thread235.i ], [ %i.hz, %bb.at ], [ %i.ij, %FSE_initDState.exit43.i.i ]
  %.sroa.61277.0.idx.i97.i.ph = phi i64 [ %.sroa.61277.5.ptr.add.i238.i, %FSE_initDState.exit43.i.thread235.i ], [ 0, %bb.at ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ax
  %.036.idx.i13.i100.i = phi i64 [ %.036.add.i28.i.i, %bb.ax ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
end_hunk_0
begin_hunk_1_@HUF_readStats:bb.a
  %i.kk = getelementptr [4 x i8], ptr %i.kj, i64 %i.jt ; 3 uses
  %.sroa.0.0.copyload.i65.i.i = load i16, ptr %i.kk, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %.sroa.4.0.copyload.i67.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i66.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i68.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 3
  %.sroa.5.0.copyload.i69.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i68.i.i, align 1, !tbaa !10
  %i.kl = zext i8 %.sroa.5.0.copyload.i69.i.i to i32 ; 2 uses
  %i.km = and i32 %i.kf, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl i64 %.sroa.0269.6.i.i, %i.kn
  %i.kp = sub nsw i32 0, %i.kl
  %i.kq = and i32 %i.kp, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = lshr i64 %i.ko, %i.kr
  %i.kt = add i32 %i.kf, %i.kl                    ; 3 uses
  %i.ku = zext i16 %.sroa.0.0.copyload.i65.i.i to i64
  %i.kv = add i64 %i.ks, %i.ku                    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 3
  store i8 %.sroa.4.0.copyload.i67.i.i, ptr %i.kw, align 1, !tbaa !10
  %.036.add.i28.i.i = add nuw nsw i64 %.036.idx.i13.i100.i, 4 ; 2 uses
  %i.kx = icmp ugt i32 %i.kt, 64
  br i1 %i.kx, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i, !llvm.loop !99

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader, %BIT_endOfDStream.exit97.thread.i.i
  %.1.idx.i15472.i.i = phi i64 [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.036.idx.i13.i100.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0269.1471.i.i = phi i64 [ %.sroa.0269.8.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0269.1471.i.i.ph, %.lr.ph.i24.i.preheader ]
  %.sroa.27270.1470.i.i = phi i32 [ %i.mq, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.27270.1470.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.61277.1.idx469.i.i = phi i64 [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.1.idx469.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0256.1468.i.i = phi i64 [ %i.ms, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0256.0.i96.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0262.1467.i.i = phi i64 [ %i.lv, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0262.0.i95.i, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.1.ptr.ptr.i16473.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i15472.i.i
  %.not.i72.i.i = icmp slt i64 %.sroa.61277.1.idx469.i.i, 8
  br i1 %.not.i72.i.i, label %bb.ay, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i24.i
  %i.ky = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.kz = zext nneg i32 %i.ky to i64
  %.sroa.61277.1.add387.i.i = sub nuw nsw i64 %.sroa.61277.1.idx469.i.i, %i.kz ; 3 uses
  %.ptr391.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.61277.1.add387.i.i
  %i.la = and i32 %.sroa.27270.1470.i.i, 7
  %.val30.i73.i.i = load i64, ptr %.ptr391.i.i, align 1
  %i.lb = icmp eq i64 %.sroa.61277.1.add387.i.i, 0
  br label %BIT_endOfDStream.exit.thread.i.i

bb.ay:                                            ; preds = %.lr.ph.i24.i
  %i.lc = icmp eq i64 %.sroa.61277.1.idx469.i.i, 0
  br i1 %i.lc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ld = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.le = zext nneg i32 %i.ld to i64
  %.024.i75392.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.1.idx469.i.i, i64 %i.le) ; 2 uses
  %.024.i75.i.i = trunc i64 %.024.i75392.i.i to i32
  %i.lf = and i64 %.024.i75392.i.i, 4294967295
  %.sroa.61277.1.add.i.i = sub nsw i64 %.sroa.61277.1.idx469.i.i, %i.lf ; 2 uses
  %.ptr390.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61277.1.add.i.i
  %i.lg = shl i32 %.024.i75.i.i, 3
  %i.lh = sub i32 %.sroa.27270.1470.i.i, %i.lg
  %.val.i77.i.i = load i64, ptr %.ptr390.i.i, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.61277.9.ph.idx.i.i = phi i64 [ 0, %bb.ay ], [ %.sroa.61277.1.add.i.i, %bb.az ] ; 2 uses
  %.sroa.27270.9.ph.i.i = phi i32 [ %.sroa.27270.1470.i.i, %bb.ay ], [ %i.lh, %bb.az ] ; 2 uses
  %.sroa.0269.7.ph.i.i = phi i64 [ %.sroa.0269.1471.i.i, %bb.ay ], [ %.val.i77.i.i, %bb.az ]
  %i.li = icmp eq i64 %.sroa.61277.9.ph.idx.i.i, 0 ; 2 uses
  %.not393.i.i = icmp eq i32 %.sroa.27270.9.ph.i.i, 64
  %or.cond.i.i = and i1 %i.li, %.not393.i.i
  br i1 %or.cond.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit.thread.i.i

BIT_endOfDStream.exit.thread.i.i:                 ; preds = %bb.ba, %.thread.i.i
  %i.lj = phi i1 [ %i.lb, %.thread.i.i ], [ %i.li, %bb.ba ]
  %.sroa.0269.7.ph629.i.i = phi i64 [ %.val30.i73.i.i, %.thread.i.i ], [ %.sroa.0269.7.ph.i.i, %bb.ba ] ; 2 uses
  %.sroa.27270.9.ph628.i.i = phi i32 [ %i.la, %.thread.i.i ], [ %.sroa.27270.9.ph.i.i, %bb.ba ] ; 2 uses
  %.sroa.61277.9.ph.idx627.i.i = phi i64 [ %.sroa.61277.1.add387.i.i, %.thread.i.i ], [ %.sroa.61277.9.ph.idx.i.i, %bb.ba ] ; 5 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.0262.1467.i.i ; 3 uses
  %.sroa.0.0.copyload.i81.i.i = load i16, ptr %i.lk, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %.sroa.4.0.copyload.i83.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i84.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 3
  %.sroa.5.0.copyload.i85.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i.i, align 1, !tbaa !10
  %i.ll = zext i8 %.sroa.5.0.copyload.i85.i.i to i32 ; 2 uses
  %i.lm = and i32 %.sroa.27270.9.ph628.i.i, 63
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = shl i64 %.sroa.0269.7.ph629.i.i, %i.ln
  %i.lp = sub nsw i32 0, %i.ll
  %i.lq = and i32 %i.lp, 63
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = lshr i64 %i.lo, %i.lr
  %i.lt = add i32 %.sroa.27270.9.ph628.i.i, %i.ll ; 7 uses
  %i.lu = zext i16 %.sroa.0.0.copyload.i81.i.i to i64
  %i.lv = add i64 %i.ls, %i.lu                    ; 5 uses
  %.add51.i23.i.i = or disjoint i64 %.1.idx.i15472.i.i, 1 ; 3 uses
  %.ptr.ptr.i24.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i23.i.i
  store i8 %.sroa.4.0.copyload.i83.i.i, ptr %.1.ptr.ptr.i16473.i.i, align 1, !tbaa !10
  %i.lw = icmp ugt i32 %i.lt, 64
  br i1 %i.lw, label %BIT_reloadDStream.exit80.split.loop.exit444.i.i, label %bb.bb

bb.bb:                                            ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.not.i88.i.i = icmp slt i64 %.sroa.61277.9.ph.idx627.i.i, 8
  br i1 %.not.i88.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lx = lshr i32 %i.lt, 3
  %i.ly = zext nneg i32 %i.lx to i64
  %.sroa.61277.9.ph.add386.i.i = sub nuw nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.ly ; 2 uses
  %.ptr389.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.61277.9.ph.add386.i.i
  %i.lz = and i32 %i.lt, 7
  %.val30.i89.i.i = load i64, ptr %.ptr389.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

bb.bd:                                            ; preds = %bb.bb
  br i1 %i.lj, label %BIT_reloadDStream.exit96.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ma = lshr i32 %i.lt, 3
  %i.mb = zext nneg i32 %i.ma to i64
  %.024.i91394.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.9.ph.idx627.i.i, i64 %i.mb) ; 2 uses
  %.024.i91.i.i = trunc i64 %.024.i91394.i.i to i32
  %i.mc = and i64 %.024.i91394.i.i, 4294967295
  %.sroa.61277.9.ph.add.i.i = sub nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.mc ; 2 uses
  %.ptr388.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61277.9.ph.add.i.i
  %i.md = shl i32 %.024.i91.i.i, 3
  %i.me = sub i32 %i.lt, %i.md
  %.val.i93.i.i = load i64, ptr %.ptr388.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

BIT_reloadDStream.exit96.i.i:                     ; preds = %bb.be, %bb.bd, %bb.bc
  %.sroa.61277.10.idx.i.i = phi i64 [ %.sroa.61277.9.ph.add386.i.i, %bb.bc ], [ %.sroa.61277.9.ph.add.i.i, %bb.be ], [ 0, %bb.bd ] ; 4 uses
  %.sroa.27270.10.i.i = phi i32 [ %i.lz, %bb.bc ], [ %i.me, %bb.be ], [ %i.lt, %bb.bd ] ; 4 uses
  %.sroa.0269.8.i.i = phi i64 [ %.val30.i89.i.i, %bb.bc ], [ %.val.i93.i.i, %bb.be ], [ %.sroa.0269.7.ph629.i.i, %bb.bd ] ; 2 uses
  %i.mf = icmp eq i64 %.1.idx.i15472.i.i, 254
  br i1 %i.mf, label %BIT_reloadDStream.exit80.split.loop.exit456.i.i, label %bb.bf

bb.bf:                                            ; preds = %BIT_reloadDStream.exit96.i.i
  %i.mg = icmp eq i64 %.sroa.61277.10.idx.i.i, 0
  %.not395.i.i = icmp eq i32 %.sroa.27270.10.i.i, 64
  %or.cond425.i.i = and i1 %i.mg, %.not395.i.i
  br i1 %or.cond425.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit97.thread.i.i

BIT_endOfDStream.exit97.thread.i.i:               ; preds = %bb.bf
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.0256.1468.i.i ; 3 uses
  %.sroa.0.0.copyload.i98.i.i = load i16, ptr %i.mh, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i99.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %.sroa.4.0.copyload.i100.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i99.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i101.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 3
  %.sroa.5.0.copyload.i102.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i101.i.i, align 1, !tbaa !10
  %i.mi = zext i8 %.sroa.5.0.copyload.i102.i.i to i32 ; 2 uses
  %i.mj = and i32 %.sroa.27270.10.i.i, 63
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = shl i64 %.sroa.0269.8.i.i, %i.mk
  %i.mm = sub nsw i32 0, %i.mi
  %i.mn = and i32 %i.mm, 63
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = lshr i64 %i.ml, %i.mo
  %i.mq = add i32 %.sroa.27270.10.i.i, %i.mi      ; 3 uses
  %i.mr = zext i16 %.sroa.0.0.copyload.i98.i.i to i64
  %i.ms = add i64 %i.mp, %i.mr                    ; 2 uses
  %.add.i27.i.i = add nuw nsw i64 %.1.idx.i15472.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i100.i.i, ptr %.ptr.ptr.i24.i.i, align 1, !tbaa !10
  %i.mt = icmp ugt i32 %i.mq, 64
  br i1 %i.mt, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i24.i

BIT_reloadDStream.exit80.split.loop.exit444.i.i:  ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.sroa.61277.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61277.9.ph.idx627.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit450.i.i:  ; preds = %bb.ax, %BIT_endOfDStream.exit97.thread.i.i, %.preheader437.i.i, %FSE_initDState.exit43.i.i, %FSE_initDState.exit.i.i
  %.sroa.61277.1.idx.lcssa.i.i = phi i64 [ %.sroa.61277.8.idx.i.i, %.preheader437.i.i ], [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ], [ %.sroa.61277.5.idx.i.i, %FSE_initDState.exit.i.i ], [ %.sroa.61277.8.idx.i.i, %bb.ax ]
  %.sroa.0256.1.lcssa.ph451.i.i = phi i64 [ %.sroa.0256.0.i96.i, %.preheader437.i.i ], [ %i.ms, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hy, %FSE_initDState.exit43.i.i ], [ %i.hy, %FSE_initDState.exit.i.i ], [ %i.kv, %bb.ax ]
  %.sroa.0262.2.ph452.i.i = phi i64 [ %.sroa.0262.0.i95.i, %.preheader437.i.i ], [ %i.lv, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hi, %FSE_initDState.exit43.i.i ], [ %i.hi, %FSE_initDState.exit.i.i ], [ %i.kh, %bb.ax ]
  %.sroa.27270.2.ph454.i.i = phi i32 [ %.sroa.27270.8.i.i, %.preheader437.i.i ], [ %i.mq, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.ij, %FSE_initDState.exit43.i.i ], [ %i.hz, %FSE_initDState.exit.i.i ], [ %i.kt, %bb.ax ]
  %.2.idx.i18.ph455.i.i = phi i64 [ %.036.idx.i13.i100.i, %.preheader437.i.i ], [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ 0, %FSE_initDState.exit43.i.i ], [ 0, %FSE_initDState.exit.i.i ], [ %.036.add.i28.i.i, %bb.ax ]
  %.sroa.61277.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61277.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit456.i.i:  ; preds = %BIT_reloadDStream.exit96.i.i
  %.sroa.61277.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61277.10.idx.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.i.i:                     ; preds = %bb.bf, %bb.ba, %BIT_reloadDStream.exit80.split.loop.exit456.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i
  %.sroa.0256.1.lcssa.i.i = phi i64 [ %.sroa.0256.1.lcssa.ph451.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.sroa.0256.1468.i.i, %bb.ba ], [ %.sroa.0256.1468.i.i, %bb.bf ]
  %.sroa.0262.2.i.i = phi i64 [ %.sroa.0262.2.ph452.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %i.lv, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.lv, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.lv, %bb.bf ], [ %.sroa.0262.1467.i.i, %bb.ba ]
  %.sroa.61277.2.i.i = phi ptr [ %.sroa.61277.1.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.61277.10.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.61277.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.ez, %bb.ba ], [ %i.ez, %bb.bf ]
  %.sroa.27270.2.i.i = phi i32 [ %.sroa.27270.2.ph454.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.27270.10.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.lt, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ 64, %bb.ba ], [ 64, %bb.bf ]
  %.2.idx.i18.i.i = phi i64 [ %.2.idx.i18.ph455.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ 255, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.add51.i23.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.add51.i23.i.i, %bb.bf ], [ %.1.idx.i15472.i.i, %bb.ba ] ; 2 uses
  %i.mu = icmp eq ptr %.sroa.61277.2.i.i, %i.ez
  %.not396.i.i = icmp eq i32 %.sroa.27270.2.i.i, 64
  %or.cond426.i.i = and i1 %i.mu, %.not396.i.i
  %.not397.i.i = icmp eq i64 %.sroa.0262.2.i.i, 0
  %or.cond427.i.i = select i1 %or.cond426.i.i, i1 %.not397.i.i, i1 false
  %.not398.i.i = icmp eq i64 %.sroa.0256.1.lcssa.i.i, 0
  %or.cond428.i.i = select i1 %or.cond427.i.i, i1 %.not398.i.i, i1 false
  br i1 %or.cond428.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit105.thread.i.i

BIT_endOfDStream.exit105.thread.i.i:              ; preds = %BIT_reloadDStream.exit80.i.i
  %i.mv = icmp eq i64 %.2.idx.i18.i.i, 255
  %..i22.i.i = select i1 %i.mv, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

9:                                                ; preds = %bb.ac
  br i1 %6, label %FSE_decompress.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %9
  %10 = icmp ugt i64 %i.ey, 7
  br i1 %10, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %.ptr400.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.g
  %i.mw = getelementptr i8, ptr %.ptr400.i.i, i64 -1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !10  ; 2 uses
  %i.my = icmp eq i8 %i.mx, 0
  br i1 %i.my, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit110.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.mz = load i8, ptr %i.ez, align 1, !tbaa !10
  %i.na = zext i8 %i.mz to i64                    ; 7 uses
  switch i64 %i.ey, label %bb.bp [
    i64 7, label %bb.bj
    i64 6, label %bb.bk
    i64 5, label %bb.bl
    i64 4, label %bb.bm
    i64 3, label %bb.bn
    i64 2, label %bb.bo
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ez, i64 6
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !10
  %i.nd = zext i8 %i.nc to i64
  %i.ne = shl nuw nsw i64 %i.nd, 48
  %i.nf = or disjoint i64 %i.ne, %i.na
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ng = phi i64 [ %i.nf, %bb.bj ], [ %i.na, %bb.bi ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ez, i64 5
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !10
  %i.nj = zext i8 %i.ni to i64
  %i.nk = shl nuw nsw i64 %i.nj, 40
  %i.nl = add nuw nsw i64 %i.nk, %i.ng
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.nm = phi i64 [ %i.nl, %bb.bk ], [ %i.na, %bb.bi ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !10
  %i.np = zext i8 %i.no to i64
  %i.nq = shl nuw nsw i64 %i.np, 32
  %i.nr = add nuw nsw i64 %i.nq, %i.nm
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %i.ns = phi i64 [ %i.nr, %bb.bl ], [ %i.na, %bb.bi ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !10
  %i.nv = zext i8 %i.nu to i64
  %i.nw = shl nuw nsw i64 %i.nv, 24
  %i.nx = add nuw nsw i64 %i.nw, %i.ns
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi
  %i.ny = phi i64 [ %i.nx, %bb.bm ], [ %i.na, %bb.bi ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !10
  %i.ob = zext i8 %i.oa to i64
  %i.oc = shl nuw nsw i64 %i.ob, 16
  %i.od = add nuw nsw i64 %i.oc, %i.ny
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bi
  %i.oe = phi i64 [ %i.od, %bb.bn ], [ %i.na, %bb.bi ]
  %i.of = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !10
  %i.oh = zext i8 %i.og to i64
  %i.oi = shl nuw nsw i64 %i.oh, 8
  %i.oj = add nuw nsw i64 %i.oi, %i.oe
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bi
  %.sroa.0215.2.i.i = phi i64 [ %i.na, %bb.bi ], [ %i.oj, %bb.bo ]
  %i.ok = getelementptr i8, ptr %i.br, i64 %i.g
  %i.ol = getelementptr i8, ptr %i.ok, i64 -1
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !10  ; 2 uses
  %i.on = icmp eq i8 %i.om, 0
  br i1 %i.on, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit110.thread351.i.i

BIT_initDStream.exit110.thread351.i.i:            ; preds = %bb.bp
  %i.oo = zext i8 %i.om to i32
  %i.op = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.oo, i1 true)
  %i.oq = trunc nuw nsw i64 %i.ey to i32
  %i.or = shl nuw nsw i32 %i.oq, 3
  %reass.sub168 = sub nsw i32 %i.op, %i.or
  %i.os = add nsw i32 %reass.sub168, 41
  br label %bb.bq

BIT_initDStream.exit110.i.i:                      ; preds = %bb.bh
  %.add399.i.i = add nsw i64 %i.ey, -8            ; 2 uses
  %.ptr401.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.add399.i.i
  %.val.i108.i.i = load i64, ptr %.ptr401.i.i, align 1
  %i.ot = zext i8 %i.mx to i32
  %i.ou = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ot, i1 true)
  %i.ov = xor i32 %i.ou, 31
  %i.ow = sub nuw nsw i32 8, %i.ov
  %i.ox = icmp ult i64 %i.ey, -119
  br i1 %i.ox, label %bb.bq, label %FSE_decompress.exit.thread

bb.bq:                                            ; preds = %BIT_initDStream.exit110.i.i, %BIT_initDStream.exit110.thread351.i.i
  %.sroa.61221.3360.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit110.thread351.i.i ], [ %.add399.i.i, %BIT_initDStream.exit110.i.i ] ; 5 uses
  %.sroa.27.3359.i.i = phi i32 [ %i.os, %BIT_initDStream.exit110.thread351.i.i ], [ %i.ow, %BIT_initDStream.exit110.i.i ] ; 2 uses
  %.sroa.0215.3358.i.i = phi i64 [ %.sroa.0215.2.i.i, %BIT_initDStream.exit110.thread351.i.i ], [ %.val.i108.i.i, %BIT_initDStream.exit110.i.i ] ; 3 uses
  %i.oy = and i32 %.sroa.27.3359.i.i, 63
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = shl i64 %.sroa.0215.3358.i.i, %i.oz
  %i.pb = lshr i64 %i.pa, 1
  %i.pc = xor i32 %i.bw, 63
  %i.pd = zext nneg i32 %i.pc to i64              ; 2 uses
  %i.pe = lshr i64 %i.pb, %i.pd                   ; 3 uses
  %i.pf = add nuw nsw i32 %.sroa.27.3359.i.i, %i.bw ; 7 uses
  %i.pg = icmp samesign ugt i32 %i.pf, 64
  br i1 %i.pg, label %FSE_initDState.exit119.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i.i114.i.i = icmp slt i64 %.sroa.61221.3360.idx.i.i, 8
  br i1 %.not.i.i114.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ph = lshr i32 %i.pf, 3
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = and i32 %i.pf, 7
  br label %BIT_reloadDStream.exit.sink.split.i115.i.i

bb.bt:                                            ; preds = %bb.br
  %i.pk = icmp eq i64 %.sroa.61221.3360.idx.i.i, 0
  br i1 %i.pk, label %FSE_initDState.exit119.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pl = lshr i32 %i.pf, 3
  %i.pm = zext nneg i32 %i.pl to i64
  %.024.i.i118402.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.3360.idx.i.i, i64 %i.pm) ; 2 uses
  %.024.i.i118.i.i = trunc nsw i64 %.024.i.i118402.i.i to i32
  %i.pn = and i64 %.024.i.i118402.i.i, 4294967295
  %i.po = shl nsw i32 %.024.i.i118.i.i, 3
  %i.pp = sub nsw i32 %i.pf, %i.po
  br label %BIT_reloadDStream.exit.sink.split.i115.i.i

BIT_reloadDStream.exit.sink.split.i115.i.i:       ; preds = %bb.bu, %bb.bs
  %.sroa.27.4.i.i = phi i32 [ %i.pp, %bb.bu ], [ %i.pj, %bb.bs ]
  %.pn403.i.i = phi i64 [ %i.pn, %bb.bu ], [ %i.pi, %bb.bs ]
  %.sroa.61221.3360.ptr.add.i.i = sub nsw i64 %.sroa.61221.3360.idx.i.i, %.pn403.i.i ; 2 uses
  %.sroa.61221.4.ptr.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61221.3360.ptr.add.i.i
  %.val30.i.sink.i117.i.i = load i64, ptr %.sroa.61221.4.ptr.i.i, align 1
  br label %FSE_initDState.exit119.i.i

FSE_initDState.exit119.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i115.i.i, %bb.bt, %bb.bq
  %.sroa.0215.4.i.i = phi i64 [ %.sroa.0215.3358.i.i, %bb.bq ], [ %.sroa.0215.3358.i.i, %bb.bt ], [ %.val30.i.sink.i117.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.27.5.i.i = phi i32 [ %i.pf, %bb.bq ], [ %i.pf, %bb.bt ], [ %.sroa.27.4.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.61221.5.idx.i.i = phi i64 [ %.sroa.61221.3360.idx.i.i, %bb.bq ], [ 0, %bb.bt ], [ %.sroa.61221.3360.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 6 uses
  %i.pq = and i32 %.sroa.27.5.i.i, 63
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = shl i64 %.sroa.0215.4.i.i, %i.pr
  %i.pt = lshr i64 %i.ps, 1
  %i.pu = lshr i64 %i.pt, %i.pd                   ; 3 uses
  %i.pv = add nsw i32 %.sroa.27.5.i.i, %i.bw      ; 7 uses
  %i.pw = icmp ugt i32 %i.pv, 64
  br i1 %i.pw, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %bb.bv

bb.bv:                                            ; preds = %FSE_initDState.exit119.i.i
  %.not.i.i123.i.i = icmp slt i64 %.sroa.61221.5.idx.i.i, 8
  br i1 %.not.i.i123.i.i, label %bb.bw, label %FSE_initDState.exit128.i.thread251.i

FSE_initDState.exit128.i.thread251.i:             ; preds = %bb.bv
  %i.px = lshr i32 %i.pv, 3
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = and i32 %i.pv, 7
  %.sroa.61221.5.ptr.add.i254.i = sub nuw nsw i64 %.sroa.61221.5.idx.i.i, %i.py ; 2 uses
  %.sroa.61221.6.ptr.i255.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.61221.5.ptr.add.i254.i
  %.val30.i.sink.i126.i256.i = load i64, ptr %.sroa.61221.6.ptr.i255.i, align 1
  br label %.lr.ph113.i.preheader

bb.bw:                                            ; preds = %bb.bv
  %i.qa = icmp eq i64 %.sroa.61221.5.idx.i.i, 0
  br i1 %i.qa, label %.lr.ph113.i.preheader, label %FSE_initDState.exit128.i.i

FSE_initDState.exit128.i.i:                       ; preds = %bb.bw
  %i.qb = lshr i32 %i.pv, 3
  %i.qc = zext nneg i32 %i.qb to i64
  %.024.i.i127404.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.5.idx.i.i, i64 %i.qc) ; 2 uses
  %.024.i.i127.i.i = trunc i64 %.024.i.i127404.i.i to i32
  %i.qd = and i64 %.024.i.i127404.i.i, 4294967295
  %i.qe = shl i32 %.024.i.i127.i.i, 3
  %i.qf = sub i32 %i.pv, %i.qe                    ; 3 uses
  %.sroa.61221.5.ptr.add.i.i = sub nsw i64 %.sroa.61221.5.idx.i.i, %i.qd ; 3 uses
  %.sroa.61221.6.ptr.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61221.5.ptr.add.i.i
  %.val30.i.sink.i126.i.i = load i64, ptr %.sroa.61221.6.ptr.i.i, align 1
  %i.qg = icmp ugt i32 %i.qf, 64
  br i1 %i.qg, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i.preheader

.lr.ph113.i.preheader:                            ; preds = %FSE_initDState.exit128.i.i, %bb.bw, %FSE_initDState.exit128.i.thread251.i
  %.sroa.61221.0.idx.i108.i.ph = phi i64 [ %.sroa.61221.5.ptr.add.i254.i, %FSE_initDState.exit128.i.thread251.i ], [ 0, %bb.bw ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ]
  %.sroa.27.0.i107.i.ph = phi i32 [ %i.pz, %FSE_initDState.exit128.i.thread251.i ], [ %i.pv, %bb.bw ], [ %i.qf, %FSE_initDState.exit128.i.i ]
  %.sroa.0215.0.i106.i.ph = phi i64 [ %.val30.i.sink.i126.i256.i, %FSE_initDState.exit128.i.thread251.i ], [ %.sroa.0215.4.i.i, %bb.bw ], [ %.val30.i.sink.i126.i.i, %FSE_initDState.exit128.i.i ]
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.lr.ph113.i.preheader, %bb.ca
  %.036.idx.i.i111.i = phi i64 [ %.036.add.i.i.i, %bb.ca ], [ 0, %.lr.ph113.i.preheader ] ; 5 uses
end_hunk_1
begin_hunk_2_@HUF_readStats:bb.a
  %i.sl = and i32 %i.se, 63
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = shl i64 %.sroa.0215.6.i.i, %i.sm
  %i.so = lshr i64 %i.sn, 1
  %i.sp = and i32 %i.sk, 63
  %i.sq = xor i32 %i.sp, 63
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = lshr i64 %i.so, %i.sr
  %i.st = add i32 %i.se, %i.sk                    ; 3 uses
  %i.su = zext i16 %.sroa.0.0.copyload.i159.i.i to i64
  %i.sv = add nuw i64 %i.ss, %i.su                ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 3
  store i8 %.sroa.4.0.copyload.i161.i.i, ptr %i.sw, align 1, !tbaa !10
  %.036.add.i.i.i = add nuw nsw i64 %.036.idx.i.i111.i, 4 ; 2 uses
  %i.sx = icmp ugt i32 %i.st, 64
  br i1 %i.sx, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i, !llvm.loop !99

.lr.ph514.i.i:                                    ; preds = %.lr.ph514.i.i.preheader, %BIT_endOfDStream.exit192.thread.i.i
  %.1.idx.i512.i.i = phi i64 [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.036.idx.i.i111.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0.1511.i.i = phi i64 [ %i.uu, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0.0.i110.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0207.1510.i.i = phi i64 [ %i.tw, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0207.0.i109.i, %.lr.ph514.i.i.preheader ] ; 2 uses
  %.sroa.61221.1.idx509.i.i = phi i64 [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.1.idx509.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.27.1508.i.i = phi i32 [ %i.us, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.27.1508.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0215.1507.i.i = phi i64 [ %.sroa.0215.8.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0215.1507.i.i.ph, %.lr.ph514.i.i.preheader ]
  %.1.ptr.ptr.i513.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i512.i.i
  %.not.i166.i.i = icmp slt i64 %.sroa.61221.1.idx509.i.i, 8
  br i1 %.not.i166.i.i, label %bb.cb, label %.thread637.i.i

.thread637.i.i:                                   ; preds = %.lr.ph514.i.i
  %i.sy = lshr i32 %.sroa.27.1508.i.i, 3
  %i.sz = zext nneg i32 %i.sy to i64
  %.sroa.61221.1.add411.i.i = sub nuw nsw i64 %.sroa.61221.1.idx509.i.i, %i.sz ; 3 uses
  %.ptr415.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.61221.1.add411.i.i
  %i.ta = and i32 %.sroa.27.1508.i.i, 7
  %.val30.i167.i.i = load i64, ptr %.ptr415.i.i, align 1
  %i.tb = icmp eq i64 %.sroa.61221.1.add411.i.i, 0
  br label %BIT_endOfDStream.exit175.thread.i.i

bb.cb:                                            ; preds = %.lr.ph514.i.i
  %i.tc = icmp eq i64 %.sroa.61221.1.idx509.i.i, 0
  br i1 %i.tc, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.td = lshr i32 %.sroa.27.1508.i.i, 3
  %i.te = zext nneg i32 %i.td to i64
  %.024.i169416.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.1.idx509.i.i, i64 %i.te) ; 2 uses
  %.024.i169.i.i = trunc i64 %.024.i169416.i.i to i32
  %i.tf = and i64 %.024.i169416.i.i, 4294967295
  %.sroa.61221.1.add.i.i = sub nsw i64 %.sroa.61221.1.idx509.i.i, %i.tf ; 2 uses
  %.ptr414.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61221.1.add.i.i
  %i.tg = shl i32 %.024.i169.i.i, 3
  %i.th = sub i32 %.sroa.27.1508.i.i, %i.tg
  %.val.i171.i.i = load i64, ptr %.ptr414.i.i, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.0215.7.ph.i.i = phi i64 [ %.sroa.0215.1507.i.i, %bb.cb ], [ %.val.i171.i.i, %bb.cc ]
  %.sroa.27.9.ph.i.i = phi i32 [ %.sroa.27.1508.i.i, %bb.cb ], [ %i.th, %bb.cc ] ; 2 uses
  %.sroa.61221.9.ph.idx.i.i = phi i64 [ 0, %bb.cb ], [ %.sroa.61221.1.add.i.i, %bb.cc ] ; 2 uses
  %i.ti = icmp eq i64 %.sroa.61221.9.ph.idx.i.i, 0 ; 2 uses
  %.not417.i.i = icmp eq i32 %.sroa.27.9.ph.i.i, 64
  %or.cond429.i.i = and i1 %.not417.i.i, %i.ti
  %.not418.i.i = icmp eq i64 %.sroa.0207.1510.i.i, 0
  %or.cond430.i.i = select i1 %or.cond429.i.i, i1 %.not418.i.i, i1 false
  br i1 %or.cond430.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit175.thread.i.i

BIT_endOfDStream.exit175.thread.i.i:              ; preds = %bb.cd, %.thread637.i.i
  %i.tj = phi i1 [ %i.tb, %.thread637.i.i ], [ %i.ti, %bb.cd ]
  %.sroa.61221.9.ph.idx647.i.i = phi i64 [ %.sroa.61221.1.add411.i.i, %.thread637.i.i ], [ %.sroa.61221.9.ph.idx.i.i, %bb.cd ] ; 5 uses
  %.sroa.27.9.ph646.i.i = phi i32 [ %i.ta, %.thread637.i.i ], [ %.sroa.27.9.ph.i.i, %bb.cd ] ; 2 uses
  %.sroa.0215.7.ph645.i.i = phi i64 [ %.val30.i167.i.i, %.thread637.i.i ], [ %.sroa.0215.7.ph.i.i, %bb.cd ] ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.0207.1510.i.i ; 3 uses
  %.sroa.0.0.copyload.i176.i.i = load i16, ptr %i.tk, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i177.i.i = getelementptr inbounds nuw i8, ptr %i.tk, i64 2
  %.sroa.4.0.copyload.i178.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i177.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i179.i.i = getelementptr inbounds nuw i8, ptr %i.tk, i64 3
  %.sroa.5.0.copyload.i180.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i179.i.i, align 1, !tbaa !10
  %i.tl = zext i8 %.sroa.5.0.copyload.i180.i.i to i32 ; 2 uses
  %i.tm = and i32 %.sroa.27.9.ph646.i.i, 63
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = shl i64 %.sroa.0215.7.ph645.i.i, %i.tn
  %i.tp = lshr i64 %i.to, 1
  %i.tq = and i32 %i.tl, 63
  %i.tr = xor i32 %i.tq, 63
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = lshr i64 %i.tp, %i.ts
  %i.tu = add i32 %.sroa.27.9.ph646.i.i, %i.tl    ; 7 uses
  %i.tv = zext i16 %.sroa.0.0.copyload.i176.i.i to i64
  %i.tw = add nuw i64 %i.tt, %i.tv                ; 5 uses
  %.add51.i.i.i = or disjoint i64 %.1.idx.i512.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i.i.i
  store i8 %.sroa.4.0.copyload.i178.i.i, ptr %.1.ptr.ptr.i513.i.i, align 1, !tbaa !10
  %i.tx = icmp ugt i32 %i.tu, 64
  br i1 %i.tx, label %BIT_reloadDStream.exit174.split.loop.exit484.i.i, label %bb.ce

bb.ce:                                            ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.not.i183.i.i = icmp slt i64 %.sroa.61221.9.ph.idx647.i.i, 8
  br i1 %.not.i183.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ty = lshr i32 %i.tu, 3
  %i.tz = zext nneg i32 %i.ty to i64
  %.sroa.61221.9.ph.add410.i.i = sub nuw nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.tz ; 2 uses
  %.ptr413.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.61221.9.ph.add410.i.i
  %i.ua = and i32 %i.tu, 7
  %.val30.i184.i.i = load i64, ptr %.ptr413.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

bb.cg:                                            ; preds = %bb.ce
  br i1 %i.tj, label %BIT_reloadDStream.exit191.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ub = lshr i32 %i.tu, 3
  %i.uc = zext nneg i32 %i.ub to i64
  %.024.i186419.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.9.ph.idx647.i.i, i64 %i.uc) ; 2 uses
  %.024.i186.i.i = trunc i64 %.024.i186419.i.i to i32
  %i.ud = and i64 %.024.i186419.i.i, 4294967295
  %.sroa.61221.9.ph.add.i.i = sub nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.ud ; 2 uses
  %.ptr412.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61221.9.ph.add.i.i
  %i.ue = shl i32 %.024.i186.i.i, 3
  %i.uf = sub i32 %i.tu, %i.ue
  %.val.i188.i.i = load i64, ptr %.ptr412.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

BIT_reloadDStream.exit191.i.i:                    ; preds = %bb.ch, %bb.cg, %bb.cf
  %.sroa.0215.8.i.i = phi i64 [ %.val30.i184.i.i, %bb.cf ], [ %.val.i188.i.i, %bb.ch ], [ %.sroa.0215.7.ph645.i.i, %bb.cg ] ; 2 uses
  %.sroa.27.10.i.i = phi i32 [ %i.ua, %bb.cf ], [ %i.uf, %bb.ch ], [ %i.tu, %bb.cg ] ; 4 uses
  %.sroa.61221.10.idx.i.i = phi i64 [ %.sroa.61221.9.ph.add410.i.i, %bb.cf ], [ %.sroa.61221.9.ph.add.i.i, %bb.ch ], [ 0, %bb.cg ] ; 4 uses
  %i.ug = icmp eq i64 %.1.idx.i512.i.i, 254
  br i1 %i.ug, label %BIT_reloadDStream.exit174.split.loop.exit496.i.i, label %bb.ci

bb.ci:                                            ; preds = %BIT_reloadDStream.exit191.i.i
  %i.uh = icmp eq i64 %.sroa.61221.10.idx.i.i, 0
  %.not420.i.i = icmp eq i32 %.sroa.27.10.i.i, 64
  %or.cond431.i.i = and i1 %.not420.i.i, %i.uh
  %.not421.i.i = icmp eq i64 %.sroa.0.1511.i.i, 0
  %or.cond432.i.i = select i1 %or.cond431.i.i, i1 %.not421.i.i, i1 false
  br i1 %or.cond432.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit192.thread.i.i

BIT_endOfDStream.exit192.thread.i.i:              ; preds = %bb.ci
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.0.1511.i.i ; 3 uses
  %.sroa.0.0.copyload.i193.i.i = load i16, ptr %i.ui, align 4, !tbaa !39
  %.sroa.4.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 2
  %.sroa.4.0.copyload.i195.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i194.i.i, align 2, !tbaa !10
  %.sroa.5.0..sroa_idx.i196.i.i = getelementptr inbounds nuw i8, ptr %i.ui, i64 3
  %.sroa.5.0.copyload.i197.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i196.i.i, align 1, !tbaa !10
  %i.uj = zext i8 %.sroa.5.0.copyload.i197.i.i to i32 ; 2 uses
  %i.uk = and i32 %.sroa.27.10.i.i, 63
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = shl i64 %.sroa.0215.8.i.i, %i.ul
  %i.un = lshr i64 %i.um, 1
  %i.uo = and i32 %i.uj, 63
  %i.up = xor i32 %i.uo, 63
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = lshr i64 %i.un, %i.uq
  %i.us = add i32 %.sroa.27.10.i.i, %i.uj         ; 3 uses
  %i.ut = zext i16 %.sroa.0.0.copyload.i193.i.i to i64
  %i.uu = add nuw i64 %i.ur, %i.ut                ; 2 uses
  %.add.i.i.i = add nuw nsw i64 %.1.idx.i512.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i195.i.i, ptr %.ptr.ptr.i.i.i, align 1, !tbaa !10
  %i.uv = icmp ugt i32 %i.us, 64
  br i1 %i.uv, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph514.i.i

BIT_reloadDStream.exit174.split.loop.exit484.i.i: ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.sroa.61221.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61221.9.ph.idx647.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit490.i.i: ; preds = %bb.ca, %BIT_endOfDStream.exit192.thread.i.i, %.preheader.i26.i, %FSE_initDState.exit128.i.i, %FSE_initDState.exit119.i.i
  %.sroa.61221.1.idx.lcssa.i.i = phi i64 [ %.sroa.61221.8.idx.i.i, %.preheader.i26.i ], [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ], [ %.sroa.61221.5.idx.i.i, %FSE_initDState.exit119.i.i ], [ %.sroa.61221.8.idx.i.i, %bb.ca ]
  %.sroa.0.1.lcssa.ph491.i.i = phi i64 [ %.sroa.0.0.i110.i, %.preheader.i26.i ], [ %i.uu, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pu, %FSE_initDState.exit128.i.i ], [ %i.pu, %FSE_initDState.exit119.i.i ], [ %i.sv, %bb.ca ]
  %.sroa.27.2.ph492.i.i = phi i32 [ %.sroa.27.8.i.i, %.preheader.i26.i ], [ %i.us, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.qf, %FSE_initDState.exit128.i.i ], [ %i.pv, %FSE_initDState.exit119.i.i ], [ %i.st, %bb.ca ]
  %.sroa.0207.2.ph494.i.i = phi i64 [ %.sroa.0207.0.i109.i, %.preheader.i26.i ], [ %i.tw, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pe, %FSE_initDState.exit128.i.i ], [ %i.pe, %FSE_initDState.exit119.i.i ], [ %i.sg, %bb.ca ]
  %.2.idx.i.ph495.i.i = phi i64 [ %.036.idx.i.i111.i, %.preheader.i26.i ], [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ 0, %FSE_initDState.exit128.i.i ], [ 0, %FSE_initDState.exit119.i.i ], [ %.036.add.i.i.i, %bb.ca ]
  %.sroa.61221.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61221.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit496.i.i: ; preds = %BIT_reloadDStream.exit191.i.i
  %.sroa.61221.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ez, i64 %.sroa.61221.10.idx.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.i.i:                    ; preds = %bb.ci, %bb.cd, %BIT_reloadDStream.exit174.split.loop.exit496.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.1.lcssa.ph491.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.sroa.0.1511.i.i, %bb.cd ], [ 0, %bb.ci ]
  %.sroa.27.2.i.i = phi i32 [ %.sroa.27.2.ph492.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.27.10.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.tu, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 64, %bb.cd ], [ 64, %bb.ci ]
  %.sroa.61221.2.i.i = phi ptr [ %.sroa.61221.1.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.61221.10.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.61221.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %i.ez, %bb.cd ], [ %i.ez, %bb.ci ]
  %.sroa.0207.2.i.i = phi i64 [ %.sroa.0207.2.ph494.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %i.tw, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.tw, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 0, %bb.cd ], [ %i.tw, %bb.ci ]
  %.2.idx.i.i.i = phi i64 [ %.2.idx.i.ph495.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ 255, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.add51.i.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.1.idx.i512.i.i, %bb.cd ], [ %.add51.i.i.i, %bb.ci ] ; 2 uses
  %i.uw = icmp eq ptr %.sroa.61221.2.i.i, %i.ez
  %.not422.i.i = icmp eq i32 %.sroa.27.2.i.i, 64
  %or.cond433.i.i = and i1 %.not422.i.i, %i.uw
  %.not423.i.i = icmp eq i64 %.sroa.0207.2.i.i, 0
  %or.cond434.i.i = select i1 %or.cond433.i.i, i1 %.not423.i.i, i1 false
  %.not424.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i, 0
  %or.cond435.i.i = select i1 %or.cond434.i.i, i1 %.not424.i.i, i1 false
  br i1 %or.cond435.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit200.thread.i.i

BIT_endOfDStream.exit200.thread.i.i:              ; preds = %BIT_reloadDStream.exit174.i.i
  %i.ux = icmp eq i64 %.2.idx.i.i.i, 255
  %..i.i.i = select i1 %i.ux, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

FSE_decompress.exit.thread:                       ; preds = %FSE_buildDTable.exit.thread.i, %bb.g, %bb.h, %bb.i, %bb.am, %BIT_initDStream.exit.i.i, %BIT_endOfDStream.exit105.thread.i.i, %BIT_initDStream.exit110.i.i, %BIT_endOfDStream.exit200.thread.i.i, %7, %bb.ae, %9, %bb.bh, %bb.bp
  %.0.i.ph = phi i64 [ -1, %bb.bp ], [ -1, %bb.bh ], [ -72, %9 ], [ -1, %bb.ae ], [ -72, %7 ], [ %..i.i.i, %BIT_endOfDStream.exit200.thread.i.i ], [ %i.ey, %BIT_initDStream.exit110.i.i ], [ %..i22.i.i, %BIT_endOfDStream.exit105.thread.i.i ], [ %i.ey, %BIT_initDStream.exit.i.i ], [ -1, %bb.am ], [ -72, %bb.i ], [ %i.bt, %bb.h ], [ -72, %bb.g ], [ %.0.i.ph.i, %FSE_buildDTable.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge

FSE_decompress.exit:                              ; preds = %BIT_reloadDStream.exit80.i.i, %BIT_reloadDStream.exit174.i.i
  %.0.i = phi i64 [ %.2.idx.i.i.i, %BIT_reloadDStream.exit174.i.i ], [ %.2.idx.i18.i.i, %BIT_reloadDStream.exit80.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.uy = icmp ult i64 %.0.i, -119
  br i1 %i.uy, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %FSE_decompress.exit, %bb.d
  %.074 = phi i64 [ %i.m, %bb.d ], [ %.0.i, %FSE_decompress.exit ] ; 2 uses
  %.070 = phi i64 [ 0, %bb.d ], [ %i.g, %FSE_decompress.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not170 = icmp eq i64 %.074, 0
  br i1 %.not170, label %.critedge, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.070293 = phi i64 [ %i.p, %.loopexit.thread ], [ %.070, %.loopexit ]
  %.074291 = phi i64 [ %i.n, %.loopexit.thread ], [ %.074, %.loopexit ] ; 3 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.cj
  %i.uz = phi i64 [ %i.vn, %bb.cj ], [ 0, %.lr.ph166.preheader ]
  %.069165 = phi i32 [ %i.vl, %bb.cj ], [ 0, %.lr.ph166.preheader ]
  %.173164 = phi i32 [ %i.vm, %bb.cj ], [ 0, %.lr.ph166.preheader ]
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 %i.uz ; 2 uses
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !10  ; 2 uses
  %i.vc = icmp ugt i8 %i.vb, 15
  br i1 %i.vc, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph166
  %i.vd = zext nneg i8 %i.vb to i64
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vd ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !28
  %i.vg = add i32 %i.vf, 1
  store i32 %i.vg, ptr %i.ve, align 4, !tbaa !28
  %i.vh = load i8, ptr %i.va, align 1, !tbaa !10
  %i.vi = zext nneg i8 %i.vh to i32
  %i.vj = shl nuw i32 1, %i.vi
  %i.vk = ashr i32 %i.vj, 1
  %i.vl = add i32 %i.vk, %.069165                 ; 4 uses
  %i.vm = add i32 %.173164, 1                     ; 2 uses
  %i.vn = zext i32 %i.vm to i64                   ; 2 uses
  %i.vo = icmp ugt i64 %.074291, %i.vn
  br i1 %i.vo, label %.lr.ph166, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.cj
  %i.vp = icmp eq i32 %i.vl, 0
  br i1 %i.vp, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge
  %i.vq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vl, i1 true) ; 2 uses
  %i.vr = xor i32 %i.vq, 31                       ; 2 uses
  %i.vs = sub nuw nsw i32 32, %i.vq
  %i.vt = icmp samesign ugt i32 %i.vr, 15
  br i1 %i.vt, label %.critedge, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vu = shl nuw nsw i32 2, %i.vr
  %i.vv = sub i32 %i.vu, %i.vl                    ; 2 uses
  %i.vw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vv, i1 true) ; 2 uses
  %i.vx = lshr exact i32 -2147483648, %i.vw
  %.not84 = icmp eq i32 %i.vx, %i.vv
  br i1 %.not84, label %bb.cm, label %.critedge

bb.cm:                                            ; preds = %bb.cl
  %i.vy = sub nuw nsw i32 32, %i.vw               ; 2 uses
  %i.vz = trunc nuw nsw i32 %i.vy to i8
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 %.074291
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !10
  %i.wb = zext nneg i32 %i.vy to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wb ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !28
  %i.we = add i32 %i.wd, 1
  store i32 %i.we, ptr %i.wc, align 4, !tbaa !28
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !28 ; 2 uses
  %i.wh = icmp ugt i32 %i.wg, 1
  %i.wi = and i32 %i.wg, 1
  %.not85 = icmp eq i32 %i.wi, 0
  %or.cond = and i1 %i.wh, %.not85
  br i1 %or.cond, label %bb.cn, label %.critedge

bb.cn:                                            ; preds = %bb.cm
  %i.wj = trunc nuw i64 %.074291 to i32
  %i.wk = add i32 %i.wj, 1
  store i32 %i.wk, ptr %2, align 4, !tbaa !28
  store i32 %i.vs, ptr %3, align 4, !tbaa !28
  %i.wl = add nuw nsw i64 %.070293, 1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph166, %.loopexit, %FSE_decompress.exit.thread, %bb.cl, %bb.cm, %bb.ck, %._crit_edge, %FSE_decompress.exit, %bb.f, %bb.e, %bb.a, %bb.cn
  %.1 = phi i64 [ %.0.i, %FSE_decompress.exit ], [ %.0.i.ph, %FSE_decompress.exit.thread ], [ -20, %._crit_edge ], [ -20, %bb.cm ], [ %i.wl, %bb.cn ], [ -20, %bb.cl ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %bb.ck ], [ -20, %.loopexit ], [ -20, %.lr.ph166 ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @FSE_readNCount(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.b = icmp ult i64 %4, 4
  br i1 %i.b, label %.critedge158, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val160 = load i32, ptr %3, align 1            ; 2 uses
  %i.c = and i32 %.val160, 15                     ; 4 uses
  %i.d = icmp samesign ugt i32 %i.c, 10
  br i1 %i.d, label %.critedge158, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.b
  %i.e = add nuw nsw i32 %i.c, 5
  store i32 %i.e, ptr %2, align 4, !tbaa !28
  %i.f = shl nuw nsw i32 32, %i.c                 ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.c, 6
  %i.i = lshr i32 %.val160, 4
  %i.j = load i32, ptr %1, align 4, !tbaa !28     ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -5
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -7 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph203, %._crit_edge191
  %.0110201 = phi i1 [ true, %.lr.ph203 ], [ %i.bp, %._crit_edge191 ]
  %.0111200 = phi i32 [ 0, %.lr.ph203 ], [ %i.bm, %._crit_edge191 ] ; 8 uses
  %.0115199 = phi i32 [ 4, %.lr.ph203 ], [ %.8, %._crit_edge191 ] ; 3 uses
  %.0119198 = phi i32 [ %i.i, %.lr.ph203 ], [ %i.cc, %._crit_edge191 ] ; 4 uses
  %.0126197 = phi i32 [ %i.f, %.lr.ph203 ], [ %.1127.lcssa, %._crit_edge191 ] ; 6 uses
  %.0128196 = phi i32 [ %i.g, %.lr.ph203 ], [ %i.bl, %._crit_edge191 ] ; 2 uses
  %.0129195 = phi i32 [ %i.h, %.lr.ph203 ], [ %.1130.lcssa, %._crit_edge191 ] ; 4 uses
  %.0131194 = phi ptr [ %3, %.lr.ph203 ], [ %.6137, %._crit_edge191 ] ; 3 uses
  %.not = icmp ugt i32 %.0111200, %i.j
  br i1 %.not, label %.critedge158, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.0110201, label %bb.i, label %.preheader163

.preheader163:                                    ; preds = %bb.d
  %i.o = and i32 %.0119198, 65535
  %i.p = icmp eq i32 %i.o, 65535
  br i1 %i.p, label %.lr.ph, label %.preheader162

.preheader162:                                    ; preds = %bb.g, %.preheader163
  %.1132.lcssa = phi ptr [ %.0131194, %.preheader163 ], [ %.2133, %bb.g ] ; 4 uses
  %.1120.lcssa = phi i32 [ %.0119198, %.preheader163 ], [ %.2121, %bb.g ] ; 3 uses
  %.1116.lcssa = phi i32 [ %.0115199, %.preheader163 ], [ %.2117, %bb.g ] ; 2 uses
  %.0107.lcssa = phi i32 [ %.0111200, %.preheader163 ], [ %i.s, %bb.g ] ; 2 uses
  %i.q = and i32 %.1120.lcssa, 3                  ; 2 uses
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %.lr.ph178, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader163, %bb.g
  %.0107171 = phi i32 [ %i.s, %bb.g ], [ %.0111200, %.preheader163 ]
  %.1116170 = phi i32 [ %.2117, %bb.g ], [ %.0115199, %.preheader163 ] ; 3 uses
  %.1120169 = phi i32 [ %.2121, %bb.g ], [ %.0119198, %.preheader163 ]
  %.1132168 = phi ptr [ %.2133, %bb.g ], [ %.0131194, %.preheader163 ] ; 3 uses
  %i.s = add i32 %.0107171, 24                    ; 2 uses
  %i.t = icmp ult ptr %.1132168, %i.k
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.1132168, i64 2 ; 2 uses
  %.val159 = load i32, ptr %i.u, align 1
  %i.v = lshr i32 %.val159, %.1116170
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.w = lshr i32 %.1120169, 16
  %i.x = add nsw i32 %.1116170, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2133 = phi ptr [ %i.u, %bb.e ], [ %.1132168, %bb.f ] ; 2 uses
  %.2121 = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.2117 = phi i32 [ %.1116170, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.2121, 65535
  %i.z = icmp eq i32 %i.y, 65535
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !101

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1108177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0107.lcssa, %.preheader162 ]
  %.3118176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %.3122175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1120.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1108177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3122175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3118176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph178, %.preheader162
  %.3122.lcssa = phi i32 [ %.1120.lcssa, %.preheader162 ], [ %i.ab, %.lr.ph178 ]
  %.3118.lcssa = phi i32 [ %.1116.lcssa, %.preheader162 ], [ %i.ac, %.lr.ph178 ]
end_hunk_2
