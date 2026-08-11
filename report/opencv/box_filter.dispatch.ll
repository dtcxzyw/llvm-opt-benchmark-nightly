inline.NumInlined: 2169
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhiEclEPKhPhii:bb.a
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck417 ], [ 0, %.lr.ph240 ], [ %n.vec436, %middle.block446 ] ; 7 uses
  %xtraiter475 = and i64 %wide.trip.count311, 1
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %scalar.ph433.prol.loopexit, label %scalar.ph433.prol

scalar.ph433.prol:                                ; preds = %scalar.ph433.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv308.ph
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14
  %i.ce = zext i8 %i.cd to i32
  %gep369.prol = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv308.ph
  %i.cf = load i8, ptr %gep369.prol, align 1, !tbaa !14
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  %gep371.prol = getelementptr i8, ptr %invariant.gep370, i64 %indvars.iv308.ph
  %i.ci = load i8, ptr %gep371.prol, align 1, !tbaa !14
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nuw nsw i32 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308.ph
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !228
  %indvars.iv.next309.prol = or disjoint i64 %indvars.iv308.ph, 1
  br label %scalar.ph433.prol.loopexit

scalar.ph433.prol.loopexit:                       ; preds = %scalar.ph433.prol, %scalar.ph433.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %scalar.ph433.preheader ], [ %indvars.iv.next309.prol, %scalar.ph433.prol ]
  %i.cm = add nsw i64 %wide.trip.count311, -1
  %i.cn = icmp eq i64 %indvars.iv308.ph, %i.cm
  br i1 %i.cn, label %.loopexit, label %scalar.ph433

scalar.ph433:                                     ; preds = %scalar.ph433.prol.loopexit, %scalar.ph433
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.1, %scalar.ph433 ], [ %indvars.iv308.unr, %scalar.ph433.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv308
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = zext i8 %i.cp to i32
  %gep369 = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv308
  %i.cr = load i8, ptr %gep369, align 1, !tbaa !14
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cs, %i.cq
  %gep371 = getelementptr i8, ptr %invariant.gep370, i64 %indvars.iv308
  %i.cu = load i8, ptr %gep371, align 1, !tbaa !14
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !228
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next309
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = zext i8 %i.cz to i32
  %gep369.1 = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv.next309
  %i.db = load i8, ptr %gep369.1, align 1, !tbaa !14
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, %i.da
  %gep371.1 = getelementptr i8, ptr %invariant.gep370, i64 %indvars.iv.next309
  %i.de = load i8, ptr %gep371.1, align 1, !tbaa !14
  %i.df = zext i8 %i.de to i32
  %i.dg = add nuw nsw i32 %i.dd, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next309
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !228
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %exitcond312.not.1 = icmp eq i64 %indvars.iv.next309.1, %wide.trip.count311
  br i1 %exitcond312.not.1, label %.loopexit, label %scalar.ph433, !llvm.loop !429

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = zext i8 %i.dj to i32
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.dl = load i8, ptr %gep, align 1, !tbaa !14
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dm, %i.dk
  %gep363 = getelementptr i8, ptr %invariant.gep362, i64 %indvars.iv
  %i.do = load i8, ptr %gep363, align 1, !tbaa !14
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dn, %i.dp
  %gep365 = getelementptr i8, ptr %invariant.gep364, i64 %indvars.iv
  %i.dr = load i8, ptr %gep365, align 1, !tbaa !14
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.dq, %i.ds
  %gep367 = getelementptr i8, ptr %invariant.gep366, i64 %indvars.iv
  %i.du = load i8, ptr %gep367, align 1, !tbaa !14
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nuw nsw i32 %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !14
  %i.ea = zext i8 %i.dz to i32
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.eb = load i8, ptr %gep.1, align 1, !tbaa !14
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, %i.ea
  %gep363.1 = getelementptr i8, ptr %invariant.gep362, i64 %indvars.iv.next
  %i.ee = load i8, ptr %gep363.1, align 1, !tbaa !14
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nuw nsw i32 %i.ed, %i.ef
  %gep365.1 = getelementptr i8, ptr %invariant.gep364, i64 %indvars.iv.next
  %i.eh = load i8, ptr %gep365.1, align 1, !tbaa !14
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.eg, %i.ei
  %gep367.1 = getelementptr i8, ptr %invariant.gep366, i64 %indvars.iv.next
  %i.ek = load i8, ptr %gep367.1, align 1, !tbaa !14
  %i.el = zext i8 %i.ek to i32
  %i.em = add nuw nsw i32 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.em, ptr %i.en, align 4, !tbaa !228
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !430

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.eo = icmp sgt i32 %i.c, 0
  br i1 %i.eo, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.ep = zext nneg i32 %i.c to i64
  %i.eq = add nsw i64 %i.ep, -1
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %xtraiter477 = and i64 %i.es, 3                 ; 3 uses
  %i.et = icmp ult i32 %i.c, 13
  br i1 %i.et, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.es, 9223372036854775804
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.eu = icmp sgt i32 %i.c, 0
  br i1 %i.eu, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.ev = zext nneg i32 %i.c to i64
  %i.ew = add nsw i64 %i.ev, -1
  %i.ex = udiv i64 %i.ew, 3                       ; 2 uses
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %i.ez = icmp ult i32 %i.c, 4
  br i1 %i.ez, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter496 = and i64 %i.ey, 9223372036854775806
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.fa = icmp sgt i32 %i.c, 0
  br i1 %i.fa, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check450 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check450, label %.lr.ph274.preheader463, label %vector.ph451

vector.ph451:                                     ; preds = %.lr.ph274.preheader
  %n.vec452 = and i64 %wide.trip.count328, 2147483640 ; 3 uses
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph451
  %index454 = phi i64 [ 0, %vector.ph451 ], [ %index.next458, %vector.body453 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph451 ], [ %i.ff, %vector.body453 ]
  %vec.phi455 = phi <4 x i32> [ zeroinitializer, %vector.ph451 ], [ %i.fg, %vector.body453 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %index454 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %wide.load456 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !14
  %wide.load457 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !14
  %i.fd = zext <4 x i8> %wide.load456 to <4 x i32>
  %i.fe = zext <4 x i8> %wide.load457 to <4 x i32>
  %i.ff = add <4 x i32> %vec.phi, %i.fd           ; 2 uses
  %i.fg = add <4 x i32> %vec.phi455, %i.fe        ; 2 uses
  %index.next458 = add nuw i64 %index454, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next458, %n.vec452
  br i1 %i.fh, label %middle.block459, label %vector.body453, !llvm.loop !431

middle.block459:                                  ; preds = %vector.body453
  %bin.rdx = add <4 x i32> %i.fg, %i.ff
  %i.fi = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n460 = icmp eq i64 %n.vec452, %wide.trip.count328
  br i1 %cmp.n460, label %._crit_edge275, label %.lr.ph274.preheader463

.lr.ph274.preheader463:                           ; preds = %.lr.ph274.preheader, %middle.block459
  %indvars.iv325.ph = phi i64 [ 0, %.lr.ph274.preheader ], [ %n.vec452, %middle.block459 ]
  %.0214273.ph = phi i32 [ 0, %.lr.ph274.preheader ], [ %i.fi, %middle.block459 ]
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.fj = icmp sgt i32 %4, 0
  br i1 %i.fj, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.fk = icmp sgt i32 %i.c, 0
  %i.fl = icmp sgt i32 %i.e, 0
  %i.fm = zext nneg i32 %4 to i64                 ; 3 uses
  %i.fn = zext nneg i32 %4 to i64                 ; 3 uses
  %i.fo = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.fp = add nsw i64 %6, -1                      ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fm
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274.preheader463, %.lr.ph274
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.lr.ph274 ], [ %indvars.iv325.ph, %.lr.ph274.preheader463 ] ; 2 uses
  %.0214273 = phi i32 [ %i.fu, %.lr.ph274 ], [ %.0214273.ph, %.lr.ph274.preheader463 ]
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !14
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nuw nsw i32 %.0214273, %i.ft        ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge275, label %.lr.ph274, !llvm.loop !432

._crit_edge275:                                   ; preds = %.lr.ph274, %middle.block459, %.preheader229
  %.0214.lcssa = phi i32 [ 0, %.preheader229 ], [ %i.fi, %middle.block459 ], [ %i.fu, %.lr.ph274 ] ; 3 uses
  store i32 %.0214.lcssa, ptr %2, align 4, !tbaa !228
  %i.fv = icmp sgt i32 %i.e, 0
  br i1 %i.fv, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.fw = sext i32 %i.c to i64
  %wide.trip.count333 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep376 = getelementptr i8, ptr %1, i64 %i.fw ; 3 uses
  %xtraiter498 = and i64 %wide.trip.count333, 1
  %i.fx = icmp eq i32 %i.e, 1
  br i1 %i.fx, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter502 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi i32 [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.gm, %.lr.ph280 ]
  %niter503 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter503.next.1, %.lr.ph280 ]
  %gep377 = getelementptr i8, ptr %invariant.gep376, i64 %indvars.iv330
  %i.fy = load i8, ptr %gep377, align 1, !tbaa !14
  %i.fz = zext i8 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv330
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !14
  %i.gc = zext i8 %i.gb to i32
  %i.gd = sub nsw i32 %i.fz, %i.gc
  %i.ge = add nsw i32 %i.gd, %.1215278            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !228
  %gep377.1 = getelementptr i8, ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.gg = load i8, ptr %gep377.1, align 1, !tbaa !14
  %i.gh = zext i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next331
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !14
  %i.gk = zext i8 %i.gj to i32
  %i.gl = sub nsw i32 %i.gh, %i.gk
  %i.gm = add nsw i32 %i.gl, %i.ge                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331.1
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !228
  %niter503.next.1 = add nuw i64 %niter503, 2     ; 2 uses
  %niter503.ncmp.1 = icmp eq i64 %niter503.next.1, %unroll_iter502
  br i1 %niter503.ncmp.1, label %.loopexit.loopexit462.unr-lcssa, label %.lr.ph280, !llvm.loop !433

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.1, %.lr.ph261 ] ; 3 uses
  %.0208260 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.hm, %.lr.ph261 ]
  %.0210259 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.hi, %.lr.ph261 ]
  %.0212258 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.he, %.lr.ph261 ]
  %niter497 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter497.next.1, %.lr.ph261 ]
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv319 ; 3 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !14
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nuw nsw i32 %.0212258, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !14
  %i.gu = zext i8 %i.gt to i32
  %i.gv = add nuw nsw i32 %.0210259, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !14
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add nuw nsw i32 %.0208260, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv319 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 3
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !14
  %i.hd = zext i8 %i.hc to i32
  %i.he = add nuw nsw i32 %i.gr, %i.hd            ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !14
  %i.hh = zext i8 %i.hg to i32
  %i.hi = add nuw nsw i32 %i.gv, %i.hh            ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 5
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !14
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.gz, %i.hl            ; 3 uses
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319, 6 ; 2 uses
  %niter497.next.1 = add i64 %niter497, 2         ; 2 uses
  %niter497.ncmp.1.not = icmp eq i64 %niter497.next.1, %unroll_iter496
  br i1 %niter497.ncmp.1.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !434

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %i.hn = and i64 %i.ex, 1
  %lcmp.mod491.not.not = icmp eq i64 %i.hn, 0
  br i1 %lcmp.mod491.not.not, label %.lr.ph261.epil.preheader, label %._crit_edge262

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.1, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.hm, %._crit_edge262.loopexit.unr-lcssa ]
  %.0210259.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.hi, %._crit_edge262.loopexit.unr-lcssa ]
  %.0212258.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.he, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod495 = trunc i64 %i.ey to i1
  call void @llvm.assume(i1 %lcmp.mod495)
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv319.epil.init ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !14
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nuw nsw i32 %.0212258.epil.init, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !14
  %i.hu = zext i8 %i.ht to i32
  %i.hv = add nuw nsw i32 %.0210259.epil.init, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !14
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nuw nsw i32 %.0208260.epil.init, %i.hy
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader231
  %.0212.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.he, %._crit_edge262.loopexit.unr-lcssa ], [ %i.hr, %.lr.ph261.epil.preheader ] ; 2 uses
  %.0210.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.hi, %._crit_edge262.loopexit.unr-lcssa ], [ %i.hv, %.lr.ph261.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.hm, %._crit_edge262.loopexit.unr-lcssa ], [ %i.hz, %.lr.ph261.epil.preheader ] ; 2 uses
  store i32 %.0212.lcssa, ptr %2, align 4, !tbaa !228
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.0210.lcssa, ptr %i.ia, align 4, !tbaa !228
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.0208.lcssa, ptr %i.ib, align 4, !tbaa !228
  %i.ic = icmp sgt i32 %i.e, 0
  br i1 %i.ic, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.id = sext i32 %i.c to i64
  %i.ie = zext nneg i32 %i.e to i64
  %invariant.gep374 = getelementptr i8, ptr %1, i64 %i.id
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next323, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi i32 [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.jb, %.lr.ph271 ]
  %.1211268 = phi i32 [ %.0210.lcssa, %.lr.ph271.preheader ], [ %i.it, %.lr.ph271 ]
  %.1213267 = phi i32 [ %.0212.lcssa, %.lr.ph271.preheader ], [ %i.il, %.lr.ph271 ]
  %gep375 = getelementptr i8, ptr %invariant.gep374, i64 %indvars.iv322 ; 3 uses
  %i.if = load i8, ptr %gep375, align 1, !tbaa !14
  %i.ig = zext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv322 ; 3 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !14
  %i.ij = zext i8 %i.ii to i32
  %i.ik = sub nsw i32 %i.ig, %i.ij
  %i.il = add nsw i32 %i.ik, %.1213267            ; 2 uses
  %i.im = getelementptr i8, ptr %gep375, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !14
  %i.io = zext i8 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !14
  %i.ir = zext i8 %i.iq to i32
  %i.is = sub nsw i32 %i.io, %i.ir
  %i.it = add nsw i32 %i.is, %.1211268            ; 2 uses
  %i.iu = getelementptr i8, ptr %gep375, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !14
  %i.iw = zext i8 %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !14
  %i.iz = zext i8 %i.iy to i32
  %i.ja = sub nsw i32 %i.iw, %i.iz
  %i.jb = add nsw i32 %i.ja, %.1209269            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next323
  store i32 %i.il, ptr %i.jc, align 4, !tbaa !228
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv322 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i32 %i.it, ptr %i.je, align 4, !tbaa !228
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 20
  store i32 %i.jb, ptr %i.jf, align 4, !tbaa !228
  %i.jg = icmp samesign ult i64 %indvars.iv.next323, %i.ie
  br i1 %i.jg, label %.lr.ph271, label %.loopexit, !llvm.loop !435

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.3, %.lr.ph246 ] ; 5 uses
  %i.jh = phi <4 x i32> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.ka, %.lr.ph246 ]
  %niter = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %niter.next.3, %.lr.ph246 ]
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv313
  %i.jj = load <4 x i8>, ptr %i.ji, align 1, !tbaa !14
  %i.jk = zext <4 x i8> %i.jj to <4 x i32>
  %i.jl = add nuw nsw <4 x i32> %i.jh, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv313
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = load <4 x i8>, ptr %i.jn, align 1, !tbaa !14
  %i.jp = zext <4 x i8> %i.jo to <4 x i32>
  %i.jq = add nuw nsw <4 x i32> %i.jl, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv313
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load <4 x i8>, ptr %i.js, align 1, !tbaa !14
  %i.ju = zext <4 x i8> %i.jt to <4 x i32>
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhtEclEPKhPhii:bb.a
  %i.eh = zext i8 %i.eg to i16
  %gep361 = getelementptr i8, ptr %invariant.gep360, i64 %indvars.iv308
  %i.ei = load i8, ptr %gep361, align 1, !tbaa !14
  %i.ej = zext i8 %i.ei to i16
  %i.ek = add nuw nsw i16 %i.ej, %i.eh
  %gep363 = getelementptr i8, ptr %invariant.gep362, i64 %indvars.iv308
  %i.el = load i8, ptr %gep363, align 1, !tbaa !14
  %i.em = zext i8 %i.el to i16
  %i.en = add nuw nsw i16 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv308
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !454
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next309
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !14
  %i.er = zext i8 %i.eq to i16
  %gep361.1 = getelementptr i8, ptr %invariant.gep360, i64 %indvars.iv.next309
  %i.es = load i8, ptr %gep361.1, align 1, !tbaa !14
  %i.et = zext i8 %i.es to i16
  %i.eu = add nuw nsw i16 %i.et, %i.er
  %gep363.1 = getelementptr i8, ptr %invariant.gep362, i64 %indvars.iv.next309
  %i.ev = load i8, ptr %gep363.1, align 1, !tbaa !14
  %i.ew = zext i8 %i.ev to i16
  %i.ex = add nuw nsw i16 %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next309
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !454
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %exitcond312.not.1 = icmp eq i64 %indvars.iv.next309.1, %wide.trip.count311
  br i1 %exitcond312.not.1, label %.loopexit, label %vec.epilog.scalar.ph458, !llvm.loop !474

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !14
  %i.fb = zext i8 %i.fa to i16
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.fc = load i8, ptr %gep, align 1, !tbaa !14
  %i.fd = zext i8 %i.fc to i16
  %i.fe = add nuw nsw i16 %i.fd, %i.fb
  %gep355 = getelementptr i8, ptr %invariant.gep354, i64 %indvars.iv
  %i.ff = load i8, ptr %gep355, align 1, !tbaa !14
  %i.fg = zext i8 %i.ff to i16
  %i.fh = add nuw nsw i16 %i.fe, %i.fg
  %gep357 = getelementptr i8, ptr %invariant.gep356, i64 %indvars.iv
  %i.fi = load i8, ptr %gep357, align 1, !tbaa !14
  %i.fj = zext i8 %i.fi to i16
  %i.fk = add nuw nsw i16 %i.fh, %i.fj
  %gep359 = getelementptr i8, ptr %invariant.gep358, i64 %indvars.iv
  %i.fl = load i8, ptr %gep359, align 1, !tbaa !14
  %i.fm = zext i8 %i.fl to i16
  %i.fn = add nuw nsw i16 %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !454
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !14
  %i.fr = zext i8 %i.fq to i16
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.fs = load i8, ptr %gep.1, align 1, !tbaa !14
  %i.ft = zext i8 %i.fs to i16
  %i.fu = add nuw nsw i16 %i.ft, %i.fr
  %gep355.1 = getelementptr i8, ptr %invariant.gep354, i64 %indvars.iv.next
  %i.fv = load i8, ptr %gep355.1, align 1, !tbaa !14
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add nuw nsw i16 %i.fu, %i.fw
  %gep357.1 = getelementptr i8, ptr %invariant.gep356, i64 %indvars.iv.next
  %i.fy = load i8, ptr %gep357.1, align 1, !tbaa !14
  %i.fz = zext i8 %i.fy to i16
  %i.ga = add nuw nsw i16 %i.fx, %i.fz
  %gep359.1 = getelementptr i8, ptr %invariant.gep358, i64 %indvars.iv.next
  %i.gb = load i8, ptr %gep359.1, align 1, !tbaa !14
  %i.gc = zext i8 %i.gb to i16
  %i.gd = add nuw nsw i16 %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !454
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !475

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.gf = icmp sgt i32 %i.c, 0
  br i1 %i.gf, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.gg = zext nneg i32 %i.c to i64
  %i.gh = add nsw i64 %i.gg, -1
  %i.gi = lshr i64 %i.gh, 2
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %xtraiter516 = and i64 %i.gj, 3                 ; 3 uses
  %i.gk = icmp ult i32 %i.c, 13
  br i1 %i.gk, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.gj, 9223372036854775804
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.gl = icmp sgt i32 %i.c, 0
  br i1 %i.gl, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.gm = zext nneg i32 %i.c to i64
  %i.gn = add nsw i64 %i.gm, -1
  %i.go = udiv i64 %i.gn, 3                       ; 2 uses
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %i.gq = icmp ult i32 %i.c, 4
  br i1 %i.gq, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter535 = and i64 %i.gp, 9223372036854775806
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.gr = icmp sgt i32 %i.c, 0
  br i1 %i.gr, label %iter.check486, label %._crit_edge275

iter.check486:                                    ; preds = %.preheader229
  %wide.trip.count323 = zext nneg i32 %i.c to i64 ; 6 uses
  %min.iters.check472 = icmp ult i32 %i.c, 4
  br i1 %min.iters.check472, label %.lr.ph274.preheader, label %vector.main.loop.iter.check473

vector.main.loop.iter.check473:                   ; preds = %iter.check486
  %min.iters.check474 = icmp ult i32 %i.c, 16
  br i1 %min.iters.check474, label %vec.epilog.ph490, label %vector.ph475

vector.ph475:                                     ; preds = %vector.main.loop.iter.check473
  %i.gs = and i64 %wide.trip.count323, 12
  %n.vec476 = and i64 %wide.trip.count323, 2147483632 ; 4 uses
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph475
  %index478 = phi i64 [ 0, %vector.ph475 ], [ %index.next482, %vector.body477 ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph475 ], [ %i.gx, %vector.body477 ]
  %vec.phi479 = phi <8 x i16> [ zeroinitializer, %vector.ph475 ], [ %i.gy, %vector.body477 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %index478 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %wide.load480 = load <8 x i8>, ptr %i.gt, align 1, !tbaa !14
  %wide.load481 = load <8 x i8>, ptr %i.gu, align 1, !tbaa !14
  %i.gv = zext <8 x i8> %wide.load480 to <8 x i16>
  %i.gw = zext <8 x i8> %wide.load481 to <8 x i16>
  %i.gx = add <8 x i16> %vec.phi, %i.gv           ; 2 uses
  %i.gy = add <8 x i16> %vec.phi479, %i.gw        ; 2 uses
  %index.next482 = add nuw i64 %index478, 16      ; 2 uses
  %i.gz = icmp eq i64 %index.next482, %n.vec476
  br i1 %i.gz, label %middle.block483, label %vector.body477, !llvm.loop !476

middle.block483:                                  ; preds = %vector.body477
  %bin.rdx = add <8 x i16> %i.gy, %i.gx
  %i.ha = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n484 = icmp eq i64 %n.vec476, %wide.trip.count323
  br i1 %cmp.n484, label %._crit_edge275, label %vec.epilog.iter.check488

vec.epilog.iter.check488:                         ; preds = %middle.block483
  %min.epilog.iters.check489 = icmp eq i64 %i.gs, 0
  br i1 %min.epilog.iters.check489, label %.lr.ph274.preheader, label %vec.epilog.ph490, !prof !460

vec.epilog.ph490:                                 ; preds = %vector.main.loop.iter.check473, %vec.epilog.iter.check488
  %vec.epilog.resume.val485 = phi i64 [ %n.vec476, %vec.epilog.iter.check488 ], [ 0, %vector.main.loop.iter.check473 ]
  %bc.merge.rdx = phi i16 [ %i.ha, %vec.epilog.iter.check488 ], [ 0, %vector.main.loop.iter.check473 ]
  %n.vec491 = and i64 %wide.trip.count323, 2147483644 ; 3 uses
  %i.hb = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body492

vec.epilog.vector.body492:                        ; preds = %vec.epilog.vector.body492, %vec.epilog.ph490
  %index493 = phi i64 [ %vec.epilog.resume.val485, %vec.epilog.ph490 ], [ %index.next496, %vec.epilog.vector.body492 ] ; 2 uses
  %vec.phi494 = phi <4 x i16> [ %i.hb, %vec.epilog.ph490 ], [ %i.he, %vec.epilog.vector.body492 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 %index493
  %wide.load495 = load <4 x i8>, ptr %i.hc, align 1, !tbaa !14
  %i.hd = zext <4 x i8> %wide.load495 to <4 x i16>
  %i.he = add <4 x i16> %vec.phi494, %i.hd        ; 2 uses
  %index.next496 = add nuw i64 %index493, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next496, %n.vec491
  br i1 %i.hf, label %vec.epilog.middle.block497, label %vec.epilog.vector.body492, !llvm.loop !477

vec.epilog.middle.block497:                       ; preds = %vec.epilog.vector.body492
  %i.hg = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.he) ; 2 uses
  %cmp.n498 = icmp eq i64 %n.vec491, %wide.trip.count323
  br i1 %cmp.n498, label %._crit_edge275, label %.lr.ph274.preheader

.lr.ph274.preheader:                              ; preds = %iter.check486, %vec.epilog.iter.check488, %vec.epilog.middle.block497
  %indvars.iv321.ph = phi i64 [ 0, %iter.check486 ], [ %n.vec476, %vec.epilog.iter.check488 ], [ %n.vec491, %vec.epilog.middle.block497 ]
  %.0214273.ph = phi i16 [ 0, %iter.check486 ], [ %i.ha, %vec.epilog.iter.check488 ], [ %i.hg, %vec.epilog.middle.block497 ]
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.hh = icmp sgt i32 %4, 0
  br i1 %i.hh, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.hi = icmp sgt i32 %i.c, 0
  %i.hj = icmp sgt i32 %i.e, 0
  %i.hk = zext nneg i32 %4 to i64                 ; 3 uses
  %i.hl = zext nneg i32 %4 to i64                 ; 3 uses
  %i.hm = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.hn = add nsw i64 %6, -1                      ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hk
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274.preheader, %.lr.ph274
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %.lr.ph274 ], [ %indvars.iv321.ph, %.lr.ph274.preheader ] ; 2 uses
  %.0214273 = phi i16 [ %i.hs, %.lr.ph274 ], [ %.0214273.ph, %.lr.ph274.preheader ]
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv321
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !14
  %i.hr = zext i8 %i.hq to i16
  %i.hs = add i16 %.0214273, %i.hr                ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count323
  br i1 %exitcond324.not, label %._crit_edge275, label %.lr.ph274, !llvm.loop !478

._crit_edge275:                                   ; preds = %.lr.ph274, %middle.block483, %vec.epilog.middle.block497, %.preheader229
  %.0214.lcssa = phi i16 [ 0, %.preheader229 ], [ %i.hg, %vec.epilog.middle.block497 ], [ %i.ha, %middle.block483 ], [ %i.hs, %.lr.ph274 ] ; 3 uses
  store i16 %.0214.lcssa, ptr %2, align 2, !tbaa !454
  %i.ht = icmp sgt i32 %i.e, 0
  br i1 %i.ht, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.hu = sext i32 %i.c to i64
  %wide.trip.count327 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep368 = getelementptr i8, ptr %1, i64 %i.hu ; 3 uses
  %xtraiter537 = and i64 %wide.trip.count327, 1
  %i.hv = icmp eq i32 %i.e, 1
  br i1 %i.hv, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter541 = and i64 %wide.trip.count327, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next326.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi i16 [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.ik, %.lr.ph280 ]
  %niter542 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter542.next.1, %.lr.ph280 ]
  %gep369 = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv325
  %i.hw = load i8, ptr %gep369, align 1, !tbaa !14
  %i.hx = zext i8 %i.hw to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !14
  %i.ia = zext i8 %i.hz to i16
  %i.ib = sub nsw i16 %i.hx, %i.ia
  %i.ic = add i16 %i.ib, %.1215278                ; 2 uses
  %indvars.iv.next326 = or disjoint i64 %indvars.iv325, 1 ; 3 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next326
  store i16 %i.ic, ptr %i.id, align 2, !tbaa !454
  %gep369.1 = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv.next326
  %i.ie = load i8, ptr %gep369.1, align 1, !tbaa !14
  %i.if = zext i8 %i.ie to i16
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next326
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !14
  %i.ii = zext i8 %i.ih to i16
  %i.ij = sub nsw i16 %i.if, %i.ii
  %i.ik = add i16 %i.ij, %i.ic                    ; 3 uses
  %indvars.iv.next326.1 = add nuw nsw i64 %indvars.iv325, 2 ; 3 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next326.1
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !454
  %niter542.next.1 = add nuw i64 %niter542, 2     ; 2 uses
  %niter542.ncmp.1 = icmp eq i64 %niter542.next.1, %unroll_iter541
  br i1 %niter542.ncmp.1, label %.loopexit.loopexit501.unr-lcssa, label %.lr.ph280, !llvm.loop !479

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv317 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next318.1, %.lr.ph261 ] ; 3 uses
  %.0208260 = phi i16 [ 0, %.lr.ph261.preheader.new ], [ %i.jk, %.lr.ph261 ]
  %.0210259 = phi i16 [ 0, %.lr.ph261.preheader.new ], [ %i.jg, %.lr.ph261 ]
  %.0212258 = phi i16 [ 0, %.lr.ph261.preheader.new ], [ %i.jc, %.lr.ph261 ]
  %niter536 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter536.next.1, %.lr.ph261 ]
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv317 ; 3 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !14
  %i.io = zext i8 %i.in to i16
  %i.ip = add i16 %.0212258, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !14
  %i.is = zext i8 %i.ir to i16
  %i.it = add i16 %.0210259, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !14
  %i.iw = zext i8 %i.iv to i16
  %i.ix = add i16 %.0208260, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv317 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !14
  %i.jb = zext i8 %i.ja to i16
  %i.jc = add i16 %i.ip, %i.jb                    ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !14
  %i.jf = zext i8 %i.je to i16
  %i.jg = add i16 %i.it, %i.jf                    ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 5
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !14
  %i.jj = zext i8 %i.ji to i16
  %i.jk = add i16 %i.ix, %i.jj                    ; 3 uses
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317, 6 ; 2 uses
  %niter536.next.1 = add i64 %niter536, 2         ; 2 uses
  %niter536.ncmp.1.not = icmp eq i64 %niter536.next.1, %unroll_iter535
  br i1 %niter536.ncmp.1.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !480

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %i.jl = and i64 %i.go, 1
  %lcmp.mod530.not.not = icmp eq i64 %i.jl, 0
  br i1 %lcmp.mod530.not.not, label %.lr.ph261.epil.preheader, label %._crit_edge262

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv317.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next318.1, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi i16 [ 0, %.lr.ph261.preheader ], [ %i.jk, %._crit_edge262.loopexit.unr-lcssa ]
  %.0210259.epil.init = phi i16 [ 0, %.lr.ph261.preheader ], [ %i.jg, %._crit_edge262.loopexit.unr-lcssa ]
  %.0212258.epil.init = phi i16 [ 0, %.lr.ph261.preheader ], [ %i.jc, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod534 = trunc i64 %i.gp to i1
  call void @llvm.assume(i1 %lcmp.mod534)
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv317.epil.init ; 3 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !14
  %i.jo = zext i8 %i.jn to i16
  %i.jp = add i16 %.0212258.epil.init, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !14
  %i.js = zext i8 %i.jr to i16
  %i.jt = add i16 %.0210259.epil.init, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !14
  %i.jw = zext i8 %i.jv to i16
  %i.jx = add i16 %.0208260.epil.init, %i.jw
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader231
  %.0212.lcssa = phi i16 [ 0, %.preheader231 ], [ %i.jc, %._crit_edge262.loopexit.unr-lcssa ], [ %i.jp, %.lr.ph261.epil.preheader ] ; 2 uses
  %.0210.lcssa = phi i16 [ 0, %.preheader231 ], [ %i.jg, %._crit_edge262.loopexit.unr-lcssa ], [ %i.jt, %.lr.ph261.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i16 [ 0, %.preheader231 ], [ %i.jk, %._crit_edge262.loopexit.unr-lcssa ], [ %i.jx, %.lr.ph261.epil.preheader ] ; 2 uses
  store i16 %.0212.lcssa, ptr %2, align 2, !tbaa !454
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.0210.lcssa, ptr %i.jy, align 2, !tbaa !454
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %.0208.lcssa, ptr %i.jz, align 2, !tbaa !454
  %i.ka = icmp sgt i32 %i.e, 0
  br i1 %i.ka, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.kb = sext i32 %i.c to i64
  %i.kc = zext nneg i32 %i.e to i64
  %invariant.gep366 = getelementptr i8, ptr %1, i64 %i.kb
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv319 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next320, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi i16 [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.kz, %.lr.ph271 ]
  %.1211268 = phi i16 [ %.0210.lcssa, %.lr.ph271.preheader ], [ %i.kr, %.lr.ph271 ]
  %.1213267 = phi i16 [ %.0212.lcssa, %.lr.ph271.preheader ], [ %i.kj, %.lr.ph271 ]
  %gep367 = getelementptr i8, ptr %invariant.gep366, i64 %indvars.iv319 ; 3 uses
  %i.kd = load i8, ptr %gep367, align 1, !tbaa !14
  %i.ke = zext i8 %i.kd to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv319 ; 3 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !14
  %i.kh = zext i8 %i.kg to i16
  %i.ki = sub nsw i16 %i.ke, %i.kh
  %i.kj = add i16 %i.ki, %.1213267                ; 2 uses
  %i.kk = getelementptr i8, ptr %gep367, i64 1
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !14
  %i.km = zext i8 %i.kl to i16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !14
  %i.kp = zext i8 %i.ko to i16
  %i.kq = sub nsw i16 %i.km, %i.kp
  %i.kr = add i16 %i.kq, %.1211268                ; 2 uses
  %i.ks = getelementptr i8, ptr %gep367, i64 2
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !14
  %i.ku = zext i8 %i.kt to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !14
  %i.kx = zext i8 %i.kw to i16
  %i.ky = sub nsw i16 %i.ku, %i.kx
  %i.kz = add i16 %i.ky, %.1209269                ; 2 uses
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 3 ; 3 uses
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next320
  store i16 %i.kj, ptr %i.la, align 2, !tbaa !454
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv319 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i16 %i.kr, ptr %i.lc, align 2, !tbaa !454
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 10
  store i16 %i.kz, ptr %i.ld, align 2, !tbaa !454
  %i.le = icmp samesign ult i64 %indvars.iv.next320, %i.kc
  br i1 %i.le, label %.lr.ph271, label %.loopexit, !llvm.loop !481

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.3, %.lr.ph246 ] ; 5 uses
  %i.lf = phi <4 x i16> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.ly, %.lr.ph246 ]
  %niter = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %niter.next.3, %.lr.ph246 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv313
  %i.lh = load <4 x i8>, ptr %i.lg, align 1, !tbaa !14
  %i.li = zext <4 x i8> %i.lh to <4 x i16>
  %i.lj = add <4 x i16> %i.lf, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv313
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load <4 x i8>, ptr %i.ll, align 1, !tbaa !14
  %i.ln = zext <4 x i8> %i.lm to <4 x i16>
  %i.lo = add <4 x i16> %i.lj, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv313
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load <4 x i8>, ptr %i.lq, align 1, !tbaa !14
  %i.ls = zext <4 x i8> %i.lr to <4 x i16>
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhdEclEPKhPhii:bb.a
vector.memcheck417:                               ; preds = %.lr.ph240
  %i.ao = shl nuw nsw i64 %wide.trip.count311, 3
  %scevgep418 = getelementptr i8, ptr %2, i64 %i.ao ; 3 uses
  %i.ap = getelementptr i8, ptr %1, i64 %i.an
  %scevgep419 = getelementptr i8, ptr %i.ap, i64 %wide.trip.count311
  %i.aq = getelementptr i8, ptr %1, i64 %i.am
  %scevgep420 = getelementptr i8, ptr %i.aq, i64 %wide.trip.count311
  %scevgep421 = getelementptr i8, ptr %1, i64 %wide.trip.count311
  %bound0422 = icmp ult ptr %2, %scevgep419
  %bound1423 = icmp ult ptr %invariant.gep370, %scevgep418
  %found.conflict424 = and i1 %bound0422, %bound1423
  %bound0425 = icmp ult ptr %2, %scevgep420
  %bound1426 = icmp ult ptr %invariant.gep368, %scevgep418
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %found.conflict424, %found.conflict427
  %bound0429 = icmp ult ptr %2, %scevgep421
  %bound1430 = icmp ult ptr %1, %scevgep418
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  br i1 %conflict.rdx432, label %scalar.ph433.preheader, label %vector.ph435

