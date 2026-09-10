Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aom_film_grain?download=true
inline.NumInlined: 164
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0_@fguv_32x32xn_c_8:bb.a
  %.not525 = or i1 %i.f, %i.e                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = zext i32 %8 to i64                       ; 3 uses
  %wide.trip.count = select i1 %.not525, i64 1, i64 2 ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  br i1 %.not525, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count, 2
  br label %bb.b

.preheader387.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader387, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader387.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %.preheader387.unr-lcssa ] ; 2 uses
  %lcmp.mod529 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.n = sub nsw i64 %i.l, %indvars.iv.epil.init  ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = mul i32 %i.o, 9472
  %i.q = add i32 %i.p, 45568
  %i.r = and i32 %i.q, 65280
  %i.s = trunc i64 %i.n to i32
  %i.t = mul i32 %i.s, 173
  %i.u = add i32 %i.t, 105
  %i.v = and i32 %i.u, 255
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = xor i32 %i.w, %i.k
  store i32 %i.x, ptr %i.m, align 4, !tbaa !29
  br label %.preheader387

.preheader387:                                    ; preds = %.preheader387.unr-lcssa, %.epil.preheader
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %.not348 = icmp eq i32 %12, 0
  %i.y = select i1 %.not348, i32 240, i32 235
  %.0342 = select i1 %.not, i32 0, i32 16         ; 8 uses
  %.0341 = select i1 %.not, i32 255, i32 %i.y     ; 4 uses
  %.not435 = icmp eq i64 %4, 0
  br i1 %.not435, label %._crit_edge434, label %.lr.ph433

.lr.ph433:                                        ; preds = %.preheader387
  %i.z = lshr i32 32, %13                         ; 3 uses
  %i.aa = trunc nsw i64 %4 to i32
  %i.ab = icmp ne i32 %8, 0
  %i.ac = lshr i32 2, %14                         ; 7 uses
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %7)
  %i.ae = lshr i32 2, %13                         ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.not355 = icmp eq i32 %13, 0                   ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ai = zext nneg i32 %11 to i64                ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 4 uses
  %i.ap = add nuw nsw i32 %i.z, 3                 ; 2 uses
  %i.aq = zext nneg i32 %13 to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr @fguv_32x32xn_c_16.w, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.at = lshr i32 32, %14
  %invariant.op428 = add nuw nsw i32 %i.at, 3     ; 2 uses
  %i.au = zext nneg i32 %14 to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr @fguv_32x32xn_c_16.w, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ax = zext nneg i32 %invariant.op428 to i64
  %wide.trip.count458 = sext i32 %7 to i64
  %n.vec515 = and i64 %wide.trip.count, 2
  %n.vec = and i64 %wide.trip.count, 2
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.az = sub nsw i64 %i.l, %indvars.iv           ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = mul i32 %i.ba, 9472
  %i.bc = add i32 %i.bb, 45568
  %i.bd = and i32 %i.bc, 65280
  %i.be = trunc i64 %i.az to i32
  %i.bf = mul i32 %i.be, 173
  %i.bg = add i32 %i.bf, 105
  %i.bh = and i32 %i.bg, 255
  %i.bi = or disjoint i32 %i.bh, %i.bd
  %i.bj = xor i32 %i.bi, %i.k
  store i32 %i.bj, ptr %i.ay, align 4, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.bl = sub nsw i64 %i.l, %indvars.iv.next      ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = mul i32 %i.bm, 9472
  %i.bo = add i32 %i.bn, 45568
  %i.bp = and i32 %i.bo, 65280
  %i.bq = trunc i64 %i.bl to i32
  %i.br = mul i32 %i.bq, 173
  %i.bs = add i32 %i.br, 105
  %i.bt = and i32 %i.bs, 255
  %i.bu = or disjoint i32 %i.bt, %i.bp
  %i.bv = xor i32 %i.bu, %i.k
  store i32 %i.bv, ptr %i.bk, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader387.unr-lcssa, label %bb.b, !llvm.loop !168

._crit_edge434:                                   ; preds = %._crit_edge425, %.preheader387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.c:                                             ; preds = %.lr.ph433, %._crit_edge425
  %i.bw = phi i64 [ 0, %.lr.ph433 ], [ %i.kw, %._crit_edge425 ] ; 4 uses
  %.0339432 = phi i32 [ 0, %.lr.ph433 ], [ %i.kv, %._crit_edge425 ] ; 7 uses
  %i.bx = sub i32 %i.aa, %.0339432
  %. = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.bx) ; 5 uses
  %i.by = load i32, ptr %i.c, align 8, !tbaa !45
  %i.bz = icmp ne i32 %i.by, 0                    ; 2 uses
  %or.cond = and i1 %i.ab, %i.bz
  %i.ca = select i1 %or.cond, i32 %i.ad, i32 0    ; 4 uses
  %i.cb = icmp ne i32 %.0339432, 0
  %or.cond3 = and i1 %i.cb, %i.bz                 ; 2 uses
  %i.cc = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %.)
  %i.cd = select i1 %or.cond3, i32 %i.cc, i32 0   ; 8 uses
  br i1 %or.cond3, label %.preheader386.preheader, label %.loopexit

.preheader386.preheader:                          ; preds = %bb.c
  br i1 %.not525, label %.preheader386, label %vector.body516

