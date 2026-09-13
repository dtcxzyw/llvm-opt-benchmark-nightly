Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tiff?download=true
inline.NumInlined: 40
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6LibRaw10apply_tiffEv:bb.a
bb.f:                                             ; preds = %.prol.preheader
  store float %i.ag, ptr %i.ab, align 4, !tbaa !117
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.f, %.prol.preheader
  %i.ai = phi float [ %i.ag, %bb.f ], [ %.promoted, %.prol.preheader ] ; 2 uses
  store float %i.ai, ptr %i.af, align 4, !tbaa !118
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi float [ %.promoted, %.lr.ph ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i32 %i.aa, 1
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.j ], [ %indvars.iv.unr, %.prol.loopexit ] ; 2 uses
  %i.ak = phi float [ %i.au, %bb.j ], [ %.unr, %.prol.loopexit ]
  %i.al = getelementptr [33472 x i8], ptr %0, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 400164 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !118 ; 3 uses
  %i.ao = fcmp une float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.new
  store float %i.an, ptr %i.ab, align 4, !tbaa !117
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.new
  %i.ap = phi float [ %i.an, %bb.g ], [ %i.ak, %.lr.ph.new ] ; 2 uses
  store float %i.ap, ptr %i.am, align 4, !tbaa !118
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.aq = getelementptr [33472 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ar = getelementptr i8, ptr %i.aq, i64 433636 ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !118 ; 3 uses
  %i.at = fcmp une float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.as, ptr %i.ab, align 4, !tbaa !117
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi float [ %i.as, %bb.i ], [ %i.ap, %bb.h ] ; 2 uses
  store float %i.au, ptr %i.ar, align 4, !tbaa !118
  %.not384.1 = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %.not384.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !284

._crit_edge:                                      ; preds = %bb.j, %.prol.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !85
  %.not385 = icmp eq i32 %i.aw, 0
  br i1 %.not385, label %bb.ao, label %.preheader593

._crit_edge.thread:                               ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !85
  %.not385747 = icmp eq i32 %i.ay, 0
  br i1 %.not385747, label %bb.ao, label %.thread546

.preheader593:                                    ; preds = %._crit_edge
  %i.az = icmp sgt i32 %i.aa, 0
  br i1 %i.az, label %.lr.ph598, label %.thread546

.lr.ph598:                                        ; preds = %.preheader593
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 433512
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5552 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 384256 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph598, %.thread539
  %indvars.iv648 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next649, %.thread539 ] ; 3 uses
  %.0597 = phi i32 [ 0, %.lr.ph598 ], [ %.1, %.thread539 ] ; 3 uses
  %.0324596 = phi i32 [ 0, %.lr.ph598 ], [ %.3327, %.thread539 ] ; 10 uses
  %i.bd = getelementptr inbounds nuw [33472 x i8], ptr %i.ba, i64 %indvars.iv648 ; 5 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !91
  %i.bf = add i32 %i.be, -65536
  %or.cond512 = icmp ult i32 %i.bf, -65535
  br i1 %or.cond512, label %.thread539, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !92
  %i.bi = add i32 %i.bh, -65536
  %or.cond513 = icmp ult i32 %i.bi, -65535
  br i1 %or.cond513, label %.thread539, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 2
  %spec.store.select = select i1 %i.bl, i32 1, i32 %i.bk
  %i.bm = call i32 @llvm.smax.i32(i32 %.0597, i32 %spec.store.select)
  %i.bn = call i32 @llvm.smax.i32(i32 %i.bm, i32 1)
  %i.bo = call i32 @llvm.umin.i32(i32 %i.bn, i32 3) ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 33464 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !99 ; 5 uses
  switch i32 %i.bq, label %bb.n [
    i32 16, label %bb.o
    i32 0, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.br = and i32 %i.bq, 65535
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !86
  switch i32 %i.bu, label %.thread539 [
    i32 32803, label %bb.p
    i32 34892, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.n
  switch i32 %i.bq, label %bb.r [
    i32 0, label %bb.u
    i32 16, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bv = load i32, ptr %i.bb, align 8, !tbaa !298
  %i.bw = and i32 %i.bv, 512
  %.not509 = icmp eq i32 %i.bw, 0
  br i1 %.not509, label %.thread539, label %bb.u

bb.r:                                             ; preds = %bb.p
  %trunc = trunc i32 %i.bq to i16
  switch i16 %trunc, label %.thread539 [
    i16 1, label %bb.s
    i16 4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bx = load i32, ptr %i.bb, align 8, !tbaa !298
  %i.by = and i32 %i.bx, 1024
  %.not510 = icmp eq i32 %i.by, 0
  br i1 %.not510, label %.thread539, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bz = load i32, ptr %i.bb, align 8, !tbaa !298
  %i.ca = and i32 %i.bz, 4194304
  %.not511 = icmp eq i32 %i.ca, 0
  br i1 %.not511, label %.thread539, label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t, %bb.s, %bb.q
  %i.cb = shl i32 %i.bq, 16
  %i.cc = trunc nuw nsw i64 %indvars.iv648 to i32
  %i.cd = shl i32 %i.cc, 8
  %i.ce = and i32 %i.cd, 65280                    ; 2 uses
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = sext i32 %.0324596 to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cg
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !74
  %i.ci = add nsw i32 %.0324596, 1                ; 3 uses
  %i.cj = load i32, ptr %i.bp, align 8, !tbaa !99
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.v, label %.thread539

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %i.bj, align 8, !tbaa !90
  %i.cm = icmp eq i32 %i.cl, 2
  br i1 %i.cm, label %bb.w, label %.thread539

bb.w:                                             ; preds = %bb.v
  %i.cn = or disjoint i32 %i.ce, 1
  %i.co = sext i32 %i.ci to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !74
  %i.cq = add nsw i32 %.0324596, 2
  br label %.thread539

.thread539:                                       ; preds = %bb.r, %bb.q, %bb.s, %bb.o, %bb.u, %bb.v, %bb.w, %bb.t, %bb.k, %bb.l
  %.3327 = phi i32 [ %.0324596, %bb.k ], [ %.0324596, %bb.l ], [ %.0324596, %bb.o ], [ %i.cq, %bb.w ], [ %i.ci, %bb.v ], [ %i.ci, %bb.u ], [ %.0324596, %bb.t ], [ %.0324596, %bb.r ], [ %.0324596, %bb.s ], [ %.0324596, %bb.q ] ; 7 uses
  %.1 = phi i32 [ %.0597, %bb.k ], [ %.0597, %bb.l ], [ %i.bo, %bb.o ], [ %i.bo, %bb.w ], [ %i.bo, %bb.v ], [ %i.bo, %bb.u ], [ %i.bo, %bb.t ], [ %i.bo, %bb.r ], [ %i.bo, %bb.s ], [ %i.bo, %bb.q ] ; 3 uses
  %indvars.iv.next649 = add nuw nsw i64 %indvars.iv648, 1 ; 2 uses
  %i.cr = load i32, ptr %i.z, align 8, !tbaa !70
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next649, %i.cs
  br i1 %i.ct, label %bb.k, label %._crit_edge599, !llvm.loop !285

._crit_edge599:                                   ; preds = %.thread539
  %.not393 = icmp eq i32 %.3327, 0
  br i1 %.not393, label %.thread546, label %bb.x

bb.x:                                             ; preds = %._crit_edge599
  %i.cu = icmp sgt i32 %.3327, 1
  br i1 %i.cu, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !298
  %i.cx = and i32 %i.cw, 2048
  %.not394 = icmp eq i32 %i.cx, 0
  br i1 %.not394, label %bb.ac, label %.lr.ph603

.lr.ph603:                                        ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %2, i8 0, i64 320, i1 false)
  %i.cy = call i32 @llvm.umin.i32(i32 %.3327, i32 20) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 384256
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 433512
  %wide.trip.count = zext nneg i32 %i.cy to i64   ; 4 uses
  br label %bb.z

.lr.ph609:                                        ; preds = %bb.ab
  call void @qsort(ptr noundef nonnull %2, i64 noundef %wide.trip.count, i64 noundef 16, ptr noundef nonnull @_Z14ifd_size_t_cmpPKvS0_)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 384256 ; 2 uses
  %wide.trip.count657 = zext nneg i32 %i.cy to i64
  %min.iters.check = icmp ult i32 %.3327, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph609
  %indvars.iv654.ph = phi i64 [ 0, %.lr.ph609 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph609
  %i.dc = and i64 %wide.trip.count, 7             ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  %i.de = select i1 %i.dd, i64 8, i64 %i.dc
  %n.vec = sub nsw i64 %wide.trip.count, %i.de    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 112
  %i.du = load i32, ptr %i.df, align 16, !tbaa !299
  %i.dv = load i32, ptr %i.dh, align 16, !tbaa !299
  %i.dw = load i32, ptr %i.dj, align 16, !tbaa !299
  %i.dx = load i32, ptr %i.dl, align 16, !tbaa !299
  %i.dy = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %i.dz = insertelement <4 x i32> %i.dy, i32 %i.dv, i64 1
  %i.ea = insertelement <4 x i32> %i.dz, i32 %i.dw, i64 2
  %i.eb = insertelement <4 x i32> %i.ea, i32 %i.dx, i64 3
  %i.ec = load i32, ptr %i.dn, align 16, !tbaa !299
  %i.ed = load i32, ptr %i.dp, align 16, !tbaa !299
  %i.ee = load i32, ptr %i.dr, align 16, !tbaa !299
  %i.ef = load i32, ptr %i.dt, align 16, !tbaa !299
  %i.eg = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %i.eh = insertelement <4 x i32> %i.eg, i32 %i.ed, i64 1
  %i.ei = insertelement <4 x i32> %i.eh, i32 %i.ee, i64 2
  %i.ej = insertelement <4 x i32> %i.ei, i32 %i.ef, i64 3
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <4 x i32> %i.eb, ptr %i.ek, align 8, !tbaa !74
  store <4 x i32> %i.ej, ptr %i.el, align 8, !tbaa !74
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %scalar.ph.preheader, label %vector.body, !llvm.loop !286

bb.z:                                             ; preds = %.lr.ph603, %bb.ab
  %indvars.iv651 = phi i64 [ 0, %.lr.ph603 ], [ %indvars.iv.next652, %bb.ab ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv651
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !74 ; 3 uses
  %i.ep = lshr i32 %i.eo, 8
  %i.eq = and i32 %i.ep, 255
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv651 ; 2 uses
  store i32 %i.eo, ptr %i.er, align 16, !tbaa !299
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [33472 x i8], ptr %i.da, i64 %i.es ; 5 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !91
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !92
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i64 %i.ey, %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !90
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul nsw i64 %i.ez, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !84
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul nsw i64 %i.fd, %i.fg
  %i.fi = and i32 %i.eo, 255
  %i.fj = sub nuw nsw i32 256, %i.fi
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = add nsw i64 %i.fh, %i.fk                ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !123
  %i.fn = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !86
  %i.fp = icmp eq i32 %i.fo, 4
  br i1 %i.fp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fq = sdiv i64 %i.fl, 4
  store i64 %i.fq, ptr %i.fm, align 8, !tbaa !123
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph609, label %bb.z, !llvm.loop !287

._crit_edge610:                                   ; preds = %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.ac

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv654 = phi i64 [ %indvars.iv.next655, %scalar.ph ], [ %indvars.iv654.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv654
  %i.fs = load i32, ptr %i.fr, align 16, !tbaa !299
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv654
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !74
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next655, %wide.trip.count657
  br i1 %exitcond658.not, label %._crit_edge610, label %scalar.ph, !llvm.loop !288

bb.ac:                                            ; preds = %._crit_edge610, %bb.y, %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !300
  %i.fw = add nsw i32 %.3327, -1
  %. = call i32 @llvm.smin.i32(i32 %i.fv, i32 %i.fw)
  %spec.select579 = call i32 @llvm.smax.i32(i32 %., i32 0)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 384256
  %i.fy = zext nneg i32 %spec.select579 to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !74
  %i.gb = lshr i32 %i.ga, 8
  %i.gc = and i32 %i.gb, 255                      ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 433512
  %i.ge = zext nneg i32 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [33472 x i8], ptr %i.gd, i64 %i.ge ; 16 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !91
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.gh, ptr %i.gj, align 2, !tbaa !114
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !92
  %i.gm = trunc i32 %i.gl to i16
  store i16 %i.gm, ptr %i.gi, align 8, !tbaa !101
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.gp = load <2 x i32>, ptr %i.gn, align 8, !tbaa !74
  %i.gq = load i32, ptr %i.gn, align 8, !tbaa !84 ; 2 uses
  store <2 x i32> %i.gp, ptr %i.go, align 4, !tbaa !74
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !110 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 381844
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !301
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !83
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !109
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !108
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 381800
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !302
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !104
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 381716
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !303
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !90 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 381832
  store i32 %i.he, ptr %i.hf, align 8, !tbaa !304
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 381852
  %i.hi = load <2 x i32>, ptr %i.hg, align 8, !tbaa !74
  store <2 x i32> %i.hi, ptr %i.hh, align 4, !tbaa !74
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gf, i64 120
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !121
  %i.hl = trunc i32 %i.hk to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 381670
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !120
  %.not395 = icmp eq i32 %i.he, 2
  br i1 %.not395, label %.thread540, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !86 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 34892
  br i1 %i.hp, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not396 = icmp ne i32 %i.gc, 0
  %i.hq = icmp eq i32 %i.ho, 32803
  %or.cond516 = and i1 %.not396, %i.hq
  br i1 %or.cond516, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 433528
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !86
  %i.ht = icmp eq i32 %i.hs, 32803
  br i1 %i.ht, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gf, i64 100
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !115
  %.not397 = icmp eq i32 %i.hv, 0
  br i1 %.not397, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 433612
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !115 ; 2 uses
  %.not398 = icmp eq i32 %i.hx, 0
  br i1 %.not398, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gf, i64 100
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !115
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ad, %bb.ai
  %.sink761 = phi i32 [ 0, %bb.ad ], [ %i.hz, %bb.ai ], [ %i.hx, %bb.ah ]
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %.sink761, ptr %i.ia, align 8, !tbaa !94
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gf, i64 104
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.id = load <4 x i32>, ptr %i.ib, align 8, !tbaa !74
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.if = trunc <4 x i32> %i.ie to <4 x i16>
  store <4 x i16> %i.if, ptr %i.ic, align 4, !tbaa !93
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gf, i64 124
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !118
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 192692
  store float %i.ih, ptr %i.ii, align 4, !tbaa !117
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gf, i64 33332
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !74 ; 2 uses
  %.not399 = icmp eq i32 %i.ik, 0
  br i1 %.not399, label %bb.ak, label %.thread540.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.il = icmp slt i32 %i.gs, 3
  br i1 %i.il, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.im = add i32 %i.gq, -1
  %or.cond517 = icmp ult i32 %i.im, 31
  br i1 %or.cond517, label %bb.am, label %.thread540

bb.am:                                            ; preds = %bb.al
  %notmask = shl nsw i32 -1, %i.gq
  %i.in = xor i32 %notmask, -1
  br label %.thread540.sink.split

bb.an:                                            ; preds = %bb.ak
  %i.io = icmp eq i32 %i.gs, 3
  br i1 %i.io, label %.thread540.sink.split, label %.thread540

.thread540.sink.split:                            ; preds = %bb.an, %bb.aj, %bb.am
  %.sink763 = phi i32 [ %i.in, %bb.am ], [ %i.ik, %bb.aj ], [ 1, %bb.an ]
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %.sink763, ptr %i.ip, align 8, !tbaa !111
  br label %.thread540

.thread540:                                       ; preds = %.thread540.sink.split, %bb.al, %bb.an, %bb.ac
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 %.3327, ptr %i.iq, align 8, !tbaa !77
  br label %bb.bn

.thread546:                                       ; preds = %._crit_edge.thread, %.preheader593, %._crit_edge599
  %.0.lcssa751 = phi i32 [ %.1, %._crit_edge599 ], [ 0, %.preheader593 ], [ 0, %._crit_edge.thread ]
  %i.ir = phi ptr [ %i.av, %._crit_edge599 ], [ %i.av, %.preheader593 ], [ %i.ax, %._crit_edge.thread ]
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.is, align 8, !tbaa !77
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 384232
  br label %bb.bv

bb.ao:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.iu = phi ptr [ %i.ax, %._crit_edge.thread ], [ %i.av, %._crit_edge ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.iw = call i32 @strncasecmp(ptr noundef nonnull %i.iv, ptr noundef nonnull @.str.54, i64 noundef 4) #15
  %.not386 = icmp eq i32 %i.iw, 0
  %i.ix = icmp sgt i32 %i.aa, 0                   ; 2 uses
  %or.cond644 = and i1 %.not386, %i.ix
  br i1 %or.cond644, label %.lr.ph614, label %.loopexit592

.lr.ph614:                                        ; preds = %bb.ao
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 433512
  %wide.trip.count663 = zext nneg i32 %i.aa to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph614, %bb.as
  %indvars.iv660 = phi i64 [ 0, %.lr.ph614 ], [ %indvars.iv.next661, %bb.as ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [33472 x i8], ptr %i.iy, i64 %indvars.iv660 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !84
  %i.jc = icmp sgt i32 %i.jb, 33
  br i1 %i.jc, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !90
  %i.jf = icmp eq i32 %i.je, 1
  br i1 %i.jf, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 33332
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !74 ; 17 uses
  %.not387 = icmp eq i32 %i.jh, 0
  br i1 %.not387, label %.loopexit, label %.preheader590.preheader

.preheader590.preheader:                          ; preds = %bb.ar
  %i.ji = icmp slt i32 %i.jh, 1
  br i1 %i.ji, label %.loopexit, label %.preheader590.1

.preheader590.1:                                  ; preds = %.preheader590.preheader
  %i.jj = icmp eq i32 %i.jh, 1
  br i1 %i.jj, label %.loopexit, label %.preheader590.2

.preheader590.2:                                  ; preds = %.preheader590.1
  %i.jk = icmp samesign ult i32 %i.jh, 4
  br i1 %i.jk, label %.loopexit, label %.preheader590.3

end_hunk_0
