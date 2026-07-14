inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@HUF_readStats:bb.a
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !37 ; 3 uses
  %i.ck = icmp eq i16 %i.cj, -1
  br i1 %i.ck, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = sext i16 %i.cj to i32
  %.not78.i.i.1 = icmp sgt i32 %i.bv, %i.cl
  %spec.select.i.i.1 = select i1 %.not78.i.i.1, i16 %.269.i.i, i16 0
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cm = trunc i64 %indvars.iv.next.i.i to i8
  %i.cn = add i32 %.171.i.i, -1
  %i.co = zext i32 %.171.i.i to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i8 %i.cm, ptr %i.cq, align 2, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.1 = phi i16 [ 1, %bb.r ], [ %i.cj, %bb.q ]
  %.171.i.i.1 = phi i32 [ %i.cn, %bb.r ], [ %.171.i.i, %bb.q ] ; 3 uses
  %.269.i.i.1 = phi i16 [ %.269.i.i, %bb.r ], [ %spec.select.i.i.1, %bb.q ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i16 %.sink.i.i.1, ptr %i.cr, align 2, !tbaa !37
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.i.i.preheader.unr-lcssa, label %bb.m, !llvm.loop !38

.preheader79.i.i.preheader.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.i.i.preheader.unr-lcssa, %bb.l
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06782.i.i.epil.init = phi i16 [ 1, %bb.l ], [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 2 uses
  %.07081.i.i.epil.init = phi i32 [ %i.bo, %bb.l ], [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i32 %i.bw to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !37 ; 3 uses
  %i.cu = icmp eq i16 %i.ct, -1
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.cv = sext i16 %i.ct to i32
  %.not78.i.i.epil = icmp sgt i32 %i.bv, %i.cv
  %spec.select.i.i.epil = select i1 %.not78.i.i.epil, i16 %.06782.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader
  %i.cw = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.cx = add i32 %.07081.i.i.epil.init, -1
  %i.cy = zext i32 %.07081.i.i.epil.init to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i8 %i.cw, ptr %i.da, align 2, !tbaa !33
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.u, %bb.t
  %.sink.i.i.epil = phi i16 [ 1, %bb.u ], [ %i.ct, %bb.t ]
  %.171.i.i.epil = phi i32 [ %i.cx, %bb.u ], [ %.07081.i.i.epil.init, %bb.t ]
  %.269.i.i.epil = phi i16 [ %.06782.i.i.epil.init, %bb.u ], [ %spec.select.i.i.epil, %bb.t ]
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i.i.epil, ptr %i.db, align 2, !tbaa !37
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.171.i.i.lcssa = phi i32 [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.171.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.269.i.i.lcssa = phi i16 [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.269.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %.06287.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv90.i.i
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !37 ; 5 uses
  %i.de = icmp sgt i16 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader79.i.i
  %i.df = trunc i64 %indvars.iv90.i.i to i8       ; 3 uses
  %i.dg = icmp eq i16 %i.dd, 1
  br i1 %i.dg, label %.epil.preheader168, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %i.dh = and i16 %i.dd, 32766
  %unroll_iter173 = zext nneg i16 %i.dh to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.new
  %.185.i.i = phi i32 [ %.06287.i.i, %.lr.ph.i.i.new ], [ %.2.i.i.1, %bb.z ] ; 2 uses
  %niter174 = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter174.next.1, %bb.z ]
  %i.di = zext nneg i32 %.185.i.i to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.df, ptr %i.dk, align 2, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.1.pn.i.i = phi i32 [ %.185.i.i, %bb.v ], [ %.2.i.i, %bb.w ]
  %.pn.i.i = add nuw i32 %i.bs, %.1.pn.i.i
  %.2.i.i = and i32 %.pn.i.i, %i.bo               ; 4 uses
  %i.dl = icmp ugt i32 %.2.i.i, %.171.i.i.lcssa
  br i1 %i.dl, label %bb.w, label %bb.x, !llvm.loop !39

bb.x:                                             ; preds = %bb.w
  %i.dm = zext nneg i32 %.2.i.i to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.df, ptr %i.do, align 2, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.1.pn.i.i.1 = phi i32 [ %.2.i.i, %bb.x ], [ %.2.i.i.1, %bb.y ]
  %.pn.i.i.1 = add nuw i32 %i.bs, %.1.pn.i.i.1
  %.2.i.i.1 = and i32 %.pn.i.i.1, %i.bo           ; 5 uses
  %i.dp = icmp ugt i32 %.2.i.i.1, %.171.i.i.lcssa
  br i1 %i.dp, label %bb.y, label %bb.z, !llvm.loop !39

bb.z:                                             ; preds = %bb.y
  %niter174.next.1 = add i32 %niter174, 2         ; 2 uses
  %niter174.ncmp.1 = icmp eq i32 %niter174.next.1, %unroll_iter173
  br i1 %niter174.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.v, !llvm.loop !40

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.z
  %i.dq = and i16 %i.dd, 1
  %lcmp.mod170.not = icmp eq i16 %i.dq, 0
  br i1 %lcmp.mod170.not, label %._crit_edge.i.i, label %.epil.preheader168

.epil.preheader168:                               ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.185.i.i.epil.init = phi i32 [ %.06287.i.i, %.lr.ph.i.i ], [ %.2.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod172 = trunc i16 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.dr = zext nneg i32 %.185.i.i.epil.init to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i8 %i.df, ptr %i.dt, align 2, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader168
  %.1.pn.i.i.epil = phi i32 [ %.185.i.i.epil.init, %.epil.preheader168 ], [ %.2.i.i.epil, %bb.aa ]
  %.pn.i.i.epil = add nuw i32 %i.bs, %.1.pn.i.i.epil
  %.2.i.i.epil = and i32 %.pn.i.i.epil, %i.bo     ; 3 uses
  %i.du = icmp ugt i32 %.2.i.i.epil, %.171.i.i.lcssa
  br i1 %i.du, label %bb.aa, label %._crit_edge.i.i, !llvm.loop !39

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.aa, %.preheader79.i.i
  %.1.lcssa.i.i = phi i32 [ %.06287.i.i, %.preheader79.i.i ], [ %.2.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.2.i.i.epil, %bb.aa ] ; 2 uses
  %indvars.iv.next91.i.i = add nuw nsw i64 %indvars.iv90.i.i, 1 ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %indvars.iv.next91.i.i, %wide.trip.count.i.i
  br i1 %exitcond94.not.i.i, label %bb.ab, label %.preheader79.i.i, !llvm.loop !41

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.dv = trunc nuw nsw i32 %i.bl to i16
  %.not77.i.i = icmp eq i32 %.1.lcssa.i.i, 0
  br i1 %.not77.i.i, label %.preheader.preheader.i.i, label %FSE_buildDTable.exit.thread.i

.preheader.preheader.i.i:                         ; preds = %bb.ab
  %wide.trip.count98.i.i = zext nneg i32 %i.bn to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %indvars.iv95.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next96.i.i, %.preheader.i.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv95.i.i ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !33
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dz ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !37 ; 2 uses
  %i.ec = add i16 %i.eb, 1
  store i16 %i.ec, ptr %i.ea, align 2, !tbaa !37
  %i.ed = zext i16 %i.eb to i32                   ; 2 uses
  %i.ee = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ed, i1 true)
  %i.ef = xor i32 %i.ee, 31
  %i.eg = sub nsw i32 %i.bl, %i.ef                ; 2 uses
  %i.eh = trunc nsw i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !34
  %i.ej = and i32 %i.eg, 255
  %i.ek = shl i32 %i.ed, %i.ej
  %i.el = sub i32 %i.ek, %i.bn
  %i.em = trunc i32 %i.el to i16
  store i16 %i.em, ptr %i.dw, align 4, !tbaa !31
  %indvars.iv.next96.i.i = add nuw nsw i64 %indvars.iv95.i.i, 1 ; 2 uses
  %exitcond99.not.i.i = icmp eq i64 %indvars.iv.next96.i.i, %wide.trip.count98.i.i
  br i1 %exitcond99.not.i.i, label %bb.ac, label %.preheader.i.i, !llvm.loop !42

FSE_buildDTable.exit.thread.i:                    ; preds = %bb.ab, %bb.k, %bb.j
  %.0.i.ph.i = phi i64 [ -1, %bb.ab ], [ -44, %bb.k ], [ -46, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %FSE_decompress.exit.thread

bb.ac:                                            ; preds = %.preheader.i.i
  store i16 %i.dv, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.269.i.i.lcssa, ptr %.sroa.4.0..sroa_idx.i.i, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.en = sub nsw i64 %i.g, %i.bi                 ; 11 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi ; 44 uses
  %.not.i.i = icmp eq i16 %.269.i.i.lcssa, 0
  %6 = icmp ugt i64 %i.en, 7                      ; 2 uses
  br i1 %.not.i.i, label %bb.bg, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %6, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.g
  %i.ep = getelementptr i8, ptr %.ptr.i.i, i64 -1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !9   ; 2 uses
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !9
  %i.et = zext i8 %i.es to i64                    ; 7 uses
  switch i64 %i.en, label %bb.am [
    i64 7, label %bb.ag
    i64 6, label %bb.ah
    i64 5, label %bb.ai
    i64 4, label %bb.aj
    i64 3, label %bb.ak
    i64 2, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !9
  %i.ew = zext i8 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 48
  %i.ey = or disjoint i64 %i.ex, %i.et
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ez = phi i64 [ %i.ey, %bb.ag ], [ %i.et, %bb.af ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !9
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 40
  %i.fe = add nuw nsw i64 %i.fd, %i.ez
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.ff = phi i64 [ %i.fe, %bb.ah ], [ %i.et, %bb.af ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fi = zext i8 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 32
  %i.fk = add nuw nsw i64 %i.fj, %i.ff
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.fl = phi i64 [ %i.fk, %bb.ai ], [ %i.et, %bb.af ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !9
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 24
  %i.fq = add nuw nsw i64 %i.fp, %i.fl
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %i.fr = phi i64 [ %i.fq, %bb.aj ], [ %i.et, %bb.af ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !9
  %i.fu = zext i8 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 16
  %i.fw = add nuw nsw i64 %i.fv, %i.fr
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.fx = phi i64 [ %i.fw, %bb.ak ], [ %i.et, %bb.af ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !9
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 8
  %i.gc = add nuw nsw i64 %i.gb, %i.fx
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.sroa.0269.2.i.i = phi i64 [ %i.et, %bb.af ], [ %i.gc, %bb.al ]
  %i.gd = getelementptr i8, ptr %i.bg, i64 %i.g
  %i.ge = getelementptr i8, ptr %i.gd, i64 -1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !9   ; 2 uses
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit.thread319.i.i

BIT_initDStream.exit.thread319.i.i:               ; preds = %bb.am
  %i.gh = zext i8 %i.gf to i32
  %i.gi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gh, i1 true)
  %i.gj = trunc nuw nsw i64 %i.en to i32
  %i.gk = shl nuw nsw i32 %i.gj, 3
  %reass.sub = sub nsw i32 %i.gi, %i.gk
  %i.gl = add nsw i32 %reass.sub, 41
  br label %bb.an

BIT_initDStream.exit.i.i:                         ; preds = %bb.ae
  %.add.i.i = add nsw i64 %i.en, -8               ; 2 uses
  %.ptr377.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.add.i.i
  %.val.i.i.i = load i64, ptr %.ptr377.i.i, align 1
  %i.gm = zext i8 %i.eq to i32
  %i.gn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gm, i1 true)
  %i.go = xor i32 %i.gn, 31
  %i.gp = sub nuw nsw i32 8, %i.go
  %i.gq = icmp ult i64 %i.en, -119
  br i1 %i.gq, label %bb.an, label %FSE_decompress.exit.thread

bb.an:                                            ; preds = %BIT_initDStream.exit.i.i, %BIT_initDStream.exit.thread319.i.i
  %.sroa.0269.3329.i.i = phi i64 [ %.sroa.0269.2.i.i, %BIT_initDStream.exit.thread319.i.i ], [ %.val.i.i.i, %BIT_initDStream.exit.i.i ] ; 3 uses
  %.sroa.27270.3328.i.i = phi i32 [ %i.gl, %BIT_initDStream.exit.thread319.i.i ], [ %i.gp, %BIT_initDStream.exit.i.i ] ; 2 uses
  %.sroa.61277.3327.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit.thread319.i.i ], [ %.add.i.i, %BIT_initDStream.exit.i.i ] ; 5 uses
  %i.gr = and i32 %.sroa.27270.3328.i.i, 63
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl i64 %.sroa.0269.3329.i.i, %i.gs
  %i.gu = lshr i64 %i.gt, 1
  %i.gv = xor i32 %i.bl, 63
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = lshr i64 %i.gu, %i.gw                   ; 3 uses
  %i.gy = add nuw nsw i32 %.sroa.27270.3328.i.i, %i.bl ; 7 uses
  %i.gz = icmp samesign ugt i32 %i.gy, 64
  br i1 %i.gz, label %FSE_initDState.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i = icmp slt i64 %.sroa.61277.3327.idx.i.i, 8
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ha = lshr i32 %i.gy, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = and i32 %i.gy, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.hd = icmp eq i64 %.sroa.61277.3327.idx.i.i, 0
  br i1 %i.hd, label %FSE_initDState.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.he = lshr i32 %i.gy, 3
  %i.hf = zext nneg i32 %i.he to i64
  %.024.i.i378.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.3327.idx.i.i, i64 %i.hf) ; 2 uses
  %.024.i.i.i.i = trunc nsw i64 %.024.i.i378.i.i to i32
  %i.hg = and i64 %.024.i.i378.i.i, 4294967295
  %i.hh = shl nsw i32 %.024.i.i.i.i, 3
  %i.hi = sub nsw i32 %i.gy, %i.hh
  br label %BIT_reloadDStream.exit.sink.split.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i:          ; preds = %bb.ar, %bb.ap
  %.pn379.i.i = phi i64 [ %i.hg, %bb.ar ], [ %i.hb, %bb.ap ]
  %.sroa.27270.4.i.i = phi i32 [ %i.hi, %bb.ar ], [ %i.hc, %bb.ap ]
  %.sroa.61277.3327.ptr.add.i.i = sub nsw i64 %.sroa.61277.3327.idx.i.i, %.pn379.i.i ; 2 uses
  %.sroa.61277.4.ptr.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61277.3327.ptr.add.i.i
  %.val30.i.sink.i.i.i = load i64, ptr %.sroa.61277.4.ptr.i.i, align 1
  br label %FSE_initDState.exit.i.i

FSE_initDState.exit.i.i:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i, %bb.aq, %bb.an
  %.sroa.61277.5.idx.i.i = phi i64 [ %.sroa.61277.3327.idx.i.i, %bb.an ], [ 0, %bb.aq ], [ %.sroa.61277.3327.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 6 uses
  %.sroa.27270.5.i.i = phi i32 [ %i.gy, %bb.an ], [ %i.gy, %bb.aq ], [ %.sroa.27270.4.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %.sroa.0269.4.i.i = phi i64 [ %.sroa.0269.3329.i.i, %bb.an ], [ %.sroa.0269.3329.i.i, %bb.aq ], [ %.val30.i.sink.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i ] ; 2 uses
  %i.hj = and i32 %.sroa.27270.5.i.i, 63
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl i64 %.sroa.0269.4.i.i, %i.hk
  %i.hm = lshr i64 %i.hl, 1
  %i.hn = lshr i64 %i.hm, %i.gw                   ; 3 uses
  %i.ho = add nsw i32 %.sroa.27270.5.i.i, %i.bl   ; 7 uses
  %i.hp = icmp ugt i32 %i.ho, 64
  br i1 %i.hp, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %bb.as

bb.as:                                            ; preds = %FSE_initDState.exit.i.i
  %.not.i.i38.i.i = icmp slt i64 %.sroa.61277.5.idx.i.i, 8
  br i1 %.not.i.i38.i.i, label %bb.at, label %FSE_initDState.exit43.i.thread235.i

FSE_initDState.exit43.i.thread235.i:              ; preds = %bb.as
  %i.hq = lshr i32 %i.ho, 3
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = and i32 %i.ho, 7
  %.sroa.61277.5.ptr.add.i238.i = sub nuw nsw i64 %.sroa.61277.5.idx.i.i, %i.hr ; 2 uses
  %.sroa.61277.6.ptr.i239.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.61277.5.ptr.add.i238.i
  %.val30.i.sink.i41.i240.i = load i64, ptr %.sroa.61277.6.ptr.i239.i, align 1
  br label %.lr.ph.i.preheader

bb.at:                                            ; preds = %bb.as
  %i.ht = icmp eq i64 %.sroa.61277.5.idx.i.i, 0
  br i1 %i.ht, label %.lr.ph.i.preheader, label %FSE_initDState.exit43.i.i

FSE_initDState.exit43.i.i:                        ; preds = %bb.at
  %i.hu = lshr i32 %i.ho, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %.024.i.i42380.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.5.idx.i.i, i64 %i.hv) ; 2 uses
  %.024.i.i42.i.i = trunc i64 %.024.i.i42380.i.i to i32
  %i.hw = and i64 %.024.i.i42380.i.i, 4294967295
  %i.hx = shl i32 %.024.i.i42.i.i, 3
  %i.hy = sub i32 %i.ho, %i.hx                    ; 3 uses
  %.sroa.61277.5.ptr.add.i.i = sub nsw i64 %.sroa.61277.5.idx.i.i, %i.hw ; 3 uses
  %.sroa.61277.6.ptr.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61277.5.ptr.add.i.i
  %.val30.i.sink.i41.i.i = load i64, ptr %.sroa.61277.6.ptr.i.i, align 1
  %i.hz = icmp ugt i32 %i.hy, 64
  br i1 %i.hz, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %FSE_initDState.exit43.i.i, %bb.at, %FSE_initDState.exit43.i.thread235.i
  %.sroa.0269.0.i99.i.ph = phi i64 [ %.val30.i.sink.i41.i240.i, %FSE_initDState.exit43.i.thread235.i ], [ %.sroa.0269.4.i.i, %bb.at ], [ %.val30.i.sink.i41.i.i, %FSE_initDState.exit43.i.i ]
  %.sroa.27270.0.i98.i.ph = phi i32 [ %i.hs, %FSE_initDState.exit43.i.thread235.i ], [ %i.ho, %bb.at ], [ %i.hy, %FSE_initDState.exit43.i.i ]
  %.sroa.61277.0.idx.i97.i.ph = phi i64 [ %.sroa.61277.5.ptr.add.i238.i, %FSE_initDState.exit43.i.thread235.i ], [ 0, %bb.at ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ax
  %.036.idx.i13.i100.i = phi i64 [ %.036.add.i28.i.i, %bb.ax ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
end_hunk_0
begin_hunk_1_@HUF_readStats:bb.a
  %i.jz = getelementptr [4 x i8], ptr %i.jy, i64 %i.ji ; 3 uses
  %.sroa.0.0.copyload.i65.i.i = load i16, ptr %i.jz, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  %.sroa.4.0.copyload.i67.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i66.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i68.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 3
  %.sroa.5.0.copyload.i69.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i68.i.i, align 1, !tbaa !9
  %i.ka = zext i8 %.sroa.5.0.copyload.i69.i.i to i32 ; 2 uses
  %i.kb = and i32 %i.ju, 63
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = shl i64 %.sroa.0269.6.i.i, %i.kc
  %i.ke = sub nsw i32 0, %i.ka
  %i.kf = and i32 %i.ke, 63
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = lshr i64 %i.kd, %i.kg
  %i.ki = add i32 %i.ju, %i.ka                    ; 3 uses
  %i.kj = zext i16 %.sroa.0.0.copyload.i65.i.i to i64
  %i.kk = add i64 %i.kh, %i.kj                    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i14.i101.i, i64 3
  store i8 %.sroa.4.0.copyload.i67.i.i, ptr %i.kl, align 1, !tbaa !9
  %.036.add.i28.i.i = add nuw nsw i64 %.036.idx.i13.i100.i, 4 ; 2 uses
  %i.km = icmp ugt i32 %i.ki, 64
  br i1 %i.km, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i, !llvm.loop !98

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader, %BIT_endOfDStream.exit97.thread.i.i
  %.1.idx.i15472.i.i = phi i64 [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.036.idx.i13.i100.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0269.1471.i.i = phi i64 [ %.sroa.0269.8.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0269.1471.i.i.ph, %.lr.ph.i24.i.preheader ]
  %.sroa.27270.1470.i.i = phi i32 [ %i.mf, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.27270.1470.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.61277.1.idx469.i.i = phi i64 [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.1.idx469.i.i.ph, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0256.1468.i.i = phi i64 [ %i.mh, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0256.0.i96.i, %.lr.ph.i24.i.preheader ] ; 5 uses
  %.sroa.0262.1467.i.i = phi i64 [ %i.lk, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.0262.0.i95.i, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.1.ptr.ptr.i16473.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i15472.i.i
  %.not.i72.i.i = icmp slt i64 %.sroa.61277.1.idx469.i.i, 8
  br i1 %.not.i72.i.i, label %bb.ay, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i24.i
  %i.kn = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %.sroa.61277.1.add387.i.i = sub nuw nsw i64 %.sroa.61277.1.idx469.i.i, %i.ko ; 3 uses
  %.ptr391.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.61277.1.add387.i.i
  %i.kp = and i32 %.sroa.27270.1470.i.i, 7
  %.val30.i73.i.i = load i64, ptr %.ptr391.i.i, align 1
  %i.kq = icmp eq i64 %.sroa.61277.1.add387.i.i, 0
  br label %BIT_endOfDStream.exit.thread.i.i

bb.ay:                                            ; preds = %.lr.ph.i24.i
  %i.kr = icmp eq i64 %.sroa.61277.1.idx469.i.i, 0
  br i1 %i.kr, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ks = lshr i32 %.sroa.27270.1470.i.i, 3
  %i.kt = zext nneg i32 %i.ks to i64
  %.024.i75392.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.1.idx469.i.i, i64 %i.kt) ; 2 uses
  %.024.i75.i.i = trunc i64 %.024.i75392.i.i to i32
  %i.ku = and i64 %.024.i75392.i.i, 4294967295
  %.sroa.61277.1.add.i.i = sub nsw i64 %.sroa.61277.1.idx469.i.i, %i.ku ; 2 uses
  %.ptr390.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61277.1.add.i.i
  %i.kv = shl i32 %.024.i75.i.i, 3
  %i.kw = sub i32 %.sroa.27270.1470.i.i, %i.kv
  %.val.i77.i.i = load i64, ptr %.ptr390.i.i, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.61277.9.ph.idx.i.i = phi i64 [ 0, %bb.ay ], [ %.sroa.61277.1.add.i.i, %bb.az ] ; 2 uses
  %.sroa.27270.9.ph.i.i = phi i32 [ %.sroa.27270.1470.i.i, %bb.ay ], [ %i.kw, %bb.az ] ; 2 uses
  %.sroa.0269.7.ph.i.i = phi i64 [ %.sroa.0269.1471.i.i, %bb.ay ], [ %.val.i77.i.i, %bb.az ]
  %i.kx = icmp eq i64 %.sroa.61277.9.ph.idx.i.i, 0 ; 2 uses
  %.not393.i.i = icmp eq i32 %.sroa.27270.9.ph.i.i, 64
  %or.cond.i.i = and i1 %i.kx, %.not393.i.i
  br i1 %or.cond.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit.thread.i.i

BIT_endOfDStream.exit.thread.i.i:                 ; preds = %bb.ba, %.thread.i.i
  %i.ky = phi i1 [ %i.kq, %.thread.i.i ], [ %i.kx, %bb.ba ]
  %.sroa.0269.7.ph629.i.i = phi i64 [ %.val30.i73.i.i, %.thread.i.i ], [ %.sroa.0269.7.ph.i.i, %bb.ba ] ; 2 uses
  %.sroa.27270.9.ph628.i.i = phi i32 [ %i.kp, %.thread.i.i ], [ %.sroa.27270.9.ph.i.i, %bb.ba ] ; 2 uses
  %.sroa.61277.9.ph.idx627.i.i = phi i64 [ %.sroa.61277.1.add387.i.i, %.thread.i.i ], [ %.sroa.61277.9.ph.idx.i.i, %bb.ba ] ; 5 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.0262.1467.i.i ; 3 uses
  %.sroa.0.0.copyload.i81.i.i = load i16, ptr %i.kz, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %.sroa.4.0.copyload.i83.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i82.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i84.i.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 3
  %.sroa.5.0.copyload.i85.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i84.i.i, align 1, !tbaa !9
  %i.la = zext i8 %.sroa.5.0.copyload.i85.i.i to i32 ; 2 uses
  %i.lb = and i32 %.sroa.27270.9.ph628.i.i, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = shl i64 %.sroa.0269.7.ph629.i.i, %i.lc
  %i.le = sub nsw i32 0, %i.la
  %i.lf = and i32 %i.le, 63
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = lshr i64 %i.ld, %i.lg
  %i.li = add i32 %.sroa.27270.9.ph628.i.i, %i.la ; 7 uses
  %i.lj = zext i16 %.sroa.0.0.copyload.i81.i.i to i64
  %i.lk = add i64 %i.lh, %i.lj                    ; 5 uses
  %.add51.i23.i.i = or disjoint i64 %.1.idx.i15472.i.i, 1 ; 3 uses
  %.ptr.ptr.i24.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i23.i.i
  store i8 %.sroa.4.0.copyload.i83.i.i, ptr %.1.ptr.ptr.i16473.i.i, align 1, !tbaa !9
  %i.ll = icmp ugt i32 %i.li, 64
  br i1 %i.ll, label %BIT_reloadDStream.exit80.split.loop.exit444.i.i, label %bb.bb

bb.bb:                                            ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.not.i88.i.i = icmp slt i64 %.sroa.61277.9.ph.idx627.i.i, 8
  br i1 %.not.i88.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = lshr i32 %i.li, 3
  %i.ln = zext nneg i32 %i.lm to i64
  %.sroa.61277.9.ph.add386.i.i = sub nuw nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.ln ; 2 uses
  %.ptr389.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.61277.9.ph.add386.i.i
  %i.lo = and i32 %i.li, 7
  %.val30.i89.i.i = load i64, ptr %.ptr389.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

bb.bd:                                            ; preds = %bb.bb
  br i1 %i.ky, label %BIT_reloadDStream.exit96.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lp = lshr i32 %i.li, 3
  %i.lq = zext nneg i32 %i.lp to i64
  %.024.i91394.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61277.9.ph.idx627.i.i, i64 %i.lq) ; 2 uses
  %.024.i91.i.i = trunc i64 %.024.i91394.i.i to i32
  %i.lr = and i64 %.024.i91394.i.i, 4294967295
  %.sroa.61277.9.ph.add.i.i = sub nsw i64 %.sroa.61277.9.ph.idx627.i.i, %i.lr ; 2 uses
  %.ptr388.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61277.9.ph.add.i.i
  %i.ls = shl i32 %.024.i91.i.i, 3
  %i.lt = sub i32 %i.li, %i.ls
  %.val.i93.i.i = load i64, ptr %.ptr388.i.i, align 1
  br label %BIT_reloadDStream.exit96.i.i

BIT_reloadDStream.exit96.i.i:                     ; preds = %bb.be, %bb.bd, %bb.bc
  %.sroa.61277.10.idx.i.i = phi i64 [ %.sroa.61277.9.ph.add386.i.i, %bb.bc ], [ %.sroa.61277.9.ph.add.i.i, %bb.be ], [ 0, %bb.bd ] ; 4 uses
  %.sroa.27270.10.i.i = phi i32 [ %i.lo, %bb.bc ], [ %i.lt, %bb.be ], [ %i.li, %bb.bd ] ; 4 uses
  %.sroa.0269.8.i.i = phi i64 [ %.val30.i89.i.i, %bb.bc ], [ %.val.i93.i.i, %bb.be ], [ %.sroa.0269.7.ph629.i.i, %bb.bd ] ; 2 uses
  %i.lu = icmp eq i64 %.1.idx.i15472.i.i, 254
  br i1 %i.lu, label %BIT_reloadDStream.exit80.split.loop.exit456.i.i, label %bb.bf

bb.bf:                                            ; preds = %BIT_reloadDStream.exit96.i.i
  %i.lv = icmp eq i64 %.sroa.61277.10.idx.i.i, 0
  %.not395.i.i = icmp eq i32 %.sroa.27270.10.i.i, 64
  %or.cond425.i.i = and i1 %i.lv, %.not395.i.i
  br i1 %or.cond425.i.i, label %BIT_reloadDStream.exit80.i.i, label %BIT_endOfDStream.exit97.thread.i.i

BIT_endOfDStream.exit97.thread.i.i:               ; preds = %bb.bf
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.0256.1468.i.i ; 3 uses
  %.sroa.0.0.copyload.i98.i.i = load i16, ptr %i.lw, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i99.i.i = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  %.sroa.4.0.copyload.i100.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i99.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i101.i.i = getelementptr inbounds nuw i8, ptr %i.lw, i64 3
  %.sroa.5.0.copyload.i102.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i101.i.i, align 1, !tbaa !9
  %i.lx = zext i8 %.sroa.5.0.copyload.i102.i.i to i32 ; 2 uses
  %i.ly = and i32 %.sroa.27270.10.i.i, 63
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = shl i64 %.sroa.0269.8.i.i, %i.lz
  %i.mb = sub nsw i32 0, %i.lx
  %i.mc = and i32 %i.mb, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = lshr i64 %i.ma, %i.md
  %i.mf = add i32 %.sroa.27270.10.i.i, %i.lx      ; 3 uses
  %i.mg = zext i16 %.sroa.0.0.copyload.i98.i.i to i64
  %i.mh = add i64 %i.me, %i.mg                    ; 2 uses
  %.add.i27.i.i = add nuw nsw i64 %.1.idx.i15472.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i100.i.i, ptr %.ptr.ptr.i24.i.i, align 1, !tbaa !9
  %i.mi = icmp ugt i32 %i.mf, 64
  br i1 %i.mi, label %BIT_reloadDStream.exit80.split.loop.exit450.i.i, label %.lr.ph.i24.i

BIT_reloadDStream.exit80.split.loop.exit444.i.i:  ; preds = %BIT_endOfDStream.exit.thread.i.i
  %.sroa.61277.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61277.9.ph.idx627.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit450.i.i:  ; preds = %bb.ax, %BIT_endOfDStream.exit97.thread.i.i, %.preheader437.i.i, %FSE_initDState.exit43.i.i, %FSE_initDState.exit.i.i
  %.sroa.61277.1.idx.lcssa.i.i = phi i64 [ %.sroa.61277.8.idx.i.i, %.preheader437.i.i ], [ %.sroa.61277.10.idx.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ %.sroa.61277.5.ptr.add.i.i, %FSE_initDState.exit43.i.i ], [ %.sroa.61277.5.idx.i.i, %FSE_initDState.exit.i.i ], [ %.sroa.61277.8.idx.i.i, %bb.ax ]
  %.sroa.0256.1.lcssa.ph451.i.i = phi i64 [ %.sroa.0256.0.i96.i, %.preheader437.i.i ], [ %i.mh, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hn, %FSE_initDState.exit43.i.i ], [ %i.hn, %FSE_initDState.exit.i.i ], [ %i.kk, %bb.ax ]
  %.sroa.0262.2.ph452.i.i = phi i64 [ %.sroa.0262.0.i95.i, %.preheader437.i.i ], [ %i.lk, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.gx, %FSE_initDState.exit43.i.i ], [ %i.gx, %FSE_initDState.exit.i.i ], [ %i.jw, %bb.ax ]
  %.sroa.27270.2.ph454.i.i = phi i32 [ %.sroa.27270.8.i.i, %.preheader437.i.i ], [ %i.mf, %BIT_endOfDStream.exit97.thread.i.i ], [ %i.hy, %FSE_initDState.exit43.i.i ], [ %i.ho, %FSE_initDState.exit.i.i ], [ %i.ki, %bb.ax ]
  %.2.idx.i18.ph455.i.i = phi i64 [ %.036.idx.i13.i100.i, %.preheader437.i.i ], [ %.add.i27.i.i, %BIT_endOfDStream.exit97.thread.i.i ], [ 0, %FSE_initDState.exit43.i.i ], [ 0, %FSE_initDState.exit.i.i ], [ %.036.add.i28.i.i, %bb.ax ]
  %.sroa.61277.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61277.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.split.loop.exit456.i.i:  ; preds = %BIT_reloadDStream.exit96.i.i
  %.sroa.61277.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61277.10.idx.i.i
  br label %BIT_reloadDStream.exit80.i.i

BIT_reloadDStream.exit80.i.i:                     ; preds = %bb.bf, %bb.ba, %BIT_reloadDStream.exit80.split.loop.exit456.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i
  %.sroa.0256.1.lcssa.i.i = phi i64 [ %.sroa.0256.1.lcssa.ph451.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.0256.1468.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.sroa.0256.1468.i.i, %bb.ba ], [ %.sroa.0256.1468.i.i, %bb.bf ]
  %.sroa.0262.2.i.i = phi i64 [ %.sroa.0262.2.ph452.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %i.lk, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.lk, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.lk, %bb.bf ], [ %.sroa.0262.1467.i.i, %bb.ba ]
  %.sroa.61277.2.i.i = phi ptr [ %.sroa.61277.1.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.61277.10.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.sroa.61277.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %i.eo, %bb.ba ], [ %i.eo, %bb.bf ]
  %.sroa.27270.2.i.i = phi i32 [ %.sroa.27270.2.ph454.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ %.sroa.27270.10.i.i, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %i.li, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ 64, %bb.ba ], [ 64, %bb.bf ]
  %.2.idx.i18.i.i = phi i64 [ %.2.idx.i18.ph455.i.i, %BIT_reloadDStream.exit80.split.loop.exit450.i.i ], [ 255, %BIT_reloadDStream.exit80.split.loop.exit456.i.i ], [ %.add51.i23.i.i, %BIT_reloadDStream.exit80.split.loop.exit444.i.i ], [ %.add51.i23.i.i, %bb.bf ], [ %.1.idx.i15472.i.i, %bb.ba ] ; 2 uses
  %i.mj = icmp eq ptr %.sroa.61277.2.i.i, %i.eo
  %.not396.i.i = icmp eq i32 %.sroa.27270.2.i.i, 64
  %or.cond426.i.i = and i1 %i.mj, %.not396.i.i
  %.not397.i.i = icmp eq i64 %.sroa.0262.2.i.i, 0
  %or.cond427.i.i = select i1 %or.cond426.i.i, i1 %.not397.i.i, i1 false
  %.not398.i.i = icmp eq i64 %.sroa.0256.1.lcssa.i.i, 0
  %or.cond428.i.i = select i1 %or.cond427.i.i, i1 %.not398.i.i, i1 false
  br i1 %or.cond428.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit105.thread.i.i

BIT_endOfDStream.exit105.thread.i.i:              ; preds = %BIT_reloadDStream.exit80.i.i
  %i.mk = icmp eq i64 %.2.idx.i18.i.i, 255
  %..i22.i.i = select i1 %i.mk, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

bb.bg:                                            ; preds = %bb.ac
  br i1 %6, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %.ptr400.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.g
  %i.ml = getelementptr i8, ptr %.ptr400.i.i, i64 -1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !9   ; 2 uses
  %i.mn = icmp eq i8 %i.mm, 0
  br i1 %i.mn, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit110.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.mo = load i8, ptr %i.eo, align 1, !tbaa !9
  %i.mp = zext i8 %i.mo to i64                    ; 7 uses
  switch i64 %i.en, label %bb.bp [
    i64 7, label %bb.bj
    i64 6, label %bb.bk
    i64 5, label %bb.bl
    i64 4, label %bb.bm
    i64 3, label %bb.bn
    i64 2, label %bb.bo
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.mq = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !9
  %i.ms = zext i8 %i.mr to i64
  %i.mt = shl nuw nsw i64 %i.ms, 48
  %i.mu = or disjoint i64 %i.mt, %i.mp
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mv = phi i64 [ %i.mu, %bb.bj ], [ %i.mp, %bb.bi ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !9
  %i.my = zext i8 %i.mx to i64
  %i.mz = shl nuw nsw i64 %i.my, 40
  %i.na = add nuw nsw i64 %i.mz, %i.mv
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.nb = phi i64 [ %i.na, %bb.bk ], [ %i.mp, %bb.bi ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !9
  %i.ne = zext i8 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 32
  %i.ng = add nuw nsw i64 %i.nf, %i.nb
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %i.nh = phi i64 [ %i.ng, %bb.bl ], [ %i.mp, %bb.bi ]
  %i.ni = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !9
  %i.nk = zext i8 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 24
  %i.nm = add nuw nsw i64 %i.nl, %i.nh
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi
  %i.nn = phi i64 [ %i.nm, %bb.bm ], [ %i.mp, %bb.bi ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.np = load i8, ptr %i.no, align 1, !tbaa !9
  %i.nq = zext i8 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 16
  %i.ns = add nuw nsw i64 %i.nr, %i.nn
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bi
  %i.nt = phi i64 [ %i.ns, %bb.bn ], [ %i.mp, %bb.bi ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !9
  %i.nw = zext i8 %i.nv to i64
  %i.nx = shl nuw nsw i64 %i.nw, 8
  %i.ny = add nuw nsw i64 %i.nx, %i.nt
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bi
  %.sroa.0215.2.i.i = phi i64 [ %i.mp, %bb.bi ], [ %i.ny, %bb.bo ]
  %i.nz = getelementptr i8, ptr %i.bg, i64 %i.g
  %i.oa = getelementptr i8, ptr %i.nz, i64 -1
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !9   ; 2 uses
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %FSE_decompress.exit.thread, label %BIT_initDStream.exit110.thread351.i.i

BIT_initDStream.exit110.thread351.i.i:            ; preds = %bb.bp
  %i.od = zext i8 %i.ob to i32
  %i.oe = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.od, i1 true)
  %i.of = trunc nuw nsw i64 %i.en to i32
  %i.og = shl nuw nsw i32 %i.of, 3
  %reass.sub168 = sub nsw i32 %i.oe, %i.og
  %i.oh = add nsw i32 %reass.sub168, 41
  br label %bb.bq

BIT_initDStream.exit110.i.i:                      ; preds = %bb.bh
  %.add399.i.i = add nsw i64 %i.en, -8            ; 2 uses
  %.ptr401.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.add399.i.i
  %.val.i108.i.i = load i64, ptr %.ptr401.i.i, align 1
  %i.oi = zext i8 %i.mm to i32
  %i.oj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.oi, i1 true)
  %i.ok = xor i32 %i.oj, 31
  %i.ol = sub nuw nsw i32 8, %i.ok
  %i.om = icmp ult i64 %i.en, -119
  br i1 %i.om, label %bb.bq, label %FSE_decompress.exit.thread

bb.bq:                                            ; preds = %BIT_initDStream.exit110.i.i, %BIT_initDStream.exit110.thread351.i.i
  %.sroa.61221.3360.idx.i.i = phi i64 [ 0, %BIT_initDStream.exit110.thread351.i.i ], [ %.add399.i.i, %BIT_initDStream.exit110.i.i ] ; 5 uses
  %.sroa.27.3359.i.i = phi i32 [ %i.oh, %BIT_initDStream.exit110.thread351.i.i ], [ %i.ol, %BIT_initDStream.exit110.i.i ] ; 2 uses
  %.sroa.0215.3358.i.i = phi i64 [ %.sroa.0215.2.i.i, %BIT_initDStream.exit110.thread351.i.i ], [ %.val.i108.i.i, %BIT_initDStream.exit110.i.i ] ; 3 uses
  %i.on = and i32 %.sroa.27.3359.i.i, 63
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = shl i64 %.sroa.0215.3358.i.i, %i.oo
  %i.oq = lshr i64 %i.op, 1
  %i.or = xor i32 %i.bl, 63
  %i.os = zext nneg i32 %i.or to i64              ; 2 uses
  %i.ot = lshr i64 %i.oq, %i.os                   ; 3 uses
  %i.ou = add nuw nsw i32 %.sroa.27.3359.i.i, %i.bl ; 7 uses
  %i.ov = icmp samesign ugt i32 %i.ou, 64
  br i1 %i.ov, label %FSE_initDState.exit119.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i.i114.i.i = icmp slt i64 %.sroa.61221.3360.idx.i.i, 8
  br i1 %.not.i.i114.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ow = lshr i32 %i.ou, 3
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = and i32 %i.ou, 7
  br label %BIT_reloadDStream.exit.sink.split.i115.i.i

bb.bt:                                            ; preds = %bb.br
  %i.oz = icmp eq i64 %.sroa.61221.3360.idx.i.i, 0
  br i1 %i.oz, label %FSE_initDState.exit119.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pa = lshr i32 %i.ou, 3
  %i.pb = zext nneg i32 %i.pa to i64
  %.024.i.i118402.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.3360.idx.i.i, i64 %i.pb) ; 2 uses
  %.024.i.i118.i.i = trunc nsw i64 %.024.i.i118402.i.i to i32
  %i.pc = and i64 %.024.i.i118402.i.i, 4294967295
  %i.pd = shl nsw i32 %.024.i.i118.i.i, 3
  %i.pe = sub nsw i32 %i.ou, %i.pd
  br label %BIT_reloadDStream.exit.sink.split.i115.i.i

BIT_reloadDStream.exit.sink.split.i115.i.i:       ; preds = %bb.bu, %bb.bs
  %.sroa.27.4.i.i = phi i32 [ %i.pe, %bb.bu ], [ %i.oy, %bb.bs ]
  %.pn403.i.i = phi i64 [ %i.pc, %bb.bu ], [ %i.ox, %bb.bs ]
  %.sroa.61221.3360.ptr.add.i.i = sub nsw i64 %.sroa.61221.3360.idx.i.i, %.pn403.i.i ; 2 uses
  %.sroa.61221.4.ptr.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61221.3360.ptr.add.i.i
  %.val30.i.sink.i117.i.i = load i64, ptr %.sroa.61221.4.ptr.i.i, align 1
  br label %FSE_initDState.exit119.i.i

FSE_initDState.exit119.i.i:                       ; preds = %BIT_reloadDStream.exit.sink.split.i115.i.i, %bb.bt, %bb.bq
  %.sroa.0215.4.i.i = phi i64 [ %.sroa.0215.3358.i.i, %bb.bq ], [ %.sroa.0215.3358.i.i, %bb.bt ], [ %.val30.i.sink.i117.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.27.5.i.i = phi i32 [ %i.ou, %bb.bq ], [ %i.ou, %bb.bt ], [ %.sroa.27.4.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 2 uses
  %.sroa.61221.5.idx.i.i = phi i64 [ %.sroa.61221.3360.idx.i.i, %bb.bq ], [ 0, %bb.bt ], [ %.sroa.61221.3360.ptr.add.i.i, %BIT_reloadDStream.exit.sink.split.i115.i.i ] ; 6 uses
  %i.pf = and i32 %.sroa.27.5.i.i, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl i64 %.sroa.0215.4.i.i, %i.pg
  %i.pi = lshr i64 %i.ph, 1
  %i.pj = lshr i64 %i.pi, %i.os                   ; 3 uses
  %i.pk = add nsw i32 %.sroa.27.5.i.i, %i.bl      ; 7 uses
  %i.pl = icmp ugt i32 %i.pk, 64
  br i1 %i.pl, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %bb.bv

bb.bv:                                            ; preds = %FSE_initDState.exit119.i.i
  %.not.i.i123.i.i = icmp slt i64 %.sroa.61221.5.idx.i.i, 8
  br i1 %.not.i.i123.i.i, label %bb.bw, label %FSE_initDState.exit128.i.thread251.i

FSE_initDState.exit128.i.thread251.i:             ; preds = %bb.bv
  %i.pm = lshr i32 %i.pk, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = and i32 %i.pk, 7
  %.sroa.61221.5.ptr.add.i254.i = sub nuw nsw i64 %.sroa.61221.5.idx.i.i, %i.pn ; 2 uses
  %.sroa.61221.6.ptr.i255.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.61221.5.ptr.add.i254.i
  %.val30.i.sink.i126.i256.i = load i64, ptr %.sroa.61221.6.ptr.i255.i, align 1
  br label %.lr.ph113.i.preheader

bb.bw:                                            ; preds = %bb.bv
  %i.pp = icmp eq i64 %.sroa.61221.5.idx.i.i, 0
  br i1 %i.pp, label %.lr.ph113.i.preheader, label %FSE_initDState.exit128.i.i

FSE_initDState.exit128.i.i:                       ; preds = %bb.bw
  %i.pq = lshr i32 %i.pk, 3
  %i.pr = zext nneg i32 %i.pq to i64
  %.024.i.i127404.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.5.idx.i.i, i64 %i.pr) ; 2 uses
  %.024.i.i127.i.i = trunc i64 %.024.i.i127404.i.i to i32
  %i.ps = and i64 %.024.i.i127404.i.i, 4294967295
  %i.pt = shl i32 %.024.i.i127.i.i, 3
  %i.pu = sub i32 %i.pk, %i.pt                    ; 3 uses
  %.sroa.61221.5.ptr.add.i.i = sub nsw i64 %.sroa.61221.5.idx.i.i, %i.ps ; 3 uses
  %.sroa.61221.6.ptr.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61221.5.ptr.add.i.i
  %.val30.i.sink.i126.i.i = load i64, ptr %.sroa.61221.6.ptr.i.i, align 1
  %i.pv = icmp ugt i32 %i.pu, 64
  br i1 %i.pv, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i.preheader

.lr.ph113.i.preheader:                            ; preds = %FSE_initDState.exit128.i.i, %bb.bw, %FSE_initDState.exit128.i.thread251.i
  %.sroa.61221.0.idx.i108.i.ph = phi i64 [ %.sroa.61221.5.ptr.add.i254.i, %FSE_initDState.exit128.i.thread251.i ], [ 0, %bb.bw ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ]
  %.sroa.27.0.i107.i.ph = phi i32 [ %i.po, %FSE_initDState.exit128.i.thread251.i ], [ %i.pk, %bb.bw ], [ %i.pu, %FSE_initDState.exit128.i.i ]
  %.sroa.0215.0.i106.i.ph = phi i64 [ %.val30.i.sink.i126.i256.i, %FSE_initDState.exit128.i.thread251.i ], [ %.sroa.0215.4.i.i, %bb.bw ], [ %.val30.i.sink.i126.i.i, %FSE_initDState.exit128.i.i ]
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.lr.ph113.i.preheader, %bb.ca
  %.036.idx.i.i111.i = phi i64 [ %.036.add.i.i.i, %bb.ca ], [ 0, %.lr.ph113.i.preheader ] ; 5 uses
end_hunk_1
begin_hunk_2_@HUF_readStats:bb.a
  %i.sa = and i32 %i.rt, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl i64 %.sroa.0215.6.i.i, %i.sb
  %i.sd = lshr i64 %i.sc, 1
  %i.se = and i32 %i.rz, 63
  %i.sf = xor i32 %i.se, 63
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = lshr i64 %i.sd, %i.sg
  %i.si = add i32 %i.rt, %i.rz                    ; 3 uses
  %i.sj = zext i16 %.sroa.0.0.copyload.i159.i.i to i64
  %i.sk = add nuw i64 %i.sh, %i.sj                ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.036.ptr.ptr.i.i112.i, i64 3
  store i8 %.sroa.4.0.copyload.i161.i.i, ptr %i.sl, align 1, !tbaa !9
  %.036.add.i.i.i = add nuw nsw i64 %.036.idx.i.i111.i, 4 ; 2 uses
  %i.sm = icmp ugt i32 %i.si, 64
  br i1 %i.sm, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph113.i, !llvm.loop !98

.lr.ph514.i.i:                                    ; preds = %.lr.ph514.i.i.preheader, %BIT_endOfDStream.exit192.thread.i.i
  %.1.idx.i512.i.i = phi i64 [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.036.idx.i.i111.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0.1511.i.i = phi i64 [ %i.uj, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0.0.i110.i, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0207.1510.i.i = phi i64 [ %i.tl, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0207.0.i109.i, %.lr.ph514.i.i.preheader ] ; 2 uses
  %.sroa.61221.1.idx509.i.i = phi i64 [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.1.idx509.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.27.1508.i.i = phi i32 [ %i.uh, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.27.1508.i.i.ph, %.lr.ph514.i.i.preheader ] ; 5 uses
  %.sroa.0215.1507.i.i = phi i64 [ %.sroa.0215.8.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.0215.1507.i.i.ph, %.lr.ph514.i.i.preheader ]
  %.1.ptr.ptr.i513.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.idx.i512.i.i
  %.not.i166.i.i = icmp slt i64 %.sroa.61221.1.idx509.i.i, 8
  br i1 %.not.i166.i.i, label %bb.cb, label %.thread637.i.i

.thread637.i.i:                                   ; preds = %.lr.ph514.i.i
  %i.sn = lshr i32 %.sroa.27.1508.i.i, 3
  %i.so = zext nneg i32 %i.sn to i64
  %.sroa.61221.1.add411.i.i = sub nuw nsw i64 %.sroa.61221.1.idx509.i.i, %i.so ; 3 uses
  %.ptr415.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.61221.1.add411.i.i
  %i.sp = and i32 %.sroa.27.1508.i.i, 7
  %.val30.i167.i.i = load i64, ptr %.ptr415.i.i, align 1
  %i.sq = icmp eq i64 %.sroa.61221.1.add411.i.i, 0
  br label %BIT_endOfDStream.exit175.thread.i.i

bb.cb:                                            ; preds = %.lr.ph514.i.i
  %i.sr = icmp eq i64 %.sroa.61221.1.idx509.i.i, 0
  br i1 %i.sr, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ss = lshr i32 %.sroa.27.1508.i.i, 3
  %i.st = zext nneg i32 %i.ss to i64
  %.024.i169416.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.1.idx509.i.i, i64 %i.st) ; 2 uses
  %.024.i169.i.i = trunc i64 %.024.i169416.i.i to i32
  %i.su = and i64 %.024.i169416.i.i, 4294967295
  %.sroa.61221.1.add.i.i = sub nsw i64 %.sroa.61221.1.idx509.i.i, %i.su ; 2 uses
  %.ptr414.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61221.1.add.i.i
  %i.sv = shl i32 %.024.i169.i.i, 3
  %i.sw = sub i32 %.sroa.27.1508.i.i, %i.sv
  %.val.i171.i.i = load i64, ptr %.ptr414.i.i, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sroa.0215.7.ph.i.i = phi i64 [ %.sroa.0215.1507.i.i, %bb.cb ], [ %.val.i171.i.i, %bb.cc ]
  %.sroa.27.9.ph.i.i = phi i32 [ %.sroa.27.1508.i.i, %bb.cb ], [ %i.sw, %bb.cc ] ; 2 uses
  %.sroa.61221.9.ph.idx.i.i = phi i64 [ 0, %bb.cb ], [ %.sroa.61221.1.add.i.i, %bb.cc ] ; 2 uses
  %i.sx = icmp eq i64 %.sroa.61221.9.ph.idx.i.i, 0 ; 2 uses
  %.not417.i.i = icmp eq i32 %.sroa.27.9.ph.i.i, 64
  %or.cond429.i.i = and i1 %.not417.i.i, %i.sx
  %.not418.i.i = icmp eq i64 %.sroa.0207.1510.i.i, 0
  %or.cond430.i.i = select i1 %or.cond429.i.i, i1 %.not418.i.i, i1 false
  br i1 %or.cond430.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit175.thread.i.i

BIT_endOfDStream.exit175.thread.i.i:              ; preds = %bb.cd, %.thread637.i.i
  %i.sy = phi i1 [ %i.sq, %.thread637.i.i ], [ %i.sx, %bb.cd ]
  %.sroa.61221.9.ph.idx647.i.i = phi i64 [ %.sroa.61221.1.add411.i.i, %.thread637.i.i ], [ %.sroa.61221.9.ph.idx.i.i, %bb.cd ] ; 5 uses
  %.sroa.27.9.ph646.i.i = phi i32 [ %i.sp, %.thread637.i.i ], [ %.sroa.27.9.ph.i.i, %bb.cd ] ; 2 uses
  %.sroa.0215.7.ph645.i.i = phi i64 [ %.val30.i167.i.i, %.thread637.i.i ], [ %.sroa.0215.7.ph.i.i, %bb.cd ] ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.0207.1510.i.i ; 3 uses
  %.sroa.0.0.copyload.i176.i.i = load i16, ptr %i.sz, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i177.i.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 2
  %.sroa.4.0.copyload.i178.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i177.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i179.i.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 3
  %.sroa.5.0.copyload.i180.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i179.i.i, align 1, !tbaa !9
  %i.ta = zext i8 %.sroa.5.0.copyload.i180.i.i to i32 ; 2 uses
  %i.tb = and i32 %.sroa.27.9.ph646.i.i, 63
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = shl i64 %.sroa.0215.7.ph645.i.i, %i.tc
  %i.te = lshr i64 %i.td, 1
  %i.tf = and i32 %i.ta, 63
  %i.tg = xor i32 %i.tf, 63
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = lshr i64 %i.te, %i.th
  %i.tj = add i32 %.sroa.27.9.ph646.i.i, %i.ta    ; 7 uses
  %i.tk = zext i16 %.sroa.0.0.copyload.i176.i.i to i64
  %i.tl = add nuw i64 %i.ti, %i.tk                ; 5 uses
  %.add51.i.i.i = or disjoint i64 %.1.idx.i512.i.i, 1 ; 3 uses
  %.ptr.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add51.i.i.i
  store i8 %.sroa.4.0.copyload.i178.i.i, ptr %.1.ptr.ptr.i513.i.i, align 1, !tbaa !9
  %i.tm = icmp ugt i32 %i.tj, 64
  br i1 %i.tm, label %BIT_reloadDStream.exit174.split.loop.exit484.i.i, label %bb.ce

bb.ce:                                            ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.not.i183.i.i = icmp slt i64 %.sroa.61221.9.ph.idx647.i.i, 8
  br i1 %.not.i183.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tn = lshr i32 %i.tj, 3
  %i.to = zext nneg i32 %i.tn to i64
  %.sroa.61221.9.ph.add410.i.i = sub nuw nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.to ; 2 uses
  %.ptr413.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.61221.9.ph.add410.i.i
  %i.tp = and i32 %i.tj, 7
  %.val30.i184.i.i = load i64, ptr %.ptr413.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

bb.cg:                                            ; preds = %bb.ce
  br i1 %i.sy, label %BIT_reloadDStream.exit191.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.tq = lshr i32 %i.tj, 3
  %i.tr = zext nneg i32 %i.tq to i64
  %.024.i186419.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.61221.9.ph.idx647.i.i, i64 %i.tr) ; 2 uses
  %.024.i186.i.i = trunc i64 %.024.i186419.i.i to i32
  %i.ts = and i64 %.024.i186419.i.i, 4294967295
  %.sroa.61221.9.ph.add.i.i = sub nsw i64 %.sroa.61221.9.ph.idx647.i.i, %i.ts ; 2 uses
  %.ptr412.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61221.9.ph.add.i.i
  %i.tt = shl i32 %.024.i186.i.i, 3
  %i.tu = sub i32 %i.tj, %i.tt
  %.val.i188.i.i = load i64, ptr %.ptr412.i.i, align 1
  br label %BIT_reloadDStream.exit191.i.i

BIT_reloadDStream.exit191.i.i:                    ; preds = %bb.ch, %bb.cg, %bb.cf
  %.sroa.0215.8.i.i = phi i64 [ %.val30.i184.i.i, %bb.cf ], [ %.val.i188.i.i, %bb.ch ], [ %.sroa.0215.7.ph645.i.i, %bb.cg ] ; 2 uses
  %.sroa.27.10.i.i = phi i32 [ %i.tp, %bb.cf ], [ %i.tu, %bb.ch ], [ %i.tj, %bb.cg ] ; 4 uses
  %.sroa.61221.10.idx.i.i = phi i64 [ %.sroa.61221.9.ph.add410.i.i, %bb.cf ], [ %.sroa.61221.9.ph.add.i.i, %bb.ch ], [ 0, %bb.cg ] ; 4 uses
  %i.tv = icmp eq i64 %.1.idx.i512.i.i, 254
  br i1 %i.tv, label %BIT_reloadDStream.exit174.split.loop.exit496.i.i, label %bb.ci

bb.ci:                                            ; preds = %BIT_reloadDStream.exit191.i.i
  %i.tw = icmp eq i64 %.sroa.61221.10.idx.i.i, 0
  %.not420.i.i = icmp eq i32 %.sroa.27.10.i.i, 64
  %or.cond431.i.i = and i1 %.not420.i.i, %i.tw
  %.not421.i.i = icmp eq i64 %.sroa.0.1511.i.i, 0
  %or.cond432.i.i = select i1 %or.cond431.i.i, i1 %.not421.i.i, i1 false
  br i1 %or.cond432.i.i, label %BIT_reloadDStream.exit174.i.i, label %BIT_endOfDStream.exit192.thread.i.i

BIT_endOfDStream.exit192.thread.i.i:              ; preds = %bb.ci
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.0.1511.i.i ; 3 uses
  %.sroa.0.0.copyload.i193.i.i = load i16, ptr %i.tx, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  %.sroa.4.0.copyload.i195.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i194.i.i, align 2, !tbaa !9
  %.sroa.5.0..sroa_idx.i196.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 3
  %.sroa.5.0.copyload.i197.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i196.i.i, align 1, !tbaa !9
  %i.ty = zext i8 %.sroa.5.0.copyload.i197.i.i to i32 ; 2 uses
  %i.tz = and i32 %.sroa.27.10.i.i, 63
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = shl i64 %.sroa.0215.8.i.i, %i.ua
  %i.uc = lshr i64 %i.ub, 1
  %i.ud = and i32 %i.ty, 63
  %i.ue = xor i32 %i.ud, 63
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = lshr i64 %i.uc, %i.uf
  %i.uh = add i32 %.sroa.27.10.i.i, %i.ty         ; 3 uses
  %i.ui = zext i16 %.sroa.0.0.copyload.i193.i.i to i64
  %i.uj = add nuw i64 %i.ug, %i.ui                ; 2 uses
  %.add.i.i.i = add nuw nsw i64 %.1.idx.i512.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i195.i.i, ptr %.ptr.ptr.i.i.i, align 1, !tbaa !9
  %i.uk = icmp ugt i32 %i.uh, 64
  br i1 %i.uk, label %BIT_reloadDStream.exit174.split.loop.exit490.i.i, label %.lr.ph514.i.i

BIT_reloadDStream.exit174.split.loop.exit484.i.i: ; preds = %BIT_endOfDStream.exit175.thread.i.i
  %.sroa.61221.9.ph.ptr.le.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61221.9.ph.idx647.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit490.i.i: ; preds = %bb.ca, %BIT_endOfDStream.exit192.thread.i.i, %.preheader.i26.i, %FSE_initDState.exit128.i.i, %FSE_initDState.exit119.i.i
  %.sroa.61221.1.idx.lcssa.i.i = phi i64 [ %.sroa.61221.8.idx.i.i, %.preheader.i26.i ], [ %.sroa.61221.10.idx.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ %.sroa.61221.5.ptr.add.i.i, %FSE_initDState.exit128.i.i ], [ %.sroa.61221.5.idx.i.i, %FSE_initDState.exit119.i.i ], [ %.sroa.61221.8.idx.i.i, %bb.ca ]
  %.sroa.0.1.lcssa.ph491.i.i = phi i64 [ %.sroa.0.0.i110.i, %.preheader.i26.i ], [ %i.uj, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pj, %FSE_initDState.exit128.i.i ], [ %i.pj, %FSE_initDState.exit119.i.i ], [ %i.sk, %bb.ca ]
  %.sroa.27.2.ph492.i.i = phi i32 [ %.sroa.27.8.i.i, %.preheader.i26.i ], [ %i.uh, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.pu, %FSE_initDState.exit128.i.i ], [ %i.pk, %FSE_initDState.exit119.i.i ], [ %i.si, %bb.ca ]
  %.sroa.0207.2.ph494.i.i = phi i64 [ %.sroa.0207.0.i109.i, %.preheader.i26.i ], [ %i.tl, %BIT_endOfDStream.exit192.thread.i.i ], [ %i.ot, %FSE_initDState.exit128.i.i ], [ %i.ot, %FSE_initDState.exit119.i.i ], [ %i.rv, %bb.ca ]
  %.2.idx.i.ph495.i.i = phi i64 [ %.036.idx.i.i111.i, %.preheader.i26.i ], [ %.add.i.i.i, %BIT_endOfDStream.exit192.thread.i.i ], [ 0, %FSE_initDState.exit128.i.i ], [ 0, %FSE_initDState.exit119.i.i ], [ %.036.add.i.i.i, %bb.ca ]
  %.sroa.61221.1.ptr.le.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61221.1.idx.lcssa.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.split.loop.exit496.i.i: ; preds = %BIT_reloadDStream.exit191.i.i
  %.sroa.61221.10.ptr.le.i.i = getelementptr inbounds i8, ptr %i.eo, i64 %.sroa.61221.10.idx.i.i
  br label %BIT_reloadDStream.exit174.i.i

BIT_reloadDStream.exit174.i.i:                    ; preds = %bb.ci, %bb.cd, %BIT_reloadDStream.exit174.split.loop.exit496.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.1.lcssa.ph491.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.0.1511.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.sroa.0.1511.i.i, %bb.cd ], [ 0, %bb.ci ]
  %.sroa.27.2.i.i = phi i32 [ %.sroa.27.2.ph492.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.27.10.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.tj, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 64, %bb.cd ], [ 64, %bb.ci ]
  %.sroa.61221.2.i.i = phi ptr [ %.sroa.61221.1.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %.sroa.61221.10.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.sroa.61221.9.ph.ptr.le.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %i.eo, %bb.cd ], [ %i.eo, %bb.ci ]
  %.sroa.0207.2.i.i = phi i64 [ %.sroa.0207.2.ph494.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ %i.tl, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %i.tl, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ 0, %bb.cd ], [ %i.tl, %bb.ci ]
  %.2.idx.i.i.i = phi i64 [ %.2.idx.i.ph495.i.i, %BIT_reloadDStream.exit174.split.loop.exit490.i.i ], [ 255, %BIT_reloadDStream.exit174.split.loop.exit496.i.i ], [ %.add51.i.i.i, %BIT_reloadDStream.exit174.split.loop.exit484.i.i ], [ %.1.idx.i512.i.i, %bb.cd ], [ %.add51.i.i.i, %bb.ci ] ; 2 uses
  %i.ul = icmp eq ptr %.sroa.61221.2.i.i, %i.eo
  %.not422.i.i = icmp eq i32 %.sroa.27.2.i.i, 64
  %or.cond433.i.i = and i1 %.not422.i.i, %i.ul
  %.not423.i.i = icmp eq i64 %.sroa.0207.2.i.i, 0
  %or.cond434.i.i = select i1 %or.cond433.i.i, i1 %.not423.i.i, i1 false
  %.not424.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i, 0
  %or.cond435.i.i = select i1 %or.cond434.i.i, i1 %.not424.i.i, i1 false
  br i1 %or.cond435.i.i, label %FSE_decompress.exit, label %BIT_endOfDStream.exit200.thread.i.i

BIT_endOfDStream.exit200.thread.i.i:              ; preds = %BIT_reloadDStream.exit174.i.i
  %i.um = icmp eq i64 %.2.idx.i.i.i, 255
  %..i.i.i = select i1 %i.um, i64 -70, i64 -20
  br label %FSE_decompress.exit.thread

FSE_decompress.exit.thread:                       ; preds = %FSE_buildDTable.exit.thread.i, %bb.g, %bb.h, %bb.i, %bb.am, %BIT_initDStream.exit.i.i, %BIT_endOfDStream.exit105.thread.i.i, %BIT_initDStream.exit110.i.i, %BIT_endOfDStream.exit200.thread.i.i, %bb.bp, %bb.ae, %bb.bh
  %.0.i.ph = phi i64 [ -1, %bb.bh ], [ -1, %bb.ae ], [ -1, %bb.bp ], [ %..i.i.i, %BIT_endOfDStream.exit200.thread.i.i ], [ %i.en, %BIT_initDStream.exit110.i.i ], [ %..i22.i.i, %BIT_endOfDStream.exit105.thread.i.i ], [ %i.en, %BIT_initDStream.exit.i.i ], [ -1, %bb.am ], [ -72, %bb.i ], [ %i.bi, %bb.h ], [ -72, %bb.g ], [ %.0.i.ph.i, %FSE_buildDTable.exit.thread.i ]
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
  %i.un = icmp ult i64 %.0.i, -119
  br i1 %i.un, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %FSE_decompress.exit, %bb.d
  %.074 = phi i64 [ %i.m, %bb.d ], [ %.0.i, %FSE_decompress.exit ] ; 2 uses
  %.070 = phi i64 [ 0, %bb.d ], [ %i.g, %FSE_decompress.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  %.not170 = icmp eq i64 %.074, 0
  br i1 %.not170, label %.critedge, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.070294 = phi i64 [ %i.p, %.loopexit.thread ], [ %.070, %.loopexit ]
  %.074292 = phi i64 [ %i.n, %.loopexit.thread ], [ %.074, %.loopexit ] ; 3 uses
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.cj
  %i.uo = phi i64 [ %i.vc, %bb.cj ], [ 0, %.lr.ph166.preheader ]
  %.069165 = phi i32 [ %i.va, %bb.cj ], [ 0, %.lr.ph166.preheader ]
  %.173164 = phi i32 [ %i.vb, %bb.cj ], [ 0, %.lr.ph166.preheader ]
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 %i.uo ; 2 uses
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !9   ; 2 uses
  %i.ur = icmp ugt i8 %i.uq, 15
  br i1 %i.ur, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph166
  %i.us = zext nneg i8 %i.uq to i64
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.us ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !3
  %i.uv = add i32 %i.uu, 1
  store i32 %i.uv, ptr %i.ut, align 4, !tbaa !3
  %i.uw = load i8, ptr %i.up, align 1, !tbaa !9
  %i.ux = zext nneg i8 %i.uw to i32
  %i.uy = shl nuw i32 1, %i.ux
  %i.uz = ashr i32 %i.uy, 1
  %i.va = add i32 %i.uz, %.069165                 ; 4 uses
  %i.vb = add i32 %.173164, 1                     ; 2 uses
  %i.vc = zext i32 %i.vb to i64                   ; 2 uses
  %i.vd = icmp ugt i64 %.074292, %i.vc
  br i1 %i.vd, label %.lr.ph166, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.cj
  %i.ve = icmp eq i32 %i.va, 0
  br i1 %i.ve, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge
  %i.vf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.va, i1 true) ; 2 uses
  %i.vg = xor i32 %i.vf, 31                       ; 2 uses
  %i.vh = sub nuw nsw i32 32, %i.vf
  %i.vi = icmp samesign ugt i32 %i.vg, 15
  br i1 %i.vi, label %.critedge, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vj = shl nuw nsw i32 2, %i.vg
  %i.vk = sub i32 %i.vj, %i.va                    ; 2 uses
  %i.vl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vk, i1 true) ; 2 uses
  %i.vm = lshr exact i32 -2147483648, %i.vl
  %.not84 = icmp eq i32 %i.vm, %i.vk
  br i1 %.not84, label %bb.cm, label %.critedge

bb.cm:                                            ; preds = %bb.cl
  %i.vn = sub nuw nsw i32 32, %i.vl               ; 2 uses
  %i.vo = trunc nuw nsw i32 %i.vn to i8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 %.074292
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !9
  %i.vq = zext nneg i32 %i.vn to i64
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vq ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !3
  %i.vt = add i32 %i.vs, 1
  store i32 %i.vt, ptr %i.vr, align 4, !tbaa !3
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !3  ; 2 uses
  %i.vw = icmp ugt i32 %i.vv, 1
  %i.vx = and i32 %i.vv, 1
  %.not85 = icmp eq i32 %i.vx, 0
  %or.cond = and i1 %i.vw, %.not85
  br i1 %or.cond, label %bb.cn, label %.critedge

bb.cn:                                            ; preds = %bb.cm
  %i.vy = trunc nuw i64 %.074292 to i32
  %i.vz = add i32 %i.vy, 1
  store i32 %i.vz, ptr %2, align 4, !tbaa !3
  store i32 %i.vh, ptr %3, align 4, !tbaa !3
  %i.wa = add nuw nsw i64 %.070294, 1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph166, %.loopexit, %FSE_decompress.exit.thread, %bb.cl, %bb.cm, %bb.ck, %._crit_edge, %FSE_decompress.exit, %bb.f, %bb.e, %bb.a, %bb.cn
  %.1 = phi i64 [ %.0.i, %FSE_decompress.exit ], [ %.0.i.ph, %FSE_decompress.exit.thread ], [ -20, %._crit_edge ], [ -20, %bb.cm ], [ %i.wa, %bb.cn ], [ -20, %bb.cl ], [ -72, %bb.a ], [ -72, %bb.f ], [ -72, %bb.e ], [ -20, %bb.ck ], [ -20, %.loopexit ], [ -20, %.lr.ph166 ]
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
  store i32 %i.e, ptr %2, align 4, !tbaa !3
  %i.f = shl nuw nsw i32 32, %i.c                 ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.c, 6
  %i.i = lshr i32 %.val160, 4
  %i.j = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
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
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !100

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1108177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0107.lcssa, %.preheader162 ]
  %.3118176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %.3122175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1120.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1108177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3122175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3118176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph178, %.preheader162
  %.3122.lcssa = phi i32 [ %.1120.lcssa, %.preheader162 ], [ %i.ab, %.lr.ph178 ]
  %.3118.lcssa = phi i32 [ %.1116.lcssa, %.preheader162 ], [ %i.ac, %.lr.ph178 ]
end_hunk_2