vector.body516:                                   ; preds = %.preheader386.preheader, %vector.body516
  %index517 = phi i64 [ %index.next519, %vector.body516 ], [ 0, %.preheader386.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index517
  %wide.load518 = load <2 x i32>, ptr %i.ce, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index517
  store <2 x i32> %wide.load518, ptr %i.cf, align 8, !tbaa !29
  %index.next519 = add nuw i64 %index517, 2       ; 2 uses
  %i.cg = icmp eq i64 %index.next519, %n.vec515
  br i1 %i.cg, label %.loopexit, label %vector.body516, !llvm.loop !169

.preheader386:                                    ; preds = %.preheader386.preheader, %.preheader386
  %indvars.iv437 = phi i64 [ %indvars.iv.next438, %.preheader386 ], [ 0, %.preheader386.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv437
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !29
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv437
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !29
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond441.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count
  br i1 %exitcond441.not, label %.loopexit, label %.preheader386, !llvm.loop !170

.loopexit:                                        ; preds = %vector.body516, %.preheader386, %bb.c
  br i1 %.not525, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.loopexit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.loopexit ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.ck, align 4, !tbaa !29 ; 4 uses
  %i.cl = ashr <2 x i32> %wide.load, splat (i32 1) ; 2 uses
  %i.cm = lshr <2 x i32> %wide.load, splat (i32 3)
  %i.cn = lshr <2 x i32> %wide.load, splat (i32 12)
  %i.co = xor <2 x i32> %i.cm, %i.cn
  %i.cp = xor <2 x i32> %i.co, %wide.load
  %i.cq = xor <2 x i32> %i.cp, %i.cl
  %i.cr = shl <2 x i32> %i.cq, splat (i32 15)
  %i.cs = and <2 x i32> %i.cr, splat (i32 32768)
  %i.ct = or <2 x i32> %i.cs, %i.cl               ; 2 uses
  store <2 x i32> %i.ct, ptr %i.ck, align 4, !tbaa !29
  %i.cu = lshr <2 x i32> %i.ct, splat (i32 8)
  %i.cv = and <2 x i32> %i.cu, splat (i32 255)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <2 x i32> %i.cv, ptr %i.cw, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %.preheader385, label %vector.body, !llvm.loop !171

.preheader385:                                    ; preds = %vector.body, %scalar.ph
  %i.cy = icmp slt i32 %i.ca, %7
  br i1 %i.cy, label %.preheader383.lr.ph, label %.preheader384

.preheader383.lr.ph:                              ; preds = %.preheader385
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.bw ; 2 uses
  %invariant.gep391 = getelementptr i8, ptr %0, i64 %i.bw ; 2 uses
  %i.cz = icmp slt i32 %i.cd, %.
  %i.da = load i32, ptr %i.b, align 16            ; 2 uses
  %i.db = ashr i32 %i.da, 4
  %i.dc = add nsw i32 %i.db, 3
  %i.dd = mul nsw i32 %i.dc, %i.ae
  %i.de = and i32 %i.da, 15
  %i.df = add nuw nsw i32 %i.de, 3
  %i.dg = mul nuw nsw i32 %i.df, %i.ac            ; 2 uses
  %invariant.op = add nsw i32 %i.dd, 3            ; 2 uses
  %i.dh = icmp sgt i32 %i.cd, 0
  %i.di = load i32, ptr %i.af, align 8            ; 2 uses
  %i.dj = ashr i32 %i.di, 4
  %i.dk = add nsw i32 %i.dj, 3
  %i.dl = mul nsw i32 %i.dk, %i.ae
  %i.dm = and i32 %i.di, 15
  %i.dn = add nuw nsw i32 %i.dm, 3
  %i.do = mul nuw nsw i32 %i.dn, %i.ac
  %invariant.op402 = add nsw i32 %i.ap, %i.dl
  %i.dp = sext i32 %i.cd to i64
  %i.dq = sext i32 %. to i64
  %i.dr = sext i32 %i.ca to i64
  %15 = zext nneg i32 %i.dg to i64
  %i.ds = zext nneg i32 %i.do to i64
  %i.dt = zext nneg i32 %i.dg to i64
  %invariant.gep497 = getelementptr [82 x i8], ptr %6, i64 %i.dt
  %invariant.gep496 = getelementptr [82 x i8], ptr %6, i64 %15
  %invariant.gep498 = getelementptr [82 x i8], ptr %6, i64 %i.ds
  %wide.trip.count453 = zext nneg i32 %i.cd to i64
  br label %.preheader383

scalar.ph:                                        ; preds = %.loopexit, %scalar.ph
  %indvars.iv442 = phi i64 [ %indvars.iv.next443, %scalar.ph ], [ 0, %.loopexit ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv442 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !29 ; 4 uses
  %i.dw = ashr i32 %i.dv, 1                       ; 2 uses
  %i.dx = lshr i32 %i.dv, 3
  %i.dy = lshr i32 %i.dv, 12
  %i.dz = xor i32 %i.dx, %i.dy
  %i.ea = xor i32 %i.dz, %i.dv
  %i.eb = xor i32 %i.ea, %i.dw
  %i.ec = shl i32 %i.eb, 15
  %i.ed = and i32 %i.ec, 32768
  %i.ee = or i32 %i.ed, %i.dw                     ; 2 uses
  store i32 %i.ee, ptr %i.du, align 4, !tbaa !29
  %i.ef = lshr i32 %i.ee, 8
  %i.eg = and i32 %i.ef, 255
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv442
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !29
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next443, %wide.trip.count
  br i1 %exitcond446.not, label %.preheader385, label %scalar.ph, !llvm.loop !172

.preheader384:                                    ; preds = %._crit_edge, %.preheader385
  %i.ei = icmp sgt i32 %i.ca, 0
  br i1 %i.ei, label %.preheader381.lr.ph, label %._crit_edge425

.preheader381.lr.ph:                              ; preds = %.preheader384
  %invariant.gep409 = getelementptr i8, ptr %1, i64 %i.bw ; 2 uses
  %invariant.gep411 = getelementptr i8, ptr %0, i64 %i.bw ; 2 uses
  %i.ej = icmp slt i32 %i.cd, %.
  %i.ek = load i32, ptr %i.b, align 16            ; 2 uses
  %i.el = ashr i32 %i.ek, 4
  %i.em = add nsw i32 %i.el, 3
  %i.en = mul nsw i32 %i.em, %i.ae                ; 2 uses
  %i.eo = and i32 %i.ek, 15
  %i.ep = add nuw nsw i32 %i.eo, 3
  %i.eq = mul nuw nsw i32 %i.ep, %i.ac            ; 2 uses
  %i.er = load i32, ptr %i.as, align 4            ; 2 uses
  %i.es = ashr i32 %i.er, 4
  %i.et = add nsw i32 %i.es, 3
  %i.eu = mul nsw i32 %i.et, %i.ae                ; 2 uses
  %i.ev = and i32 %i.er, 15
  %i.ew = add nuw nsw i32 %i.ev, 3
  %i.ex = mul nuw nsw i32 %i.ew, %i.ac            ; 2 uses
  %invariant.op429 = add nuw nsw i32 %invariant.op428, %i.ex
  %i.ey = icmp sgt i32 %i.cd, 0
  %i.ez = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.fa = ashr i32 %i.ez, 4
  %i.fb = add nsw i32 %i.fa, 3
  %i.fc = mul nsw i32 %i.fb, %i.ae
  %i.fd = and i32 %i.ez, 15
  %i.fe = add nuw nsw i32 %i.fd, 3
  %i.ff = mul nuw nsw i32 %i.fe, %i.ac
  %i.fg = load i32, ptr %i.af, align 8            ; 2 uses
  %i.fh = ashr i32 %i.fg, 4
  %i.fi = add nsw i32 %i.fh, 3
  %i.fj = mul nsw i32 %i.fi, %i.ae
  %i.fk = and i32 %i.fg, 15
  %i.fl = add nuw nsw i32 %i.fk, 3
  %i.fm = mul nuw nsw i32 %i.fl, %i.ac
  %i.fn = sext i32 %i.cd to i64
  %i.fo = sext i32 %. to i64
  %i.fp = zext nneg i32 %i.eq to i64
  %i.fq = zext nneg i32 %i.fm to i64
  %i.fr = zext nneg i32 %invariant.op429 to i64
  %i.fs = zext nneg i32 %i.ex to i64
  %i.ft = zext nneg i32 %i.ff to i64
  %wide.trip.count474 = zext nneg i32 %i.ca to i64
  %i.fu = zext nneg i32 %i.eq to i64
  %invariant.gep500 = getelementptr inbounds nuw [82 x i8], ptr %6, i64 %i.fu
  %invariant.gep502 = getelementptr inbounds nuw [82 x i8], ptr %6, i64 %i.fr
  %invariant.gep504 = getelementptr inbounds nuw [82 x i8], ptr %6, i64 %i.fs
  %invariant.gep506 = getelementptr inbounds nuw [82 x i8], ptr %6, i64 %i.ft
  %invariant.gep508 = getelementptr inbounds nuw [82 x i8], ptr %6, i64 %i.fp
  %invariant.gep510 = getelementptr inbounds nuw [82 x i8], ptr %6, i64 %i.fq
  %wide.trip.count466 = zext nneg i32 %i.cd to i64
  br label %.preheader381

.preheader383:                                    ; preds = %.preheader383.lr.ph, %._crit_edge
  %indvars.iv455 = phi i64 [ %i.dr, %.preheader383.lr.ph ], [ %indvars.iv.next456, %._crit_edge ] ; 7 uses
  br i1 %i.cz, label %.lr.ph, label %.preheader382

.lr.ph:                                           ; preds = %.preheader383
  %gep498 = getelementptr [82 x i8], ptr %invariant.gep497, i64 %indvars.iv455
  %16 = getelementptr i8, ptr %gep498, i64 246
  %17 = trunc nsw i64 %indvars.iv455 to i32
  %i.fv = shl i32 %17, %14
  %i.fw = sext i32 %i.fv to i64
  %i.fx = mul nsw i64 %10, %i.fw
  %i.fy = getelementptr inbounds i8, ptr %9, i64 %i.fx
  %i.fz = mul nsw i64 %2, %indvars.iv455          ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fz
  %gep392 = getelementptr i8, ptr %invariant.gep391, i64 %i.fz
  br label %bb.d

.preheader382:                                    ; preds = %bb.h, %.preheader383
  br i1 %i.dh, label %.lr.ph399, label %._crit_edge

.lr.ph399:                                        ; preds = %.preheader382
  %i.ga = add nsw i64 %indvars.iv455, 3           ; 2 uses
  %gep497 = getelementptr [82 x i8], ptr %invariant.gep496, i64 %i.ga
  %gep499 = getelementptr [82 x i8], ptr %invariant.gep498, i64 %i.ga
  %i.gb = trunc nsw i64 %indvars.iv455 to i32
  %i.gc = shl i32 %i.gb, %14
  %i.gd = sext i32 %i.gc to i64
  %i.ge = mul nsw i64 %10, %i.gd
  %i.gf = getelementptr inbounds i8, ptr %9, i64 %i.ge
  %i.gg = mul nsw i64 %2, %indvars.iv455          ; 2 uses
  %gep395 = getelementptr i8, ptr %invariant.gep, i64 %i.gg
  %gep397 = getelementptr i8, ptr %invariant.gep391, i64 %i.gg
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv447 = phi i64 [ %i.dp, %.lr.ph ], [ %indvars.iv.next448, %bb.h ] ; 4 uses
  %i.gh = trunc nsw i64 %indvars.iv447 to i32     ; 2 uses
  %.reass = add i32 %invariant.op, %i.gh
  %i.gi = sext i32 %.reass to i64
  %i.gj = getelementptr inbounds i8, ptr %16, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !27
  %i.gl = sext i8 %i.gk to i32
  %i.gm = add i32 %.0339432, %i.gh
  %i.gn = shl i32 %i.gm, %13
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %i.fy, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !27  ; 2 uses
  br i1 %.not355, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gr = zext i8 %i.gq to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !27
  %i.gu = zext i8 %i.gt to i16
  %i.gv = add nuw nsw i16 %i.gr, 1
  %i.gw = add nuw nsw i16 %i.gv, %i.gu
  %i.gx = lshr i16 %i.gw, 1
  %i.gy = trunc nuw i16 %i.gx to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0334 = phi i8 [ %i.gy, %bb.e ], [ %i.gq, %bb.d ]
  %i.gz = getelementptr inbounds i8, ptr %gep, i64 %indvars.iv447
  %i.ha = getelementptr inbounds i8, ptr %gep392, i64 %indvars.iv447
  %i.hb = zext i8 %.0334 to i32                   ; 2 uses
  %i.hc = load i32, ptr %i.ag, align 8, !tbaa !40
  %.not356 = icmp eq i32 %i.hc, 0
  %.pre = load i8, ptr %i.gz, align 1, !tbaa !27  ; 2 uses
  br i1 %.not356, label %bb.g, label %._crit_edge482.a

._crit_edge482.a:                                 ; preds = %bb.f
  %.pre483 = zext i8 %.pre to i32
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.hd = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.he = mul nsw i32 %i.hd, %i.hb
  %i.hf = zext i8 %.pre to i32                    ; 2 uses
  %i.hg = load i32, ptr %i.al, align 4, !tbaa !29
  %i.hh = mul nsw i32 %i.hg, %i.hf
  %i.hi = add nsw i32 %i.hh, %i.he
  %i.hj = ashr i32 %i.hi, 6
  %i.hk = load i32, ptr %i.an, align 4, !tbaa !29
  %i.hl = add nsw i32 %i.hj, %i.hk
  %i.hm = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 0)
  %i.hn = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 255)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge482.a, %bb.g
  %.pre-phi = phi i32 [ %.pre483, %._crit_edge482.a ], [ %i.hf, %bb.g ]
  %.0335 = phi i32 [ %i.hb, %._crit_edge482.a ], [ %i.hn, %bb.g ]
  %i.ho = zext nneg i32 %.0335 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !27
  %i.hr = zext i8 %i.hq to i32
  %i.hs = mul nsw i32 %i.hr, %i.gl
  %i.ht = load i32, ptr %i.ao, align 4, !tbaa !47 ; 2 uses
  %i.hu = shl nuw i32 1, %i.ht
  %i.hv = ashr i32 %i.hu, 1
  %i.hw = add nsw i32 %i.hv, %i.hs
  %i.hx = ashr i32 %i.hw, %i.ht
  %i.hy = add nsw i32 %i.hx, %.pre-phi            ; 2 uses
  %i.hz = icmp slt i32 %i.hy, %.0342
  %..i377 = tail call i32 @llvm.smin.i32(i32 %i.hy, i32 %.0341)
  %.0.i378 = select i1 %i.hz, i32 %.0342, i32 %..i377
  %i.ia = trunc i32 %.0.i378 to i8
  store i8 %i.ia, ptr %i.ha, align 1, !tbaa !27
  %indvars.iv.next448 = add nsw i64 %indvars.iv447, 1 ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next448, %i.dq
  br i1 %i.ib, label %bb.d, label %.preheader382, !llvm.loop !173

._crit_edge:                                      ; preds = %bb.m, %.preheader382
  %indvars.iv.next456 = add nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.preheader384, label %.preheader383, !llvm.loop !174

bb.i:                                             ; preds = %.lr.ph399, %bb.m
  %indvars.iv450 = phi i64 [ 0, %.lr.ph399 ], [ %indvars.iv.next451, %bb.m ] ; 5 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv450 to i32 ; 3 uses
  %.reass401 = add i32 %invariant.op, %i.ic
  %i.id = sext i32 %.reass401 to i64
  %i.ie = getelementptr inbounds i8, ptr %gep497, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !27
  %i.ig = sext i8 %i.if to i32
  %.reass403 = add i32 %invariant.op402, %i.ic
  %i.ih = sext i32 %.reass403 to i64
  %i.ii = getelementptr inbounds i8, ptr %gep499, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !27
  %i.ik = sext i8 %i.ij to i32
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv450 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !29
  %i.in = mul nsw i32 %i.im, %i.ik
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !29
  %i.iq = mul nsw i32 %i.ip, %i.ig
  %i.ir = add i32 %i.in, 16
  %i.is = add i32 %i.ir, %i.iq
  %i.it = ashr i32 %i.is, 5
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 -128)
  %.0.i376 = tail call i32 @llvm.smin.i32(i32 %i.iu, i32 127)
  %i.iv = add i32 %.0339432, %i.ic
  %i.iw = shl i32 %i.iv, %13
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.gf, i64 %i.ix ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !27  ; 2 uses
  br i1 %.not355, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ja = zext i8 %i.iz to i16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !27
  %i.jd = zext i8 %i.jc to i16
  %i.je = add nuw nsw i16 %i.ja, 1
  %i.jf = add nuw nsw i16 %i.je, %i.jd
  %i.jg = lshr i16 %i.jf, 1
  %i.jh = trunc nuw i16 %i.jg to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i8 [ %i.jh, %bb.j ], [ %i.iz, %bb.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %gep395, i64 %indvars.iv450
  %i.jj = getelementptr inbounds nuw i8, ptr %gep397, i64 %indvars.iv450
  %i.jk = zext i8 %.1 to i32                      ; 2 uses
  %i.jl = load i32, ptr %i.ag, align 8, !tbaa !40
  %.not354 = icmp eq i32 %i.jl, 0
  %.pre476 = load i8, ptr %i.ji, align 1, !tbaa !27 ; 2 uses
  br i1 %.not354, label %bb.l, label %._crit_edge481.a

._crit_edge481.a:                                 ; preds = %bb.k
  %.pre484 = zext i8 %.pre476 to i32
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.jm = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.jn = mul nsw i32 %i.jm, %i.jk
  %i.jo = zext i8 %.pre476 to i32                 ; 2 uses
  %i.jp = load i32, ptr %i.al, align 4, !tbaa !29
  %i.jq = mul nsw i32 %i.jp, %i.jo
  %i.jr = add nsw i32 %i.jq, %i.jn
  %i.js = ashr i32 %i.jr, 6
  %i.jt = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ju = add nsw i32 %i.js, %i.jt
  %i.jv = tail call i32 @llvm.smax.i32(i32 %i.ju, i32 0)
  %i.jw = tail call i32 @llvm.umin.i32(i32 %i.jv, i32 255)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge481.a, %bb.l
  %.pre-phi485 = phi i32 [ %.pre484, %._crit_edge481.a ], [ %i.jo, %bb.l ]
  %.1336 = phi i32 [ %i.jk, %._crit_edge481.a ], [ %i.jw, %bb.l ]
  %i.jx = zext nneg i32 %.1336 to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !27
  %i.ka = zext i8 %i.jz to i32
  %i.kb = mul nsw i32 %.0.i376, %i.ka
  %i.kc = load i32, ptr %i.ao, align 4, !tbaa !47 ; 2 uses
  %i.kd = shl nuw i32 1, %i.kc
  %i.ke = ashr i32 %i.kd, 1
  %i.kf = add nsw i32 %i.ke, %i.kb
  %i.kg = ashr i32 %i.kf, %i.kc
  %i.kh = add nsw i32 %i.kg, %.pre-phi485         ; 2 uses
  %i.ki = icmp slt i32 %i.kh, %.0342
  %..i371 = tail call i32 @llvm.smin.i32(i32 %i.kh, i32 %.0341)
  %.0.i372 = select i1 %i.ki, i32 %.0342, i32 %..i371
  %i.kj = trunc i32 %.0.i372 to i8
  store i8 %i.kj, ptr %i.jj, align 1, !tbaa !27
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count453
  br i1 %exitcond454.not, label %._crit_edge, label %bb.i, !llvm.loop !175

.preheader381:                                    ; preds = %.preheader381.lr.ph, %._crit_edge423
  %indvars.iv468 = phi i64 [ 0, %.preheader381.lr.ph ], [ %indvars.iv.next469, %._crit_edge423 ] ; 11 uses
  br i1 %i.ej, label %.lr.ph414, label %.preheader

.lr.ph414:                                        ; preds = %.preheader381
  %gep501 = getelementptr inbounds nuw [82 x i8], ptr %invariant.gep500, i64 %indvars.iv468
  %i.kk = getelementptr inbounds nuw i8, ptr %gep501, i64 246
  %gep503 = getelementptr inbounds nuw [82 x i8], ptr %invariant.gep502, i64 %indvars.iv468
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv468 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !29
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !29
  %i.kp = trunc nuw nsw i64 %indvars.iv468 to i32
  %i.kq = shl i32 %i.kp, %14
  %i.kr = sext i32 %i.kq to i64
  %i.ks = mul nsw i64 %10, %i.kr
  %i.kt = getelementptr inbounds i8, ptr %9, i64 %i.ks
  %i.ku = mul nsw i64 %2, %indvars.iv468          ; 2 uses
  %gep410 = getelementptr i8, ptr %invariant.gep409, i64 %i.ku
  %gep412 = getelementptr i8, ptr %invariant.gep411, i64 %i.ku
  br label %bb.n

._crit_edge425:                                   ; preds = %._crit_edge423, %.preheader384
  %i.kv = add i32 %.0339432, %i.z                 ; 2 uses
  %i.kw = zext i32 %i.kv to i64                   ; 2 uses
  %i.kx = icmp ugt i64 %4, %i.kw
  br i1 %i.kx, label %bb.c, label %._crit_edge434, !llvm.loop !176

.preheader:                                       ; preds = %bb.r, %.preheader381
  br i1 %i.ey, label %.lr.ph422, label %._crit_edge423

end_hunk_0
begin_hunk_1_@fguv_32x32xn_c_16:bb.a
  %notmask = shl nsw i32 -1, %15
  %i.q = xor i32 %notmask, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0367 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.c ]  ; 8 uses
  %.0366 = phi i32 [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = zext i32 %8 to i64                       ; 3 uses
  %wide.trip.count = select i1 %i.g, i64 2, i64 1 ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  br i1 %i.g, label %.new, label %.epil.preheader

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %wide.trip.count, 2
  br label %bb.e

.preheader416.unr-lcssa:                          ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader416, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader416.unr-lcssa, %bb.d
  %indvars.iv.epil.init = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.1, %.preheader416.unr-lcssa ] ; 2 uses
  %lcmp.mod554 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod554)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.w = sub nsw i64 %i.u, %indvars.iv.epil.init  ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = mul i32 %i.x, 9472
  %i.z = add i32 %i.y, 45568
  %i.aa = and i32 %i.z, 65280
  %i.ab = trunc i64 %i.w to i32
  %i.ac = mul i32 %i.ab, 173
  %i.ad = add i32 %i.ac, 105
  %i.ae = and i32 %i.ad, 255
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = xor i32 %i.af, %i.t
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !29
  br label %.preheader416