vector.ph435:                                     ; preds = %vector.memcheck417
  %n.vec436 = and i64 %wide.trip.count311, 2147483646 ; 3 uses
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph435
  %index438 = phi i64 [ 0, %vector.ph435 ], [ %index.next442, %vector.body437 ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %index438
  %wide.load439 = load <2 x i8>, ptr %i.ar, align 1, !tbaa !14, !alias.scope !504
  %i.as = uitofp <2 x i8> %wide.load439 to <2 x double>
  %i.at = getelementptr i8, ptr %invariant.gep368, i64 %index438
  %wide.load440 = load <2 x i8>, ptr %i.at, align 1, !tbaa !14, !alias.scope !507
  %i.au = uitofp <2 x i8> %wide.load440 to <2 x double>
  %i.av = fadd <2 x double> %i.as, %i.au
  %i.aw = getelementptr i8, ptr %invariant.gep370, i64 %index438
  %wide.load441 = load <2 x i8>, ptr %i.aw, align 1, !tbaa !14, !alias.scope !509
  %i.ax = uitofp <2 x i8> %wide.load441 to <2 x double>
  %i.ay = fadd <2 x double> %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index438
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !285, !alias.scope !511, !noalias !513
  %index.next442 = add nuw i64 %index438, 2       ; 2 uses
  %i.ba = icmp eq i64 %index.next442, %n.vec436
  br i1 %i.ba, label %middle.block443, label %vector.body437, !llvm.loop !514

middle.block443:                                  ; preds = %vector.body437
  %cmp.n444 = icmp eq i64 %n.vec436, %wide.trip.count311
  br i1 %cmp.n444, label %.loopexit, label %scalar.ph433.preheader

scalar.ph433.preheader:                           ; preds = %vector.memcheck417, %.lr.ph240, %middle.block443
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck417 ], [ 0, %.lr.ph240 ], [ %n.vec436, %middle.block443 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count311, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph433.prol.loopexit, label %scalar.ph433.prol

scalar.ph433.prol:                                ; preds = %scalar.ph433.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv308.ph
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = uitofp i8 %i.bc to double
  %gep369.prol = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv308.ph
  %i.be = load i8, ptr %gep369.prol, align 1, !tbaa !14
  %i.bf = uitofp i8 %i.be to double
  %i.bg = fadd double %i.bd, %i.bf
  %gep371.prol = getelementptr i8, ptr %invariant.gep370, i64 %indvars.iv308.ph
  %i.bh = load i8, ptr %gep371.prol, align 1, !tbaa !14
  %i.bi = uitofp i8 %i.bh to double
  %i.bj = fadd double %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308.ph
  store double %i.bj, ptr %i.bk, align 8, !tbaa !285
  %indvars.iv.next309.prol = or disjoint i64 %indvars.iv308.ph, 1
  br label %scalar.ph433.prol.loopexit

scalar.ph433.prol.loopexit:                       ; preds = %scalar.ph433.prol, %scalar.ph433.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %scalar.ph433.preheader ], [ %indvars.iv.next309.prol, %scalar.ph433.prol ]
  %i.bl = add nsw i64 %wide.trip.count311, -1
  %i.bm = icmp eq i64 %indvars.iv308.ph, %i.bl
  br i1 %i.bm, label %.loopexit, label %scalar.ph433

scalar.ph433:                                     ; preds = %scalar.ph433.prol.loopexit, %scalar.ph433
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.1, %scalar.ph433 ], [ %indvars.iv308.unr, %scalar.ph433.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv308
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bp = uitofp i8 %i.bo to double
  %gep369 = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv308
  %i.bq = load i8, ptr %gep369, align 1, !tbaa !14
  %i.br = uitofp i8 %i.bq to double
  %i.bs = fadd double %i.bp, %i.br
  %gep371 = getelementptr i8, ptr %invariant.gep370, i64 %indvars.iv308
  %i.bt = load i8, ptr %gep371, align 1, !tbaa !14
  %i.bu = uitofp i8 %i.bt to double
  %i.bv = fadd double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308
  store double %i.bv, ptr %i.bw, align 8, !tbaa !285
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next309
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = uitofp i8 %i.by to double
  %gep369.1 = getelementptr i8, ptr %invariant.gep368, i64 %indvars.iv.next309
  %i.ca = load i8, ptr %gep369.1, align 1, !tbaa !14
  %i.cb = uitofp i8 %i.ca to double
  %i.cc = fadd double %i.bz, %i.cb
  %gep371.1 = getelementptr i8, ptr %invariant.gep370, i64 %indvars.iv.next309
  %i.cd = load i8, ptr %gep371.1, align 1, !tbaa !14
  %i.ce = uitofp i8 %i.cd to double
  %i.cf = fadd double %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next309
  store double %i.cf, ptr %i.cg, align 8, !tbaa !285
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %exitcond312.not.1 = icmp eq i64 %indvars.iv.next309.1, %wide.trip.count311
  br i1 %exitcond312.not.1, label %.loopexit, label %scalar.ph433, !llvm.loop !515

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14
  %i.cj = uitofp i8 %i.ci to double
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ck = load i8, ptr %gep, align 1, !tbaa !14
  %i.cl = uitofp i8 %i.ck to double
  %i.cm = fadd double %i.cj, %i.cl
  %gep363 = getelementptr i8, ptr %invariant.gep362, i64 %indvars.iv
  %i.cn = load i8, ptr %gep363, align 1, !tbaa !14
  %i.co = uitofp i8 %i.cn to double
  %i.cp = fadd double %i.cm, %i.co
  %gep365 = getelementptr i8, ptr %invariant.gep364, i64 %indvars.iv
  %i.cq = load i8, ptr %gep365, align 1, !tbaa !14
  %i.cr = uitofp i8 %i.cq to double
  %i.cs = fadd double %i.cp, %i.cr
  %gep367 = getelementptr i8, ptr %invariant.gep366, i64 %indvars.iv
  %i.ct = load i8, ptr %gep367, align 1, !tbaa !14
  %i.cu = uitofp i8 %i.ct to double
  %i.cv = fadd double %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.cv, ptr %i.cw, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !516

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.cx = icmp sgt i32 %i.c, 0
  br i1 %i.cx, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.cy = zext nneg i32 %i.c to i64
  %i.cz = add nsw i64 %i.cy, -1                   ; 2 uses
  %i.da = lshr i64 %i.cz, 2                       ; 2 uses
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %i.dc = icmp eq i64 %i.da, 0
  br i1 %i.dc, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.db, 9223372036854775806
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.dd = icmp sgt i32 %i.c, 0
  br i1 %i.dd, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.de = zext nneg i32 %i.c to i64
  %i.df = add nsw i64 %i.de, -1
  %i.dg = udiv i64 %i.df, 3                       ; 2 uses
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.di = icmp ult i32 %i.c, 4
  br i1 %i.di, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter470 = and i64 %i.dh, 9223372036854775806
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.dj = icmp sgt i32 %i.c, 0
  br i1 %i.dj, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter472 = and i64 %wide.trip.count328, 3   ; 3 uses
  %i.dk = icmp ult i32 %i.c, 4
  br i1 %i.dk, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter476 = and i64 %wide.trip.count328, 2147483644
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.dl = icmp sgt i32 %4, 0
  br i1 %i.dl, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.dm = icmp sgt i32 %i.c, 0
  %i.dn = icmp sgt i32 %i.e, 0
  %i.do = zext nneg i32 %4 to i64                 ; 3 uses
  %i.dp = zext nneg i32 %4 to i64                 ; 3 uses
  %i.dq = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.dr = add nsw i64 %6, -1                      ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.do
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %indvars.iv.next326.3, %.lr.ph274 ] ; 5 uses
  %.0214273 = phi double [ 0.000000e+00, %.lr.ph274.preheader.new ], [ %i.el, %.lr.ph274 ]
  %niter477 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter477.next.3, %.lr.ph274 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !14
  %i.dv = uitofp i8 %i.du to double
  %i.dw = fadd double %.0214273, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !14
  %i.ea = uitofp i8 %i.dz to double
  %i.eb = fadd double %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !14
  %i.ef = uitofp i8 %i.ee to double
  %i.eg = fadd double %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !14
  %i.ek = uitofp i8 %i.ej to double
  %i.el = fadd double %i.eg, %i.ek                ; 3 uses
  %indvars.iv.next326.3 = add nuw nsw i64 %indvars.iv325, 4 ; 2 uses
  %niter477.next.3 = add i64 %niter477, 4         ; 2 uses
  %niter477.ncmp.3 = icmp eq i64 %niter477.next.3, %unroll_iter476
  br i1 %niter477.ncmp.3, label %._crit_edge275.loopexit.unr-lcssa, label %.lr.ph274, !llvm.loop !517

._crit_edge275.loopexit.unr-lcssa:                ; preds = %.lr.ph274
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %._crit_edge275, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.preheader
  %indvars.iv325.epil.init = phi i64 [ 0, %.lr.ph274.preheader ], [ %indvars.iv.next326.3, %._crit_edge275.loopexit.unr-lcssa ]
  %.0214273.epil.init = phi double [ 0.000000e+00, %.lr.ph274.preheader ], [ %i.el, %._crit_edge275.loopexit.unr-lcssa ]
  %lcmp.mod475 = icmp ne i64 %xtraiter472, 0
  call void @llvm.assume(i1 %lcmp.mod475)
  br label %.lr.ph274.epil

.lr.ph274.epil:                                   ; preds = %.lr.ph274.epil, %.lr.ph274.epil.preheader
  %indvars.iv325.epil = phi i64 [ %indvars.iv325.epil.init, %.lr.ph274.epil.preheader ], [ %indvars.iv.next326.epil, %.lr.ph274.epil ] ; 2 uses
  %.0214273.epil = phi double [ %.0214273.epil.init, %.lr.ph274.epil.preheader ], [ %i.ep, %.lr.ph274.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph274.epil.preheader ], [ %epil.iter.next, %.lr.ph274.epil ]
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325.epil
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14
  %i.eo = uitofp i8 %i.en to double
  %i.ep = fadd double %.0214273.epil, %i.eo       ; 2 uses
  %indvars.iv.next326.epil = add nuw nsw i64 %indvars.iv325.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter472
  br i1 %epil.iter.cmp.not, label %._crit_edge275, label %.lr.ph274.epil, !llvm.loop !518

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.epil, %.preheader229
  %.0214.lcssa = phi double [ 0.000000e+00, %.preheader229 ], [ %i.el, %._crit_edge275.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph274.epil ] ; 3 uses
  store double %.0214.lcssa, ptr %2, align 8, !tbaa !285
  %i.eq = icmp sgt i32 %i.e, 0
  br i1 %i.eq, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.er = sext i32 %i.c to i64
  %wide.trip.count333 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep376 = getelementptr i8, ptr %1, i64 %i.er ; 3 uses
  %xtraiter478 = and i64 %wide.trip.count333, 1
  %i.es = icmp eq i32 %i.e, 1
  br i1 %i.es, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter482 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi double [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.fh, %.lr.ph280 ]
  %niter483 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter483.next.1, %.lr.ph280 ]
  %gep377 = getelementptr i8, ptr %invariant.gep376, i64 %indvars.iv330
  %i.et = load i8, ptr %gep377, align 1, !tbaa !14
  %i.eu = uitofp i8 %i.et to double
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv330
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14
  %i.ex = uitofp i8 %i.ew to double
  %i.ey = fsub double %i.eu, %i.ex
  %i.ez = fadd double %.1215278, %i.ey            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331
  store double %i.ez, ptr %i.fa, align 8, !tbaa !285
  %gep377.1 = getelementptr i8, ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.fb = load i8, ptr %gep377.1, align 1, !tbaa !14
  %i.fc = uitofp i8 %i.fb to double
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next331
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !14
  %i.ff = uitofp i8 %i.fe to double
  %i.fg = fsub double %i.fc, %i.ff
  %i.fh = fadd double %i.ez, %i.fg                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331.1
  store double %i.fh, ptr %i.fi, align 8, !tbaa !285
  %niter483.next.1 = add nuw i64 %niter483, 2     ; 2 uses
  %niter483.ncmp.1 = icmp eq i64 %niter483.next.1, %unroll_iter482
  br i1 %niter483.ncmp.1, label %.loopexit.loopexit446.unr-lcssa, label %.lr.ph280, !llvm.loop !519

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.1, %.lr.ph261 ] ; 3 uses
  %.0208260 = phi double [ 0.000000e+00, %.lr.ph261.preheader.new ], [ %i.ga, %.lr.ph261 ]
  %i.fj = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader.new ], [ %i.fw, %.lr.ph261 ]
  %niter471 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter471.next.1, %.lr.ph261 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.fl = load <2 x i8>, ptr %i.fk, align 1, !tbaa !14
  %i.fm = uitofp <2 x i8> %i.fl to <2 x double>
  %i.fn = fadd <2 x double> %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !14
  %i.fq = uitofp i8 %i.fp to double
  %i.fr = fadd double %.0208260, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.fu = load <2 x i8>, ptr %i.ft, align 1, !tbaa !14
  %i.fv = uitofp <2 x i8> %i.fu to <2 x double>
  %i.fw = fadd <2 x double> %i.fn, %i.fv          ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 5
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !14
  %i.fz = uitofp i8 %i.fy to double
  %i.ga = fadd double %i.fr, %i.fz                ; 3 uses
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319, 6 ; 2 uses
  %niter471.next.1 = add i64 %niter471, 2         ; 2 uses
  %niter471.ncmp.1.not = icmp eq i64 %niter471.next.1, %unroll_iter470
  br i1 %niter471.ncmp.1.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !520

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %i.gb = and i64 %i.dg, 1
  %lcmp.mod466.not.not = icmp eq i64 %i.gb, 0
  br i1 %lcmp.mod466.not.not, label %.lr.ph261.epil.preheader, label %._crit_edge262

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.1, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi double [ 0.000000e+00, %.lr.ph261.preheader ], [ %i.ga, %._crit_edge262.loopexit.unr-lcssa ]
  %.epil.init465 = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader ], [ %i.fw, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod469 = trunc i64 %i.dh to i1
  call void @llvm.assume(i1 %lcmp.mod469)
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv319.epil.init ; 2 uses
  %i.gd = load <2 x i8>, ptr %i.gc, align 1, !tbaa !14
  %i.ge = uitofp <2 x i8> %i.gd to <2 x double>
  %i.gf = fadd <2 x double> %.epil.init465, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !14
  %i.gi = uitofp i8 %i.gh to double
  %i.gj = fadd double %.0208260.epil.init, %i.gi
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader231
  %.0208.lcssa = phi double [ 0.000000e+00, %.preheader231 ], [ %i.ga, %._crit_edge262.loopexit.unr-lcssa ], [ %i.gj, %.lr.ph261.epil.preheader ] ; 2 uses
  %i.gk = phi <2 x double> [ zeroinitializer, %.preheader231 ], [ %i.fw, %._crit_edge262.loopexit.unr-lcssa ], [ %i.gf, %.lr.ph261.epil.preheader ] ; 2 uses
  store <2 x double> %i.gk, ptr %2, align 8, !tbaa !285
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.0208.lcssa, ptr %i.gl, align 8, !tbaa !285
  %i.gm = icmp sgt i32 %i.e, 0
  br i1 %i.gm, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.gn = sext i32 %i.c to i64
  %i.go = zext nneg i32 %i.e to i64
  %invariant.gep374 = getelementptr i8, ptr %1, i64 %i.gn
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next323, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi double [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.gy, %.lr.ph271 ]
  %i.gp = phi <2 x double> [ %i.gk, %.lr.ph271.preheader ], [ %i.hg, %.lr.ph271 ]
  %gep375 = getelementptr i8, ptr %invariant.gep374, i64 %indvars.iv322 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv322 ; 2 uses
  %i.gr = getelementptr i8, ptr %gep375, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !14
  %i.gt = uitofp i8 %i.gs to double
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !14
  %i.gw = uitofp i8 %i.gv to double
  %i.gx = fsub double %i.gt, %i.gw
  %i.gy = fadd double %.1209269, %i.gx            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next323
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv322
  %i.hb = load <2 x i8>, ptr %gep375, align 1, !tbaa !14
  %i.hc = uitofp <2 x i8> %i.hb to <2 x double>
  %i.hd = load <2 x i8>, ptr %i.gq, align 1, !tbaa !14
  %i.he = uitofp <2 x i8> %i.hd to <2 x double>
  %i.hf = fsub <2 x double> %i.hc, %i.he
  %i.hg = fadd <2 x double> %i.gp, %i.hf          ; 2 uses
  store <2 x double> %i.hg, ptr %i.gz, align 8, !tbaa !285
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store double %i.gy, ptr %i.hh, align 8, !tbaa !285
  %i.hi = icmp samesign ult i64 %indvars.iv.next323, %i.go
  br i1 %i.hi, label %.lr.ph271, label %.loopexit, !llvm.loop !521

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.1, %.lr.ph246 ] ; 3 uses
  %i.hj = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.ib, %.lr.ph246 ]
  %i.hk = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.hx, %.lr.ph246 ]
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumItiEclEPKhPhii:bb.a
scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader234:                                    ; preds = %bb.a
  %i.at = mul i32 %4, %3                          ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.preheader234
  %i.av = shl nsw i32 %4, 1
  %i.aw = sext i32 %4 to i64
  %i.ax = sext i32 %i.av to i64
  %wide.trip.count311 = zext nneg i32 %i.at to i64 ; 3 uses
  %invariant.gep368 = getelementptr [2 x i8], ptr %1, i64 %i.aw ; 2 uses
  %invariant.gep370 = getelementptr [2 x i8], ptr %1, i64 %i.ax ; 2 uses
  %min.iters.check403 = icmp ult i32 %i.at, 8
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %.lr.ph240
  %n.vec405 = and i64 %wide.trip.count311, 2147483640 ; 3 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph404
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next414, %vector.body406 ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index407 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load408 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !454
  %wide.load409 = load <4 x i16>, ptr %i.az, align 2, !tbaa !454
  %i.ba = zext <4 x i16> %wide.load408 to <4 x i32>
  %i.bb = zext <4 x i16> %wide.load409 to <4 x i32>
  %i.bc = getelementptr [2 x i8], ptr %invariant.gep368, i64 %index407 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %wide.load410 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !454
  %wide.load411 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !454
  %i.be = zext <4 x i16> %wide.load410 to <4 x i32>
  %i.bf = zext <4 x i16> %wide.load411 to <4 x i32>
  %i.bg = add nuw nsw <4 x i32> %i.be, %i.ba
  %i.bh = add nuw nsw <4 x i32> %i.bf, %i.bb
  %i.bi = getelementptr [2 x i8], ptr %invariant.gep370, i64 %index407 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %wide.load412 = load <4 x i16>, ptr %i.bi, align 2, !tbaa !454
  %wide.load413 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !454
  %i.bk = zext <4 x i16> %wide.load412 to <4 x i32>
  %i.bl = zext <4 x i16> %wide.load413 to <4 x i32>
  %i.bm = add nuw nsw <4 x i32> %i.bg, %i.bk
  %i.bn = add nuw nsw <4 x i32> %i.bh, %i.bl
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index407 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %i.bm, ptr %i.bo, align 4, !tbaa !228
  store <4 x i32> %i.bn, ptr %i.bp, align 4, !tbaa !228
  %index.next414 = add nuw i64 %index407, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next414, %n.vec405
  br i1 %i.bq, label %middle.block415, label %vector.body406, !llvm.loop !529

middle.block415:                                  ; preds = %vector.body406
  %cmp.n416 = icmp eq i64 %n.vec405, %wide.trip.count311
  br i1 %cmp.n416, label %.loopexit, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %.lr.ph240, %middle.block415
  %indvars.iv308.ph = phi i64 [ 0, %.lr.ph240 ], [ %n.vec405, %middle.block415 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph402 ], [ %indvars.iv308.ph, %scalar.ph402.preheader ] ; 5 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv308
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !454
  %i.bt = zext i16 %i.bs to i32
  %gep369 = getelementptr [2 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.bu = load i16, ptr %gep369, align 2, !tbaa !454
  %i.bv = zext i16 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  %gep371 = getelementptr [2 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.bx = load i16, ptr %gep371, align 2, !tbaa !454
  %i.by = zext i16 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !228
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %.loopexit, label %scalar.ph402, !llvm.loop !530

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !454
  %i.cd = zext i16 %i.cc to i32
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ce = load i16, ptr %gep, align 2, !tbaa !454
  %i.cf = zext i16 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cf, %i.cd
  %gep363 = getelementptr [2 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.ch = load i16, ptr %gep363, align 2, !tbaa !454
  %i.ci = zext i16 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.cg, %i.ci
  %gep365 = getelementptr [2 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.ck = load i16, ptr %gep365, align 2, !tbaa !454
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.cj, %i.cl
  %gep367 = getelementptr [2 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.cn = load i16, ptr %gep367, align 2, !tbaa !454
  %i.co = zext i16 %i.cn to i32
  %i.cp = add nuw nsw i32 %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !531

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.cr = icmp sgt i32 %i.c, 0
  br i1 %i.cr, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.cs = zext nneg i32 %i.c to i64
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = lshr i64 %i.ct, 2
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.cw = icmp ult i32 %i.c, 13
  br i1 %i.cw, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.cv, 9223372036854775804
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.cx = icmp sgt i32 %i.c, 0
  br i1 %i.cx, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.cy = zext nneg i32 %i.c to i64
  %i.cz = add nsw i64 %i.cy, -1
  %i.da = udiv i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %xtraiter453 = and i64 %i.db, 3                 ; 3 uses
  %i.dc = icmp ult i32 %i.c, 10
  br i1 %i.dc, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter461 = and i64 %i.db, 9223372036854775804
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.dd = icmp sgt i32 %i.c, 0
  br i1 %i.dd, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check419 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check419, label %.lr.ph274.preheader432, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph274.preheader
  %n.vec421 = and i64 %wide.trip.count328, 2147483640 ; 3 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next427, %vector.body422 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.di, %vector.body422 ]
  %vec.phi424 = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.dj, %vector.body422 ]
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index423 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %wide.load425 = load <4 x i16>, ptr %i.de, align 2, !tbaa !454
  %wide.load426 = load <4 x i16>, ptr %i.df, align 2, !tbaa !454
  %i.dg = zext <4 x i16> %wide.load425 to <4 x i32>
  %i.dh = zext <4 x i16> %wide.load426 to <4 x i32>
  %i.di = add <4 x i32> %vec.phi, %i.dg           ; 2 uses
  %i.dj = add <4 x i32> %vec.phi424, %i.dh        ; 2 uses
  %index.next427 = add nuw i64 %index423, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next427, %n.vec421
  br i1 %i.dk, label %middle.block428, label %vector.body422, !llvm.loop !532

middle.block428:                                  ; preds = %vector.body422
  %bin.rdx = add <4 x i32> %i.dj, %i.di
  %i.dl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n429 = icmp eq i64 %n.vec421, %wide.trip.count328
  br i1 %cmp.n429, label %._crit_edge275, label %.lr.ph274.preheader432

.lr.ph274.preheader432:                           ; preds = %.lr.ph274.preheader, %middle.block428
  %indvars.iv325.ph = phi i64 [ 0, %.lr.ph274.preheader ], [ %n.vec421, %middle.block428 ]
  %.0214273.ph = phi i32 [ 0, %.lr.ph274.preheader ], [ %i.dl, %middle.block428 ]
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.dm = icmp sgt i32 %4, 0
  br i1 %i.dm, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.dn = icmp sgt i32 %i.c, 0
  %i.do = icmp sgt i32 %i.e, 0
  %i.dp = zext nneg i32 %4 to i64                 ; 3 uses
  %i.dq = zext nneg i32 %4 to i64                 ; 3 uses
  %i.dr = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.ds = add nsw i64 %6, -1                      ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274.preheader432, %.lr.ph274
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.lr.ph274 ], [ %indvars.iv325.ph, %.lr.ph274.preheader432 ] ; 2 uses
  %.0214273 = phi i32 [ %i.dx, %.lr.ph274 ], [ %.0214273.ph, %.lr.ph274.preheader432 ]
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !454
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %.0214273, %i.dw        ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge275, label %.lr.ph274, !llvm.loop !533

._crit_edge275:                                   ; preds = %.lr.ph274, %middle.block428, %.preheader229
  %.0214.lcssa = phi i32 [ 0, %.preheader229 ], [ %i.dl, %middle.block428 ], [ %i.dx, %.lr.ph274 ] ; 3 uses
  store i32 %.0214.lcssa, ptr %2, align 4, !tbaa !228
  %i.dy = icmp sgt i32 %i.e, 0
  br i1 %i.dy, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.dz = sext i32 %i.c to i64
  %wide.trip.count333 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep376 = getelementptr [2 x i8], ptr %1, i64 %i.dz ; 3 uses
  %xtraiter463 = and i64 %wide.trip.count333, 1
  %i.ea = icmp eq i32 %i.e, 1
  br i1 %i.ea, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter467 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi i32 [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.ep, %.lr.ph280 ]
  %niter468 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter468.next.1, %.lr.ph280 ]
  %gep377 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv330
  %i.eb = load i16, ptr %gep377, align 2, !tbaa !454
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv330
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !454
  %i.ef = zext i16 %i.ee to i32
  %i.eg = sub nsw i32 %i.ec, %i.ef
  %i.eh = add nsw i32 %i.eg, %.1215278            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !228
  %gep377.1 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.ej = load i16, ptr %gep377.1, align 2, !tbaa !454
  %i.ek = zext i16 %i.ej to i32
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next331
  %i.em = load i16, ptr %i.el, align 2, !tbaa !454
  %i.en = zext i16 %i.em to i32
  %i.eo = sub nsw i32 %i.ek, %i.en
  %i.ep = add nsw i32 %i.eo, %i.eh                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331.1
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !228
  %niter468.next.1 = add nuw i64 %niter468, 2     ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %.loopexit.loopexit431.unr-lcssa, label %.lr.ph280, !llvm.loop !534

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.3, %.lr.ph261 ] ; 5 uses
  %.0208260 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.ga, %.lr.ph261 ]
  %i.er = phi <2 x i32> [ zeroinitializer, %.lr.ph261.preheader.new ], [ %i.fw, %.lr.ph261 ]
  %niter462 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter462.next.3, %.lr.ph261 ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.et = load <2 x i16>, ptr %i.es, align 2, !tbaa !454
  %i.eu = zext <2 x i16> %i.et to <2 x i32>
  %i.ev = add nuw nsw <2 x i32> %i.er, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !454
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add nuw nsw i32 %.0208260, %i.ey
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  %i.fc = load <2 x i16>, ptr %i.fb, align 2, !tbaa !454
  %i.fd = zext <2 x i16> %i.fc to <2 x i32>
  %i.fe = add nuw nsw <2 x i32> %i.ev, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 10
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !454
  %i.fh = zext i16 %i.fg to i32
  %i.fi = add nuw nsw i32 %i.ez, %i.fh
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fl = load <2 x i16>, ptr %i.fk, align 2, !tbaa !454
  %i.fm = zext <2 x i16> %i.fl to <2 x i32>
  %i.fn = add nuw nsw <2 x i32> %i.fe, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !454
  %i.fq = zext i16 %i.fp to i32
  %i.fr = add nuw nsw i32 %i.fi, %i.fq
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 18
  %i.fu = load <2 x i16>, ptr %i.ft, align 2, !tbaa !454
  %i.fv = zext <2 x i16> %i.fu to <2 x i32>
  %i.fw = add nuw nsw <2 x i32> %i.fn, %i.fv      ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 22
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !454
  %i.fz = zext i16 %i.fy to i32
  %i.ga = add nuw nsw i32 %i.fr, %i.fz            ; 3 uses
  %indvars.iv.next320.3 = add nuw nsw i64 %indvars.iv319, 12 ; 2 uses
  %niter462.next.3 = add i64 %niter462, 4         ; 2 uses
  %niter462.ncmp.3.not = icmp eq i64 %niter462.next.3, %unroll_iter461
  br i1 %niter462.ncmp.3.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !535

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %lcmp.mod457.not = icmp eq i64 %xtraiter453, 0
  br i1 %lcmp.mod457.not, label %._crit_edge262, label %.lr.ph261.epil.preheader

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.3, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.ga, %._crit_edge262.loopexit.unr-lcssa ]
  %.epil.init456 = phi <2 x i32> [ zeroinitializer, %.lr.ph261.preheader ], [ %i.fw, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod460 = icmp ne i64 %xtraiter453, 0
  call void @llvm.assume(i1 %lcmp.mod460)
  br label %.lr.ph261.epil

.lr.ph261.epil:                                   ; preds = %.lr.ph261.epil, %.lr.ph261.epil.preheader
  %indvars.iv319.epil = phi i64 [ %indvars.iv319.epil.init, %.lr.ph261.epil.preheader ], [ %indvars.iv.next320.epil, %.lr.ph261.epil ] ; 2 uses
  %.0208260.epil = phi i32 [ %.0208260.epil.init, %.lr.ph261.epil.preheader ], [ %i.gj, %.lr.ph261.epil ]
  %i.gb = phi <2 x i32> [ %.epil.init456, %.lr.ph261.epil.preheader ], [ %i.gf, %.lr.ph261.epil ]
  %epil.iter454 = phi i64 [ 0, %.lr.ph261.epil.preheader ], [ %epil.iter454.next, %.lr.ph261.epil ]
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319.epil ; 2 uses
  %i.gd = load <2 x i16>, ptr %i.gc, align 2, !tbaa !454
  %i.ge = zext <2 x i16> %i.gd to <2 x i32>
  %i.gf = add nuw nsw <2 x i32> %i.gb, %i.ge      ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !454
  %i.gi = zext i16 %i.gh to i32
  %i.gj = add nuw nsw i32 %.0208260.epil, %i.gi   ; 2 uses
  %indvars.iv.next320.epil = add nuw nsw i64 %indvars.iv319.epil, 3
  %epil.iter454.next = add i64 %epil.iter454, 1   ; 2 uses
  %epil.iter454.cmp.not = icmp eq i64 %epil.iter454.next, %xtraiter453
  br i1 %epil.iter454.cmp.not, label %._crit_edge262, label %.lr.ph261.epil, !llvm.loop !536

._crit_edge262:                                   ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.epil, %.preheader231
  %.0208.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.ga, %._crit_edge262.loopexit.unr-lcssa ], [ %i.gj, %.lr.ph261.epil ] ; 2 uses
  %i.gk = phi <2 x i32> [ zeroinitializer, %.preheader231 ], [ %i.fw, %._crit_edge262.loopexit.unr-lcssa ], [ %i.gf, %.lr.ph261.epil ] ; 2 uses
  store <2 x i32> %i.gk, ptr %2, align 4, !tbaa !228
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.0208.lcssa, ptr %i.gl, align 4, !tbaa !228
  %i.gm = icmp sgt i32 %i.e, 0
  br i1 %i.gm, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.gn = sext i32 %i.c to i64
  %i.go = zext nneg i32 %i.e to i64
  %invariant.gep374 = getelementptr [2 x i8], ptr %1, i64 %i.gn
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next323, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi i32 [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.gy, %.lr.ph271 ]
  %i.gp = phi <2 x i32> [ %i.gk, %.lr.ph271.preheader ], [ %i.hg, %.lr.ph271 ]
  %gep375 = getelementptr [2 x i8], ptr %invariant.gep374, i64 %indvars.iv322 ; 2 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv322 ; 2 uses
  %i.gr = getelementptr i8, ptr %gep375, i64 4
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !454
  %i.gt = zext i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !454
  %i.gw = zext i16 %i.gv to i32
  %i.gx = sub nsw i32 %i.gt, %i.gw
  %i.gy = add nsw i32 %i.gx, %.1209269            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next323
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv322
  %i.hb = load <2 x i16>, ptr %gep375, align 2, !tbaa !454
  %i.hc = zext <2 x i16> %i.hb to <2 x i32>
  %i.hd = load <2 x i16>, ptr %i.gq, align 2, !tbaa !454
  %i.he = zext <2 x i16> %i.hd to <2 x i32>
  %i.hf = sub nsw <2 x i32> %i.hc, %i.he
  %i.hg = add nsw <2 x i32> %i.hf, %i.gp          ; 2 uses
  store <2 x i32> %i.hg, ptr %i.gz, align 4, !tbaa !228
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 20
  store i32 %i.gy, ptr %i.hh, align 4, !tbaa !228
  %i.hi = icmp samesign ult i64 %indvars.iv.next323, %i.go
  br i1 %i.hi, label %.lr.ph271, label %.loopexit, !llvm.loop !537

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.3, %.lr.ph246 ] ; 5 uses
  %i.hj = phi <4 x i32> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.ic, %.lr.ph246 ]
  %niter = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %niter.next.3, %.lr.ph246 ]
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv313
  %i.hl = load <4 x i16>, ptr %i.hk, align 2, !tbaa !454
  %i.hm = zext <4 x i16> %i.hl to <4 x i32>
  %i.hn = add nuw nsw <4 x i32> %i.hj, %i.hm
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv313
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load <4 x i16>, ptr %i.hp, align 2, !tbaa !454
  %i.hr = zext <4 x i16> %i.hq to <4 x i32>
  %i.hs = add nuw nsw <4 x i32> %i.hn, %i.hr
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv313
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load <4 x i16>, ptr %i.hu, align 2, !tbaa !454
  %i.hw = zext <4 x i16> %i.hv to <4 x i32>
  %i.hx = add nuw nsw <4 x i32> %i.hs, %i.hw