.preheader416:                                    ; preds = %.preheader416.unr-lcssa, %.epil.preheader
  %.not464 = icmp eq i64 %4, 0
  br i1 %.not464, label %._crit_edge463, label %.lr.ph462

.lr.ph462:                                        ; preds = %.preheader416
  %i.ah = lshr i32 32, %13                        ; 3 uses
  %i.ai = trunc nsw i64 %4 to i32
  %i.aj = icmp ne i32 %8, 0
  %or.cond = and i1 %i.aj, %i.e
  %i.ak = lshr i32 2, %14                         ; 7 uses
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %7)
  %i.am = select i1 %or.cond, i32 %i.al, i32 0    ; 4 uses
  %i.an = lshr i32 2, %13                         ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ap = icmp slt i32 %i.am, %7
  %.not383 = icmp eq i32 %13, 0                   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.as = zext nneg i32 %11 to i64                ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.as ; 4 uses
  %notmask385 = shl nsw i32 -1, %15
  %i.ay = xor i32 %notmask385, -1                 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 4 uses
  %i.ba = add nuw nsw i32 %i.ah, 3                ; 2 uses
  %i.bb = zext nneg i32 %13 to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr @fguv_32x32xn_c_16.w, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %i.am, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bf = lshr i32 32, %14
  %invariant.op457 = add nuw nsw i32 %i.bf, 3     ; 2 uses
  %i.bg = zext nneg i32 %14 to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr @fguv_32x32xn_c_16.w, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bj = sext i32 %i.am to i64
  %i.bk = zext nneg i32 %invariant.op457 to i64
  %wide.trip.count487 = sext i32 %7 to i64
  %wide.trip.count503 = zext nneg i32 %i.am to i64
  %n.vec543 = and i64 %wide.trip.count, 2
  %n.vec = and i64 %wide.trip.count, 2
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.e ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bm = sub nsw i64 %i.u, %indvars.iv           ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = mul i32 %i.bn, 9472
  %i.bp = add i32 %i.bo, 45568
  %i.bq = and i32 %i.bp, 65280
  %i.br = trunc i64 %i.bm to i32
  %i.bs = mul i32 %i.br, 173
  %i.bt = add i32 %i.bs, 105
  %i.bu = and i32 %i.bt, 255
  %i.bv = or disjoint i32 %i.bu, %i.bq
  %i.bw = xor i32 %i.bv, %i.t
  store i32 %i.bw, ptr %i.bl, align 4, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.by = sub nsw i64 %i.u, %indvars.iv.next      ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = mul i32 %i.bz, 9472
  %i.cb = add i32 %i.ca, 45568
  %i.cc = and i32 %i.cb, 65280
  %i.cd = trunc i64 %i.by to i32
  %i.ce = mul i32 %i.cd, 173
  %i.cf = add i32 %i.ce, 105
  %i.cg = and i32 %i.cf, 255
  %i.ch = or disjoint i32 %i.cg, %i.cc
  %i.ci = xor i32 %i.ch, %i.t
  store i32 %i.ci, ptr %i.bx, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader416.unr-lcssa, label %bb.e, !llvm.loop !197