end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumItdEclEPKhPhii:bb.a
  %invariant.gep362 = getelementptr [2 x i8], ptr %1, i64 %i.l ; 2 uses
  %invariant.gep364 = getelementptr [2 x i8], ptr %1, i64 %i.m ; 2 uses
  %invariant.gep366 = getelementptr [2 x i8], ptr %1, i64 %i.n ; 2 uses
  %min.iters.check = icmp eq i32 %i.f, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i16>, ptr %i.o, align 2, !tbaa !454
  %i.p = uitofp <2 x i16> %wide.load to <2 x double>
  %i.q = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load393 = load <2 x i16>, ptr %i.q, align 2, !tbaa !454
  %i.r = uitofp <2 x i16> %wide.load393 to <2 x double>
  %i.s = fadd <2 x double> %i.p, %i.r
  %i.t = getelementptr [2 x i8], ptr %invariant.gep362, i64 %index
  %wide.load394 = load <2 x i16>, ptr %i.t, align 2, !tbaa !454
  %i.u = uitofp <2 x i16> %wide.load394 to <2 x double>
  %i.v = fadd <2 x double> %i.s, %i.u
  %i.w = getelementptr [2 x i8], ptr %invariant.gep364, i64 %index
  %wide.load395 = load <2 x i16>, ptr %i.w, align 2, !tbaa !454
  %i.x = uitofp <2 x i16> %wide.load395 to <2 x double>
  %i.y = fadd <2 x double> %i.v, %i.x
  %i.z = getelementptr [2 x i8], ptr %invariant.gep366, i64 %index
  %wide.load396 = load <2 x i16>, ptr %i.z, align 2, !tbaa !454
  %i.aa = uitofp <2 x i16> %wide.load396 to <2 x double>
  %i.ab = fadd <2 x double> %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> %i.ab, ptr %i.ac, align 8, !tbaa !285
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader234:                                    ; preds = %bb.a
  %i.ae = mul i32 %4, %3                          ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.preheader234
  %i.ag = shl nsw i32 %4, 1
  %i.ah = sext i32 %4 to i64
  %i.ai = sext i32 %i.ag to i64
  %wide.trip.count311 = zext nneg i32 %i.ae to i64 ; 3 uses
  %invariant.gep368 = getelementptr [2 x i8], ptr %1, i64 %i.ah ; 2 uses
  %invariant.gep370 = getelementptr [2 x i8], ptr %1, i64 %i.ai ; 2 uses
  %min.iters.check398 = icmp eq i32 %i.ae, 1
  br i1 %min.iters.check398, label %scalar.ph397.preheader, label %vector.ph399

vector.ph399:                                     ; preds = %.lr.ph240
  %n.vec400 = and i64 %wide.trip.count311, 2147483646 ; 3 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next406, %vector.body401 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index402
  %wide.load403 = load <2 x i16>, ptr %i.aj, align 2, !tbaa !454
  %i.ak = uitofp <2 x i16> %wide.load403 to <2 x double>
  %i.al = getelementptr [2 x i8], ptr %invariant.gep368, i64 %index402
  %wide.load404 = load <2 x i16>, ptr %i.al, align 2, !tbaa !454
  %i.am = uitofp <2 x i16> %wide.load404 to <2 x double>
  %i.an = fadd <2 x double> %i.ak, %i.am
  %i.ao = getelementptr [2 x i8], ptr %invariant.gep370, i64 %index402
  %wide.load405 = load <2 x i16>, ptr %i.ao, align 2, !tbaa !454
  %i.ap = uitofp <2 x i16> %wide.load405 to <2 x double>
  %i.aq = fadd <2 x double> %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index402
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !285
  %index.next406 = add nuw i64 %index402, 2       ; 2 uses
  %i.as = icmp eq i64 %index.next406, %n.vec400
  br i1 %i.as, label %middle.block407, label %vector.body401, !llvm.loop !546

middle.block407:                                  ; preds = %vector.body401
  %cmp.n408 = icmp eq i64 %n.vec400, %wide.trip.count311
  br i1 %cmp.n408, label %.loopexit, label %scalar.ph397.preheader

scalar.ph397.preheader:                           ; preds = %.lr.ph240, %middle.block407
  %indvars.iv308.ph = phi i64 [ 0, %.lr.ph240 ], [ %n.vec400, %middle.block407 ]
  br label %scalar.ph397

scalar.ph397:                                     ; preds = %scalar.ph397.preheader, %scalar.ph397
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph397 ], [ %indvars.iv308.ph, %scalar.ph397.preheader ] ; 5 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv308
  %i.au = load i16, ptr %i.at, align 2, !tbaa !454
  %i.av = uitofp i16 %i.au to double
  %gep369 = getelementptr [2 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.aw = load i16, ptr %gep369, align 2, !tbaa !454
  %i.ax = uitofp i16 %i.aw to double
  %i.ay = fadd double %i.av, %i.ax
  %gep371 = getelementptr [2 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.az = load i16, ptr %gep371, align 2, !tbaa !454
  %i.ba = uitofp i16 %i.az to double
  %i.bb = fadd double %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308
  store double %i.bb, ptr %i.bc, align 8, !tbaa !285
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %.loopexit, label %scalar.ph397, !llvm.loop !547

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !454
  %i.bf = uitofp i16 %i.be to double
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bg = load i16, ptr %gep, align 2, !tbaa !454
  %i.bh = uitofp i16 %i.bg to double
  %i.bi = fadd double %i.bf, %i.bh
  %gep363 = getelementptr [2 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.bj = load i16, ptr %gep363, align 2, !tbaa !454
  %i.bk = uitofp i16 %i.bj to double
  %i.bl = fadd double %i.bi, %i.bk
  %gep365 = getelementptr [2 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.bm = load i16, ptr %gep365, align 2, !tbaa !454
  %i.bn = uitofp i16 %i.bm to double
  %i.bo = fadd double %i.bl, %i.bn
  %gep367 = getelementptr [2 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.bp = load i16, ptr %gep367, align 2, !tbaa !454
  %i.bq = uitofp i16 %i.bp to double
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.br, ptr %i.bs, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !548

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.bt = icmp sgt i32 %i.c, 0
  br i1 %i.bt, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.bu = zext nneg i32 %i.c to i64
  %i.bv = add nsw i64 %i.bu, -1                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 2                       ; 2 uses
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.bx, 9223372036854775806
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.bz = icmp sgt i32 %i.c, 0
  br i1 %i.bz, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.ca = zext nneg i32 %i.c to i64
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = udiv i64 %i.cb, 3                       ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.ce = icmp ult i32 %i.c, 4
  br i1 %i.ce, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter432 = and i64 %i.cd, 9223372036854775806
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.cf = icmp sgt i32 %i.c, 0
  br i1 %i.cf, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter434 = and i64 %wide.trip.count328, 3   ; 3 uses
  %i.cg = icmp ult i32 %i.c, 4
  br i1 %i.cg, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter438 = and i64 %wide.trip.count328, 2147483644
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.ch = icmp sgt i32 %4, 0
  br i1 %i.ch, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.ci = icmp sgt i32 %i.c, 0
  %i.cj = icmp sgt i32 %i.e, 0
  %i.ck = zext nneg i32 %4 to i64                 ; 3 uses
  %i.cl = zext nneg i32 %4 to i64                 ; 3 uses
  %i.cm = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.cn = add nsw i64 %6, -1                      ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.ck
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %indvars.iv.next326.3, %.lr.ph274 ] ; 5 uses
  %.0214273 = phi double [ 0.000000e+00, %.lr.ph274.preheader.new ], [ %i.dh, %.lr.ph274 ]
  %niter439 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter439.next.3, %.lr.ph274 ]
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !454
  %i.cr = uitofp i16 %i.cq to double
  %i.cs = fadd double %.0214273, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !454
  %i.cw = uitofp i16 %i.cv to double
  %i.cx = fadd double %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !454
  %i.db = uitofp i16 %i.da to double
  %i.dc = fadd double %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !454
  %i.dg = uitofp i16 %i.df to double
  %i.dh = fadd double %i.dc, %i.dg                ; 3 uses
  %indvars.iv.next326.3 = add nuw nsw i64 %indvars.iv325, 4 ; 2 uses
  %niter439.next.3 = add i64 %niter439, 4         ; 2 uses
  %niter439.ncmp.3 = icmp eq i64 %niter439.next.3, %unroll_iter438
  br i1 %niter439.ncmp.3, label %._crit_edge275.loopexit.unr-lcssa, label %.lr.ph274, !llvm.loop !549

._crit_edge275.loopexit.unr-lcssa:                ; preds = %.lr.ph274
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod435.not, label %._crit_edge275, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.preheader
  %indvars.iv325.epil.init = phi i64 [ 0, %.lr.ph274.preheader ], [ %indvars.iv.next326.3, %._crit_edge275.loopexit.unr-lcssa ]
  %.0214273.epil.init = phi double [ 0.000000e+00, %.lr.ph274.preheader ], [ %i.dh, %._crit_edge275.loopexit.unr-lcssa ]
  %lcmp.mod437 = icmp ne i64 %xtraiter434, 0
  call void @llvm.assume(i1 %lcmp.mod437)
  br label %.lr.ph274.epil

.lr.ph274.epil:                                   ; preds = %.lr.ph274.epil, %.lr.ph274.epil.preheader
  %indvars.iv325.epil = phi i64 [ %indvars.iv325.epil.init, %.lr.ph274.epil.preheader ], [ %indvars.iv.next326.epil, %.lr.ph274.epil ] ; 2 uses
  %.0214273.epil = phi double [ %.0214273.epil.init, %.lr.ph274.epil.preheader ], [ %i.dl, %.lr.ph274.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph274.epil.preheader ], [ %epil.iter.next, %.lr.ph274.epil ]
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325.epil
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !454
  %i.dk = uitofp i16 %i.dj to double
  %i.dl = fadd double %.0214273.epil, %i.dk       ; 2 uses
  %indvars.iv.next326.epil = add nuw nsw i64 %indvars.iv325.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter434
  br i1 %epil.iter.cmp.not, label %._crit_edge275, label %.lr.ph274.epil, !llvm.loop !550

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.epil, %.preheader229
  %.0214.lcssa = phi double [ 0.000000e+00, %.preheader229 ], [ %i.dh, %._crit_edge275.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph274.epil ] ; 3 uses
  store double %.0214.lcssa, ptr %2, align 8, !tbaa !285
  %i.dm = icmp sgt i32 %i.e, 0
  br i1 %i.dm, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.dn = sext i32 %i.c to i64
  %wide.trip.count333 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep376 = getelementptr [2 x i8], ptr %1, i64 %i.dn ; 3 uses
  %xtraiter440 = and i64 %wide.trip.count333, 1
  %i.do = icmp eq i32 %i.e, 1
  br i1 %i.do, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter444 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi double [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.ed, %.lr.ph280 ]
  %niter445 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter445.next.1, %.lr.ph280 ]
  %gep377 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv330
  %i.dp = load i16, ptr %gep377, align 2, !tbaa !454
  %i.dq = uitofp i16 %i.dp to double
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv330
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !454
  %i.dt = uitofp i16 %i.ds to double
  %i.du = fsub double %i.dq, %i.dt
  %i.dv = fadd double %.1215278, %i.du            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331
  store double %i.dv, ptr %i.dw, align 8, !tbaa !285
  %gep377.1 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.dx = load i16, ptr %gep377.1, align 2, !tbaa !454
  %i.dy = uitofp i16 %i.dx to double
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next331
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !454
  %i.eb = uitofp i16 %i.ea to double
  %i.ec = fsub double %i.dy, %i.eb
  %i.ed = fadd double %i.dv, %i.ec                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331.1
  store double %i.ed, ptr %i.ee, align 8, !tbaa !285
  %niter445.next.1 = add nuw i64 %niter445, 2     ; 2 uses
  %niter445.ncmp.1 = icmp eq i64 %niter445.next.1, %unroll_iter444
  br i1 %niter445.ncmp.1, label %.loopexit.loopexit410.unr-lcssa, label %.lr.ph280, !llvm.loop !551

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.1, %.lr.ph261 ] ; 3 uses
  %.0208260 = phi double [ 0.000000e+00, %.lr.ph261.preheader.new ], [ %i.ew, %.lr.ph261 ]
  %i.ef = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader.new ], [ %i.es, %.lr.ph261 ]
  %niter433 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter433.next.1, %.lr.ph261 ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.eh = load <2 x i16>, ptr %i.eg, align 2, !tbaa !454
  %i.ei = uitofp <2 x i16> %i.eh to <2 x double>
  %i.ej = fadd <2 x double> %i.ef, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !454
  %i.em = uitofp i16 %i.el to double
  %i.en = fadd double %.0208260, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  %i.eq = load <2 x i16>, ptr %i.ep, align 2, !tbaa !454
  %i.er = uitofp <2 x i16> %i.eq to <2 x double>
  %i.es = fadd <2 x double> %i.ej, %i.er          ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 10
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !454
  %i.ev = uitofp i16 %i.eu to double
  %i.ew = fadd double %i.en, %i.ev                ; 3 uses
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319, 6 ; 2 uses
  %niter433.next.1 = add i64 %niter433, 2         ; 2 uses
  %niter433.ncmp.1.not = icmp eq i64 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !552

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %i.ex = and i64 %i.cc, 1
  %lcmp.mod428.not.not = icmp eq i64 %i.ex, 0
  br i1 %lcmp.mod428.not.not, label %.lr.ph261.epil.preheader, label %._crit_edge262

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.1, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi double [ 0.000000e+00, %.lr.ph261.preheader ], [ %i.ew, %._crit_edge262.loopexit.unr-lcssa ]
  %.epil.init427 = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader ], [ %i.es, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod431 = trunc i64 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod431)
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319.epil.init ; 2 uses
  %i.ez = load <2 x i16>, ptr %i.ey, align 2, !tbaa !454
  %i.fa = uitofp <2 x i16> %i.ez to <2 x double>
  %i.fb = fadd <2 x double> %.epil.init427, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !454
  %i.fe = uitofp i16 %i.fd to double
  %i.ff = fadd double %.0208260.epil.init, %i.fe
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader231
  %.0208.lcssa = phi double [ 0.000000e+00, %.preheader231 ], [ %i.ew, %._crit_edge262.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph261.epil.preheader ] ; 2 uses
  %i.fg = phi <2 x double> [ zeroinitializer, %.preheader231 ], [ %i.es, %._crit_edge262.loopexit.unr-lcssa ], [ %i.fb, %.lr.ph261.epil.preheader ] ; 2 uses
  store <2 x double> %i.fg, ptr %2, align 8, !tbaa !285
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.0208.lcssa, ptr %i.fh, align 8, !tbaa !285
  %i.fi = icmp sgt i32 %i.e, 0
  br i1 %i.fi, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.fj = sext i32 %i.c to i64
  %i.fk = zext nneg i32 %i.e to i64
  %invariant.gep374 = getelementptr [2 x i8], ptr %1, i64 %i.fj
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next323, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi double [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.fu, %.lr.ph271 ]
  %i.fl = phi <2 x double> [ %i.fg, %.lr.ph271.preheader ], [ %i.gc, %.lr.ph271 ]
  %gep375 = getelementptr [2 x i8], ptr %invariant.gep374, i64 %indvars.iv322 ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv322 ; 2 uses
  %i.fn = getelementptr i8, ptr %gep375, i64 4
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !454
  %i.fp = uitofp i16 %i.fo to double
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !454
  %i.fs = uitofp i16 %i.fr to double
  %i.ft = fsub double %i.fp, %i.fs
  %i.fu = fadd double %.1209269, %i.ft            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next323
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv322
  %i.fx = load <2 x i16>, ptr %gep375, align 2, !tbaa !454
  %i.fy = uitofp <2 x i16> %i.fx to <2 x double>
  %i.fz = load <2 x i16>, ptr %i.fm, align 2, !tbaa !454
  %i.ga = uitofp <2 x i16> %i.fz to <2 x double>
  %i.gb = fsub <2 x double> %i.fy, %i.ga
  %i.gc = fadd <2 x double> %i.fl, %i.gb          ; 2 uses
  store <2 x double> %i.gc, ptr %i.fv, align 8, !tbaa !285
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  store double %i.fu, ptr %i.gd, align 8, !tbaa !285
  %i.ge = icmp samesign ult i64 %indvars.iv.next323, %i.fk
  br i1 %i.ge, label %.lr.ph271, label %.loopexit, !llvm.loop !553

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.1, %.lr.ph246 ] ; 3 uses
  %i.gf = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.gx, %.lr.ph246 ]
  %i.gg = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.gt, %.lr.ph246 ]
end_hunk_4
begin_hunk_5_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsiEclEPKhPhii:bb.a

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader234:                                    ; preds = %bb.a
  %i.ae = mul i32 %4, %3                          ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.preheader234
  %i.ag = shl nsw i32 %4, 1
  %i.ah = sext i32 %4 to i64
  %i.ai = sext i32 %i.ag to i64
  %wide.trip.count311 = zext nneg i32 %i.ae to i64 ; 3 uses
  %invariant.gep368 = getelementptr [2 x i8], ptr %1, i64 %i.ah ; 2 uses
  %invariant.gep370 = getelementptr [2 x i8], ptr %1, i64 %i.ai ; 2 uses
  %min.iters.check398 = icmp ult i32 %i.ae, 8
  br i1 %min.iters.check398, label %scalar.ph397.preheader, label %vector.ph399

vector.ph399:                                     ; preds = %.lr.ph240
  %n.vec400 = and i64 %wide.trip.count311, 2147483640 ; 3 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next409, %vector.body401 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index402 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %wide.load403 = load <4 x i16>, ptr %i.aj, align 2, !tbaa !454
  %wide.load404 = load <4 x i16>, ptr %i.ak, align 2, !tbaa !454
  %i.al = sext <4 x i16> %wide.load403 to <4 x i32>
  %i.am = sext <4 x i16> %wide.load404 to <4 x i32>
  %i.an = getelementptr [2 x i8], ptr %invariant.gep368, i64 %index402 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %wide.load405 = load <4 x i16>, ptr %i.an, align 2, !tbaa !454
  %wide.load406 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !454
  %i.ap = sext <4 x i16> %wide.load405 to <4 x i32>
  %i.aq = sext <4 x i16> %wide.load406 to <4 x i32>
  %i.ar = add nsw <4 x i32> %i.ap, %i.al
  %i.as = add nsw <4 x i32> %i.aq, %i.am
  %i.at = getelementptr [2 x i8], ptr %invariant.gep370, i64 %index402 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %wide.load407 = load <4 x i16>, ptr %i.at, align 2, !tbaa !454
  %wide.load408 = load <4 x i16>, ptr %i.au, align 2, !tbaa !454
  %i.av = sext <4 x i16> %wide.load407 to <4 x i32>
  %i.aw = sext <4 x i16> %wide.load408 to <4 x i32>
  %i.ax = add nsw <4 x i32> %i.ar, %i.av
  %i.ay = add nsw <4 x i32> %i.as, %i.aw
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index402 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !228
  store <4 x i32> %i.ay, ptr %i.ba, align 4, !tbaa !228
  %index.next409 = add nuw i64 %index402, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next409, %n.vec400
  br i1 %i.bb, label %middle.block410, label %vector.body401, !llvm.loop !561

middle.block410:                                  ; preds = %vector.body401
  %cmp.n411 = icmp eq i64 %n.vec400, %wide.trip.count311
  br i1 %cmp.n411, label %.loopexit, label %scalar.ph397.preheader

scalar.ph397.preheader:                           ; preds = %.lr.ph240, %middle.block410
  %indvars.iv308.ph = phi i64 [ 0, %.lr.ph240 ], [ %n.vec400, %middle.block410 ]
  br label %scalar.ph397

scalar.ph397:                                     ; preds = %scalar.ph397.preheader, %scalar.ph397
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph397 ], [ %indvars.iv308.ph, %scalar.ph397.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv308
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !454
  %i.be = sext i16 %i.bd to i32
  %gep369 = getelementptr [2 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.bf = load i16, ptr %gep369, align 2, !tbaa !454
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.be
  %gep371 = getelementptr [2 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.bi = load i16, ptr %gep371, align 2, !tbaa !454
  %i.bj = sext i16 %i.bi to i32
  %i.bk = add nsw i32 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !228
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %.loopexit, label %scalar.ph397, !llvm.loop !562

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !454
  %i.bo = sext i16 %i.bn to i32
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bp = load i16, ptr %gep, align 2, !tbaa !454
  %i.bq = sext i16 %i.bp to i32
  %i.br = add nsw i32 %i.bq, %i.bo
  %gep363 = getelementptr [2 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.bs = load i16, ptr %gep363, align 2, !tbaa !454
  %i.bt = sext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.br, %i.bt
  %gep365 = getelementptr [2 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.bv = load i16, ptr %gep365, align 2, !tbaa !454
  %i.bw = sext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bu, %i.bw
  %gep367 = getelementptr [2 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.by = load i16, ptr %gep367, align 2, !tbaa !454
  %i.bz = sext i16 %i.by to i32
  %i.ca = add nsw i32 %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !563

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.cc = icmp sgt i32 %i.c, 0
  br i1 %i.cc, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.cd = zext nneg i32 %i.c to i64
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %xtraiter = and i64 %i.cg, 3                    ; 3 uses
  %i.ch = icmp ult i32 %i.c, 13
  br i1 %i.ch, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.cg, 9223372036854775804
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.ci = icmp sgt i32 %i.c, 0
  br i1 %i.ci, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.cj = zext nneg i32 %i.c to i64
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = udiv i64 %i.ck, 3                       ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %i.cn = icmp ult i32 %i.c, 4
  br i1 %i.cn, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter456 = and i64 %i.cm, 9223372036854775806
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.co = icmp sgt i32 %i.c, 0
  br i1 %i.co, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check414 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check414, label %.lr.ph274.preheader427, label %vector.ph415

vector.ph415:                                     ; preds = %.lr.ph274.preheader
  %n.vec416 = and i64 %wide.trip.count328, 2147483640 ; 3 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next422, %vector.body417 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.ct, %vector.body417 ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph415 ], [ %i.cu, %vector.body417 ]
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index418 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %wide.load420 = load <4 x i16>, ptr %i.cp, align 2, !tbaa !454
  %wide.load421 = load <4 x i16>, ptr %i.cq, align 2, !tbaa !454
  %i.cr = sext <4 x i16> %wide.load420 to <4 x i32>
  %i.cs = sext <4 x i16> %wide.load421 to <4 x i32>
  %i.ct = add <4 x i32> %vec.phi, %i.cr           ; 2 uses
  %i.cu = add <4 x i32> %vec.phi419, %i.cs        ; 2 uses
  %index.next422 = add nuw i64 %index418, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next422, %n.vec416
  br i1 %i.cv, label %middle.block423, label %vector.body417, !llvm.loop !564

middle.block423:                                  ; preds = %vector.body417
  %bin.rdx = add <4 x i32> %i.cu, %i.ct
  %i.cw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n424 = icmp eq i64 %n.vec416, %wide.trip.count328
  br i1 %cmp.n424, label %._crit_edge275, label %.lr.ph274.preheader427

.lr.ph274.preheader427:                           ; preds = %.lr.ph274.preheader, %middle.block423
  %indvars.iv325.ph = phi i64 [ 0, %.lr.ph274.preheader ], [ %n.vec416, %middle.block423 ]
  %.0214273.ph = phi i32 [ 0, %.lr.ph274.preheader ], [ %i.cw, %middle.block423 ]
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.cx = icmp sgt i32 %4, 0
  br i1 %i.cx, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.cy = icmp sgt i32 %i.c, 0
  %i.cz = icmp sgt i32 %i.e, 0
  %i.da = zext nneg i32 %4 to i64                 ; 3 uses
  %i.db = zext nneg i32 %4 to i64                 ; 3 uses
  %i.dc = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.dd = add nsw i64 %6, -1                      ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274.preheader427, %.lr.ph274
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.lr.ph274 ], [ %indvars.iv325.ph, %.lr.ph274.preheader427 ] ; 2 uses
  %.0214273 = phi i32 [ %i.di, %.lr.ph274 ], [ %.0214273.ph, %.lr.ph274.preheader427 ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !454
  %i.dh = sext i16 %i.dg to i32
  %i.di = add nsw i32 %.0214273, %i.dh            ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge275, label %.lr.ph274, !llvm.loop !565

._crit_edge275:                                   ; preds = %.lr.ph274, %middle.block423, %.preheader229
  %.0214.lcssa = phi i32 [ 0, %.preheader229 ], [ %i.cw, %middle.block423 ], [ %i.di, %.lr.ph274 ] ; 3 uses
  store i32 %.0214.lcssa, ptr %2, align 4, !tbaa !228
  %i.dj = icmp sgt i32 %i.e, 0
  br i1 %i.dj, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.dk = sext i32 %i.c to i64
  %wide.trip.count333 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep376 = getelementptr [2 x i8], ptr %1, i64 %i.dk ; 3 uses
  %xtraiter458 = and i64 %wide.trip.count333, 1
  %i.dl = icmp eq i32 %i.e, 1
  br i1 %i.dl, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter462 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi i32 [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.ea, %.lr.ph280 ]
  %niter463 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter463.next.1, %.lr.ph280 ]
  %gep377 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv330
  %i.dm = load i16, ptr %gep377, align 2, !tbaa !454
  %i.dn = sext i16 %i.dm to i32
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv330
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !454
  %i.dq = sext i16 %i.dp to i32
  %i.dr = sub nsw i32 %i.dn, %i.dq
  %i.ds = add nsw i32 %i.dr, %.1215278            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !228
  %gep377.1 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.du = load i16, ptr %gep377.1, align 2, !tbaa !454
  %i.dv = sext i16 %i.du to i32
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next331
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !454
  %i.dy = sext i16 %i.dx to i32
  %i.dz = sub nsw i32 %i.dv, %i.dy
  %i.ea = add nsw i32 %i.dz, %i.ds                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331.1
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !228
  %niter463.next.1 = add nuw i64 %niter463, 2     ; 2 uses
  %niter463.ncmp.1 = icmp eq i64 %niter463.next.1, %unroll_iter462
  br i1 %niter463.ncmp.1, label %.loopexit.loopexit426.unr-lcssa, label %.lr.ph280, !llvm.loop !566

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.1, %.lr.ph261 ] ; 3 uses
  %.0208260 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.fa, %.lr.ph261 ]
  %.0210259 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.ew, %.lr.ph261 ]
  %.0212258 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.es, %.lr.ph261 ]
  %niter457 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter457.next.1, %.lr.ph261 ]
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 3 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !454
  %i.ee = sext i16 %i.ed to i32
  %i.ef = add nsw i32 %.0212258, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !454
  %i.ei = sext i16 %i.eh to i32
  %i.ej = add nsw i32 %.0210259, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !454
  %i.em = sext i16 %i.el to i32
  %i.en = add nsw i32 %.0208260, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !454
  %i.er = sext i16 %i.eq to i32
  %i.es = add nsw i32 %i.ef, %i.er                ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !454
  %i.ev = sext i16 %i.eu to i32
  %i.ew = add nsw i32 %i.ej, %i.ev                ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 10
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !454
  %i.ez = sext i16 %i.ey to i32
  %i.fa = add nsw i32 %i.en, %i.ez                ; 3 uses
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319, 6 ; 2 uses
  %niter457.next.1 = add i64 %niter457, 2         ; 2 uses
  %niter457.ncmp.1.not = icmp eq i64 %niter457.next.1, %unroll_iter456
  br i1 %niter457.ncmp.1.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !567

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %i.fb = and i64 %i.cl, 1
  %lcmp.mod451.not.not = icmp eq i64 %i.fb, 0
  br i1 %lcmp.mod451.not.not, label %.lr.ph261.epil.preheader, label %._crit_edge262

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.1, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.fa, %._crit_edge262.loopexit.unr-lcssa ]
  %.0210259.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.ew, %._crit_edge262.loopexit.unr-lcssa ]
  %.0212258.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.es, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod455 = trunc i64 %i.cm to i1
  call void @llvm.assume(i1 %lcmp.mod455)
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319.epil.init ; 3 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !454
  %i.fe = sext i16 %i.fd to i32
  %i.ff = add nsw i32 %.0212258.epil.init, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !454
  %i.fi = sext i16 %i.fh to i32
  %i.fj = add nsw i32 %.0210259.epil.init, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !454
  %i.fm = sext i16 %i.fl to i32
  %i.fn = add nsw i32 %.0208260.epil.init, %i.fm
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader231
  %.0212.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.es, %._crit_edge262.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph261.epil.preheader ] ; 2 uses
  %.0210.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.ew, %._crit_edge262.loopexit.unr-lcssa ], [ %i.fj, %.lr.ph261.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.fa, %._crit_edge262.loopexit.unr-lcssa ], [ %i.fn, %.lr.ph261.epil.preheader ] ; 2 uses
  store i32 %.0212.lcssa, ptr %2, align 4, !tbaa !228
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.0210.lcssa, ptr %i.fo, align 4, !tbaa !228
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.0208.lcssa, ptr %i.fp, align 4, !tbaa !228
  %i.fq = icmp sgt i32 %i.e, 0
  br i1 %i.fq, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.fr = sext i32 %i.c to i64
  %i.fs = zext nneg i32 %i.e to i64
  %invariant.gep374 = getelementptr [2 x i8], ptr %1, i64 %i.fr
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next323, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi i32 [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.gp, %.lr.ph271 ]
  %.1211268 = phi i32 [ %.0210.lcssa, %.lr.ph271.preheader ], [ %i.gh, %.lr.ph271 ]
  %.1213267 = phi i32 [ %.0212.lcssa, %.lr.ph271.preheader ], [ %i.fz, %.lr.ph271 ]
  %gep375 = getelementptr [2 x i8], ptr %invariant.gep374, i64 %indvars.iv322 ; 3 uses
  %i.ft = load i16, ptr %gep375, align 2, !tbaa !454
  %i.fu = sext i16 %i.ft to i32
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv322 ; 3 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !454
  %i.fx = sext i16 %i.fw to i32
  %i.fy = sub nsw i32 %i.fu, %i.fx
  %i.fz = add nsw i32 %i.fy, %.1213267            ; 2 uses
  %i.ga = getelementptr i8, ptr %gep375, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !454
  %i.gc = sext i16 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !454
  %i.gf = sext i16 %i.ge to i32
  %i.gg = sub nsw i32 %i.gc, %i.gf
  %i.gh = add nsw i32 %i.gg, %.1211268            ; 2 uses
  %i.gi = getelementptr i8, ptr %gep375, i64 4
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !454
  %i.gk = sext i16 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !454
  %i.gn = sext i16 %i.gm to i32
  %i.go = sub nsw i32 %i.gk, %i.gn
  %i.gp = add nsw i32 %i.go, %.1209269            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next323
  store i32 %i.fz, ptr %i.gq, align 4, !tbaa !228
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv322 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i32 %i.gh, ptr %i.gs, align 4, !tbaa !228
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 20
  store i32 %i.gp, ptr %i.gt, align 4, !tbaa !228
  %i.gu = icmp samesign ult i64 %indvars.iv.next323, %i.fs
  br i1 %i.gu, label %.lr.ph271, label %.loopexit, !llvm.loop !568

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.3, %.lr.ph246 ] ; 5 uses
  %i.gv = phi <4 x i32> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.ho, %.lr.ph246 ]
  %niter = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %niter.next.3, %.lr.ph246 ]
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv313
  %i.gx = load <4 x i16>, ptr %i.gw, align 2, !tbaa !454
  %i.gy = sext <4 x i16> %i.gx to <4 x i32>
  %i.gz = add nsw <4 x i32> %i.gv, %i.gy
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv313
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load <4 x i16>, ptr %i.hb, align 2, !tbaa !454
  %i.hd = sext <4 x i16> %i.hc to <4 x i32>
  %i.he = add nsw <4 x i32> %i.gz, %i.hd
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv313
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load <4 x i16>, ptr %i.hg, align 2, !tbaa !454
  %i.hi = sext <4 x i16> %i.hh to <4 x i32>
end_hunk_5
begin_hunk_6_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEclEPKhPhii:bb.a
  %i.bz = add nsw <4 x i32> %wide.load424, %wide.load422
  %i.ca = getelementptr [4 x i8], ptr %invariant.gep370, i64 %index420 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %wide.load425 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !228
  %wide.load426 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !228
  %i.cc = add nsw <4 x i32> %i.by, %wide.load425
  %i.cd = add nsw <4 x i32> %i.bz, %wide.load426
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index420 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x i32> %i.cc, ptr %i.ce, align 4, !tbaa !228
  store <4 x i32> %i.cd, ptr %i.cf, align 4, !tbaa !228
  %index.next427 = add nuw i64 %index420, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next427, %n.vec418
  br i1 %i.cg, label %middle.block428, label %vector.body419, !llvm.loop !577

middle.block428:                                  ; preds = %vector.body419
  %cmp.n429 = icmp eq i64 %n.vec418, %wide.trip.count311
  br i1 %cmp.n429, label %.loopexit, label %scalar.ph415.preheader

scalar.ph415.preheader:                           ; preds = %vector.memcheck409, %.lr.ph240, %middle.block428
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph240 ], [ %n.vec418, %middle.block428 ] ; 7 uses
  %xtraiter456 = and i64 %wide.trip.count311, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %scalar.ph415.prol.loopexit, label %scalar.ph415.prol

scalar.ph415.prol:                                ; preds = %scalar.ph415.preheader
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv308.ph
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !228
  %gep369.prol = getelementptr [4 x i8], ptr %invariant.gep368, i64 %indvars.iv308.ph
  %i.cj = load i32, ptr %gep369.prol, align 4, !tbaa !228
  %i.ck = add nsw i32 %i.cj, %i.ci
  %gep371.prol = getelementptr [4 x i8], ptr %invariant.gep370, i64 %indvars.iv308.ph
  %i.cl = load i32, ptr %gep371.prol, align 4, !tbaa !228
  %i.cm = add nsw i32 %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308.ph
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !228
  %indvars.iv.next309.prol = or disjoint i64 %indvars.iv308.ph, 1
  br label %scalar.ph415.prol.loopexit

scalar.ph415.prol.loopexit:                       ; preds = %scalar.ph415.prol, %scalar.ph415.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %scalar.ph415.preheader ], [ %indvars.iv.next309.prol, %scalar.ph415.prol ]
  %i.co = add nsw i64 %wide.trip.count311, -1
  %i.cp = icmp eq i64 %indvars.iv308.ph, %i.co
  br i1 %i.cp, label %.loopexit, label %scalar.ph415

scalar.ph415:                                     ; preds = %scalar.ph415.prol.loopexit, %scalar.ph415
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.1, %scalar.ph415 ], [ %indvars.iv308.unr, %scalar.ph415.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv308
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !228
  %gep369 = getelementptr [4 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.cs = load i32, ptr %gep369, align 4, !tbaa !228
  %i.ct = add nsw i32 %i.cs, %i.cr
  %gep371 = getelementptr [4 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.cu = load i32, ptr %gep371, align 4, !tbaa !228
  %i.cv = add nsw i32 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv308
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !228
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next309
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !228
  %gep369.1 = getelementptr [4 x i8], ptr %invariant.gep368, i64 %indvars.iv.next309
  %i.cz = load i32, ptr %gep369.1, align 4, !tbaa !228
  %i.da = add nsw i32 %i.cz, %i.cy
  %gep371.1 = getelementptr [4 x i8], ptr %invariant.gep370, i64 %indvars.iv.next309
  %i.db = load i32, ptr %gep371.1, align 4, !tbaa !228
  %i.dc = add nsw i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next309
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !228
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %exitcond312.not.1 = icmp eq i64 %indvars.iv.next309.1, %wide.trip.count311
  br i1 %exitcond312.not.1, label %.loopexit, label %scalar.ph415, !llvm.loop !578

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !228
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dg = load i32, ptr %gep, align 4, !tbaa !228
  %i.dh = add nsw i32 %i.dg, %i.df
  %gep363 = getelementptr [4 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.di = load i32, ptr %gep363, align 4, !tbaa !228
  %i.dj = add nsw i32 %i.dh, %i.di
  %gep365 = getelementptr [4 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.dk = load i32, ptr %gep365, align 4, !tbaa !228
  %i.dl = add nsw i32 %i.dj, %i.dk
  %gep367 = getelementptr [4 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.dm = load i32, ptr %gep367, align 4, !tbaa !228
  %i.dn = add nsw i32 %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !228
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dr = load i32, ptr %gep.1, align 4, !tbaa !228
  %i.ds = add nsw i32 %i.dr, %i.dq
  %gep363.1 = getelementptr [4 x i8], ptr %invariant.gep362, i64 %indvars.iv.next
  %i.dt = load i32, ptr %gep363.1, align 4, !tbaa !228
  %i.du = add nsw i32 %i.ds, %i.dt
  %gep365.1 = getelementptr [4 x i8], ptr %invariant.gep364, i64 %indvars.iv.next
  %i.dv = load i32, ptr %gep365.1, align 4, !tbaa !228
  %i.dw = add nsw i32 %i.du, %i.dv
  %gep367.1 = getelementptr [4 x i8], ptr %invariant.gep366, i64 %indvars.iv.next
  %i.dx = load i32, ptr %gep367.1, align 4, !tbaa !228
  %i.dy = add nsw i32 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !228
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !579

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.ea = icmp sgt i32 %i.e, 0
  br i1 %i.ea, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.eb = zext nneg i32 %i.e to i64
  %i.ec = add nsw i64 %i.eb, -1
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %xtraiter458 = and i64 %i.ee, 7                 ; 3 uses
  %i.ef = icmp ult i32 %i.e, 29
  br i1 %i.ef, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.ee, 9223372036854775800
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.eg = icmp sgt i32 %i.e, 0
  br i1 %i.eg, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.eh = zext nneg i32 %i.e to i64
  %i.ei = add nsw i64 %i.eh, -1
  %i.ej = udiv i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %xtraiter470 = and i64 %i.ek, 3                 ; 3 uses
  %i.el = icmp ult i32 %i.e, 10
  br i1 %i.el, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter478 = and i64 %i.ek, 9223372036854775804
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.em = icmp sgt i32 %i.e, 0
  br i1 %i.em, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.e to i64 ; 3 uses
  %min.iters.check432 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check432, label %.lr.ph274.preheader445, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph274.preheader
  %n.vec434 = and i64 %wide.trip.count328, 2147483640 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next440, %vector.body435 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph433 ], [ %i.ep, %vector.body435 ]
  %vec.phi437 = phi <4 x i32> [ zeroinitializer, %vector.ph433 ], [ %i.eq, %vector.body435 ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index436 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load438 = load <4 x i32>, ptr %i.en, align 4, !tbaa !228
  %wide.load439 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !228
  %i.ep = add <4 x i32> %wide.load438, %vec.phi   ; 2 uses
  %i.eq = add <4 x i32> %wide.load439, %vec.phi437 ; 2 uses
  %index.next440 = add nuw i64 %index436, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next440, %n.vec434
  br i1 %i.er, label %middle.block441, label %vector.body435, !llvm.loop !580

middle.block441:                                  ; preds = %vector.body435
  %bin.rdx = add <4 x i32> %i.eq, %i.ep
  %i.es = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n442 = icmp eq i64 %n.vec434, %wide.trip.count328
  br i1 %cmp.n442, label %._crit_edge275, label %.lr.ph274.preheader445

.lr.ph274.preheader445:                           ; preds = %.lr.ph274.preheader, %middle.block441
  %indvars.iv325.ph = phi i64 [ 0, %.lr.ph274.preheader ], [ %n.vec434, %middle.block441 ]
  %.0214273.ph = phi i32 [ 0, %.lr.ph274.preheader ], [ %i.es, %middle.block441 ]
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.et = icmp sgt i32 %4, 0
  br i1 %i.et, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.eu = icmp sgt i32 %i.e, 0
  %i.ev = icmp sgt i32 %i.g, 0
  %i.ew = zext nneg i32 %4 to i64                 ; 3 uses
  %i.ex = zext nneg i32 %4 to i64                 ; 3 uses
  %i.ey = sext i32 %i.e to i64
  %6 = sext i32 %i.g to i64
  %i.ez = add nsw i64 %6, -1                      ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ew
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274.preheader445, %.lr.ph274
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.lr.ph274 ], [ %indvars.iv325.ph, %.lr.ph274.preheader445 ] ; 2 uses
  %.0214273 = phi i32 [ %i.fd, %.lr.ph274 ], [ %.0214273.ph, %.lr.ph274.preheader445 ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv325
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !228
  %i.fd = add nsw i32 %i.fc, %.0214273            ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge275, label %.lr.ph274, !llvm.loop !581

._crit_edge275:                                   ; preds = %.lr.ph274, %middle.block441, %.preheader229
  %.0214.lcssa = phi i32 [ 0, %.preheader229 ], [ %i.es, %middle.block441 ], [ %i.fd, %.lr.ph274 ] ; 3 uses
  store i32 %.0214.lcssa, ptr %2, align 4, !tbaa !228
  %i.fe = icmp sgt i32 %i.g, 0
  br i1 %i.fe, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.ff = sext i32 %i.e to i64
  %wide.trip.count333 = zext nneg i32 %i.g to i64 ; 2 uses
  %invariant.gep376 = getelementptr [4 x i8], ptr %1, i64 %i.ff ; 3 uses
  %xtraiter488 = and i64 %wide.trip.count333, 1
  %i.fg = icmp eq i32 %i.g, 1
  br i1 %i.fg, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter492 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi i32 [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.fr, %.lr.ph280 ]
  %niter493 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter493.next.1, %.lr.ph280 ]
  %gep377 = getelementptr [4 x i8], ptr %invariant.gep376, i64 %indvars.iv330
  %i.fh = load i32, ptr %gep377, align 4, !tbaa !228
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv330
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !228
  %i.fk = sub nsw i32 %i.fh, %i.fj
  %i.fl = add nsw i32 %i.fk, %.1215278            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !228
  %gep377.1 = getelementptr [4 x i8], ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.fn = load i32, ptr %gep377.1, align 4, !tbaa !228
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next331
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !228
  %i.fq = sub nsw i32 %i.fn, %i.fp
  %i.fr = add nsw i32 %i.fq, %i.fl                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next331.1
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !228
  %niter493.next.1 = add nuw i64 %niter493, 2     ; 2 uses
  %niter493.ncmp.1 = icmp eq i64 %niter493.next.1, %unroll_iter492
  br i1 %niter493.ncmp.1, label %.loopexit.loopexit444.unr-lcssa, label %.lr.ph280, !llvm.loop !582

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.3, %.lr.ph261 ] ; 5 uses
  %.0208260 = phi i32 [ 0, %.lr.ph261.preheader.new ], [ %i.gu, %.lr.ph261 ]
  %i.ft = phi <2 x i32> [ zeroinitializer, %.lr.ph261.preheader.new ], [ %i.gr, %.lr.ph261 ]
  %niter479 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter479.next.3, %.lr.ph261 ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.fv = load <2 x i32>, ptr %i.fu, align 4, !tbaa !228
  %i.fw = add nsw <2 x i32> %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !228
  %i.fz = add nsw i32 %i.fy, %.0208260
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gc = load <2 x i32>, ptr %i.gb, align 4, !tbaa !228
  %i.gd = add nsw <2 x i32> %i.gc, %i.fw
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !228
  %i.gg = add nsw i32 %i.gf, %i.fz
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load <2 x i32>, ptr %i.gi, align 4, !tbaa !228
  %i.gk = add nsw <2 x i32> %i.gj, %i.gd
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !228
  %i.gn = add nsw i32 %i.gm, %i.gg
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 36
  %i.gq = load <2 x i32>, ptr %i.gp, align 4, !tbaa !228
  %i.gr = add nsw <2 x i32> %i.gq, %i.gk          ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 44
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !228
  %i.gu = add nsw i32 %i.gt, %i.gn                ; 3 uses
  %indvars.iv.next320.3 = add nuw nsw i64 %indvars.iv319, 12 ; 2 uses
  %niter479.next.3 = add i64 %niter479, 4         ; 2 uses
  %niter479.ncmp.3.not = icmp eq i64 %niter479.next.3, %unroll_iter478
  br i1 %niter479.ncmp.3.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !583

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %lcmp.mod474.not = icmp eq i64 %xtraiter470, 0
  br i1 %lcmp.mod474.not, label %._crit_edge262, label %.lr.ph261.epil.preheader

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.3, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi i32 [ 0, %.lr.ph261.preheader ], [ %i.gu, %._crit_edge262.loopexit.unr-lcssa ]
  %.epil.init473 = phi <2 x i32> [ zeroinitializer, %.lr.ph261.preheader ], [ %i.gr, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod477 = icmp ne i64 %xtraiter470, 0
  call void @llvm.assume(i1 %lcmp.mod477)
  br label %.lr.ph261.epil

.lr.ph261.epil:                                   ; preds = %.lr.ph261.epil, %.lr.ph261.epil.preheader
  %indvars.iv319.epil = phi i64 [ %indvars.iv319.epil.init, %.lr.ph261.epil.preheader ], [ %indvars.iv.next320.epil, %.lr.ph261.epil ] ; 2 uses
  %.0208260.epil = phi i32 [ %.0208260.epil.init, %.lr.ph261.epil.preheader ], [ %i.hb, %.lr.ph261.epil ]
  %i.gv = phi <2 x i32> [ %.epil.init473, %.lr.ph261.epil.preheader ], [ %i.gy, %.lr.ph261.epil ]
  %epil.iter471 = phi i64 [ 0, %.lr.ph261.epil.preheader ], [ %epil.iter471.next, %.lr.ph261.epil ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319.epil ; 2 uses
  %i.gx = load <2 x i32>, ptr %i.gw, align 4, !tbaa !228
  %i.gy = add nsw <2 x i32> %i.gx, %i.gv          ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !228
  %i.hb = add nsw i32 %i.ha, %.0208260.epil       ; 2 uses
  %indvars.iv.next320.epil = add nuw nsw i64 %indvars.iv319.epil, 3
  %epil.iter471.next = add i64 %epil.iter471, 1   ; 2 uses
  %epil.iter471.cmp.not = icmp eq i64 %epil.iter471.next, %xtraiter470
  br i1 %epil.iter471.cmp.not, label %._crit_edge262, label %.lr.ph261.epil, !llvm.loop !584

._crit_edge262:                                   ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.epil, %.preheader231
  %.0208.lcssa = phi i32 [ 0, %.preheader231 ], [ %i.gu, %._crit_edge262.loopexit.unr-lcssa ], [ %i.hb, %.lr.ph261.epil ] ; 3 uses
  %i.hc = phi <2 x i32> [ zeroinitializer, %.preheader231 ], [ %i.gr, %._crit_edge262.loopexit.unr-lcssa ], [ %i.gy, %.lr.ph261.epil ] ; 3 uses
  store <2 x i32> %i.hc, ptr %2, align 4, !tbaa !228
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.0208.lcssa, ptr %i.hd, align 4, !tbaa !228
  %i.he = icmp sgt i32 %i.g, 0
  br i1 %i.he, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.hf = sext i32 %i.e to i64
  %i.hg = zext nneg i32 %i.g to i64
  %invariant.gep374 = getelementptr [4 x i8], ptr %1, i64 %i.hf ; 3 uses
  %i.hh = add nsw i64 %i.hg, -1
  %i.hi = udiv i64 %i.hh, 3                       ; 2 uses
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %i.hk = icmp ult i32 %i.g, 4
  br i1 %i.hk, label %.lr.ph271.epil.preheader, label %.lr.ph271.preheader.new

.lr.ph271.preheader.new:                          ; preds = %.lr.ph271.preheader
  %unroll_iter486 = and i64 %i.hj, 9223372036854775806
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271, %.lr.ph271.preheader.new
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader.new ], [ %indvars.iv.next323.1, %.lr.ph271 ] ; 5 uses
  %.1209269 = phi i32 [ %.0208.lcssa, %.lr.ph271.preheader.new ], [ %i.ig, %.lr.ph271 ]
  %i.hl = phi <2 x i32> [ %i.hc, %.lr.ph271.preheader.new ], [ %i.im, %.lr.ph271 ]
  %niter487 = phi i64 [ 0, %.lr.ph271.preheader.new ], [ %niter487.next.1, %.lr.ph271 ]
  %gep375 = getelementptr [4 x i8], ptr %invariant.gep374, i64 %indvars.iv322 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv322 ; 2 uses
  %i.hn = getelementptr i8, ptr %gep375, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !228
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !228
  %i.hr = sub nsw i32 %i.ho, %i.hq
  %i.hs = add nsw i32 %i.hr, %.1209269            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 4 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next323
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv322
  %i.hv = load <2 x i32>, ptr %gep375, align 4, !tbaa !228
  %i.hw = load <2 x i32>, ptr %i.hm, align 4, !tbaa !228
  %i.hx = sub nsw <2 x i32> %i.hv, %i.hw
  %i.hy = add nsw <2 x i32> %i.hx, %i.hl          ; 2 uses
  store <2 x i32> %i.hy, ptr %i.ht, align 4, !tbaa !228
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  store i32 %i.hs, ptr %i.hz, align 4, !tbaa !228
  %gep375.1 = getelementptr [4 x i8], ptr %invariant.gep374, i64 %indvars.iv.next323 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next323 ; 2 uses
  %i.ib = getelementptr i8, ptr %gep375.1, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !228
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !228
  %i.if = sub nsw i32 %i.ic, %i.ie
  %i.ig = add nsw i32 %i.if, %i.hs                ; 3 uses
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 6 ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next323.1
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next323
  %i.ij = load <2 x i32>, ptr %gep375.1, align 4, !tbaa !228
  %i.ik = load <2 x i32>, ptr %i.ia, align 4, !tbaa !228
  %i.il = sub nsw <2 x i32> %i.ij, %i.ik
  %i.im = add nsw <2 x i32> %i.il, %i.hy          ; 3 uses
  store <2 x i32> %i.im, ptr %i.ih, align 4, !tbaa !228
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  store i32 %i.ig, ptr %i.in, align 4, !tbaa !228
  %niter487.next.1 = add i64 %niter487, 2         ; 2 uses
  %niter487.ncmp.1.not = icmp eq i64 %niter487.next.1, %unroll_iter486
  br i1 %niter487.ncmp.1.not, label %.loopexit.loopexit449.unr-lcssa, label %.lr.ph271, !llvm.loop !585

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.7, %.lr.ph246 ] ; 9 uses
  %i.io = phi <4 x i32> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.jt, %.lr.ph246 ]
  %niter = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %niter.next.7, %.lr.ph246 ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv313
  %i.iq = load <4 x i32>, ptr %i.ip, align 4, !tbaa !228
  %i.ir = add nsw <4 x i32> %i.iq, %i.io
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv313
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
end_hunk_6
begin_hunk_7_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsdEclEPKhPhii:bb.a
  %invariant.gep362 = getelementptr [2 x i8], ptr %1, i64 %i.l ; 2 uses
  %invariant.gep364 = getelementptr [2 x i8], ptr %1, i64 %i.m ; 2 uses
  %invariant.gep366 = getelementptr [2 x i8], ptr %1, i64 %i.n ; 2 uses
  %min.iters.check = icmp eq i32 %i.f, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i16>, ptr %i.o, align 2, !tbaa !454
  %i.p = sitofp <2 x i16> %wide.load to <2 x double>
  %i.q = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %wide.load393 = load <2 x i16>, ptr %i.q, align 2, !tbaa !454
  %i.r = sitofp <2 x i16> %wide.load393 to <2 x double>
  %i.s = fadd <2 x double> %i.p, %i.r
  %i.t = getelementptr [2 x i8], ptr %invariant.gep362, i64 %index
  %wide.load394 = load <2 x i16>, ptr %i.t, align 2, !tbaa !454
  %i.u = sitofp <2 x i16> %wide.load394 to <2 x double>
  %i.v = fadd <2 x double> %i.s, %i.u
  %i.w = getelementptr [2 x i8], ptr %invariant.gep364, i64 %index
  %wide.load395 = load <2 x i16>, ptr %i.w, align 2, !tbaa !454
  %i.x = sitofp <2 x i16> %wide.load395 to <2 x double>
  %i.y = fadd <2 x double> %i.v, %i.x
  %i.z = getelementptr [2 x i8], ptr %invariant.gep366, i64 %index
  %wide.load396 = load <2 x i16>, ptr %i.z, align 2, !tbaa !454
  %i.aa = sitofp <2 x i16> %wide.load396 to <2 x double>
  %i.ab = fadd <2 x double> %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> %i.ab, ptr %i.ac, align 8, !tbaa !285
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader234:                                    ; preds = %bb.a
  %i.ae = mul i32 %4, %3                          ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.preheader234
  %i.ag = shl nsw i32 %4, 1
  %i.ah = sext i32 %4 to i64
  %i.ai = sext i32 %i.ag to i64
  %wide.trip.count311 = zext nneg i32 %i.ae to i64 ; 3 uses
  %invariant.gep368 = getelementptr [2 x i8], ptr %1, i64 %i.ah ; 2 uses
  %invariant.gep370 = getelementptr [2 x i8], ptr %1, i64 %i.ai ; 2 uses
  %min.iters.check398 = icmp eq i32 %i.ae, 1
  br i1 %min.iters.check398, label %scalar.ph397.preheader, label %vector.ph399

vector.ph399:                                     ; preds = %.lr.ph240
  %n.vec400 = and i64 %wide.trip.count311, 2147483646 ; 3 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next406, %vector.body401 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index402
  %wide.load403 = load <2 x i16>, ptr %i.aj, align 2, !tbaa !454
  %i.ak = sitofp <2 x i16> %wide.load403 to <2 x double>
  %i.al = getelementptr [2 x i8], ptr %invariant.gep368, i64 %index402
  %wide.load404 = load <2 x i16>, ptr %i.al, align 2, !tbaa !454
  %i.am = sitofp <2 x i16> %wide.load404 to <2 x double>
  %i.an = fadd <2 x double> %i.ak, %i.am
  %i.ao = getelementptr [2 x i8], ptr %invariant.gep370, i64 %index402
  %wide.load405 = load <2 x i16>, ptr %i.ao, align 2, !tbaa !454
  %i.ap = sitofp <2 x i16> %wide.load405 to <2 x double>
  %i.aq = fadd <2 x double> %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index402
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !285
  %index.next406 = add nuw i64 %index402, 2       ; 2 uses
  %i.as = icmp eq i64 %index.next406, %n.vec400
  br i1 %i.as, label %middle.block407, label %vector.body401, !llvm.loop !594

middle.block407:                                  ; preds = %vector.body401
  %cmp.n408 = icmp eq i64 %n.vec400, %wide.trip.count311
  br i1 %cmp.n408, label %.loopexit, label %scalar.ph397.preheader

scalar.ph397.preheader:                           ; preds = %.lr.ph240, %middle.block407
  %indvars.iv308.ph = phi i64 [ 0, %.lr.ph240 ], [ %n.vec400, %middle.block407 ]
  br label %scalar.ph397

scalar.ph397:                                     ; preds = %scalar.ph397.preheader, %scalar.ph397
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph397 ], [ %indvars.iv308.ph, %scalar.ph397.preheader ] ; 5 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv308
  %i.au = load i16, ptr %i.at, align 2, !tbaa !454
  %i.av = sitofp i16 %i.au to double
  %gep369 = getelementptr [2 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.aw = load i16, ptr %gep369, align 2, !tbaa !454
  %i.ax = sitofp i16 %i.aw to double
  %i.ay = fadd double %i.av, %i.ax
  %gep371 = getelementptr [2 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.az = load i16, ptr %gep371, align 2, !tbaa !454
  %i.ba = sitofp i16 %i.az to double
  %i.bb = fadd double %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308
  store double %i.bb, ptr %i.bc, align 8, !tbaa !285
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %.loopexit, label %scalar.ph397, !llvm.loop !595

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !454
  %i.bf = sitofp i16 %i.be to double
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bg = load i16, ptr %gep, align 2, !tbaa !454
  %i.bh = sitofp i16 %i.bg to double
  %i.bi = fadd double %i.bf, %i.bh
  %gep363 = getelementptr [2 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.bj = load i16, ptr %gep363, align 2, !tbaa !454
  %i.bk = sitofp i16 %i.bj to double
  %i.bl = fadd double %i.bi, %i.bk
  %gep365 = getelementptr [2 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.bm = load i16, ptr %gep365, align 2, !tbaa !454
  %i.bn = sitofp i16 %i.bm to double
  %i.bo = fadd double %i.bl, %i.bn
  %gep367 = getelementptr [2 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.bp = load i16, ptr %gep367, align 2, !tbaa !454
  %i.bq = sitofp i16 %i.bp to double
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.br, ptr %i.bs, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !596

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.bt = icmp sgt i32 %i.c, 0
  br i1 %i.bt, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.bu = zext nneg i32 %i.c to i64
  %i.bv = add nsw i64 %i.bu, -1                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 2                       ; 2 uses
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.bx, 9223372036854775806
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.bz = icmp sgt i32 %i.c, 0
  br i1 %i.bz, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.ca = zext nneg i32 %i.c to i64
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = udiv i64 %i.cb, 3                       ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.ce = icmp ult i32 %i.c, 4
  br i1 %i.ce, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter432 = and i64 %i.cd, 9223372036854775806
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.cf = icmp sgt i32 %i.c, 0
  br i1 %i.cf, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter434 = and i64 %wide.trip.count328, 3   ; 3 uses
  %i.cg = icmp ult i32 %i.c, 4
  br i1 %i.cg, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter438 = and i64 %wide.trip.count328, 2147483644
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.ch = icmp sgt i32 %4, 0
  br i1 %i.ch, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.ci = icmp sgt i32 %i.c, 0
  %i.cj = icmp sgt i32 %i.e, 0
  %i.ck = zext nneg i32 %4 to i64                 ; 3 uses
  %i.cl = zext nneg i32 %4 to i64                 ; 3 uses
  %i.cm = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.cn = add nsw i64 %6, -1                      ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.ck
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %indvars.iv.next326.3, %.lr.ph274 ] ; 5 uses
  %.0214273 = phi double [ 0.000000e+00, %.lr.ph274.preheader.new ], [ %i.dh, %.lr.ph274 ]
  %niter439 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter439.next.3, %.lr.ph274 ]
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !454
  %i.cr = sitofp i16 %i.cq to double
  %i.cs = fadd double %.0214273, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !454
  %i.cw = sitofp i16 %i.cv to double
  %i.cx = fadd double %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !454
  %i.db = sitofp i16 %i.da to double
  %i.dc = fadd double %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !454
  %i.dg = sitofp i16 %i.df to double
  %i.dh = fadd double %i.dc, %i.dg                ; 3 uses
  %indvars.iv.next326.3 = add nuw nsw i64 %indvars.iv325, 4 ; 2 uses
  %niter439.next.3 = add i64 %niter439, 4         ; 2 uses
  %niter439.ncmp.3 = icmp eq i64 %niter439.next.3, %unroll_iter438
  br i1 %niter439.ncmp.3, label %._crit_edge275.loopexit.unr-lcssa, label %.lr.ph274, !llvm.loop !597

._crit_edge275.loopexit.unr-lcssa:                ; preds = %.lr.ph274
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod435.not, label %._crit_edge275, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.preheader
  %indvars.iv325.epil.init = phi i64 [ 0, %.lr.ph274.preheader ], [ %indvars.iv.next326.3, %._crit_edge275.loopexit.unr-lcssa ]
  %.0214273.epil.init = phi double [ 0.000000e+00, %.lr.ph274.preheader ], [ %i.dh, %._crit_edge275.loopexit.unr-lcssa ]
  %lcmp.mod437 = icmp ne i64 %xtraiter434, 0
  call void @llvm.assume(i1 %lcmp.mod437)
  br label %.lr.ph274.epil

.lr.ph274.epil:                                   ; preds = %.lr.ph274.epil, %.lr.ph274.epil.preheader
  %indvars.iv325.epil = phi i64 [ %indvars.iv325.epil.init, %.lr.ph274.epil.preheader ], [ %indvars.iv.next326.epil, %.lr.ph274.epil ] ; 2 uses
  %.0214273.epil = phi double [ %.0214273.epil.init, %.lr.ph274.epil.preheader ], [ %i.dl, %.lr.ph274.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph274.epil.preheader ], [ %epil.iter.next, %.lr.ph274.epil ]
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv325.epil
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !454
  %i.dk = sitofp i16 %i.dj to double
  %i.dl = fadd double %.0214273.epil, %i.dk       ; 2 uses
  %indvars.iv.next326.epil = add nuw nsw i64 %indvars.iv325.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter434
  br i1 %epil.iter.cmp.not, label %._crit_edge275, label %.lr.ph274.epil, !llvm.loop !598

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.epil, %.preheader229
  %.0214.lcssa = phi double [ 0.000000e+00, %.preheader229 ], [ %i.dh, %._crit_edge275.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph274.epil ] ; 3 uses
  store double %.0214.lcssa, ptr %2, align 8, !tbaa !285
  %i.dm = icmp sgt i32 %i.e, 0
  br i1 %i.dm, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.dn = sext i32 %i.c to i64
  %wide.trip.count333 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep376 = getelementptr [2 x i8], ptr %1, i64 %i.dn ; 3 uses
  %xtraiter440 = and i64 %wide.trip.count333, 1
  %i.do = icmp eq i32 %i.e, 1
  br i1 %i.do, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter444 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi double [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.ed, %.lr.ph280 ]
  %niter445 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter445.next.1, %.lr.ph280 ]
  %gep377 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv330
  %i.dp = load i16, ptr %gep377, align 2, !tbaa !454
  %i.dq = sitofp i16 %i.dp to double
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv330
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !454
  %i.dt = sitofp i16 %i.ds to double
  %i.du = fsub double %i.dq, %i.dt
  %i.dv = fadd double %.1215278, %i.du            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331
  store double %i.dv, ptr %i.dw, align 8, !tbaa !285
  %gep377.1 = getelementptr [2 x i8], ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.dx = load i16, ptr %gep377.1, align 2, !tbaa !454
  %i.dy = sitofp i16 %i.dx to double
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next331
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !454
  %i.eb = sitofp i16 %i.ea to double
  %i.ec = fsub double %i.dy, %i.eb
  %i.ed = fadd double %i.dv, %i.ec                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331.1
  store double %i.ed, ptr %i.ee, align 8, !tbaa !285
  %niter445.next.1 = add nuw i64 %niter445, 2     ; 2 uses
  %niter445.ncmp.1 = icmp eq i64 %niter445.next.1, %unroll_iter444
  br i1 %niter445.ncmp.1, label %.loopexit.loopexit410.unr-lcssa, label %.lr.ph280, !llvm.loop !599

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.1, %.lr.ph261 ] ; 3 uses
  %.0208260 = phi double [ 0.000000e+00, %.lr.ph261.preheader.new ], [ %i.ew, %.lr.ph261 ]
  %i.ef = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader.new ], [ %i.es, %.lr.ph261 ]
  %niter433 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter433.next.1, %.lr.ph261 ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.eh = load <2 x i16>, ptr %i.eg, align 2, !tbaa !454
  %i.ei = sitofp <2 x i16> %i.eh to <2 x double>
  %i.ej = fadd <2 x double> %i.ef, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !454
  %i.em = sitofp i16 %i.el to double
  %i.en = fadd double %.0208260, %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  %i.eq = load <2 x i16>, ptr %i.ep, align 2, !tbaa !454
  %i.er = sitofp <2 x i16> %i.eq to <2 x double>
  %i.es = fadd <2 x double> %i.ej, %i.er          ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 10
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !454
  %i.ev = sitofp i16 %i.eu to double
  %i.ew = fadd double %i.en, %i.ev                ; 3 uses
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319, 6 ; 2 uses
  %niter433.next.1 = add i64 %niter433, 2         ; 2 uses
  %niter433.ncmp.1.not = icmp eq i64 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !600

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %i.ex = and i64 %i.cc, 1
  %lcmp.mod428.not.not = icmp eq i64 %i.ex, 0
  br i1 %lcmp.mod428.not.not, label %.lr.ph261.epil.preheader, label %._crit_edge262

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.1, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi double [ 0.000000e+00, %.lr.ph261.preheader ], [ %i.ew, %._crit_edge262.loopexit.unr-lcssa ]
  %.epil.init427 = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader ], [ %i.es, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod431 = trunc i64 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod431)
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv319.epil.init ; 2 uses
  %i.ez = load <2 x i16>, ptr %i.ey, align 2, !tbaa !454
  %i.fa = sitofp <2 x i16> %i.ez to <2 x double>
  %i.fb = fadd <2 x double> %.epil.init427, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !454
  %i.fe = sitofp i16 %i.fd to double
  %i.ff = fadd double %.0208260.epil.init, %i.fe
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader231
  %.0208.lcssa = phi double [ 0.000000e+00, %.preheader231 ], [ %i.ew, %._crit_edge262.loopexit.unr-lcssa ], [ %i.ff, %.lr.ph261.epil.preheader ] ; 2 uses
  %i.fg = phi <2 x double> [ zeroinitializer, %.preheader231 ], [ %i.es, %._crit_edge262.loopexit.unr-lcssa ], [ %i.fb, %.lr.ph261.epil.preheader ] ; 2 uses
  store <2 x double> %i.fg, ptr %2, align 8, !tbaa !285
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.0208.lcssa, ptr %i.fh, align 8, !tbaa !285
  %i.fi = icmp sgt i32 %i.e, 0
  br i1 %i.fi, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.fj = sext i32 %i.c to i64
  %i.fk = zext nneg i32 %i.e to i64
  %invariant.gep374 = getelementptr [2 x i8], ptr %1, i64 %i.fj
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next323, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi double [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.fu, %.lr.ph271 ]
  %i.fl = phi <2 x double> [ %i.fg, %.lr.ph271.preheader ], [ %i.gc, %.lr.ph271 ]
  %gep375 = getelementptr [2 x i8], ptr %invariant.gep374, i64 %indvars.iv322 ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv322 ; 2 uses
  %i.fn = getelementptr i8, ptr %gep375, i64 4
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !454
  %i.fp = sitofp i16 %i.fo to double
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !454
  %i.fs = sitofp i16 %i.fr to double
  %i.ft = fsub double %i.fp, %i.fs
  %i.fu = fadd double %.1209269, %i.ft            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next323
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv322
  %i.fx = load <2 x i16>, ptr %gep375, align 2, !tbaa !454
  %i.fy = sitofp <2 x i16> %i.fx to <2 x double>
  %i.fz = load <2 x i16>, ptr %i.fm, align 2, !tbaa !454
  %i.ga = sitofp <2 x i16> %i.fz to <2 x double>
  %i.gb = fsub <2 x double> %i.fy, %i.ga
  %i.gc = fadd <2 x double> %i.fl, %i.gb          ; 2 uses
  store <2 x double> %i.gc, ptr %i.fv, align 8, !tbaa !285
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  store double %i.fu, ptr %i.gd, align 8, !tbaa !285
  %i.ge = icmp samesign ult i64 %indvars.iv.next323, %i.fk
  br i1 %i.ge, label %.lr.ph271, label %.loopexit, !llvm.loop !601

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.1, %.lr.ph246 ] ; 3 uses
  %i.gf = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.gx, %.lr.ph246 ]
  %i.gg = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.gt, %.lr.ph246 ]