._crit_edge463:                                   ; preds = %._crit_edge454, %.preheader416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

bb.f:                                             ; preds = %.lr.ph462, %._crit_edge454
  %i.cj = phi i64 [ 0, %.lr.ph462 ], [ %i.lh, %._crit_edge454 ] ; 4 uses
  %.0364461 = phi i32 [ 0, %.lr.ph462 ], [ %i.lg, %._crit_edge454 ] ; 7 uses
  %i.ck = sub i32 %i.ai, %.0364461
  %. = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ck) ; 5 uses
  %i.cl = icmp ne i32 %.0364461, 0
  %or.cond3 = and i1 %i.e, %i.cl                  ; 2 uses
  %i.cm = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.)
  %i.cn = select i1 %or.cond3, i32 %i.cm, i32 0   ; 8 uses
  br i1 %or.cond3, label %.preheader415.preheader, label %.loopexit

.preheader415.preheader:                          ; preds = %bb.f
  br i1 %i.g, label %vector.body544, label %.preheader415

vector.body544:                                   ; preds = %.preheader415.preheader, %vector.body544
  %index545 = phi i64 [ %index.next547, %vector.body544 ], [ 0, %.preheader415.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index545
  %wide.load546 = load <2 x i32>, ptr %i.co, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index545
  store <2 x i32> %wide.load546, ptr %i.cp, align 8, !tbaa !29
  %index.next547 = add nuw i64 %index545, 2       ; 2 uses
  %i.cq = icmp eq i64 %index.next547, %n.vec543
  br i1 %i.cq, label %.loopexit, label %vector.body544, !llvm.loop !198

.preheader415:                                    ; preds = %.preheader415.preheader, %.preheader415
  %indvars.iv466 = phi i64 [ %indvars.iv.next467, %.preheader415 ], [ 0, %.preheader415.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv466
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !29
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv466
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !29
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next467, %wide.trip.count
  br i1 %exitcond470.not, label %.loopexit, label %.preheader415, !llvm.loop !199

.loopexit:                                        ; preds = %.preheader415, %vector.body544, %bb.f
  br i1 %i.g, label %vector.body, label %scalar.ph

vector.body:                                      ; preds = %.loopexit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.loopexit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.cu, align 4, !tbaa !29 ; 4 uses
  %i.cv = ashr <2 x i32> %wide.load, splat (i32 1) ; 2 uses
  %i.cw = lshr <2 x i32> %wide.load, splat (i32 3)
  %i.cx = lshr <2 x i32> %wide.load, splat (i32 12)
  %i.cy = xor <2 x i32> %i.cw, %i.cx
  %i.cz = xor <2 x i32> %i.cy, %wide.load
  %i.da = xor <2 x i32> %i.cz, %i.cv
  %i.db = shl <2 x i32> %i.da, splat (i32 15)
  %i.dc = and <2 x i32> %i.db, splat (i32 32768)
  %i.dd = or <2 x i32> %i.dc, %i.cv               ; 2 uses
  store <2 x i32> %i.dd, ptr %i.cu, align 4, !tbaa !29
  %i.de = lshr <2 x i32> %i.dd, splat (i32 8)
  %i.df = and <2 x i32> %i.de, splat (i32 255)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <2 x i32> %i.df, ptr %i.dg, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %.preheader414, label %vector.body, !llvm.loop !200

.preheader414:                                    ; preds = %scalar.ph, %vector.body
  br i1 %i.ap, label %.preheader412.lr.ph, label %.preheader413

.preheader412.lr.ph:                              ; preds = %.preheader414
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.cj ; 2 uses
  %invariant.gep420 = getelementptr [2 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.di = icmp slt i32 %i.cn, %.
  %i.dj = load i32, ptr %i.b, align 16            ; 2 uses
  %i.dk = ashr i32 %i.dj, 4
  %i.dl = add nsw i32 %i.dk, 3
  %i.dm = mul nsw i32 %i.dl, %i.an
  %i.dn = and i32 %i.dj, 15
  %i.do = add nuw nsw i32 %i.dn, 3
  %i.dp = mul nuw nsw i32 %i.do, %i.ak            ; 2 uses
  %invariant.op = add nsw i32 %i.dm, 3            ; 2 uses
  %i.dq = icmp sgt i32 %i.cn, 0
  %i.dr = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.ds = ashr i32 %i.dr, 4
  %i.dt = add nsw i32 %i.ds, 3
  %i.du = mul nsw i32 %i.dt, %i.an
  %i.dv = and i32 %i.dr, 15
  %i.dw = add nuw nsw i32 %i.dv, 3
  %i.dx = mul nuw nsw i32 %i.dw, %i.ak
  %invariant.op431 = add nsw i32 %i.ba, %i.du
  %i.dy = sext i32 %i.cn to i64
  %i.dz = sext i32 %. to i64
  %16 = zext nneg i32 %i.dp to i64
  %i.ea = zext nneg i32 %i.dx to i64
  %i.eb = zext nneg i32 %i.dp to i64
  %invariant.gep525 = getelementptr [164 x i8], ptr %6, i64 %i.eb
  %invariant.gep524 = getelementptr [164 x i8], ptr %6, i64 %16
  %invariant.gep526 = getelementptr [164 x i8], ptr %6, i64 %i.ea
  %wide.trip.count482 = zext nneg i32 %i.cn to i64
  br label %.preheader412

scalar.ph:                                        ; preds = %.loopexit, %scalar.ph
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %scalar.ph ], [ 0, %.loopexit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv471 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !29 ; 4 uses
  %i.ee = ashr i32 %i.ed, 1                       ; 2 uses
  %i.ef = lshr i32 %i.ed, 3
  %i.eg = lshr i32 %i.ed, 12
  %i.eh = xor i32 %i.ef, %i.eg
  %i.ei = xor i32 %i.eh, %i.ed
  %i.ej = xor i32 %i.ei, %i.ee
  %i.ek = shl i32 %i.ej, 15
  %i.el = and i32 %i.ek, 32768
  %i.em = or i32 %i.el, %i.ee                     ; 2 uses
  store i32 %i.em, ptr %i.ec, align 4, !tbaa !29
  %i.en = lshr i32 %i.em, 8
  %i.eo = and i32 %i.en, 255
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv471
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !29
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count
  br i1 %exitcond475.not, label %.preheader414, label %scalar.ph, !llvm.loop !201

.preheader413:                                    ; preds = %._crit_edge, %.preheader414
  br i1 %i.bd, label %.preheader410.lr.ph, label %._crit_edge454

.preheader410.lr.ph:                              ; preds = %.preheader413
  %invariant.gep438 = getelementptr [2 x i8], ptr %1, i64 %i.cj ; 2 uses
  %invariant.gep440 = getelementptr [2 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.eq = icmp slt i32 %i.cn, %.
  %i.er = load i32, ptr %i.b, align 16            ; 2 uses
  %i.es = ashr i32 %i.er, 4
  %i.et = add nsw i32 %i.es, 3
  %i.eu = mul nsw i32 %i.et, %i.an                ; 2 uses
  %i.ev = and i32 %i.er, 15
  %i.ew = add nuw nsw i32 %i.ev, 3
  %i.ex = mul nuw nsw i32 %i.ew, %i.ak            ; 2 uses
  %i.ey = load i32, ptr %i.be, align 4            ; 2 uses
  %i.ez = ashr i32 %i.ey, 4
  %i.fa = add nsw i32 %i.ez, 3
  %i.fb = mul nsw i32 %i.fa, %i.an                ; 2 uses
  %i.fc = and i32 %i.ey, 15
  %i.fd = add nuw nsw i32 %i.fc, 3
  %i.fe = mul nuw nsw i32 %i.fd, %i.ak            ; 2 uses
  %invariant.op458 = add nuw nsw i32 %invariant.op457, %i.fe
  %i.ff = icmp sgt i32 %i.cn, 0
  %i.fg = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.fh = ashr i32 %i.fg, 4
  %i.fi = add nsw i32 %i.fh, 3
  %i.fj = mul nsw i32 %i.fi, %i.an
  %i.fk = and i32 %i.fg, 15
  %i.fl = add nuw nsw i32 %i.fk, 3
  %i.fm = mul nuw nsw i32 %i.fl, %i.ak
  %i.fn = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.fo = ashr i32 %i.fn, 4
  %i.fp = add nsw i32 %i.fo, 3
  %i.fq = mul nsw i32 %i.fp, %i.an
  %i.fr = and i32 %i.fn, 15
  %i.fs = add nuw nsw i32 %i.fr, 3
  %i.ft = mul nuw nsw i32 %i.fs, %i.ak
  %i.fu = sext i32 %i.cn to i64
  %i.fv = sext i32 %. to i64
  %i.fw = zext nneg i32 %i.ex to i64
  %i.fx = zext nneg i32 %i.ft to i64
  %i.fy = zext nneg i32 %invariant.op458 to i64
  %i.fz = zext nneg i32 %i.fe to i64
  %i.ga = zext nneg i32 %i.fm to i64
  %i.gb = zext nneg i32 %i.ex to i64
  %invariant.gep528 = getelementptr inbounds nuw [164 x i8], ptr %6, i64 %i.gb
  %invariant.gep530 = getelementptr inbounds nuw [164 x i8], ptr %6, i64 %i.fy
  %invariant.gep532 = getelementptr inbounds nuw [164 x i8], ptr %6, i64 %i.fz
  %invariant.gep534 = getelementptr inbounds nuw [164 x i8], ptr %6, i64 %i.ga
  %invariant.gep536 = getelementptr inbounds nuw [164 x i8], ptr %6, i64 %i.fw
  %invariant.gep538 = getelementptr inbounds nuw [164 x i8], ptr %6, i64 %i.fx
  %wide.trip.count495 = zext nneg i32 %i.cn to i64
  br label %.preheader410

.preheader412:                                    ; preds = %.preheader412.lr.ph, %._crit_edge
  %indvars.iv484 = phi i64 [ %i.bj, %.preheader412.lr.ph ], [ %indvars.iv.next485, %._crit_edge ] ; 7 uses
  br i1 %i.di, label %.lr.ph, label %.preheader411

.lr.ph:                                           ; preds = %.preheader412
  %gep526 = getelementptr [164 x i8], ptr %invariant.gep525, i64 %indvars.iv484
  %17 = getelementptr i8, ptr %gep526, i64 492
  %18 = trunc nsw i64 %indvars.iv484 to i32
  %i.gc = shl i32 %18, %14
  %i.gd = sext i32 %i.gc to i64
  %i.ge = mul nsw i64 %10, %i.gd
  %i.gf = getelementptr inbounds i8, ptr %9, i64 %i.ge
  %i.gg = mul nsw i64 %2, %indvars.iv484          ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gg
  %gep421 = getelementptr i8, ptr %invariant.gep420, i64 %i.gg
  %i.gh = load i32, ptr %i.aq, align 8, !tbaa !40
  %.not384 = icmp eq i32 %i.gh, 0
  %i.gi = load i32, ptr %i.az, align 4, !tbaa !47 ; 2 uses
  %i.gj = shl nuw i32 1, %i.gi
  %i.gk = ashr i32 %i.gj, 1
  br label %bb.g

.preheader411:                                    ; preds = %bb.k, %.preheader412
  br i1 %i.dq, label %.lr.ph428, label %._crit_edge

.lr.ph428:                                        ; preds = %.preheader411
  %i.gl = add nsw i64 %indvars.iv484, 3           ; 2 uses
  %gep525 = getelementptr [164 x i8], ptr %invariant.gep524, i64 %i.gl
  %gep527 = getelementptr [164 x i8], ptr %invariant.gep526, i64 %i.gl
  %i.gm = trunc nsw i64 %indvars.iv484 to i32
  %i.gn = shl i32 %i.gm, %14
  %i.go = sext i32 %i.gn to i64
  %i.gp = mul nsw i64 %10, %i.go
  %i.gq = getelementptr inbounds i8, ptr %9, i64 %i.gp
  %i.gr = mul nsw i64 %2, %indvars.iv484          ; 2 uses
  %gep424 = getelementptr i8, ptr %invariant.gep, i64 %i.gr
  %gep426 = getelementptr i8, ptr %invariant.gep420, i64 %i.gr
  %i.gs = load i32, ptr %i.aq, align 8, !tbaa !40
  %.not381 = icmp eq i32 %i.gs, 0
  %i.gt = load i32, ptr %i.az, align 4, !tbaa !47 ; 2 uses
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = ashr i32 %i.gu, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv476 = phi i64 [ %i.dy, %.lr.ph ], [ %indvars.iv.next477, %bb.k ] ; 4 uses
  %i.gw = trunc nsw i64 %indvars.iv476 to i32     ; 2 uses
  %.reass = add i32 %invariant.op, %i.gw
  %i.gx = sext i32 %.reass to i64
  %i.gy = getelementptr inbounds [2 x i8], ptr %17, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !39
  %i.ha = sext i16 %i.gz to i32
  %i.hb = add i32 %.0364461, %i.gw
  %i.hc = shl i32 %i.hb, %13
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.hd ; 2 uses
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !39 ; 2 uses
  br i1 %.not383, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hg = zext i16 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !39
  %i.hj = zext i16 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.hg, 1
  %i.hl = add nuw nsw i32 %i.hk, %i.hj
  %i.hm = lshr i32 %i.hl, 1
  %i.hn = trunc nuw i32 %i.hm to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0359 = phi i16 [ %i.hn, %bb.h ], [ %i.hf, %bb.g ]
  %i.ho = getelementptr inbounds [2 x i8], ptr %gep, i64 %indvars.iv476
  %i.hp = getelementptr inbounds [2 x i8], ptr %gep421, i64 %indvars.iv476
  %i.hq = zext i16 %.0359 to i32                  ; 2 uses
  %.pre = load i16, ptr %i.ho, align 2, !tbaa !39 ; 2 uses
  br i1 %.not384, label %bb.j, label %._crit_edge511.a

._crit_edge511.a:                                 ; preds = %bb.i
  %.pre512 = zext i16 %.pre to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hr = load i32, ptr %i.at, align 4, !tbaa !29
  %i.hs = mul nsw i32 %i.hr, %i.hq
  %i.ht = zext i16 %.pre to i32                   ; 2 uses
  %i.hu = load i32, ptr %i.av, align 4, !tbaa !29
  %i.hv = mul nsw i32 %i.hu, %i.ht
  %i.hw = add nsw i32 %i.hv, %i.hs
  %i.hx = ashr i32 %i.hw, 6
  %i.hy = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.hz = shl nsw i32 %i.hy, %i.h
  %i.ia = add nsw i32 %i.hx, %i.hz                ; 2 uses
  %i.ib = icmp slt i32 %i.ia, 0
  %..i408 = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.ay)
  %.0.i409 = select i1 %i.ib, i32 0, i32 %..i408
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge511.a, %bb.j
  %.pre-phi = phi i32 [ %.pre512, %._crit_edge511.a ], [ %i.ht, %bb.j ]
  %.0360 = phi i32 [ %i.hq, %._crit_edge511.a ], [ %.0.i409, %bb.j ]
  %i.ic = sext i32 %.0360 to i64
  %i.id = getelementptr inbounds i8, ptr %5, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !27
  %i.if = zext i8 %i.ie to i32
  %i.ig = mul nsw i32 %i.if, %i.ha
  %i.ih = add nsw i32 %i.gk, %i.ig
  %i.ii = ashr i32 %i.ih, %i.gi
  %i.ij = add nsw i32 %i.ii, %.pre-phi            ; 2 uses
  %i.ik = icmp slt i32 %i.ij, %.0367
  %..i406 = tail call i32 @llvm.smin.i32(i32 %i.ij, i32 %.0366)
  %.0.i407 = select i1 %i.ik, i32 %.0367, i32 %..i406
  %i.il = trunc nsw i32 %.0.i407 to i16
  store i16 %i.il, ptr %i.hp, align 2, !tbaa !39
  %indvars.iv.next477 = add nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next477, %i.dz
  br i1 %i.im, label %bb.g, label %.preheader411, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.p, %.preheader411
  %indvars.iv.next485 = add nsw i64 %indvars.iv484, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next485, %wide.trip.count487
  br i1 %exitcond488.not, label %.preheader413, label %.preheader412, !llvm.loop !203

bb.l:                                             ; preds = %.lr.ph428, %bb.p
  %indvars.iv479 = phi i64 [ 0, %.lr.ph428 ], [ %indvars.iv.next480, %bb.p ] ; 5 uses
  %i.in = trunc nuw nsw i64 %indvars.iv479 to i32 ; 3 uses
  %.reass430 = add i32 %invariant.op, %i.in
  %i.io = sext i32 %.reass430 to i64
  %i.ip = getelementptr inbounds [2 x i8], ptr %gep525, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !39
  %i.ir = sext i16 %i.iq to i32
  %.reass432 = add i32 %invariant.op431, %i.in
  %i.is = sext i32 %.reass432 to i64
  %i.it = getelementptr inbounds [2 x i8], ptr %gep527, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !39
  %i.iv = sext i16 %i.iu to i32
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv479 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !29
  %i.iy = mul nsw i32 %i.ix, %i.iv
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !29
  %i.jb = mul nsw i32 %i.ja, %i.ir
  %i.jc = add i32 %i.iy, 16
  %i.jd = add i32 %i.jc, %i.jb
  %i.je = ashr i32 %i.jd, 5                       ; 2 uses
  %i.jf = icmp slt i32 %i.je, %i.j
  %..i404 = tail call i32 @llvm.smin.i32(i32 %i.je, i32 %i.k)
  %.0.i405 = select i1 %i.jf, i32 %i.j, i32 %..i404
  %i.jg = add i32 %.0364461, %i.in
  %i.jh = shl i32 %i.jg, %13
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.gq, i64 %i.ji ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !39 ; 2 uses
  br i1 %.not383, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jl = zext i16 %i.jk to i32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !39
  %i.jo = zext i16 %i.jn to i32
  %i.jp = add nuw nsw i32 %i.jl, 1
  %i.jq = add nuw nsw i32 %i.jp, %i.jo
  %i.jr = lshr i32 %i.jq, 1
  %i.js = trunc nuw i32 %i.jr to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i16 [ %i.js, %bb.m ], [ %i.jk, %bb.l ]
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %gep424, i64 %indvars.iv479
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %gep426, i64 %indvars.iv479
  %i.jv = zext i16 %.1 to i32                     ; 2 uses
  %.pre505 = load i16, ptr %i.jt, align 2, !tbaa !39 ; 2 uses
  br i1 %.not381, label %bb.o, label %._crit_edge510.a

._crit_edge510.a:                                 ; preds = %bb.n
  %.pre513 = zext i16 %.pre505 to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.jw = load i32, ptr %i.at, align 4, !tbaa !29
  %i.jx = mul nsw i32 %i.jw, %i.jv
  %i.jy = zext i16 %.pre505 to i32                ; 2 uses
  %i.jz = load i32, ptr %i.av, align 4, !tbaa !29
  %i.ka = mul nsw i32 %i.jz, %i.jy
  %i.kb = add nsw i32 %i.ka, %i.jx
  %i.kc = ashr i32 %i.kb, 6
  %i.kd = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.ke = shl nsw i32 %i.kd, %i.h
  %i.kf = add nsw i32 %i.kc, %i.ke                ; 2 uses
  %i.kg = icmp slt i32 %i.kf, 0
  %..i402 = tail call i32 @llvm.smin.i32(i32 %i.kf, i32 %i.ay)
  %.0.i403 = select i1 %i.kg, i32 0, i32 %..i402
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge510.a, %bb.o
  %.pre-phi514 = phi i32 [ %.pre513, %._crit_edge510.a ], [ %i.jy, %bb.o ]
  %.1361 = phi i32 [ %i.jv, %._crit_edge510.a ], [ %.0.i403, %bb.o ]
  %i.kh = sext i32 %.1361 to i64
  %i.ki = getelementptr inbounds i8, ptr %5, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !27
  %i.kk = zext i8 %i.kj to i32
  %i.kl = mul nsw i32 %.0.i405, %i.kk
  %i.km = add nsw i32 %i.gv, %i.kl
  %i.kn = ashr i32 %i.km, %i.gt
  %i.ko = add nsw i32 %i.kn, %.pre-phi514         ; 2 uses
  %i.kp = icmp slt i32 %i.ko, %.0367
  %..i400 = tail call i32 @llvm.smin.i32(i32 %i.ko, i32 %.0366)
  %.0.i401 = select i1 %i.kp, i32 %.0367, i32 %..i400
  %i.kq = trunc nsw i32 %.0.i401 to i16
  store i16 %i.kq, ptr %i.ju, align 2, !tbaa !39
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond483.not = icmp eq i64 %indvars.iv.next480, %wide.trip.count482
  br i1 %exitcond483.not, label %._crit_edge, label %bb.l, !llvm.loop !204

.preheader410:                                    ; preds = %.preheader410.lr.ph, %._crit_edge452
  %indvars.iv497 = phi i64 [ 0, %.preheader410.lr.ph ], [ %indvars.iv.next498, %._crit_edge452 ] ; 11 uses
  br i1 %i.eq, label %.lr.ph443, label %.preheader

.lr.ph443:                                        ; preds = %.preheader410
  %gep529 = getelementptr inbounds nuw [164 x i8], ptr %invariant.gep528, i64 %indvars.iv497
  %i.kr = getelementptr inbounds nuw i8, ptr %gep529, i64 492
  %gep531 = getelementptr inbounds nuw [164 x i8], ptr %invariant.gep530, i64 %indvars.iv497
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv497 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !29
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !29
  %i.kw = trunc nuw nsw i64 %indvars.iv497 to i32
  %i.kx = shl i32 %i.kw, %14
  %i.ky = sext i32 %i.kx to i64
  %i.kz = mul nsw i64 %10, %i.ky
  %i.la = getelementptr inbounds i8, ptr %9, i64 %i.kz
  %i.lb = mul nsw i64 %2, %indvars.iv497          ; 2 uses
  %gep439 = getelementptr i8, ptr %invariant.gep438, i64 %i.lb
  %gep441 = getelementptr i8, ptr %invariant.gep440, i64 %i.lb
  %i.lc = load i32, ptr %i.aq, align 8, !tbaa !40
  %.not378 = icmp eq i32 %i.lc, 0
  %i.ld = load i32, ptr %i.az, align 4, !tbaa !47 ; 2 uses
  %i.le = shl nuw i32 1, %i.ld
  %i.lf = ashr i32 %i.le, 1
  br label %bb.q

._crit_edge454:                                   ; preds = %._crit_edge452, %.preheader413
  %i.lg = add i32 %.0364461, %i.ah                ; 2 uses
  %i.lh = zext i32 %i.lg to i64                   ; 2 uses
  %i.li = icmp ugt i64 %4, %i.lh
  br i1 %i.li, label %bb.f, label %._crit_edge463, !llvm.loop !205

.preheader:                                       ; preds = %bb.u, %.preheader410
  br i1 %i.ff, label %.lr.ph451, label %._crit_edge452

end_hunk_1