end_hunk_7
begin_hunk_8_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIfdEclEPKhPhii:bb.a
  %wide.load = load <2 x float>, ptr %i.o, align 4, !tbaa !263
  %i.p = fpext <2 x float> %wide.load to <2 x double>
  %i.q = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load393 = load <2 x float>, ptr %i.q, align 4, !tbaa !263
  %i.r = fpext <2 x float> %wide.load393 to <2 x double>
  %i.s = fadd <2 x double> %i.p, %i.r
  %i.t = getelementptr [4 x i8], ptr %invariant.gep362, i64 %index
  %wide.load394 = load <2 x float>, ptr %i.t, align 4, !tbaa !263
  %i.u = fpext <2 x float> %wide.load394 to <2 x double>
  %i.v = fadd <2 x double> %i.s, %i.u
  %i.w = getelementptr [4 x i8], ptr %invariant.gep364, i64 %index
  %wide.load395 = load <2 x float>, ptr %i.w, align 4, !tbaa !263
  %i.x = fpext <2 x float> %wide.load395 to <2 x double>
  %i.y = fadd <2 x double> %i.v, %i.x
  %i.z = getelementptr [4 x i8], ptr %invariant.gep366, i64 %index
  %wide.load396 = load <2 x float>, ptr %i.z, align 4, !tbaa !263
  %i.aa = fpext <2 x float> %wide.load396 to <2 x double>
  %i.ab = fadd <2 x double> %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> %i.ab, ptr %i.ac, align 8, !tbaa !285
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader234:                                    ; preds = %bb.a
  %i.ae = mul i32 %4, %3                          ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %.preheader234
  %i.ag = shl nsw i32 %4, 1
  %i.ah = sext i32 %4 to i64
  %i.ai = sext i32 %i.ag to i64
  %wide.trip.count311 = zext nneg i32 %i.ae to i64 ; 3 uses
  %invariant.gep368 = getelementptr [4 x i8], ptr %1, i64 %i.ah ; 2 uses
  %invariant.gep370 = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 2 uses
  %min.iters.check398 = icmp ult i32 %i.ae, 4
  br i1 %min.iters.check398, label %scalar.ph397.preheader, label %vector.ph399

vector.ph399:                                     ; preds = %.lr.ph240
  %n.vec400 = and i64 %wide.trip.count311, 2147483644 ; 3 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next409, %vector.body401 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index402 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %wide.load403 = load <2 x float>, ptr %i.aj, align 4, !tbaa !263
  %wide.load404 = load <2 x float>, ptr %i.ak, align 4, !tbaa !263
  %i.al = fpext <2 x float> %wide.load403 to <2 x double>
  %i.am = fpext <2 x float> %wide.load404 to <2 x double>
  %i.an = getelementptr [4 x i8], ptr %invariant.gep368, i64 %index402 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %wide.load405 = load <2 x float>, ptr %i.an, align 4, !tbaa !263
  %wide.load406 = load <2 x float>, ptr %i.ao, align 4, !tbaa !263
  %i.ap = fpext <2 x float> %wide.load405 to <2 x double>
  %i.aq = fpext <2 x float> %wide.load406 to <2 x double>
  %i.ar = fadd <2 x double> %i.al, %i.ap
  %i.as = fadd <2 x double> %i.am, %i.aq
  %i.at = getelementptr [4 x i8], ptr %invariant.gep370, i64 %index402 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %wide.load407 = load <2 x float>, ptr %i.at, align 4, !tbaa !263
  %wide.load408 = load <2 x float>, ptr %i.au, align 4, !tbaa !263
  %i.av = fpext <2 x float> %wide.load407 to <2 x double>
  %i.aw = fpext <2 x float> %wide.load408 to <2 x double>
  %i.ax = fadd <2 x double> %i.ar, %i.av
  %i.ay = fadd <2 x double> %i.as, %i.aw
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index402 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x double> %i.ax, ptr %i.az, align 8, !tbaa !285
  store <2 x double> %i.ay, ptr %i.ba, align 8, !tbaa !285
  %index.next409 = add nuw i64 %index402, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next409, %n.vec400
  br i1 %i.bb, label %middle.block410, label %vector.body401, !llvm.loop !609

middle.block410:                                  ; preds = %vector.body401
  %cmp.n411 = icmp eq i64 %n.vec400, %wide.trip.count311
  br i1 %cmp.n411, label %.loopexit, label %scalar.ph397.preheader

scalar.ph397.preheader:                           ; preds = %.lr.ph240, %middle.block410
  %indvars.iv308.ph = phi i64 [ 0, %.lr.ph240 ], [ %n.vec400, %middle.block410 ]
  br label %scalar.ph397

scalar.ph397:                                     ; preds = %scalar.ph397.preheader, %scalar.ph397
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph397 ], [ %indvars.iv308.ph, %scalar.ph397.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv308
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !263
  %i.be = fpext float %i.bd to double
  %gep369 = getelementptr [4 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.bf = load float, ptr %gep369, align 4, !tbaa !263
  %i.bg = fpext float %i.bf to double
  %i.bh = fadd double %i.be, %i.bg
  %gep371 = getelementptr [4 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.bi = load float, ptr %gep371, align 4, !tbaa !263
  %i.bj = fpext float %i.bi to double
  %i.bk = fadd double %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308
  store double %i.bk, ptr %i.bl, align 8, !tbaa !285
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %.loopexit, label %scalar.ph397, !llvm.loop !610

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !263
  %i.bo = fpext float %i.bn to double
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bp = load float, ptr %gep, align 4, !tbaa !263
  %i.bq = fpext float %i.bp to double
  %i.br = fadd double %i.bo, %i.bq
  %gep363 = getelementptr [4 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.bs = load float, ptr %gep363, align 4, !tbaa !263
  %i.bt = fpext float %i.bs to double
  %i.bu = fadd double %i.br, %i.bt
  %gep365 = getelementptr [4 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.bv = load float, ptr %gep365, align 4, !tbaa !263
  %i.bw = fpext float %i.bv to double
  %i.bx = fadd double %i.bu, %i.bw
  %gep367 = getelementptr [4 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.by = load float, ptr %gep367, align 4, !tbaa !263
  %i.bz = fpext float %i.by to double
  %i.ca = fadd double %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.ca, ptr %i.cb, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !611

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.cc = icmp sgt i32 %i.c, 0
  br i1 %i.cc, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.cd = zext nneg i32 %i.c to i64
  %i.ce = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 2                       ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.cg, 9223372036854775806
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.ci = icmp sgt i32 %i.c, 0
  br i1 %i.ci, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.cj = zext nneg i32 %i.c to i64
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = udiv i64 %i.ck, 3                       ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %i.cn = icmp ult i32 %i.c, 4
  br i1 %i.cn, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter435 = and i64 %i.cm, 9223372036854775806
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.co = icmp sgt i32 %i.c, 0
  br i1 %i.co, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter437 = and i64 %wide.trip.count328, 3   ; 3 uses
  %i.cp = icmp ult i32 %i.c, 4
  br i1 %i.cp, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter441 = and i64 %wide.trip.count328, 2147483644
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.cq = icmp sgt i32 %4, 0
  br i1 %i.cq, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.cr = icmp sgt i32 %i.c, 0
  %i.cs = icmp sgt i32 %i.e, 0
  %i.ct = zext nneg i32 %4 to i64                 ; 3 uses
  %i.cu = zext nneg i32 %4 to i64                 ; 3 uses
  %i.cv = sext i32 %i.c to i64
  %6 = sext i32 %i.e to i64
  %i.cw = add nsw i64 %6, -1                      ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.ct
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %indvars.iv.next326.3, %.lr.ph274 ] ; 5 uses
  %.0214273 = phi double [ 0.000000e+00, %.lr.ph274.preheader.new ], [ %i.dq, %.lr.ph274 ]
  %niter442 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter442.next.3, %.lr.ph274 ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv325
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !263
  %i.da = fpext float %i.cz to double
  %i.db = fadd double %.0214273, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv325
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !263
  %i.df = fpext float %i.de to double
  %i.dg = fadd double %i.db, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv325
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !263
  %i.dk = fpext float %i.dj to double
  %i.dl = fadd double %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv325
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.do = load float, ptr %i.dn, align 4, !tbaa !263
  %i.dp = fpext float %i.do to double
  %i.dq = fadd double %i.dl, %i.dp                ; 3 uses
  %indvars.iv.next326.3 = add nuw nsw i64 %indvars.iv325, 4 ; 2 uses
  %niter442.next.3 = add i64 %niter442, 4         ; 2 uses
  %niter442.ncmp.3 = icmp eq i64 %niter442.next.3, %unroll_iter441
  br i1 %niter442.ncmp.3, label %._crit_edge275.loopexit.unr-lcssa, label %.lr.ph274, !llvm.loop !612

._crit_edge275.loopexit.unr-lcssa:                ; preds = %.lr.ph274
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %._crit_edge275, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.preheader
  %indvars.iv325.epil.init = phi i64 [ 0, %.lr.ph274.preheader ], [ %indvars.iv.next326.3, %._crit_edge275.loopexit.unr-lcssa ]
  %.0214273.epil.init = phi double [ 0.000000e+00, %.lr.ph274.preheader ], [ %i.dq, %._crit_edge275.loopexit.unr-lcssa ]
  %lcmp.mod440 = icmp ne i64 %xtraiter437, 0
  call void @llvm.assume(i1 %lcmp.mod440)
  br label %.lr.ph274.epil

.lr.ph274.epil:                                   ; preds = %.lr.ph274.epil, %.lr.ph274.epil.preheader
  %indvars.iv325.epil = phi i64 [ %indvars.iv325.epil.init, %.lr.ph274.epil.preheader ], [ %indvars.iv.next326.epil, %.lr.ph274.epil ] ; 2 uses
  %.0214273.epil = phi double [ %.0214273.epil.init, %.lr.ph274.epil.preheader ], [ %i.du, %.lr.ph274.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph274.epil.preheader ], [ %epil.iter.next, %.lr.ph274.epil ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv325.epil
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !263
  %i.dt = fpext float %i.ds to double
  %i.du = fadd double %.0214273.epil, %i.dt       ; 2 uses
  %indvars.iv.next326.epil = add nuw nsw i64 %indvars.iv325.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter437
  br i1 %epil.iter.cmp.not, label %._crit_edge275, label %.lr.ph274.epil, !llvm.loop !613

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.epil, %.preheader229
  %.0214.lcssa = phi double [ 0.000000e+00, %.preheader229 ], [ %i.dq, %._crit_edge275.loopexit.unr-lcssa ], [ %i.du, %.lr.ph274.epil ] ; 3 uses
  store double %.0214.lcssa, ptr %2, align 8, !tbaa !285
  %i.dv = icmp sgt i32 %i.e, 0
  br i1 %i.dv, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.dw = sext i32 %i.c to i64
  %wide.trip.count333 = zext nneg i32 %i.e to i64 ; 2 uses
  %invariant.gep376 = getelementptr [4 x i8], ptr %1, i64 %i.dw ; 3 uses
  %xtraiter443 = and i64 %wide.trip.count333, 1
  %i.dx = icmp eq i32 %i.e, 1
  br i1 %i.dx, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter447 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi double [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.em, %.lr.ph280 ]
  %niter448 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter448.next.1, %.lr.ph280 ]
  %gep377 = getelementptr [4 x i8], ptr %invariant.gep376, i64 %indvars.iv330
  %i.dy = load float, ptr %gep377, align 4, !tbaa !263
  %i.dz = fpext float %i.dy to double
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv330
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !263
  %i.ec = fpext float %i.eb to double
  %i.ed = fsub double %i.dz, %i.ec
  %i.ee = fadd double %.1215278, %i.ed            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331
  store double %i.ee, ptr %i.ef, align 8, !tbaa !285
  %gep377.1 = getelementptr [4 x i8], ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.eg = load float, ptr %gep377.1, align 4, !tbaa !263
  %i.eh = fpext float %i.eg to double
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next331
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !263
  %i.ek = fpext float %i.ej to double
  %i.el = fsub double %i.eh, %i.ek
  %i.em = fadd double %i.ee, %i.el                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331.1
  store double %i.em, ptr %i.en, align 8, !tbaa !285
  %niter448.next.1 = add nuw i64 %niter448, 2     ; 2 uses
  %niter448.ncmp.1 = icmp eq i64 %niter448.next.1, %unroll_iter447
  br i1 %niter448.ncmp.1, label %.loopexit.loopexit413.unr-lcssa, label %.lr.ph280, !llvm.loop !614

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.1, %.lr.ph261 ] ; 3 uses
  %.0208260 = phi double [ 0.000000e+00, %.lr.ph261.preheader.new ], [ %i.ff, %.lr.ph261 ]
  %i.eo = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader.new ], [ %i.fb, %.lr.ph261 ]
  %niter436 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter436.next.1, %.lr.ph261 ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.ep, align 4, !tbaa !263
  %i.er = fpext <2 x float> %i.eq to <2 x double>
  %i.es = fadd <2 x double> %i.eo, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !263
  %i.ev = fpext float %i.eu to double
  %i.ew = fadd double %.0208260, %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load <2 x float>, ptr %i.ey, align 4, !tbaa !263
  %i.fa = fpext <2 x float> %i.ez to <2 x double>
  %i.fb = fadd <2 x double> %i.es, %i.fa          ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !263
  %i.fe = fpext float %i.fd to double
  %i.ff = fadd double %i.ew, %i.fe                ; 3 uses
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319, 6 ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1.not = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !615

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %i.fg = and i64 %i.cl, 1
  %lcmp.mod431.not.not = icmp eq i64 %i.fg, 0
  br i1 %lcmp.mod431.not.not, label %.lr.ph261.epil.preheader, label %._crit_edge262

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.1, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi double [ 0.000000e+00, %.lr.ph261.preheader ], [ %i.ff, %._crit_edge262.loopexit.unr-lcssa ]
  %.epil.init430 = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader ], [ %i.fb, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod434 = trunc i64 %i.cm to i1
  call void @llvm.assume(i1 %lcmp.mod434)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv319.epil.init ; 2 uses
  %i.fi = load <2 x float>, ptr %i.fh, align 4, !tbaa !263
  %i.fj = fpext <2 x float> %i.fi to <2 x double>
  %i.fk = fadd <2 x double> %.epil.init430, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !263
  %i.fn = fpext float %i.fm to double
  %i.fo = fadd double %.0208260.epil.init, %i.fn
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.lr.ph261.epil.preheader, %._crit_edge262.loopexit.unr-lcssa, %.preheader231
  %.0208.lcssa = phi double [ 0.000000e+00, %.preheader231 ], [ %i.ff, %._crit_edge262.loopexit.unr-lcssa ], [ %i.fo, %.lr.ph261.epil.preheader ] ; 2 uses
  %i.fp = phi <2 x double> [ zeroinitializer, %.preheader231 ], [ %i.fb, %._crit_edge262.loopexit.unr-lcssa ], [ %i.fk, %.lr.ph261.epil.preheader ] ; 2 uses
  store <2 x double> %i.fp, ptr %2, align 8, !tbaa !285
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.0208.lcssa, ptr %i.fq, align 8, !tbaa !285
  %i.fr = icmp sgt i32 %i.e, 0
  br i1 %i.fr, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.fs = sext i32 %i.c to i64
  %i.ft = zext nneg i32 %i.e to i64
  %invariant.gep374 = getelementptr [4 x i8], ptr %1, i64 %i.fs
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.preheader, %.lr.ph271
  %indvars.iv322 = phi i64 [ 0, %.lr.ph271.preheader ], [ %indvars.iv.next323, %.lr.ph271 ] ; 4 uses
  %.1209269 = phi double [ %.0208.lcssa, %.lr.ph271.preheader ], [ %i.gd, %.lr.ph271 ]
  %i.fu = phi <2 x double> [ %i.fp, %.lr.ph271.preheader ], [ %i.gl, %.lr.ph271 ]
  %gep375 = getelementptr [4 x i8], ptr %invariant.gep374, i64 %indvars.iv322 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv322 ; 2 uses
  %i.fw = getelementptr i8, ptr %gep375, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !263
  %i.fy = fpext float %i.fx to double
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !263
  %i.gb = fpext float %i.ga to double
  %i.gc = fsub double %i.fy, %i.gb
  %i.gd = fadd double %.1209269, %i.gc            ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 3 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next323
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv322
  %i.gg = load <2 x float>, ptr %gep375, align 4, !tbaa !263
  %i.gh = fpext <2 x float> %i.gg to <2 x double>
  %i.gi = load <2 x float>, ptr %i.fv, align 4, !tbaa !263
  %i.gj = fpext <2 x float> %i.gi to <2 x double>
  %i.gk = fsub <2 x double> %i.gh, %i.gj
  %i.gl = fadd <2 x double> %i.fu, %i.gk          ; 2 uses
  store <2 x double> %i.gl, ptr %i.ge, align 8, !tbaa !285
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  store double %i.gd, ptr %i.gm, align 8, !tbaa !285
  %i.gn = icmp samesign ult i64 %indvars.iv.next323, %i.ft
  br i1 %i.gn, label %.lr.ph271, label %.loopexit, !llvm.loop !616

.lr.ph246:                                        ; preds = %.lr.ph246, %.lr.ph246.preheader.new
  %indvars.iv313 = phi i64 [ 0, %.lr.ph246.preheader.new ], [ %indvars.iv.next314.1, %.lr.ph246 ] ; 3 uses
  %i.go = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.hg, %.lr.ph246 ]
  %i.gp = phi <2 x double> [ zeroinitializer, %.lr.ph246.preheader.new ], [ %i.hc, %.lr.ph246 ]
end_hunk_8
begin_hunk_9_@_ZN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEclEPKhPhii:bb.a
  %i.br = shl nsw i64 %i.bm, 3
  %i.bs = sub i64 %i.br, %i.bo
  %diff.check411 = icmp ugt i64 %i.bs, -32
  %conflict.rdx412 = or i1 %diff.check410, %diff.check411
  %i.bt = sub i64 %i.a, %i.b
  %diff.check413 = icmp ugt i64 %i.bt, -32
  %conflict.rdx414 = or i1 %conflict.rdx412, %diff.check413
  br i1 %conflict.rdx414, label %scalar.ph415.preheader, label %vector.ph417

vector.ph417:                                     ; preds = %vector.memcheck409
  %n.vec418 = and i64 %wide.trip.count311, 2147483644 ; 3 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next427, %vector.body419 ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index420 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load421 = load <2 x double>, ptr %i.bu, align 8, !tbaa !285
  %wide.load422 = load <2 x double>, ptr %i.bv, align 8, !tbaa !285
  %i.bw = getelementptr [8 x i8], ptr %invariant.gep368, i64 %index420 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %wide.load423 = load <2 x double>, ptr %i.bw, align 8, !tbaa !285
  %wide.load424 = load <2 x double>, ptr %i.bx, align 8, !tbaa !285
  %i.by = fadd <2 x double> %wide.load421, %wide.load423
  %i.bz = fadd <2 x double> %wide.load422, %wide.load424
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep370, i64 %index420 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %wide.load425 = load <2 x double>, ptr %i.ca, align 8, !tbaa !285
  %wide.load426 = load <2 x double>, ptr %i.cb, align 8, !tbaa !285
  %i.cc = fadd <2 x double> %i.by, %wide.load425
  %i.cd = fadd <2 x double> %i.bz, %wide.load426
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index420 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x double> %i.cc, ptr %i.ce, align 8, !tbaa !285
  store <2 x double> %i.cd, ptr %i.cf, align 8, !tbaa !285
  %index.next427 = add nuw i64 %index420, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next427, %n.vec418
  br i1 %i.cg, label %middle.block428, label %vector.body419, !llvm.loop !624

middle.block428:                                  ; preds = %vector.body419
  %cmp.n429 = icmp eq i64 %n.vec418, %wide.trip.count311
  br i1 %cmp.n429, label %.loopexit, label %scalar.ph415.preheader

scalar.ph415.preheader:                           ; preds = %vector.memcheck409, %.lr.ph240, %middle.block428
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph240 ], [ %n.vec418, %middle.block428 ] ; 7 uses
  %xtraiter441 = and i64 %wide.trip.count311, 1
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %scalar.ph415.prol.loopexit, label %scalar.ph415.prol

scalar.ph415.prol:                                ; preds = %scalar.ph415.preheader
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv308.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !285
  %gep369.prol = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv308.ph
  %i.cj = load double, ptr %gep369.prol, align 8, !tbaa !285
  %i.ck = fadd double %i.ci, %i.cj
  %gep371.prol = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv308.ph
  %i.cl = load double, ptr %gep371.prol, align 8, !tbaa !285
  %i.cm = fadd double %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308.ph
  store double %i.cm, ptr %i.cn, align 8, !tbaa !285
  %indvars.iv.next309.prol = or disjoint i64 %indvars.iv308.ph, 1
  br label %scalar.ph415.prol.loopexit

scalar.ph415.prol.loopexit:                       ; preds = %scalar.ph415.prol, %scalar.ph415.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %scalar.ph415.preheader ], [ %indvars.iv.next309.prol, %scalar.ph415.prol ]
  %i.co = add nsw i64 %wide.trip.count311, -1
  %i.cp = icmp eq i64 %indvars.iv308.ph, %i.co
  br i1 %i.cp, label %.loopexit, label %scalar.ph415

scalar.ph415:                                     ; preds = %scalar.ph415.prol.loopexit, %scalar.ph415
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.1, %scalar.ph415 ], [ %indvars.iv308.unr, %scalar.ph415.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv308
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !285
  %gep369 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv308
  %i.cs = load double, ptr %gep369, align 8, !tbaa !285
  %i.ct = fadd double %i.cr, %i.cs
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv308
  %i.cu = load double, ptr %gep371, align 8, !tbaa !285
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv308
  store double %i.cv, ptr %i.cw, align 8, !tbaa !285
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next309
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !285
  %gep369.1 = getelementptr [8 x i8], ptr %invariant.gep368, i64 %indvars.iv.next309
  %i.cz = load double, ptr %gep369.1, align 8, !tbaa !285
  %i.da = fadd double %i.cy, %i.cz
  %gep371.1 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %indvars.iv.next309
  %i.db = load double, ptr %gep371.1, align 8, !tbaa !285
  %i.dc = fadd double %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next309
  store double %i.dc, ptr %i.dd, align 8, !tbaa !285
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %exitcond312.not.1 = icmp eq i64 %indvars.iv.next309.1, %wide.trip.count311
  br i1 %exitcond312.not.1, label %.loopexit, label %scalar.ph415, !llvm.loop !625

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.df = load double, ptr %i.de, align 8, !tbaa !285
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dg = load double, ptr %gep, align 8, !tbaa !285
  %i.dh = fadd double %i.df, %i.dg
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv
  %i.di = load double, ptr %gep363, align 8, !tbaa !285
  %i.dj = fadd double %i.dh, %i.di
  %gep365 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %indvars.iv
  %i.dk = load double, ptr %gep365, align 8, !tbaa !285
  %i.dl = fadd double %i.dj, %i.dk
  %gep367 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %indvars.iv
  %i.dm = load double, ptr %gep367, align 8, !tbaa !285
  %i.dn = fadd double %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.dn, ptr %i.do, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !285
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dr = load double, ptr %gep.1, align 8, !tbaa !285
  %i.ds = fadd double %i.dq, %i.dr
  %gep363.1 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %indvars.iv.next
  %i.dt = load double, ptr %gep363.1, align 8, !tbaa !285
  %i.du = fadd double %i.ds, %i.dt
  %gep365.1 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %indvars.iv.next
  %i.dv = load double, ptr %gep365.1, align 8, !tbaa !285
  %i.dw = fadd double %i.du, %i.dv
  %gep367.1 = getelementptr [8 x i8], ptr %invariant.gep366, i64 %indvars.iv.next
  %i.dx = load double, ptr %gep367.1, align 8, !tbaa !285
  %i.dy = fadd double %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double %i.dy, ptr %i.dz, align 8, !tbaa !285
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !626

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %.preheader227 [
    i32 1, label %.preheader229
    i32 3, label %.preheader231
    i32 4, label %.preheader233
  ]

.preheader233:                                    ; preds = %bb.b
  %i.ea = icmp sgt i32 %i.e, 0
  br i1 %i.ea, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader233
  %i.eb = zext nneg i32 %i.e to i64
  %i.ec = add nsw i64 %i.eb, -1
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %xtraiter443 = and i64 %i.ee, 3                 ; 3 uses
  %i.ef = icmp ult i32 %i.e, 13
  br i1 %i.ef, label %.lr.ph246.epil.preheader, label %.lr.ph246.preheader.new

.lr.ph246.preheader.new:                          ; preds = %.lr.ph246.preheader
  %unroll_iter = and i64 %i.ee, 9223372036854775804
  br label %.lr.ph246

.preheader231:                                    ; preds = %bb.b
  %i.eg = icmp sgt i32 %i.e, 0
  br i1 %i.eg, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader231
  %i.eh = zext nneg i32 %i.e to i64
  %i.ei = add nsw i64 %i.eh, -1
  %i.ej = udiv i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %xtraiter460 = and i64 %i.ek, 3                 ; 3 uses
  %i.el = icmp ult i32 %i.e, 10
  br i1 %i.el, label %.lr.ph261.epil.preheader, label %.lr.ph261.preheader.new

.lr.ph261.preheader.new:                          ; preds = %.lr.ph261.preheader
  %unroll_iter468 = and i64 %i.ek, 9223372036854775804
  br label %.lr.ph261

.preheader229:                                    ; preds = %bb.b
  %i.em = icmp sgt i32 %i.e, 0
  br i1 %i.em, label %.lr.ph274.preheader, label %._crit_edge275

.lr.ph274.preheader:                              ; preds = %.preheader229
  %wide.trip.count328 = zext nneg i32 %i.e to i64 ; 2 uses
  %xtraiter478 = and i64 %wide.trip.count328, 7   ; 3 uses
  %i.en = icmp ult i32 %i.e, 8
  br i1 %i.en, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter483 = and i64 %wide.trip.count328, 2147483640
  br label %.lr.ph274

.preheader227:                                    ; preds = %bb.b
  %i.eo = icmp sgt i32 %4, 0
  br i1 %i.eo, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader227
  %i.ep = icmp sgt i32 %i.e, 0
  %i.eq = icmp sgt i32 %i.g, 0
  %i.er = zext nneg i32 %4 to i64                 ; 3 uses
  %i.es = zext nneg i32 %4 to i64                 ; 3 uses
  %i.et = sext i32 %i.e to i64
  %6 = sext i32 %i.g to i64
  %i.eu = add nsw i64 %6, -1                      ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.er
  br label %.preheader

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %indvars.iv.next326.7, %.lr.ph274 ] ; 9 uses
  %.0214273 = phi double [ 0.000000e+00, %.lr.ph274.preheader.new ], [ %i.ga, %.lr.ph274 ]
  %niter484 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter484.next.7, %.lr.ph274 ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !285
  %i.ey = fadd double %.0214273, %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !285
  %i.fc = fadd double %i.ey, %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !285
  %i.fg = fadd double %i.fc, %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !285
  %i.fk = fadd double %i.fg, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !285
  %i.fo = fadd double %i.fk, %i.fn
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !285
  %i.fs = fadd double %i.fo, %i.fr
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !285
  %i.fw = fadd double %i.fs, %i.fv
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !285
  %i.ga = fadd double %i.fw, %i.fz                ; 3 uses
  %indvars.iv.next326.7 = add nuw nsw i64 %indvars.iv325, 8 ; 2 uses
  %niter484.next.7 = add i64 %niter484, 8         ; 2 uses
  %niter484.ncmp.7 = icmp eq i64 %niter484.next.7, %unroll_iter483
  br i1 %niter484.ncmp.7, label %._crit_edge275.loopexit.unr-lcssa, label %.lr.ph274, !llvm.loop !627

._crit_edge275.loopexit.unr-lcssa:                ; preds = %.lr.ph274
  %lcmp.mod480.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod480.not, label %._crit_edge275, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.preheader
  %indvars.iv325.epil.init = phi i64 [ 0, %.lr.ph274.preheader ], [ %indvars.iv.next326.7, %._crit_edge275.loopexit.unr-lcssa ]
  %.0214273.epil.init = phi double [ 0.000000e+00, %.lr.ph274.preheader ], [ %i.ga, %._crit_edge275.loopexit.unr-lcssa ]
  %lcmp.mod482 = icmp ne i64 %xtraiter478, 0
  call void @llvm.assume(i1 %lcmp.mod482)
  br label %.lr.ph274.epil

.lr.ph274.epil:                                   ; preds = %.lr.ph274.epil, %.lr.ph274.epil.preheader
  %indvars.iv325.epil = phi i64 [ %indvars.iv325.epil.init, %.lr.ph274.epil.preheader ], [ %indvars.iv.next326.epil, %.lr.ph274.epil ] ; 2 uses
  %.0214273.epil = phi double [ %.0214273.epil.init, %.lr.ph274.epil.preheader ], [ %i.gd, %.lr.ph274.epil ]
  %epil.iter479 = phi i64 [ 0, %.lr.ph274.epil.preheader ], [ %epil.iter479.next, %.lr.ph274.epil ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv325.epil
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !285
  %i.gd = fadd double %.0214273.epil, %i.gc       ; 2 uses
  %indvars.iv.next326.epil = add nuw nsw i64 %indvars.iv325.epil, 1
  %epil.iter479.next = add i64 %epil.iter479, 1   ; 2 uses
  %epil.iter479.cmp.not = icmp eq i64 %epil.iter479.next, %xtraiter478
  br i1 %epil.iter479.cmp.not, label %._crit_edge275, label %.lr.ph274.epil, !llvm.loop !628

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274.epil, %.preheader229
  %.0214.lcssa = phi double [ 0.000000e+00, %.preheader229 ], [ %i.ga, %._crit_edge275.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph274.epil ] ; 3 uses
  store double %.0214.lcssa, ptr %2, align 8, !tbaa !285
  %i.ge = icmp sgt i32 %i.g, 0
  br i1 %i.ge, label %.lr.ph280.preheader, label %.loopexit

.lr.ph280.preheader:                              ; preds = %._crit_edge275
  %i.gf = sext i32 %i.e to i64
  %wide.trip.count333 = zext nneg i32 %i.g to i64 ; 2 uses
  %invariant.gep376 = getelementptr [8 x i8], ptr %1, i64 %i.gf ; 3 uses
  %xtraiter485 = and i64 %wide.trip.count333, 1
  %i.gg = icmp eq i32 %i.g, 1
  br i1 %i.gg, label %.lr.ph280.epil.preheader, label %.lr.ph280.preheader.new

.lr.ph280.preheader.new:                          ; preds = %.lr.ph280.preheader
  %unroll_iter489 = and i64 %wide.trip.count333, 2147483646
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280, %.lr.ph280.preheader.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %indvars.iv.next331.1, %.lr.ph280 ] ; 4 uses
  %.1215278 = phi double [ %.0214.lcssa, %.lr.ph280.preheader.new ], [ %i.gr, %.lr.ph280 ]
  %niter490 = phi i64 [ 0, %.lr.ph280.preheader.new ], [ %niter490.next.1, %.lr.ph280 ]
  %gep377 = getelementptr [8 x i8], ptr %invariant.gep376, i64 %indvars.iv330
  %i.gh = load double, ptr %gep377, align 8, !tbaa !285
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv330
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !285
  %i.gk = fsub double %i.gh, %i.gj
  %i.gl = fadd double %.1215278, %i.gk            ; 2 uses
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331
  store double %i.gl, ptr %i.gm, align 8, !tbaa !285
  %gep377.1 = getelementptr [8 x i8], ptr %invariant.gep376, i64 %indvars.iv.next331
  %i.gn = load double, ptr %gep377.1, align 8, !tbaa !285
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next331
  %i.gp = load double, ptr %i.go, align 8, !tbaa !285
  %i.gq = fsub double %i.gn, %i.gp
  %i.gr = fadd double %i.gl, %i.gq                ; 3 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next331.1
  store double %i.gr, ptr %i.gs, align 8, !tbaa !285
  %niter490.next.1 = add nuw i64 %niter490, 2     ; 2 uses
  %niter490.ncmp.1 = icmp eq i64 %niter490.next.1, %unroll_iter489
  br i1 %niter490.ncmp.1, label %.loopexit.loopexit431.unr-lcssa, label %.lr.ph280, !llvm.loop !629

.lr.ph261:                                        ; preds = %.lr.ph261, %.lr.ph261.preheader.new
  %indvars.iv319 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %indvars.iv.next320.3, %.lr.ph261 ] ; 5 uses
  %.0208260 = phi double [ 0.000000e+00, %.lr.ph261.preheader.new ], [ %i.hu, %.lr.ph261 ]
  %i.gt = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader.new ], [ %i.hr, %.lr.ph261 ]
  %niter469 = phi i64 [ 0, %.lr.ph261.preheader.new ], [ %niter469.next.3, %.lr.ph261 ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.gv = load <2 x double>, ptr %i.gu, align 8, !tbaa !285
  %i.gw = fadd <2 x double> %i.gt, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !285
  %i.gz = fadd double %.0208260, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load <2 x double>, ptr %i.hb, align 8, !tbaa !285
  %i.hd = fadd <2 x double> %i.gw, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hf = load double, ptr %i.he, align 8, !tbaa !285
  %i.hg = fadd double %i.gz, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load <2 x double>, ptr %i.hi, align 8, !tbaa !285
  %i.hk = fadd <2 x double> %i.hd, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !285
  %i.hn = fadd double %i.hg, %i.hm
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv319 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hq = load <2 x double>, ptr %i.hp, align 8, !tbaa !285
  %i.hr = fadd <2 x double> %i.hk, %i.hq          ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !285
  %i.hu = fadd double %i.hn, %i.ht                ; 3 uses
  %indvars.iv.next320.3 = add nuw nsw i64 %indvars.iv319, 12 ; 2 uses
  %niter469.next.3 = add i64 %niter469, 4         ; 2 uses
  %niter469.ncmp.3.not = icmp eq i64 %niter469.next.3, %unroll_iter468
  br i1 %niter469.ncmp.3.not, label %._crit_edge262.loopexit.unr-lcssa, label %.lr.ph261, !llvm.loop !630

._crit_edge262.loopexit.unr-lcssa:                ; preds = %.lr.ph261
  %lcmp.mod464.not = icmp eq i64 %xtraiter460, 0
  br i1 %lcmp.mod464.not, label %._crit_edge262, label %.lr.ph261.epil.preheader

.lr.ph261.epil.preheader:                         ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.preheader
  %indvars.iv319.epil.init = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next320.3, %._crit_edge262.loopexit.unr-lcssa ]
  %.0208260.epil.init = phi double [ 0.000000e+00, %.lr.ph261.preheader ], [ %i.hu, %._crit_edge262.loopexit.unr-lcssa ]
  %.epil.init463 = phi <2 x double> [ zeroinitializer, %.lr.ph261.preheader ], [ %i.hr, %._crit_edge262.loopexit.unr-lcssa ]
  %lcmp.mod467 = icmp ne i64 %xtraiter460, 0
  call void @llvm.assume(i1 %lcmp.mod467)
  br label %.lr.ph261.epil

.lr.ph261.epil:                                   ; preds = %.lr.ph261.epil, %.lr.ph261.epil.preheader
  %indvars.iv319.epil = phi i64 [ %indvars.iv319.epil.init, %.lr.ph261.epil.preheader ], [ %indvars.iv.next320.epil, %.lr.ph261.epil ] ; 2 uses
  %.0208260.epil = phi double [ %.0208260.epil.init, %.lr.ph261.epil.preheader ], [ %i.ib, %.lr.ph261.epil ]
  %i.hv = phi <2 x double> [ %.epil.init463, %.lr.ph261.epil.preheader ], [ %i.hy, %.lr.ph261.epil ]
  %epil.iter461 = phi i64 [ 0, %.lr.ph261.epil.preheader ], [ %epil.iter461.next, %.lr.ph261.epil ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv319.epil ; 2 uses
  %i.hx = load <2 x double>, ptr %i.hw, align 8, !tbaa !285
  %i.hy = fadd <2 x double> %i.hv, %i.hx          ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !285
  %i.ib = fadd double %.0208260.epil, %i.ia       ; 2 uses
  %indvars.iv.next320.epil = add nuw nsw i64 %indvars.iv319.epil, 3
  %epil.iter461.next = add i64 %epil.iter461, 1   ; 2 uses
  %epil.iter461.cmp.not = icmp eq i64 %epil.iter461.next, %xtraiter460
  br i1 %epil.iter461.cmp.not, label %._crit_edge262, label %.lr.ph261.epil, !llvm.loop !631

._crit_edge262:                                   ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261.epil, %.preheader231
  %.0208.lcssa = phi double [ 0.000000e+00, %.preheader231 ], [ %i.hu, %._crit_edge262.loopexit.unr-lcssa ], [ %i.ib, %.lr.ph261.epil ] ; 3 uses
  %i.ic = phi <2 x double> [ zeroinitializer, %.preheader231 ], [ %i.hr, %._crit_edge262.loopexit.unr-lcssa ], [ %i.hy, %.lr.ph261.epil ] ; 3 uses
  store <2 x double> %i.ic, ptr %2, align 8, !tbaa !285
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.0208.lcssa, ptr %i.id, align 8, !tbaa !285
  %i.ie = icmp sgt i32 %i.g, 0
  br i1 %i.ie, label %.lr.ph271.preheader, label %.loopexit

.lr.ph271.preheader:                              ; preds = %._crit_edge262
  %i.if = sext i32 %i.e to i64
  %i.ig = zext nneg i32 %i.g to i64
  %invariant.gep374 = getelementptr [8 x i8], ptr %1, i64 %i.if ; 3 uses
  %i.ih = add nsw i64 %i.ig, -1
  %i.ii = udiv i64 %i.ih, 3                       ; 2 uses
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %i.ik = icmp ult i32 %i.g, 4
  br i1 %i.ik, label %.lr.ph271.epil.preheader, label %.lr.ph271.preheader.new

.lr.ph271.preheader.new:                          ; preds = %.lr.ph271.preheader
  %unroll_iter476 = and i64 %i.ij, 9223372036854775806
  br label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271, %.lr.ph271.preheader.new
end_hunk_9
begin_hunk_10_@_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEclEPPKhPhiii:bb.a
  %i.u = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.g ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !96   ; 2 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !138 ; 3 uses
  %i.ab = icmp slt i32 %.promoted, %i.aa
  br i1 %i.ab, label %.lr.ph145, label %.loopexit141

.lr.ph145:                                        ; preds = %bb.h
  %i.ac = icmp sgt i32 %5, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph145.split.preheader

.lr.ph145.split.preheader:                        ; preds = %.lr.ph145
  %i.ad = add i32 %i.z, -2
  %i.ae = sub i32 %i.ad, %.promoted
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  br label %..loopexit141_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep205 = getelementptr i8, ptr %i.u, i64 %i.ai
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0143.us = phi ptr [ %i.bu, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.bt, %._crit_edge.us ], [ %.promoted, %.lr.ph.us.preheader ]
  %i.ak = load ptr, ptr %.0143.us, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep206 = getelementptr i8, ptr %i.ak, i64 %i.ai
  %bound0 = icmp ult ptr %i.u, %scevgep206
  %bound1 = icmp ult ptr %i.ak, %scevgep205
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !285, !alias.scope !715
  %wide.load207 = load <2 x double>, ptr %i.am, align 8, !tbaa !285, !alias.scope !715
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.an, align 8, !tbaa !285, !alias.scope !718, !noalias !715
  %wide.load209 = load <2 x double>, ptr %i.ao, align 8, !tbaa !285, !alias.scope !718, !noalias !715
  %i.ap = fadd <2 x double> %wide.load, %wide.load208
  %i.aq = fadd <2 x double> %wide.load207, %wide.load209
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !285, !alias.scope !718, !noalias !715
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !285, !alias.scope !718, !noalias !715
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !285
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !285
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !285
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !721

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !285
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !285
  %i.bd = fadd double %i.ba, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.bf = load double, ptr %i.be, align 8, !tbaa !285
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !285
  %i.bi = fadd double %i.bf, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !285
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !285
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !285
  %i.bn = fadd double %i.bk, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !285
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.2
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !285
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !285
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !285
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !722

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bt = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0143.us, i64 8 ; 2 uses
  %exitcond170.not = icmp eq i32 %i.bt, %i.aa
  br i1 %exitcond170.not, label %..loopexit141_crit_edge, label %.lr.ph.us, !llvm.loop !723

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !96
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = icmp eq i32 %.pre188, %i.bx
  br i1 %i.by, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ca, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cg = sext i32 %.pre188 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cg
  br label %.loopexit141

..loopexit141_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph145.split.preheader
  %.us-phi146 = phi ptr [ %scevgep, %.lr.ph145.split.preheader ], [ %i.bu, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !138
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.h, %..loopexit141_crit_edge, %bb.o
  %i.ci = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit141_crit_edge ], [ %i.u, %bb.h ] ; 4 uses
  %.1 = phi ptr [ %i.ch, %bb.o ], [ %.us-phi146, %..loopexit141_crit_edge ], [ %1, %bb.h ] ; 2 uses
  %.not131158 = icmp eq i32 %4, 0
  br i1 %.not131158, label %._crit_edge, label %.lr.ph161

.lr.ph161:                                        ; preds = %.loopexit141
  %i.cj = add nsw i32 %4, -1                      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cl = add nsw i32 %5, -2
  %.not132147 = icmp slt i32 %5, 2                ; 2 uses
  %i.cm = sext i32 %3 to i64                      ; 2 uses
  %9 = sext i32 %i.cl to i64                      ; 2 uses
  %wide.trip.count185 = zext i32 %5 to i64        ; 2 uses
  br i1 %i.c, label %.preheader137.us.preheader, label %.preheader140

.preheader137.us.preheader:                       ; preds = %.lr.ph161
  %i.cn = insertelement <2 x double> poison, double %i.b, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.us.preheader, %.loopexit.us
  %i.cp = phi i32 [ %i.el, %.loopexit.us ], [ %i.cj, %.preheader137.us.preheader ] ; 2 uses
  %.2160.us = phi ptr [ %i.ek, %.loopexit.us ], [ %.1, %.preheader137.us.preheader ] ; 3 uses
  %.0115159.us = phi ptr [ %i.ej, %.loopexit.us ], [ %2, %.preheader137.us.preheader ] ; 4 uses
  %i.cq = load ptr, ptr %.2160.us, align 8, !tbaa !242 ; 2 uses
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !96
  %i.cs = sub nsw i32 1, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %.2160.us, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !242 ; 2 uses
  br i1 %.not132147, label %.preheader.us, label %.lr.ph154.us

.lr.ph154.us:                                     ; preds = %.preheader137.us, %.lr.ph154.us
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph154.us ], [ 0, %.preheader137.us ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv179 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv179
  %i.cy = getelementptr inbounds nuw i8, ptr %.0115159.us, i64 %indvars.iv179
  %i.cz = getelementptr inbounds nuw i8, ptr %.0115159.us, i64 %indvars.iv179
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv179
  %i.dc = load <2 x double>, ptr %i.cw, align 8, !tbaa !285
  %i.dd = load <2 x double>, ptr %i.cx, align 8, !tbaa !285
  %i.de = fadd <2 x double> %i.dc, %i.dd          ; 2 uses
  %i.df = fmul <2 x double> %i.co, %i.de          ; 2 uses
  %i.dg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.df)
  %i.dh = call i32 @llvm.smax.i32(i32 %i.dg, i32 0)
  %i.di = call i32 @llvm.umin.i32(i32 %i.dh, i32 255)
  %i.dj = trunc nuw i32 %i.di to i8
  store i8 %i.dj, ptr %i.cy, align 1, !tbaa !14
  %i.dk = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dl = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dk)
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dn = call i32 @llvm.umin.i32(i32 %i.dm, i32 255)
  %i.do = trunc nuw i32 %i.dn to i8
  store i8 %i.do, ptr %i.da, align 1, !tbaa !14
  %i.dp = load <2 x double>, ptr %i.db, align 8, !tbaa !285
  %i.dq = fsub <2 x double> %i.de, %i.dp
  store <2 x double> %i.dq, ptr %i.cw, align 8, !tbaa !285
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 2 ; 3 uses
  %.not133.us = icmp sgt i64 %indvars.iv.next180, %9
  br i1 %.not133.us, label %.preheader.us.loopexit, label %.lr.ph154.us, !llvm.loop !724

.lr.ph157.us:                                     ; preds = %.lr.ph157.us.preheader, %.lr.ph157.us
  %indvars.iv182 = phi i64 [ %i.ei, %.lr.ph157.us.preheader ], [ %indvars.iv.next183, %.lr.ph157.us ] ; 5 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv182 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !285
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv182
  %i.du = load double, ptr %i.dt, align 8, !tbaa !285
  %i.dv = fadd double %i.ds, %i.du                ; 2 uses
  %i.dw = fmul double %i.b, %i.dv
  %i.dx = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dy = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dx)
  %i.dz = call i32 @llvm.smax.i32(i32 %i.dy, i32 0)
  %i.ea = call i32 @llvm.umin.i32(i32 %i.dz, i32 255)
  %i.eb = trunc nuw i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.0115159.us, i64 %indvars.iv182
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !14
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv182
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !285
  %i.ef = fsub double %i.dv, %i.ee
  store double %i.ef, ptr %i.dr, align 8, !tbaa !285
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %.loopexit.us, label %.lr.ph157.us, !llvm.loop !725

.preheader.us.loopexit:                           ; preds = %.lr.ph154.us
  %i.eg = trunc nuw nsw i64 %indvars.iv.next180 to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.loopexit, %.preheader137.us
  %.1118.lcssa.us = phi i32 [ 0, %.preheader137.us ], [ %i.eg, %.preheader.us.loopexit ] ; 2 uses
  %i.eh = icmp slt i32 %.1118.lcssa.us, %5
  br i1 %i.eh, label %.lr.ph157.us.preheader, label %.loopexit.us

.lr.ph157.us.preheader:                           ; preds = %.preheader.us
  %i.ei = zext nneg i32 %.1118.lcssa.us to i64
  br label %.lr.ph157.us

.loopexit.us:                                     ; preds = %.lr.ph157.us, %.preheader.us
  %i.ej = getelementptr inbounds i8, ptr %.0115159.us, i64 %i.cm
  %i.ek = getelementptr inbounds nuw i8, ptr %.2160.us, i64 8
  %i.el = add nsw i32 %i.cp, -1
  %.not131.us = icmp eq i32 %i.cp, 0
  br i1 %.not131.us, label %._crit_edge, label %.preheader137.us, !llvm.loop !726

.preheader140:                                    ; preds = %.lr.ph161, %.loopexit139
  %i.em = phi i32 [ %i.gg, %.loopexit139 ], [ %i.cj, %.lr.ph161 ] ; 2 uses
  %.2160 = phi ptr [ %i.gf, %.loopexit139 ], [ %.1, %.lr.ph161 ] ; 3 uses
  %.0115159 = phi ptr [ %i.ge, %.loopexit139 ], [ %2, %.lr.ph161 ] ; 4 uses
  %i.en = load ptr, ptr %.2160, align 8, !tbaa !242 ; 2 uses
  %i.eo = load i32, ptr %i.ck, align 8, !tbaa !96
  %i.ep = sub nsw i32 1, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %.2160, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !242 ; 2 uses
  br i1 %.not132147, label %.preheader138, label %.lr.ph

.preheader138.loopexit:                           ; preds = %.lr.ph
  %i.et = trunc nuw nsw i64 %indvars.iv.next172 to i32
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.loopexit, %.preheader140
  %.3.lcssa = phi i32 [ 0, %.preheader140 ], [ %i.et, %.preheader138.loopexit ] ; 2 uses
  %i.eu = icmp slt i32 %.3.lcssa, %5
  br i1 %i.eu, label %.lr.ph151.preheader, label %.loopexit139

.lr.ph151.preheader:                              ; preds = %.preheader138
  %i.ev = zext nneg i32 %.3.lcssa to i64
  br label %.lr.ph151

.lr.ph:                                           ; preds = %.preheader140, %.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph ], [ 0, %.preheader140 ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv171 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv171
  %i.ey = getelementptr inbounds nuw i8, ptr %.0115159, i64 %indvars.iv171
  %i.ez = getelementptr inbounds nuw i8, ptr %.0115159, i64 %indvars.iv171
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv171
  %i.fc = load <2 x double>, ptr %i.ew, align 8, !tbaa !285
  %i.fd = load <2 x double>, ptr %i.ex, align 8, !tbaa !285
  %i.fe = fadd <2 x double> %i.fc, %i.fd          ; 3 uses
  %i.ff = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fe)
  %i.fg = call i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %i.fh = call i32 @llvm.umin.i32(i32 %i.fg, i32 255)
  %i.fi = trunc nuw i32 %i.fh to i8
  store i8 %i.fi, ptr %i.ey, align 1, !tbaa !14
  %i.fj = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fj)
  %i.fl = call i32 @llvm.smax.i32(i32 %i.fk, i32 0)
  %i.fm = call i32 @llvm.umin.i32(i32 %i.fl, i32 255)
  %i.fn = trunc nuw i32 %i.fm to i8
  store i8 %i.fn, ptr %i.fa, align 1, !tbaa !14
  %i.fo = load <2 x double>, ptr %i.fb, align 8, !tbaa !285
  %i.fp = fsub <2 x double> %i.fe, %i.fo
  store <2 x double> %i.fp, ptr %i.ew, align 8, !tbaa !285
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 2 ; 3 uses
  %.not132 = icmp sgt i64 %indvars.iv.next172, %9
  br i1 %.not132, label %.preheader138.loopexit, label %.lr.ph, !llvm.loop !727

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv174 = phi i64 [ %i.ev, %.lr.ph151.preheader ], [ %indvars.iv.next175, %.lr.ph151 ] ; 5 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv174 ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !285
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv174
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !285
  %i.fu = fadd double %i.fr, %i.ft                ; 2 uses
  %i.fv = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fv)
  %i.fx = call i32 @llvm.smax.i32(i32 %i.fw, i32 0)
  %i.fy = call i32 @llvm.umin.i32(i32 %i.fx, i32 255)
  %i.fz = trunc nuw i32 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0115159, i64 %indvars.iv174
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !14
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv174
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !285
  %i.gd = fsub double %i.fu, %i.gc
  store double %i.gd, ptr %i.fq, align 8, !tbaa !285
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count185
  br i1 %exitcond178.not, label %.loopexit139, label %.lr.ph151, !llvm.loop !728

.loopexit139:                                     ; preds = %.lr.ph151, %.preheader138
  %i.ge = getelementptr inbounds i8, ptr %.0115159, i64 %i.cm
  %i.gf = getelementptr inbounds nuw i8, ptr %.2160, i64 8
  %i.gg = add nsw i32 %i.em, -1
  %.not131 = icmp eq i32 %i.em, 0
  br i1 %.not131, label %._crit_edge, label %.preheader140, !llvm.loop !726

._crit_edge:                                      ; preds = %.loopexit139, %.loopexit.us, %.loopexit141
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.gi, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn134.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn134.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhE5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((24, 28)) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !714  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !711    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !712
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !285
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !285
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !714
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #24
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !285
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !285
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #25
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !711
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !714
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !712
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !729
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_10
begin_hunk_11_@_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEclEPPKhPhiii:bb.a
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !96   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !154 ; 3 uses
  %i.ab = icmp slt i32 %.promoted, %i.aa
  br i1 %i.ab, label %.lr.ph145, label %.loopexit141

.lr.ph145:                                        ; preds = %bb.h
  %i.ac = icmp sgt i32 %5, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph145.split.preheader

.lr.ph145.split.preheader:                        ; preds = %.lr.ph145
  %i.ad = add i32 %i.z, -2
  %i.ae = sub i32 %i.ad, %.promoted
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  br label %..loopexit141_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep205 = getelementptr i8, ptr %i.u, i64 %i.ai
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0143.us = phi ptr [ %i.bu, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.bt, %._crit_edge.us ], [ %.promoted, %.lr.ph.us.preheader ]
  %i.ak = load ptr, ptr %.0143.us, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep206 = getelementptr i8, ptr %i.ak, i64 %i.ai
  %bound0 = icmp ult ptr %i.u, %scevgep206
  %bound1 = icmp ult ptr %i.ak, %scevgep205
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !285, !alias.scope !754
  %wide.load207 = load <2 x double>, ptr %i.am, align 8, !tbaa !285, !alias.scope !754
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.an, align 8, !tbaa !285, !alias.scope !757, !noalias !754
  %wide.load209 = load <2 x double>, ptr %i.ao, align 8, !tbaa !285, !alias.scope !757, !noalias !754
  %i.ap = fadd <2 x double> %wide.load, %wide.load208
  %i.aq = fadd <2 x double> %wide.load207, %wide.load209
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !285, !alias.scope !757, !noalias !754
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !285, !alias.scope !757, !noalias !754
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !285
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !285
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !285
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !760

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !285
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !285
  %i.bd = fadd double %i.ba, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.bf = load double, ptr %i.be, align 8, !tbaa !285
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !285
  %i.bi = fadd double %i.bf, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !285
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !285
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !285
  %i.bn = fadd double %i.bk, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !285
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.2
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !285
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !285
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !285
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !761

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bt = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0143.us, i64 8 ; 2 uses
  %exitcond170.not = icmp eq i32 %i.bt, %i.aa
  br i1 %exitcond170.not, label %..loopexit141_crit_edge, label %.lr.ph.us, !llvm.loop !762

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = icmp eq i32 %.pre188, %i.bx
  br i1 %i.by, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ca, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cg = sext i32 %.pre188 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cg
  br label %.loopexit141

..loopexit141_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph145.split.preheader
  %.us-phi146 = phi ptr [ %scevgep, %.lr.ph145.split.preheader ], [ %i.bu, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !154
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.h, %..loopexit141_crit_edge, %bb.o
  %i.ci = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit141_crit_edge ], [ %i.u, %bb.h ] ; 4 uses
  %i.cj = phi i32 [ %i.bw, %bb.o ], [ %i.z, %..loopexit141_crit_edge ], [ %i.z, %bb.h ]
  %.1 = phi ptr [ %i.ch, %bb.o ], [ %.us-phi146, %..loopexit141_crit_edge ], [ %1, %bb.h ] ; 2 uses
  %.not131158 = icmp eq i32 %4, 0
  br i1 %.not131158, label %._crit_edge, label %.lr.ph161

.lr.ph161:                                        ; preds = %.loopexit141
  %i.ck = add nsw i32 %4, -1                      ; 2 uses
  %i.cl = sub nsw i32 1, %i.cj
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = add nsw i32 %5, -2
  %.not132147 = icmp slt i32 %5, 2                ; 2 uses
  %i.co = sext i32 %3 to i64                      ; 2 uses
  %9 = sext i32 %i.cn to i64                      ; 2 uses
  %wide.trip.count185 = zext i32 %5 to i64        ; 2 uses
  br i1 %i.c, label %.preheader137.us.preheader, label %.preheader140

.preheader137.us.preheader:                       ; preds = %.lr.ph161
  %i.cp = insertelement <2 x double> poison, double %i.b, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.us.preheader, %.loopexit.us
  %i.cr = phi i32 [ %i.ek, %.loopexit.us ], [ %i.ck, %.preheader137.us.preheader ] ; 2 uses
  %.2160.us = phi ptr [ %i.ej, %.loopexit.us ], [ %.1, %.preheader137.us.preheader ] ; 3 uses
  %.0115159.us = phi ptr [ %i.ei, %.loopexit.us ], [ %2, %.preheader137.us.preheader ] ; 4 uses
  %i.cs = load ptr, ptr %.2160.us, align 8, !tbaa !242 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.2160.us, i64 %i.cm
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !242 ; 2 uses
  br i1 %.not132147, label %.preheader.us, label %.lr.ph154.us

.lr.ph154.us:                                     ; preds = %.preheader137.us, %.lr.ph154.us
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph154.us ], [ 0, %.preheader137.us ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv179 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv179
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0115159.us, i64 %indvars.iv179
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0115159.us, i64 %indvars.iv179
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv179
  %i.db = load <2 x double>, ptr %i.cv, align 8, !tbaa !285
  %i.dc = load <2 x double>, ptr %i.cw, align 8, !tbaa !285
  %i.dd = fadd <2 x double> %i.db, %i.dc          ; 2 uses
  %i.de = fmul <2 x double> %i.cq, %i.dd          ; 2 uses
  %i.df = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.de)
  %i.dg = call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %i.dh = call i32 @llvm.umin.i32(i32 %i.dg, i32 65535)
  %i.di = trunc nuw i32 %i.dh to i16
  store i16 %i.di, ptr %i.cx, align 2, !tbaa !454
  %i.dj = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dj)
  %i.dl = call i32 @llvm.smax.i32(i32 %i.dk, i32 0)
  %i.dm = call i32 @llvm.umin.i32(i32 %i.dl, i32 65535)
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %i.cz, align 2, !tbaa !454
  %i.do = load <2 x double>, ptr %i.da, align 8, !tbaa !285
  %i.dp = fsub <2 x double> %i.dd, %i.do
  store <2 x double> %i.dp, ptr %i.cv, align 8, !tbaa !285
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 2 ; 3 uses
  %.not133.us = icmp sgt i64 %indvars.iv.next180, %9
  br i1 %.not133.us, label %.preheader.us.loopexit, label %.lr.ph154.us, !llvm.loop !763

.lr.ph157.us:                                     ; preds = %.lr.ph157.us.preheader, %.lr.ph157.us
  %indvars.iv182 = phi i64 [ %i.eh, %.lr.ph157.us.preheader ], [ %indvars.iv.next183, %.lr.ph157.us ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv182 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !285
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv182
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !285
  %i.du = fadd double %i.dr, %i.dt                ; 2 uses
  %i.dv = fmul double %i.b, %i.du
  %i.dw = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dx = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dw)
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
  %i.dz = call i32 @llvm.umin.i32(i32 %i.dy, i32 65535)
  %i.ea = trunc nuw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.0115159.us, i64 %indvars.iv182
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !454
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv182
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !285
  %i.ee = fsub double %i.du, %i.ed
  store double %i.ee, ptr %i.dq, align 8, !tbaa !285
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %.loopexit.us, label %.lr.ph157.us, !llvm.loop !764

.preheader.us.loopexit:                           ; preds = %.lr.ph154.us
  %i.ef = trunc nuw nsw i64 %indvars.iv.next180 to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.loopexit, %.preheader137.us
  %.1118.lcssa.us = phi i32 [ 0, %.preheader137.us ], [ %i.ef, %.preheader.us.loopexit ] ; 2 uses
  %i.eg = icmp slt i32 %.1118.lcssa.us, %5
  br i1 %i.eg, label %.lr.ph157.us.preheader, label %.loopexit.us

.lr.ph157.us.preheader:                           ; preds = %.preheader.us
  %i.eh = zext nneg i32 %.1118.lcssa.us to i64
  br label %.lr.ph157.us

.loopexit.us:                                     ; preds = %.lr.ph157.us, %.preheader.us
  %i.ei = getelementptr inbounds i8, ptr %.0115159.us, i64 %i.co
  %i.ej = getelementptr inbounds nuw i8, ptr %.2160.us, i64 8
  %i.ek = add nsw i32 %i.cr, -1
  %.not131.us = icmp eq i32 %i.cr, 0
  br i1 %.not131.us, label %._crit_edge, label %.preheader137.us, !llvm.loop !765

.preheader140:                                    ; preds = %.lr.ph161, %.loopexit139
  %i.el = phi i32 [ %i.gc, %.loopexit139 ], [ %i.ck, %.lr.ph161 ] ; 2 uses
  %.2160 = phi ptr [ %i.gb, %.loopexit139 ], [ %.1, %.lr.ph161 ] ; 3 uses
  %.0115159 = phi ptr [ %i.ga, %.loopexit139 ], [ %2, %.lr.ph161 ] ; 4 uses
  %i.em = load ptr, ptr %.2160, align 8, !tbaa !242 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %.2160, i64 %i.cm
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !242 ; 2 uses
  br i1 %.not132147, label %.preheader138, label %.lr.ph

.preheader138.loopexit:                           ; preds = %.lr.ph
  %i.ep = trunc nuw nsw i64 %indvars.iv.next172 to i32
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.loopexit, %.preheader140
  %.3.lcssa = phi i32 [ 0, %.preheader140 ], [ %i.ep, %.preheader138.loopexit ] ; 2 uses
  %i.eq = icmp slt i32 %.3.lcssa, %5
  br i1 %i.eq, label %.lr.ph151.preheader, label %.loopexit139

.lr.ph151.preheader:                              ; preds = %.preheader138
  %i.er = zext nneg i32 %.3.lcssa to i64
  br label %.lr.ph151

.lr.ph:                                           ; preds = %.preheader140, %.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph ], [ 0, %.preheader140 ] ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv171 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv171
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.0115159, i64 %indvars.iv171
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.0115159, i64 %indvars.iv171
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv171
  %i.ey = load <2 x double>, ptr %i.es, align 8, !tbaa !285
  %i.ez = load <2 x double>, ptr %i.et, align 8, !tbaa !285
  %i.fa = fadd <2 x double> %i.ey, %i.ez          ; 3 uses
  %i.fb = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fa)
  %i.fc = call i32 @llvm.smax.i32(i32 %i.fb, i32 0)
  %i.fd = call i32 @llvm.umin.i32(i32 %i.fc, i32 65535)
  %i.fe = trunc nuw i32 %i.fd to i16
  store i16 %i.fe, ptr %i.eu, align 2, !tbaa !454
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ff)
  %i.fh = call i32 @llvm.smax.i32(i32 %i.fg, i32 0)
  %i.fi = call i32 @llvm.umin.i32(i32 %i.fh, i32 65535)
  %i.fj = trunc nuw i32 %i.fi to i16
  store i16 %i.fj, ptr %i.ew, align 2, !tbaa !454
  %i.fk = load <2 x double>, ptr %i.ex, align 8, !tbaa !285
  %i.fl = fsub <2 x double> %i.fa, %i.fk
  store <2 x double> %i.fl, ptr %i.es, align 8, !tbaa !285
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 2 ; 3 uses
  %.not132 = icmp sgt i64 %indvars.iv.next172, %9
  br i1 %.not132, label %.preheader138.loopexit, label %.lr.ph, !llvm.loop !766

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv174 = phi i64 [ %i.er, %.lr.ph151.preheader ], [ %indvars.iv.next175, %.lr.ph151 ] ; 5 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv174 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !285
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv174
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !285
  %i.fq = fadd double %i.fn, %i.fp                ; 2 uses
  %i.fr = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fs = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fr)
  %i.ft = call i32 @llvm.smax.i32(i32 %i.fs, i32 0)
  %i.fu = call i32 @llvm.umin.i32(i32 %i.ft, i32 65535)
  %i.fv = trunc nuw i32 %i.fu to i16
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.0115159, i64 %indvars.iv174
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !454
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv174
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !285
  %i.fz = fsub double %i.fq, %i.fy
  store double %i.fz, ptr %i.fm, align 8, !tbaa !285
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count185
  br i1 %exitcond178.not, label %.loopexit139, label %.lr.ph151, !llvm.loop !767

.loopexit139:                                     ; preds = %.lr.ph151, %.preheader138
  %i.ga = getelementptr inbounds i8, ptr %.0115159, i64 %i.co
  %i.gb = getelementptr inbounds nuw i8, ptr %.2160, i64 8
  %i.gc = add nsw i32 %i.el, -1
  %.not131 = icmp eq i32 %i.el, 0
  br i1 %.not131, label %._crit_edge, label %.preheader140, !llvm.loop !765

._crit_edge:                                      ; preds = %.loopexit139, %.loopexit.us, %.loopexit141
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn134.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn134.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtE5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((24, 28)) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !22
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !232
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !232
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !228
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !229

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !768
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !640  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !641
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

end_hunk_11
begin_hunk_12_@_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEclEPPKhPhiii:bb.a
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !96   ; 4 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %.promoted = load i32, ptr %i.v, align 8, !tbaa !169 ; 3 uses
  %i.ab = icmp slt i32 %.promoted, %i.aa
  br i1 %i.ab, label %.lr.ph145, label %.loopexit141

.lr.ph145:                                        ; preds = %bb.h
  %i.ac = icmp sgt i32 %5, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph145.split.preheader

.lr.ph145.split.preheader:                        ; preds = %.lr.ph145
  %i.ad = add i32 %i.z, -2
  %i.ae = sub i32 %i.ad, %.promoted
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  br label %..loopexit141_crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep205 = getelementptr i8, ptr %i.u, i64 %i.ai
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0143.us = phi ptr [ %i.bu, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.bt, %._crit_edge.us ], [ %.promoted, %.lr.ph.us.preheader ]
  %i.ak = load ptr, ptr %.0143.us, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep206 = getelementptr i8, ptr %i.ak, i64 %i.ai
  %bound0 = icmp ult ptr %i.u, %scevgep206
  %bound1 = icmp ult ptr %i.ak, %scevgep205
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !285, !alias.scope !793
  %wide.load207 = load <2 x double>, ptr %i.am, align 8, !tbaa !285, !alias.scope !793
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.an, align 8, !tbaa !285, !alias.scope !796, !noalias !793
  %wide.load209 = load <2 x double>, ptr %i.ao, align 8, !tbaa !285, !alias.scope !796, !noalias !793
  %i.ap = fadd <2 x double> %wide.load, %wide.load208
  %i.aq = fadd <2 x double> %wide.load207, %wide.load209
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !285, !alias.scope !796, !noalias !793
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !285, !alias.scope !796, !noalias !793
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !798

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !285
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !285
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !285
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !799

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ba = load double, ptr %i.az, align 8, !tbaa !285
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !285
  %i.bd = fadd double %i.ba, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.bf = load double, ptr %i.be, align 8, !tbaa !285
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !285
  %i.bi = fadd double %i.bf, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !285
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.1
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !285
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !285
  %i.bn = fadd double %i.bk, %i.bm
  store double %i.bn, ptr %i.bl, align 8, !tbaa !285
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.2
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !285
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !285
  %i.bs = fadd double %i.bp, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !285
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !800

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bt = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0143.us, i64 8 ; 2 uses
  %exitcond170.not = icmp eq i32 %i.bt, %i.aa
  br i1 %exitcond170.not, label %..loopexit141_crit_edge, label %.lr.ph.us, !llvm.loop !801

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = icmp eq i32 %.pre188, %i.bx
  br i1 %i.by, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ca, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cg = sext i32 %.pre188 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cg
  br label %.loopexit141

..loopexit141_crit_edge:                          ; preds = %._crit_edge.us, %.lr.ph145.split.preheader
  %.us-phi146 = phi ptr [ %scevgep, %.lr.ph145.split.preheader ], [ %i.bu, %._crit_edge.us ]
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !169
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.h, %..loopexit141_crit_edge, %bb.o
  %i.ci = phi ptr [ %i.g, %bb.o ], [ %i.u, %..loopexit141_crit_edge ], [ %i.u, %bb.h ] ; 4 uses
  %i.cj = phi i32 [ %i.bw, %bb.o ], [ %i.z, %..loopexit141_crit_edge ], [ %i.z, %bb.h ]
  %.1 = phi ptr [ %i.ch, %bb.o ], [ %.us-phi146, %..loopexit141_crit_edge ], [ %1, %bb.h ] ; 2 uses
  %.not131158 = icmp eq i32 %4, 0
  br i1 %.not131158, label %._crit_edge, label %.lr.ph161

.lr.ph161:                                        ; preds = %.loopexit141
  %i.ck = add nsw i32 %4, -1                      ; 2 uses
  %i.cl = sub nsw i32 1, %i.cj
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = add nsw i32 %5, -2
  %.not132147 = icmp slt i32 %5, 2                ; 2 uses
  %i.co = sext i32 %3 to i64                      ; 2 uses
  %9 = sext i32 %i.cn to i64                      ; 2 uses
  %wide.trip.count185 = zext i32 %5 to i64        ; 2 uses
  br i1 %i.c, label %.preheader137.us.preheader, label %.preheader140

.preheader137.us.preheader:                       ; preds = %.lr.ph161
  %i.cp = insertelement <2 x double> poison, double %i.b, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.us.preheader, %.loopexit.us
  %i.cr = phi i32 [ %i.ek, %.loopexit.us ], [ %i.ck, %.preheader137.us.preheader ] ; 2 uses
  %.2160.us = phi ptr [ %i.ej, %.loopexit.us ], [ %.1, %.preheader137.us.preheader ] ; 3 uses
  %.0115159.us = phi ptr [ %i.ei, %.loopexit.us ], [ %2, %.preheader137.us.preheader ] ; 4 uses
  %i.cs = load ptr, ptr %.2160.us, align 8, !tbaa !242 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.2160.us, i64 %i.cm
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !242 ; 2 uses
  br i1 %.not132147, label %.preheader.us, label %.lr.ph154.us

.lr.ph154.us:                                     ; preds = %.preheader137.us, %.lr.ph154.us
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph154.us ], [ 0, %.preheader137.us ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv179 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv179
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0115159.us, i64 %indvars.iv179
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0115159.us, i64 %indvars.iv179
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv179
  %i.db = load <2 x double>, ptr %i.cv, align 8, !tbaa !285
  %i.dc = load <2 x double>, ptr %i.cw, align 8, !tbaa !285
  %i.dd = fadd <2 x double> %i.db, %i.dc          ; 2 uses
  %i.de = fmul <2 x double> %i.cq, %i.dd          ; 2 uses
  %i.df = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.de)
  %i.dg = call i32 @llvm.smax.i32(i32 %i.df, i32 -32768)
  %i.dh = call i32 @llvm.smin.i32(i32 %i.dg, i32 32767)
  %i.di = trunc nsw i32 %i.dh to i16
  store i16 %i.di, ptr %i.cx, align 2, !tbaa !454
  %i.dj = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dj)
  %i.dl = call i32 @llvm.smax.i32(i32 %i.dk, i32 -32768)
  %i.dm = call i32 @llvm.smin.i32(i32 %i.dl, i32 32767)
  %i.dn = trunc nsw i32 %i.dm to i16
  store i16 %i.dn, ptr %i.cz, align 2, !tbaa !454
  %i.do = load <2 x double>, ptr %i.da, align 8, !tbaa !285
  %i.dp = fsub <2 x double> %i.dd, %i.do
  store <2 x double> %i.dp, ptr %i.cv, align 8, !tbaa !285
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 2 ; 3 uses
  %.not133.us = icmp sgt i64 %indvars.iv.next180, %9
  br i1 %.not133.us, label %.preheader.us.loopexit, label %.lr.ph154.us, !llvm.loop !802

.lr.ph157.us:                                     ; preds = %.lr.ph157.us.preheader, %.lr.ph157.us
  %indvars.iv182 = phi i64 [ %i.eh, %.lr.ph157.us.preheader ], [ %indvars.iv.next183, %.lr.ph157.us ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv182 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !285
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv182
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !285
  %i.du = fadd double %i.dr, %i.dt                ; 2 uses
  %i.dv = fmul double %i.b, %i.du
  %i.dw = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dx = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dw)
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 -32768)
  %i.dz = call i32 @llvm.smin.i32(i32 %i.dy, i32 32767)
  %i.ea = trunc nsw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.0115159.us, i64 %indvars.iv182
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !454
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv182
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !285
  %i.ee = fsub double %i.du, %i.ed
  store double %i.ee, ptr %i.dq, align 8, !tbaa !285
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %.loopexit.us, label %.lr.ph157.us, !llvm.loop !803

.preheader.us.loopexit:                           ; preds = %.lr.ph154.us
  %i.ef = trunc nuw nsw i64 %indvars.iv.next180 to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.loopexit, %.preheader137.us
  %.1118.lcssa.us = phi i32 [ 0, %.preheader137.us ], [ %i.ef, %.preheader.us.loopexit ] ; 2 uses
  %i.eg = icmp slt i32 %.1118.lcssa.us, %5
  br i1 %i.eg, label %.lr.ph157.us.preheader, label %.loopexit.us

.lr.ph157.us.preheader:                           ; preds = %.preheader.us
  %i.eh = zext nneg i32 %.1118.lcssa.us to i64
  br label %.lr.ph157.us

.loopexit.us:                                     ; preds = %.lr.ph157.us, %.preheader.us
  %i.ei = getelementptr inbounds i8, ptr %.0115159.us, i64 %i.co
  %i.ej = getelementptr inbounds nuw i8, ptr %.2160.us, i64 8
  %i.ek = add nsw i32 %i.cr, -1
  %.not131.us = icmp eq i32 %i.cr, 0
  br i1 %.not131.us, label %._crit_edge, label %.preheader137.us, !llvm.loop !804

.preheader140:                                    ; preds = %.lr.ph161, %.loopexit139
  %i.el = phi i32 [ %i.gc, %.loopexit139 ], [ %i.ck, %.lr.ph161 ] ; 2 uses
  %.2160 = phi ptr [ %i.gb, %.loopexit139 ], [ %.1, %.lr.ph161 ] ; 3 uses
  %.0115159 = phi ptr [ %i.ga, %.loopexit139 ], [ %2, %.lr.ph161 ] ; 4 uses
  %i.em = load ptr, ptr %.2160, align 8, !tbaa !242 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %.2160, i64 %i.cm
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !242 ; 2 uses
  br i1 %.not132147, label %.preheader138, label %.lr.ph

.preheader138.loopexit:                           ; preds = %.lr.ph
  %i.ep = trunc nuw nsw i64 %indvars.iv.next172 to i32
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.loopexit, %.preheader140
  %.3.lcssa = phi i32 [ 0, %.preheader140 ], [ %i.ep, %.preheader138.loopexit ] ; 2 uses
  %i.eq = icmp slt i32 %.3.lcssa, %5
  br i1 %i.eq, label %.lr.ph151.preheader, label %.loopexit139

.lr.ph151.preheader:                              ; preds = %.preheader138
  %i.er = zext nneg i32 %.3.lcssa to i64
  br label %.lr.ph151

.lr.ph:                                           ; preds = %.preheader140, %.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph ], [ 0, %.preheader140 ] ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv171 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv171
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.0115159, i64 %indvars.iv171
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.0115159, i64 %indvars.iv171
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv171
  %i.ey = load <2 x double>, ptr %i.es, align 8, !tbaa !285
  %i.ez = load <2 x double>, ptr %i.et, align 8, !tbaa !285
  %i.fa = fadd <2 x double> %i.ey, %i.ez          ; 3 uses
  %i.fb = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fa)
  %i.fc = call i32 @llvm.smax.i32(i32 %i.fb, i32 -32768)
  %i.fd = call i32 @llvm.smin.i32(i32 %i.fc, i32 32767)
  %i.fe = trunc nsw i32 %i.fd to i16
  store i16 %i.fe, ptr %i.eu, align 2, !tbaa !454
  %i.ff = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ff)
  %i.fh = call i32 @llvm.smax.i32(i32 %i.fg, i32 -32768)
  %i.fi = call i32 @llvm.smin.i32(i32 %i.fh, i32 32767)
  %i.fj = trunc nsw i32 %i.fi to i16
  store i16 %i.fj, ptr %i.ew, align 2, !tbaa !454
  %i.fk = load <2 x double>, ptr %i.ex, align 8, !tbaa !285
  %i.fl = fsub <2 x double> %i.fa, %i.fk
  store <2 x double> %i.fl, ptr %i.es, align 8, !tbaa !285
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 2 ; 3 uses
  %.not132 = icmp sgt i64 %indvars.iv.next172, %9
  br i1 %.not132, label %.preheader138.loopexit, label %.lr.ph, !llvm.loop !805

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv174 = phi i64 [ %i.er, %.lr.ph151.preheader ], [ %indvars.iv.next175, %.lr.ph151 ] ; 5 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv174 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !285
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv174
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !285
  %i.fq = fadd double %i.fn, %i.fp                ; 2 uses
  %i.fr = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fs = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fr)
  %i.ft = call i32 @llvm.smax.i32(i32 %i.fs, i32 -32768)
  %i.fu = call i32 @llvm.smin.i32(i32 %i.ft, i32 32767)
  %i.fv = trunc nsw i32 %i.fu to i16
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.0115159, i64 %indvars.iv174
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !454
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv174
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !285
  %i.fz = fsub double %i.fq, %i.fy
  store double %i.fz, ptr %i.fm, align 8, !tbaa !285
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count185
  br i1 %exitcond178.not, label %.loopexit139, label %.lr.ph151, !llvm.loop !806

.loopexit139:                                     ; preds = %.lr.ph151, %.preheader138
  %i.ga = getelementptr inbounds i8, ptr %.0115159, i64 %i.co
  %i.gb = getelementptr inbounds nuw i8, ptr %.2160, i64 8
  %i.gc = add nsw i32 %i.el, -1
  %.not131 = icmp eq i32 %i.el, 0
  br i1 %.not131, label %._crit_edge, label %.preheader140, !llvm.loop !804

._crit_edge:                                      ; preds = %.loopexit139, %.loopexit.us, %.loopexit141
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn134.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn134.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsE5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((24, 28)) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !22
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !232
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !232
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !228
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !229

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !807
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIiiEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !640  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !641
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16BaseColumnFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  ret void
}

end_hunk_12
begin_hunk_13_@_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIidEclEPPKhPhiii:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = sext i32 %5 to i64
  %i.x = shl nsw i64 %i.w, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.v, align 8, !tbaa !205  ; 3 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !96
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph141, label %.loopexit137

.lr.ph141:                                        ; preds = %bb.h
  %i.ad = icmp sgt i32 %5, 0
  br i1 %i.ad, label %.lr.ph.us.preheader, label %.lr.ph141.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph141
  %wide.trip.count = zext nneg i32 %5 to i64      ; 6 uses
  %i.ae = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.u, i64 %i.ae
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0139.us = phi ptr [ %i.bq, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.af = load ptr, ptr %.0139.us, align 8, !tbaa !242 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep198 = getelementptr i8, ptr %i.af, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep198
  %bound1 = icmp ult ptr %i.af, %scevgep197
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !228, !alias.scope !923
  %wide.load199 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !228, !alias.scope !923
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load200 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !228, !alias.scope !926, !noalias !923
  %wide.load201 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !228, !alias.scope !926, !noalias !923
  %i.ak = add nsw <4 x i32> %wide.load200, %wide.load
  %i.al = add nsw <4 x i32> %wide.load201, %wide.load199
  store <4 x i32> %i.ak, ptr %i.ai, align 4, !tbaa !228, !alias.scope !926, !noalias !923
  store <4 x i32> %i.al, ptr %i.aj, align 4, !tbaa !228, !alias.scope !926, !noalias !923
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !928

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.prol
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !228
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.prol ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !228
  %i.ar = add nsw i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !228
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !929

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !228
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !228
  %i.ay = add nsw i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !228
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !228
  %i.bd = add nsw i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !228
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next.1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !228
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.1 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !228
  %i.bi = add nsw i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !228
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next.2
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !228
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.2 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !228
  %i.bn = add nsw i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !228
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !930

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !205
  %i.bp = add nsw i32 %i.bo, 1                    ; 2 uses
  store i32 %i.bp, ptr %i.v, align 8, !tbaa !205
  %i.bq = getelementptr inbounds nuw i8, ptr %.0139.us, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.y, align 8, !tbaa !96
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = icmp slt i32 %i.bp, %i.bs
  br i1 %i.bt, label %.lr.ph.us, label %.loopexit137, !llvm.loop !931

.lr.ph141.split:                                  ; preds = %.lr.ph141
  %i.bu = add nsw i32 %i.z, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.bu) ; 2 uses
  %i.bv = xor i32 %i.z, -1
  %i.bw = add i32 %smax, %i.bv
  %i.bx = zext i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = getelementptr i8, ptr %1, i64 %i.by
  %scevgep = getelementptr i8, ptr %i.bz, i64 8
  store i32 %smax, ptr %i.v, align 8, !tbaa !205
  br label %.loopexit137

bb.i:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !96
  %i.cc = add nsw i32 %i.cb, -1
  %i.cd = icmp eq i32 %.pre180, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 224) #24
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.m ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cf, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  %i.cl = sext i32 %.pre180 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cl
  br label %.loopexit137

.loopexit137:                                     ; preds = %._crit_edge.us, %bb.h, %.lr.ph141.split, %bb.o
  %i.cn = phi ptr [ %i.g, %bb.o ], [ %i.u, %bb.h ], [ %i.u, %.lr.ph141.split ], [ %i.u, %._crit_edge.us ] ; 20 uses
  %.1 = phi ptr [ %i.cm, %bb.o ], [ %1, %bb.h ], [ %scevgep, %.lr.ph141.split ], [ %i.bq, %._crit_edge.us ] ; 2 uses
  %.not130153 = icmp eq i32 %4, 0
  br i1 %.not130153, label %._crit_edge, label %.lr.ph156

.lr.ph156:                                        ; preds = %.loopexit137
  %i.co = add nsw i32 %4, -1                      ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = add i32 %5, -2
  %.not131142 = icmp slt i32 %5, 2                ; 2 uses
  %i.cr = sext i32 %3 to i64                      ; 2 uses
  %9 = sext i32 %i.cq to i64                      ; 5 uses
  %wide.trip.count177 = zext i32 %5 to i64        ; 9 uses
  %i.cs = shl nuw nsw i64 %wide.trip.count177, 2  ; 5 uses
  %scevgep260.a = getelementptr i8, ptr %i.cn, i64 %i.cs ; 4 uses
  %10 = call i64 @llvm.smax.i64(i64 %9, i64 1)
  %i.ct = shl nuw nsw i64 %10, 2
  %i.cu = and i64 %i.ct, 9223372036854775800
  %i.cv = add nuw nsw i64 %i.cu, 8                ; 5 uses
  %scevgep287.a = getelementptr i8, ptr %i.cn, i64 %i.cv ; 4 uses
  br i1 %i.c, label %.preheader133.us.preheader, label %.preheader136.preheader

.preheader136.preheader:                          ; preds = %.lr.ph156
  %11 = call i64 @llvm.smax.i64(i64 %9, i64 1)
  %i.cw = lshr i64 %11, 1                         ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check241 = icmp eq i64 %i.cw, 0
  %n.vec243 = and i64 %i.cx, 9223372036854775806  ; 3 uses
  %i.cy = shl nuw i64 %n.vec243, 1                ; 2 uses
  %cmp.n256 = icmp eq i64 %i.cx, %n.vec243
  %i.cz = add nsw i64 %wide.trip.count177, -1
  br label %.preheader136

.preheader133.us.preheader:                       ; preds = %.lr.ph156
  %12 = call i64 @llvm.smax.i64(i64 %9, i64 1)
  %i.da = lshr i64 %12, 1                         ; 2 uses
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check298 = icmp eq i64 %i.da, 0
  %n.vec300 = and i64 %i.db, 9223372036854775806  ; 3 uses
  %i.dc = shl nuw i64 %n.vec300, 1                ; 2 uses
  %broadcast.splatinsert301 = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat302 = shufflevector <2 x double> %broadcast.splatinsert301, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n318 = icmp eq i64 %i.db, %n.vec300
  %i.dd = insertelement <2 x double> poison, double %i.b, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = add nsw i64 %wide.trip.count177, -1
  br label %.preheader133.us

.preheader133.us:                                 ; preds = %.preheader133.us.preheader, %.loopexit.us
  %i.dg = phi i32 [ %i.gn, %.loopexit.us ], [ %i.co, %.preheader133.us.preheader ] ; 2 uses
  %.2155.us = phi ptr [ %i.gm, %.loopexit.us ], [ %.1, %.preheader133.us.preheader ] ; 3 uses
  %.0115154.us = phi ptr [ %i.gl, %.loopexit.us ], [ %2, %.preheader133.us.preheader ] ; 7 uses
  %i.dh = load ptr, ptr %.2155.us, align 8, !tbaa !242 ; 10 uses
  %i.di = load i32, ptr %i.cp, align 8, !tbaa !96
  %i.dj = sub nsw i32 1, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %.2155.us, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !242 ; 10 uses
  br i1 %.not131142, label %.preheader.us, label %.lr.ph149.us.preheader

.lr.ph149.us.preheader:                           ; preds = %.preheader133.us
  br i1 %min.iters.check298, label %.lr.ph149.us.preheader321, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.lr.ph149.us.preheader
  %scevgep288 = getelementptr i8, ptr %i.dh, i64 %i.cv
  %scevgep289 = getelementptr i8, ptr %i.dm, i64 %i.cv
  %bound0290 = icmp ult ptr %i.cn, %scevgep288
  %bound1291 = icmp ult ptr %i.dh, %scevgep287.a
  %found.conflict292 = and i1 %bound0290, %bound1291
  %bound0293 = icmp ult ptr %i.cn, %scevgep289
  %bound1294 = icmp ult ptr %i.dm, %scevgep287.a
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %found.conflict292, %found.conflict295
  br i1 %conflict.rdx296, label %.lr.ph149.us.preheader321, label %vector.body303

vector.body303:                                   ; preds = %vector.memcheck285, %vector.body303
  %index304 = phi i64 [ %index.next316, %vector.body303 ], [ 0, %vector.memcheck285 ] ; 2 uses
  %i.dn = shl nuw i64 %index304, 1                ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dn ; 2 uses
  %wide.vec305 = load <4 x i32>, ptr %i.do, align 4, !tbaa !228, !alias.scope !932, !noalias !935 ; 2 uses
  %strided.vec306 = shufflevector <4 x i32> %wide.vec305, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec307.a = shufflevector <4 x i32> %wide.vec305, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dn
  %wide.vec308 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !228, !alias.scope !938 ; 2 uses
  %strided.vec309 = shufflevector <4 x i32> %wide.vec308, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec310 = shufflevector <4 x i32> %wide.vec308, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.dq = add nsw <2 x i32> %strided.vec309, %strided.vec306 ; 2 uses
  %i.dr = add nsw <2 x i32> %strided.vec310, %strided.vec307.a ; 2 uses
  %i.ds = sitofp <2 x i32> %i.dq to <2 x double>
  %i.dt = fmul <2 x double> %broadcast.splat302, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.0115154.us, i64 %i.dn
  %i.dv = sitofp <2 x i32> %i.dr to <2 x double>
  %i.dw = fmul <2 x double> %broadcast.splat302, %i.dv
  %interleaved.vec311 = shufflevector <2 x double> %i.dt, <2 x double> %i.dw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec311, ptr %i.du, align 8, !tbaa !285, !alias.scope !939
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn
  %wide.vec312 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !228, !alias.scope !941 ; 2 uses
  %strided.vec313 = shufflevector <4 x i32> %wide.vec312, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec314 = shufflevector <4 x i32> %wide.vec312, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.dy = sub nsw <2 x i32> %i.dq, %strided.vec313
  %i.dz = sub nsw <2 x i32> %i.dr, %strided.vec314
  %interleaved.vec315 = shufflevector <2 x i32> %i.dy, <2 x i32> %i.dz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec315, ptr %i.do, align 4, !tbaa !228, !alias.scope !932, !noalias !935
  %index.next316 = add nuw i64 %index304, 2       ; 2 uses
  %i.ea = icmp eq i64 %index.next316, %n.vec300
  br i1 %i.ea, label %middle.block317, label %vector.body303, !llvm.loop !942

middle.block317:                                  ; preds = %vector.body303
  br i1 %cmp.n318, label %.preheader.us.loopexit, label %.lr.ph149.us.preheader321

.lr.ph149.us.preheader321:                        ; preds = %vector.memcheck285, %.lr.ph149.us.preheader, %middle.block317
  %indvars.iv171.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %.lr.ph149.us.preheader ], [ %i.dc, %middle.block317 ]
  br label %.lr.ph149.us

.lr.ph149.us:                                     ; preds = %.lr.ph149.us.preheader321, %.lr.ph149.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph149.us ], [ %indvars.iv171.ph, %.lr.ph149.us.preheader321 ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv171 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv171
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0115154.us, i64 %indvars.iv171
  %i.ee = load <2 x i32>, ptr %i.eb, align 4, !tbaa !228
  %i.ef = load <2 x i32>, ptr %i.ec, align 4, !tbaa !228
  %i.eg = add nsw <2 x i32> %i.ef, %i.ee          ; 2 uses
  %i.eh = sitofp <2 x i32> %i.eg to <2 x double>
  %i.ei = fmul <2 x double> %i.de, %i.eh
  store <2 x double> %i.ei, ptr %i.ed, align 8, !tbaa !285
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv171
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !tbaa !228
  %i.el = sub nsw <2 x i32> %i.eg, %i.ek
  store <2 x i32> %i.el, ptr %i.eb, align 4, !tbaa !228
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 2 ; 3 uses
  %.not132.us = icmp sgt i64 %indvars.iv.next172, %9
  br i1 %.not132.us, label %.preheader.us.loopexit, label %.lr.ph149.us, !llvm.loop !943

.lr.ph152.us:                                     ; preds = %.lr.ph152.us.prol.loopexit, %.lr.ph152.us
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.1, %.lr.ph152.us ], [ %indvars.iv174.unr, %.lr.ph152.us.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv174 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !228
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv174
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !228
  %i.eq = add nsw i32 %i.ep, %i.en                ; 2 uses
  %i.er = sitofp i32 %i.eq to double
  %i.es = fmul double %i.b, %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0115154.us, i64 %indvars.iv174
  store double %i.es, ptr %i.et, align 8, !tbaa !285
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv174
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !228
  %i.ew = sub nsw i32 %i.eq, %i.ev
  store i32 %i.ew, ptr %i.em, align 4, !tbaa !228
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next175 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !228
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next175
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !228
  %i.fb = add nsw i32 %i.fa, %i.ey                ; 2 uses
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fmul double %i.b, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.0115154.us, i64 %indvars.iv.next175
  store double %i.fd, ptr %i.fe, align 8, !tbaa !285
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next175
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !228
  %i.fh = sub nsw i32 %i.fb, %i.fg
  store i32 %i.fh, ptr %i.ex, align 4, !tbaa !228
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv174, 2 ; 2 uses
  %exitcond178.not.1 = icmp eq i64 %indvars.iv.next175.1, %wide.trip.count177
  br i1 %exitcond178.not.1, label %.loopexit.us, label %.lr.ph152.us, !llvm.loop !944

.preheader.us.loopexit:                           ; preds = %.lr.ph149.us, %middle.block317
  %indvars.iv.next172.lcssa = phi i64 [ %i.dc, %middle.block317 ], [ %indvars.iv.next172, %.lr.ph149.us ]
  %i.fi = trunc nuw nsw i64 %indvars.iv.next172.lcssa to i32
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.loopexit, %.preheader133.us
  %.1118.lcssa.us = phi i32 [ 0, %.preheader133.us ], [ %i.fi, %.preheader.us.loopexit ] ; 2 uses
  %i.fj = icmp slt i32 %.1118.lcssa.us, %5
  br i1 %i.fj, label %.lr.ph152.us.preheader, label %.loopexit.us

.lr.ph152.us.preheader:                           ; preds = %.preheader.us
  %i.fk = zext i32 %.1118.lcssa.us to i64         ; 6 uses
  %i.fl = sub nsw i64 %wide.trip.count177, %i.fk  ; 3 uses
  %min.iters.check273 = icmp ult i64 %i.fl, 4
  br i1 %min.iters.check273, label %.lr.ph152.us.preheader320, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph152.us.preheader
  %i.fm = shl nuw nsw i64 %i.fk, 2                ; 3 uses
  %scevgep259 = getelementptr i8, ptr %i.cn, i64 %i.fm ; 2 uses
  %scevgep261.a = getelementptr i8, ptr %i.dh, i64 %i.fm
  %scevgep262.a = getelementptr i8, ptr %i.dh, i64 %i.cs
  %scevgep263.a = getelementptr i8, ptr %i.dm, i64 %i.fm
  %scevgep264 = getelementptr i8, ptr %i.dm, i64 %i.cs
  %bound0265 = icmp ult ptr %scevgep259, %scevgep262.a
  %bound1266 = icmp ult ptr %scevgep261.a, %scevgep260.a
  %found.conflict267 = and i1 %bound0265, %bound1266
  %bound0268 = icmp ult ptr %scevgep259, %scevgep264
  %bound1269 = icmp ult ptr %scevgep263.a, %scevgep260.a
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %found.conflict267, %found.conflict270
  br i1 %conflict.rdx271, label %.lr.ph152.us.preheader320, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck258
  %n.vec275 = and i64 %i.fl, -2                   ; 3 uses
  %i.fn = add nsw i64 %n.vec275, %i.fk
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next281, %vector.body276 ] ; 2 uses
  %i.fo = add nuw i64 %index277, %i.fk            ; 4 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fo ; 2 uses
  %wide.load278.a = load <2 x i32>, ptr %i.fp, align 4, !tbaa !228, !alias.scope !945, !noalias !948
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.fo
  %wide.load279.a = load <2 x i32>, ptr %i.fq, align 4, !tbaa !228, !alias.scope !951
  %i.fr = add nsw <2 x i32> %wide.load279.a, %wide.load278.a ; 2 uses
  %i.fs = sitofp <2 x i32> %i.fr to <2 x double>
  %i.ft = fmul <2 x double> %broadcast.splat, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.0115154.us, i64 %i.fo
  store <2 x double> %i.ft, ptr %i.fu, align 8, !tbaa !285
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fo
  %wide.load280 = load <2 x i32>, ptr %i.fv, align 4, !tbaa !228, !alias.scope !952
  %i.fw = sub nsw <2 x i32> %i.fr, %wide.load280
  store <2 x i32> %i.fw, ptr %i.fp, align 4, !tbaa !228, !alias.scope !945, !noalias !948
  %index.next281 = add nuw i64 %index277, 2       ; 2 uses
  %i.fx = icmp eq i64 %index.next281, %n.vec275
  br i1 %i.fx, label %middle.block282, label %vector.body276, !llvm.loop !953

middle.block282:                                  ; preds = %vector.body276
  %cmp.n283 = icmp eq i64 %i.fl, %n.vec275
  br i1 %cmp.n283, label %.loopexit.us, label %.lr.ph152.us.preheader320

.lr.ph152.us.preheader320:                        ; preds = %vector.memcheck258, %.lr.ph152.us.preheader, %middle.block282
  %indvars.iv174.ph = phi i64 [ %i.fk, %vector.memcheck258 ], [ %i.fk, %.lr.ph152.us.preheader ], [ %i.fn, %middle.block282 ] ; 8 uses
  %i.fy = sub nsw i64 %wide.trip.count177, %indvars.iv174.ph
  %xtraiter330 = and i64 %i.fy, 1
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.lr.ph152.us.prol.loopexit, label %.lr.ph152.us.prol

.lr.ph152.us.prol:                                ; preds = %.lr.ph152.us.preheader320
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv174.ph ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !228
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv174.ph
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !228
  %i.gd = add nsw i32 %i.gc, %i.ga                ; 2 uses
  %i.ge = sitofp i32 %i.gd to double
  %i.gf = fmul double %i.b, %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0115154.us, i64 %indvars.iv174.ph
  store double %i.gf, ptr %i.gg, align 8, !tbaa !285
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv174.ph
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !228
  %i.gj = sub nsw i32 %i.gd, %i.gi
  store i32 %i.gj, ptr %i.fz, align 4, !tbaa !228
  %indvars.iv.next175.prol = add nuw nsw i64 %indvars.iv174.ph, 1
  br label %.lr.ph152.us.prol.loopexit

.lr.ph152.us.prol.loopexit:                       ; preds = %.lr.ph152.us.prol, %.lr.ph152.us.preheader320
  %indvars.iv174.unr = phi i64 [ %indvars.iv174.ph, %.lr.ph152.us.preheader320 ], [ %indvars.iv.next175.prol, %.lr.ph152.us.prol ]
  %i.gk = icmp eq i64 %indvars.iv174.ph, %i.df
  br i1 %i.gk, label %.loopexit.us, label %.lr.ph152.us

.loopexit.us:                                     ; preds = %.lr.ph152.us.prol.loopexit, %.lr.ph152.us, %middle.block282, %.preheader.us
  %i.gl = getelementptr inbounds i8, ptr %.0115154.us, i64 %i.cr
  %i.gm = getelementptr inbounds nuw i8, ptr %.2155.us, i64 8
  %i.gn = add nsw i32 %i.dg, -1
  %.not130.us = icmp eq i32 %i.dg, 0
  br i1 %.not130.us, label %._crit_edge, label %.preheader133.us, !llvm.loop !954

.preheader136:                                    ; preds = %.preheader136.preheader, %.loopexit135
  %i.go = phi i32 [ %i.jo, %.loopexit135 ], [ %i.co, %.preheader136.preheader ] ; 2 uses
  %.2155 = phi ptr [ %i.jn, %.loopexit135 ], [ %.1, %.preheader136.preheader ] ; 3 uses
  %.0115154 = phi ptr [ %i.jm, %.loopexit135 ], [ %2, %.preheader136.preheader ] ; 7 uses
  %i.gp = load ptr, ptr %.2155, align 8, !tbaa !242 ; 10 uses
  %i.gq = load i32, ptr %i.cp, align 8, !tbaa !96
  %i.gr = sub nsw i32 1, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %.2155, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !242 ; 10 uses
  br i1 %.not131142, label %.preheader134, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader136
  br i1 %min.iters.check241, label %.lr.ph.preheader324, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.lr.ph.preheader
  %scevgep231.a = getelementptr i8, ptr %i.gp, i64 %i.cv
  %scevgep232 = getelementptr i8, ptr %i.gu, i64 %i.cv
  %bound0233 = icmp ult ptr %i.cn, %scevgep231.a
  %bound1234 = icmp ult ptr %i.gp, %scevgep287.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0236 = icmp ult ptr %i.cn, %scevgep232
  %bound1237 = icmp ult ptr %i.gu, %scevgep287.a
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %found.conflict235, %found.conflict238
  br i1 %conflict.rdx239, label %.lr.ph.preheader324, label %vector.body244

vector.body244:                                   ; preds = %vector.memcheck228, %vector.body244
  %index245 = phi i64 [ %index.next254, %vector.body244 ], [ 0, %vector.memcheck228 ] ; 2 uses
  %i.gv = shl nuw i64 %index245, 1                ; 4 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.gv ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.gw, align 4, !tbaa !228, !alias.scope !955, !noalias !958 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec246 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gv
  %wide.vec247 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !228, !alias.scope !961 ; 2 uses
  %strided.vec248.a = shufflevector <4 x i32> %wide.vec247, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec249 = shufflevector <4 x i32> %wide.vec247, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.gy = add nsw <2 x i32> %strided.vec248.a, %strided.vec ; 2 uses
  %i.gz = add nsw <2 x i32> %strided.vec249, %strided.vec246 ; 2 uses
  %i.ha = sitofp <2 x i32> %i.gy to <2 x double>
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.0115154, i64 %i.gv
  %i.hc = sitofp <2 x i32> %i.gz to <2 x double>
  %interleaved.vec = shufflevector <2 x double> %i.ha, <2 x double> %i.hc, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.hb, align 8, !tbaa !285, !alias.scope !962
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gv
  %wide.vec250 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !228, !alias.scope !964 ; 2 uses
  %strided.vec251.a = shufflevector <4 x i32> %wide.vec250, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec252 = shufflevector <4 x i32> %wide.vec250, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.he = sub nsw <2 x i32> %i.gy, %strided.vec251.a
  %i.hf = sub nsw <2 x i32> %i.gz, %strided.vec252
  %interleaved.vec253 = shufflevector <2 x i32> %i.he, <2 x i32> %i.hf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec253, ptr %i.gw, align 4, !tbaa !228, !alias.scope !955, !noalias !958
  %index.next254 = add nuw i64 %index245, 2       ; 2 uses
  %i.hg = icmp eq i64 %index.next254, %n.vec243
  br i1 %i.hg, label %middle.block255, label %vector.body244, !llvm.loop !965

middle.block255:                                  ; preds = %vector.body244
  br i1 %cmp.n256, label %.preheader134.loopexit, label %.lr.ph.preheader324

.lr.ph.preheader324:                              ; preds = %vector.memcheck228, %.lr.ph.preheader, %middle.block255
  %indvars.iv163.ph = phi i64 [ 0, %vector.memcheck228 ], [ 0, %.lr.ph.preheader ], [ %i.cy, %middle.block255 ]
  br label %.lr.ph

.preheader134.loopexit:                           ; preds = %.lr.ph, %middle.block255
  %indvars.iv.next164.lcssa = phi i64 [ %i.cy, %middle.block255 ], [ %indvars.iv.next164, %.lr.ph ]
  %i.hh = trunc nuw nsw i64 %indvars.iv.next164.lcssa to i32
  br label %.preheader134

.preheader134:                                    ; preds = %.preheader134.loopexit, %.preheader136
  %.3.lcssa = phi i32 [ 0, %.preheader136 ], [ %i.hh, %.preheader134.loopexit ] ; 2 uses
  %i.hi = icmp slt i32 %.3.lcssa, %5
  br i1 %i.hi, label %.lr.ph146.preheader, label %.loopexit135

.lr.ph146.preheader:                              ; preds = %.preheader134
  %i.hj = zext i32 %.3.lcssa to i64               ; 6 uses
  %i.hk = sub nsw i64 %wide.trip.count177, %i.hj  ; 3 uses
  %min.iters.check216 = icmp ult i64 %i.hk, 4
  br i1 %min.iters.check216, label %.lr.ph146.preheader323, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph146.preheader
  %i.hl = shl nuw nsw i64 %i.hj, 2                ; 3 uses
  %scevgep203 = getelementptr i8, ptr %i.cn, i64 %i.hl ; 2 uses
  %scevgep205 = getelementptr i8, ptr %i.gp, i64 %i.hl
  %scevgep206 = getelementptr i8, ptr %i.gp, i64 %i.cs
  %scevgep207 = getelementptr i8, ptr %i.gu, i64 %i.hl
  %scevgep208 = getelementptr i8, ptr %i.gu, i64 %i.cs
  %bound0209 = icmp ult ptr %scevgep203, %scevgep206
  %bound1210 = icmp ult ptr %scevgep205, %scevgep260.a
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0212 = icmp ult ptr %scevgep203, %scevgep208
  %bound1213 = icmp ult ptr %scevgep207, %scevgep260.a
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx = or i1 %found.conflict211, %found.conflict214
  br i1 %conflict.rdx, label %.lr.ph146.preheader323, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck202
  %n.vec218 = and i64 %i.hk, -2                   ; 3 uses
  %i.hm = add nsw i64 %n.vec218, %i.hj
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %i.hn = add nuw i64 %index220, %i.hj            ; 4 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.hn ; 2 uses
  %wide.load221 = load <2 x i32>, ptr %i.ho, align 4, !tbaa !228, !alias.scope !966, !noalias !969
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.hn
  %wide.load222 = load <2 x i32>, ptr %i.hp, align 4, !tbaa !228, !alias.scope !972
  %i.hq = add nsw <2 x i32> %wide.load222, %wide.load221 ; 2 uses
  %i.hr = sitofp <2 x i32> %i.hq to <2 x double>
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.0115154, i64 %i.hn
  store <2 x double> %i.hr, ptr %i.hs, align 8, !tbaa !285
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hn
  %wide.load223 = load <2 x i32>, ptr %i.ht, align 4, !tbaa !228, !alias.scope !973
  %i.hu = sub nsw <2 x i32> %i.hq, %wide.load223
  store <2 x i32> %i.hu, ptr %i.ho, align 4, !tbaa !228, !alias.scope !966, !noalias !969
  %index.next224 = add nuw i64 %index220, 2       ; 2 uses
  %i.hv = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.hv, label %middle.block225, label %vector.body219, !llvm.loop !974

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %i.hk, %n.vec218
  br i1 %cmp.n226, label %.loopexit135, label %.lr.ph146.preheader323

.lr.ph146.preheader323:                           ; preds = %vector.memcheck202, %.lr.ph146.preheader, %middle.block225
  %indvars.iv166.ph = phi i64 [ %i.hj, %vector.memcheck202 ], [ %i.hj, %.lr.ph146.preheader ], [ %i.hm, %middle.block225 ] ; 8 uses
  %i.hw = sub nsw i64 %wide.trip.count177, %indvars.iv166.ph
  %xtraiter327 = and i64 %i.hw, 1
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.lr.ph146.prol.loopexit, label %.lr.ph146.prol

.lr.ph146.prol:                                   ; preds = %.lr.ph146.preheader323
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv166.ph ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !228
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv166.ph
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !228
  %i.ib = add nsw i32 %i.ia, %i.hy                ; 2 uses
  %i.ic = sitofp i32 %i.ib to double
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.0115154, i64 %indvars.iv166.ph
  store double %i.ic, ptr %i.id, align 8, !tbaa !285
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv166.ph
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !228
  %i.ig = sub nsw i32 %i.ib, %i.if
  store i32 %i.ig, ptr %i.hx, align 4, !tbaa !228
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.ph, 1
  br label %.lr.ph146.prol.loopexit

.lr.ph146.prol.loopexit:                          ; preds = %.lr.ph146.prol, %.lr.ph146.preheader323
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %.lr.ph146.preheader323 ], [ %indvars.iv.next167.prol, %.lr.ph146.prol ]
  %i.ih = icmp eq i64 %indvars.iv166.ph, %i.cz
  br i1 %i.ih, label %.loopexit135, label %.lr.ph146

.lr.ph:                                           ; preds = %.lr.ph.preheader324, %.lr.ph
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.lr.ph ], [ %indvars.iv163.ph, %.lr.ph.preheader324 ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv163 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv163
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0115154, i64 %indvars.iv163
  %i.il = load <2 x i32>, ptr %i.ii, align 4, !tbaa !228
  %i.im = load <2 x i32>, ptr %i.ij, align 4, !tbaa !228
  %i.in = add nsw <2 x i32> %i.im, %i.il          ; 2 uses
  %i.io = sitofp <2 x i32> %i.in to <2 x double>
  store <2 x double> %i.io, ptr %i.ik, align 8, !tbaa !285
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv163
  %i.iq = load <2 x i32>, ptr %i.ip, align 4, !tbaa !228
  %i.ir = sub nsw <2 x i32> %i.in, %i.iq
  store <2 x i32> %i.ir, ptr %i.ii, align 4, !tbaa !228
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 2 ; 3 uses
  %.not131 = icmp sgt i64 %indvars.iv.next164, %9
  br i1 %.not131, label %.preheader134.loopexit, label %.lr.ph, !llvm.loop !975

.lr.ph146:                                        ; preds = %.lr.ph146.prol.loopexit, %.lr.ph146
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph146 ], [ %indvars.iv166.unr, %.lr.ph146.prol.loopexit ] ; 6 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv166 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !228
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv166
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !228
  %i.iw = add nsw i32 %i.iv, %i.it                ; 2 uses
  %i.ix = sitofp i32 %i.iw to double
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.0115154, i64 %indvars.iv166
  store double %i.ix, ptr %i.iy, align 8, !tbaa !285
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv166
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !228
  %i.jb = sub nsw i32 %i.iw, %i.ja
  store i32 %i.jb, ptr %i.is, align 4, !tbaa !228
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 4 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next167 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !228
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next167
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !228
  %i.jg = add nsw i32 %i.jf, %i.jd                ; 2 uses
  %i.jh = sitofp i32 %i.jg to double
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.0115154, i64 %indvars.iv.next167
  store double %i.jh, ptr %i.ji, align 8, !tbaa !285
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next167
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !228
  %i.jl = sub nsw i32 %i.jg, %i.jk
  store i32 %i.jl, ptr %i.jc, align 4, !tbaa !228
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %exitcond170.not.1 = icmp eq i64 %indvars.iv.next167.1, %wide.trip.count177
  br i1 %exitcond170.not.1, label %.loopexit135, label %.lr.ph146, !llvm.loop !976

.loopexit135:                                     ; preds = %.lr.ph146.prol.loopexit, %.lr.ph146, %middle.block225, %.preheader134
  %i.jm = getelementptr inbounds i8, ptr %.0115154, i64 %i.cr
  %i.jn = getelementptr inbounds nuw i8, ptr %.2155, i64 8
  %i.jo = add nsw i32 %i.go, -1
  %.not130 = icmp eq i32 %i.go, 0
  br i1 %.not130, label %._crit_edge, label %.preheader136, !llvm.loop !954

._crit_edge:                                      ; preds = %.loopexit135, %.loopexit.us, %.loopexit137
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.jq, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %bb.f ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIidE5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((24, 28)) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !22
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !232
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !232
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !228
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !229

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #23, !inline_history !977
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIddEE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !711  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !712
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
end_hunk_13
begin_hunk_14_@_ZN2cv12cpu_baseline12_GLOBAL__N_19SqrRowSumIddEclEPKhPhii:bb.a
  %i.at = load double, ptr %gep.1, align 8, !tbaa !285 ; 2 uses
  %i.au = fneg double %i.as
  %i.av = fmul double %i.as, %i.au
  %i.aw = call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.av)
  %i.ax = fadd double %i.ap, %i.aw                ; 3 uses
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv.next73, %i.i ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.03954.us, i64 %indvars.iv.next73.1
  store double %i.ax, ptr %i.ay, align 8, !tbaa !285
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %._crit_edge52.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !1461

._crit_edge52.us.unr-lcssa:                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod101.not.not, label %.epil.preheader, label %._crit_edge52.us

.epil.preheader:                                  ; preds = %._crit_edge52.us.unr-lcssa, %.preheader.us
  %indvars.iv72.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next73.1, %._crit_edge52.us.unr-lcssa ] ; 3 uses
  %.149.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ax, %._crit_edge52.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.055.us, i64 %indvars.iv72.epil.init
  %i.ba = load double, ptr %i.az, align 8, !tbaa !285 ; 2 uses
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv72.epil.init
  %i.bb = load double, ptr %gep.epil, align 8, !tbaa !285 ; 2 uses
  %i.bc = fneg double %i.ba
  %i.bd = fmul double %i.ba, %i.bc
  %i.be = call double @llvm.fmuladd.f64(double %i.bb, double %i.bb, double %i.bd)
  %i.bf = fadd double %.149.us.epil.init, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.03954.us, i64 %indvars.iv72.epil.init
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.i
  store double %i.bf, ptr %i.bh, align 8, !tbaa !285
  br label %._crit_edge52.us

._crit_edge52.us:                                 ; preds = %._crit_edge52.us.unr-lcssa, %.epil.preheader
  %i.bi = add nuw nsw i32 %.04353.us, 1           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.055.us, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.03954.us, i64 8
  %exitcond75.not = icmp eq i32 %i.bi, %4
  br i1 %exitcond75.not, label %._crit_edge56, label %.preheader.us, !llvm.loop !1462

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.g, label %.preheader.us57.preheader, label %.preheader.preheader

.preheader.us57.preheader:                        ; preds = %.preheader.lr.ph.split
  %xtraiter = and i32 %4, 1
  %i.bl = icmp eq i32 %4, 1
  br i1 %i.bl, label %.preheader.us57.epil.preheader, label %.preheader.us57.preheader.new

.preheader.us57.preheader.new:                    ; preds = %.preheader.us57.preheader
  %unroll_iter = and i32 %4, 2147483646
  br label %.preheader.us57

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.bm = shl nuw nsw i64 %i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.bm, i1 false), !tbaa !285
  br label %._crit_edge56

.preheader.us57:                                  ; preds = %._crit_edge.us65.1, %.preheader.us57.preheader.new
  %.055.us58 = phi ptr [ %1, %.preheader.us57.preheader.new ], [ %i.bz, %._crit_edge.us65.1 ] ; 3 uses
  %.03954.us59 = phi ptr [ %2, %.preheader.us57.preheader.new ], [ %i.ca, %._crit_edge.us65.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader.us57.preheader.new ], [ %niter.next.1, %._crit_edge.us65.1 ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us57, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.us57 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.04047.us61 = phi double [ 0.000000e+00, %.preheader.us57 ], [ %i.bp, %bb.d ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.055.us58, i64 %indvars.iv
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !285 ; 2 uses
  %i.bp = call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %.04047.us61) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.i ; 2 uses
  %i.bq = trunc nuw i64 %indvars.iv.next to i32
  %i.br = icmp sgt i32 %i.c, %i.bq
  br i1 %i.br, label %bb.d, label %._crit_edge.us65, !llvm.loop !1460

._crit_edge.us65:                                 ; preds = %bb.d
  store double %i.bp, ptr %.03954.us59, align 8, !tbaa !285
  %i.bs = getelementptr inbounds nuw i8, ptr %.055.us58, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.03954.us59, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.us65
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.us65 ], [ %indvars.iv.next.1, %bb.e ] ; 2 uses
  %.04047.us61.1 = phi double [ 0.000000e+00, %._crit_edge.us65 ], [ %i.bw, %bb.e ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.1
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !285 ; 2 uses
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %.04047.us61.1) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, %i.i ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.by = icmp sgt i32 %i.c, %i.bx
  br i1 %i.by, label %bb.e, label %._crit_edge.us65.1, !llvm.loop !1460

._crit_edge.us65.1:                               ; preds = %bb.e
  store double %i.bw, ptr %i.bt, align 8, !tbaa !285
  %i.bz = getelementptr inbounds nuw i8, ptr %.055.us58, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03954.us59, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge56.loopexit97.unr-lcssa, label %.preheader.us57, !llvm.loop !1462

._crit_edge56.loopexit97.unr-lcssa:               ; preds = %._crit_edge.us65.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge56, label %.preheader.us57.epil.preheader

.preheader.us57.epil.preheader:                   ; preds = %._crit_edge56.loopexit97.unr-lcssa, %.preheader.us57.preheader
  %.055.us58.epil.init = phi ptr [ %1, %.preheader.us57.preheader ], [ %i.bz, %._crit_edge56.loopexit97.unr-lcssa ]
  %.03954.us59.epil.init = phi ptr [ %2, %.preheader.us57.preheader ], [ %i.ca, %._crit_edge56.loopexit97.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.us57.epil.preheader
  %indvars.iv.epil = phi i64 [ 0, %.preheader.us57.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %.04047.us61.epil = phi double [ 0.000000e+00, %.preheader.us57.epil.preheader ], [ %i.cd, %bb.f ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.055.us58.epil.init, i64 %indvars.iv.epil
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !285 ; 2 uses
  %i.cd = call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %.04047.us61.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, %i.i ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next.epil to i32
  %i.cf = icmp sgt i32 %i.c, %i.ce
  br i1 %i.cf, label %bb.f, label %._crit_edge.us65.epil, !llvm.loop !1460

._crit_edge.us65.epil:                            ; preds = %bb.f
  store double %i.cd, ptr %.03954.us59.epil.init, align 8, !tbaa !285
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge.us65.epil, %._crit_edge56.loopexit97.unr-lcssa, %._crit_edge52.us, %._crit_edge52.us.us, %.preheader.preheader, %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge56
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #27
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge56, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK2cv12cpu_baseline12_GLOBAL__N_19SqrRowSumIddE11isStatelessEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !5, i64 8}
!16 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!19 = distinct !{!19, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!20 = distinct !{!20, !21, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumIhiEEJiiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!21 = distinct !{!21, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumIhiEEJiiEEENS_3PtrIT_EEDpRKT0_"}
!22 = !{!16, !5, i64 12}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!26, !5, i64 8}
!26 = !{!"_ZTSN2cv13BaseRowFilterE", !5, i64 8, !5, i64 12}
!27 = !{!26, !5, i64 12}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIN2cv13BaseRowFilterELN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0, !31, i64 8}
!30 = !{!"p1 _ZTSN2cv13BaseRowFilterE", !12, i64 0}
!31 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0}
!32 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!33 = !{!31, !32, i64 0}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhtEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!36 = distinct !{!36, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhtEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!37 = distinct !{!37, !38, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumIhtEEJiiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!38 = distinct !{!38, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumIhtEEJiiEEENS_3PtrIT_EEDpRKT0_"}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!41 = distinct !{!41, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIhdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!42 = distinct !{!42, !43, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumIhdEEJiiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!43 = distinct !{!43, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumIhdEEJiiEEENS_3PtrIT_EEDpRKT0_"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumItiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!46 = distinct !{!46, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumItiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!47 = distinct !{!47, !48, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumItiEEJiiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!48 = distinct !{!48, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumItiEEJiiEEENS_3PtrIT_EEDpRKT0_"}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumItdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!51 = distinct !{!51, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumItdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!52 = distinct !{!52, !53, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumItdEEJiiEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!53 = distinct !{!53, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_16RowSumItdEEJiiEEENS_3PtrIT_EEDpRKT0_"}
!54 = !{!12, !12, i64 0}
!55 = !{!56, !5, i64 8}
!56 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !57, i64 0, !5, i64 8}
!57 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !12, i64 0}
!58 = !{!10, !11, i64 0}
!59 = !{!13, !13, i64 0}
!60 = !{!9, !13, i64 8}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!63 = distinct !{!63, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsiEELN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0, !31, i64 8}
!66 = !{!"p1 _ZTSN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsiEE", !12, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!69 = distinct !{!69, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !31, i64 8}
!72 = !{!"p1 _ZTSN2cv12cpu_baseline12_GLOBAL__N_16RowSumIiiEE", !12, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!75 = distinct !{!75, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsdEELN9__gnu_cxx12_Lock_policyE2EE", !78, i64 0, !31, i64 8}
!78 = !{!"p1 _ZTSN2cv12cpu_baseline12_GLOBAL__N_16RowSumIsdEE", !12, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIfdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!81 = distinct !{!81, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIfdEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!82 = !{!83, !84, i64 0}
!83 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIfdEELN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0, !31, i64 8}
!84 = !{!"p1 _ZTSN2cv12cpu_baseline12_GLOBAL__N_16RowSumIfdEE", !12, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!87 = distinct !{!87, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEEJRKiS6_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !31, i64 8}
!90 = !{!"p1 _ZTSN2cv12cpu_baseline12_GLOBAL__N_16RowSumIddEE", !12, i64 0}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIihEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!93 = distinct !{!93, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIihEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!94 = distinct !{!94, !95, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIihEEJiidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!95 = distinct !{!95, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIihEEJiidEEENS_3PtrIT_EEDpRKT0_"}
!96 = !{!97, !5, i64 8}
!97 = !{!"_ZTSN2cv16BaseColumnFilterE", !5, i64 8, !5, i64 12}
!98 = !{!97, !5, i64 12}
!99 = !{!100, !101, i64 16}
!100 = !{!"_ZTSN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIihEE", !97, i64 0, !101, i64 16, !5, i64 24, !102, i64 32}
!101 = !{!"double", !6, i64 0}
!102 = !{!"_ZTSSt6vectorIiSaIiEE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 int", !12, i64 0}
!107 = !{!100, !5, i64 24}
!108 = !{!109, !110, i64 0}
!109 = !{!"_ZTSSt12__shared_ptrIN2cv16BaseColumnFilterELN9__gnu_cxx12_Lock_policyE2EE", !110, i64 0, !31, i64 8}
!110 = !{!"p1 _ZTSN2cv16BaseColumnFilterE", !12, i64 0}
!111 = !{!112, !114}
!112 = distinct !{!112, !113, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!113 = distinct !{!113, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!114 = distinct !{!114, !115, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIthEEJiidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!115 = distinct !{!115, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIthEEJiidEEENS_3PtrIT_EEDpRKT0_"}
!116 = !{!117, !101, i64 16}
!117 = !{!"_ZTSN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIthEE", !97, i64 0, !101, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !118, i64 40}
!118 = !{!"_ZTSSt6vectorItSaItEE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseItSaItEE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !121, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!122 = !{!"p1 short", !12, i64 0}
!123 = !{!117, !5, i64 24}
!124 = !{!117, !5, i64 28}
!125 = !{!117, !5, i64 32}
!126 = !{!127, !129}
!127 = distinct !{!127, !128, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!128 = distinct !{!128, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!129 = distinct !{!129, !130, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEEJiidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!130 = distinct !{!130, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEEJiidEEENS_3PtrIT_EEDpRKT0_"}
!131 = !{!132, !101, i64 16}
!132 = !{!"_ZTSN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdhEE", !97, i64 0, !101, i64 16, !5, i64 24, !133, i64 32}
!133 = !{!"_ZTSSt6vectorIdSaIdEE", !134, i64 0}
!134 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !135, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !136, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!137 = !{!"p1 double", !12, i64 0}
!138 = !{!132, !5, i64 24}
!139 = !{!140, !142}
!140 = distinct !{!140, !141, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!141 = distinct !{!141, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!142 = distinct !{!142, !143, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIitEEJiidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!143 = distinct !{!143, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIitEEJiidEEENS_3PtrIT_EEDpRKT0_"}
!144 = !{!145, !101, i64 16}
!145 = !{!"_ZTSN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIitEE", !97, i64 0, !101, i64 16, !5, i64 24, !102, i64 32}
!146 = !{!145, !5, i64 24}
!147 = !{!148, !150}
!148 = distinct !{!148, !149, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!149 = distinct !{!149, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!150 = distinct !{!150, !151, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEEJiidEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!151 = distinct !{!151, !"_ZN2cvL7makePtrINS_12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEEJiidEEENS_3PtrIT_EEDpRKT0_"}
!152 = !{!153, !101, i64 16}
!153 = !{!"_ZTSN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdtEE", !97, i64 0, !101, i64 16, !5, i64 24, !133, i64 32}
!154 = !{!153, !5, i64 24}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!157 = distinct !{!157, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!158 = !{!159, !101, i64 16}
!159 = !{!"_ZTSN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEE", !97, i64 0, !101, i64 16, !5, i64 24, !102, i64 32}
!160 = !{!159, !5, i64 24}
!161 = !{!162, !163, i64 0}
!162 = !{!"_ZTSSt12__shared_ptrIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEELN9__gnu_cxx12_Lock_policyE2EE", !163, i64 0, !31, i64 8}
!163 = !{!"p1 _ZTSN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIisEE", !12, i64 0}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!166 = distinct !{!166, !"_ZSt11make_sharedIN2cv12cpu_baseline12_GLOBAL__N_19ColumnSumIdsEEJRKiS6_RKdEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
end_hunk_14
