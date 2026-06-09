inline.NumInlined: 52
inline.NumDeleted: 4
begin_hunk_0_@getVerSubImageSixTap:bb.a
  br i1 %i.iq, label %.lr.ph261, label %.lr.ph255.split.us

.preheader229.thread:                             ; preds = %.preheader231
  %i.ir = add i32 %i.b, 37
  br label %.lr.ph261

.lr.ph255.split.us:                               ; preds = %.preheader229
  %i.is = load ptr, ptr @img, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 15520
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !63 ; 2 uses
  %smax304 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %smax310 = tail call i32 @llvm.smax.i32(i32 %i.ip, i32 3)
  %wide.trip.count311 = zext nneg i32 %smax310 to i64
  %.phi.trans.insert322 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.pre323 = load ptr, ptr %.phi.trans.insert322, align 8, !tbaa !29
  %wide.trip.count305 = zext nneg i32 %smax304 to i64
  %min.iters.check505 = icmp slt i32 %i.f, 8
  %n.vec508 = and i64 %wide.trip.count296, 2147483640 ; 3 uses
  %broadcast.splatinsert509 = insertelement <8 x i32> poison, i32 %i.iu, i64 0
  %broadcast.splat510 = shufflevector <8 x i32> %broadcast.splatinsert509, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n521 = icmp eq i64 %n.vec508, %wide.trip.count296
  br label %.lr.ph253.us

.lr.ph253.us:                                     ; preds = %..loopexit228_crit_edge.us, %.lr.ph255.split.us
  %i.iv = phi ptr [ %i.ja, %..loopexit228_crit_edge.us ], [ %.pre323, %.lr.ph255.split.us ] ; 3 uses
  %indvars.iv307 = phi i64 [ %indvars.iv.next308, %..loopexit228_crit_edge.us ], [ 2, %.lr.ph255.split.us ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv307
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !29 ; 3 uses
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv307 ; 4 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next308
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !29 ; 4 uses
  %i.jb = getelementptr i8, ptr %i.iy, i64 -8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !29 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !29 ; 3 uses
  %i.jf = getelementptr i8, ptr %i.iy, i64 -16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !29 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !29 ; 3 uses
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.memcheck492

vector.memcheck492:                               ; preds = %.lr.ph253.us
  %i.jj = ptrtoaddr ptr %i.ji to i64
  %i.jk = ptrtoaddr ptr %i.jg to i64
  %i.jl = ptrtoaddr ptr %i.je to i64
  %i.jm = ptrtoaddr ptr %i.jc to i64
  %i.jn = ptrtoaddr ptr %i.ja to i64
  %i.jo = ptrtoaddr ptr %i.ix to i64              ; 6 uses
  %i.jp = ptrtoaddr ptr %i.iv to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %diff.check493 = icmp ult i64 %i.jq, 16
  %i.jr = sub i64 %i.jo, %i.jn
  %diff.check494 = icmp ult i64 %i.jr, 16
  %conflict.rdx495 = or i1 %diff.check493, %diff.check494
  %i.js = sub i64 %i.jo, %i.jm
  %diff.check496 = icmp ult i64 %i.js, 16
  %conflict.rdx497 = or i1 %conflict.rdx495, %diff.check496
  %i.jt = sub i64 %i.jo, %i.jl
  %diff.check498 = icmp ult i64 %i.jt, 16
  %conflict.rdx499 = or i1 %conflict.rdx497, %diff.check498
  %i.ju = sub i64 %i.jo, %i.jk
  %diff.check500 = icmp ult i64 %i.ju, 16
  %conflict.rdx501 = or i1 %conflict.rdx499, %diff.check500
  %i.jv = sub i64 %i.jo, %i.jj
  %diff.check502 = icmp ult i64 %i.jv, 16
  %conflict.rdx503 = or i1 %conflict.rdx501, %diff.check502
  br i1 %conflict.rdx503, label %scalar.ph504.preheader, label %vector.body511

vector.body511:                                   ; preds = %vector.memcheck492, %vector.body511
  %index512 = phi i64 [ %index.next519, %vector.body511 ], [ 0, %vector.memcheck492 ] ; 8 uses
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %index512
  %wide.load513 = load <8 x i16>, ptr %i.jw, align 2, !tbaa !31
  %i.jx = zext <8 x i16> %wide.load513 to <8 x i32>
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %index512
  %wide.load514 = load <8 x i16>, ptr %i.jy, align 2, !tbaa !31
  %i.jz = zext <8 x i16> %wide.load514 to <8 x i32>
  %i.ka = add nuw nsw <8 x i32> %i.jz, %i.jx
  %i.kb = mul nuw nsw <8 x i32> %i.ka, splat (i32 20)
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %index512
  %wide.load515 = load <8 x i16>, ptr %i.kc, align 2, !tbaa !31
  %i.kd = zext <8 x i16> %wide.load515 to <8 x i32>
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %index512
  %wide.load516 = load <8 x i16>, ptr %i.ke, align 2, !tbaa !31
  %i.kf = zext <8 x i16> %wide.load516 to <8 x i32>
  %i.kg = add nuw nsw <8 x i32> %i.kf, %i.kd
  %i.kh = mul nsw <8 x i32> %i.kg, splat (i32 -5)
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %index512
  %wide.load517 = load <8 x i16>, ptr %i.ki, align 2, !tbaa !31
  %i.kj = zext <8 x i16> %wide.load517 to <8 x i32>
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %index512
  %wide.load518 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !31
  %i.kl = zext <8 x i16> %wide.load518 to <8 x i32>
  %i.km = add nuw nsw <8 x i32> %i.kb, splat (i32 16)
  %i.kn = add nsw <8 x i32> %i.km, %i.kh
  %i.ko = add nsw <8 x i32> %i.kn, %i.kj
  %i.kp = add nsw <8 x i32> %i.ko, %i.kl
  %i.kq = ashr <8 x i32> %i.kp, splat (i32 5)
  %i.kr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.kq, <8 x i32> zeroinitializer)
  %i.ks = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.kr, <8 x i32> %broadcast.splat510)
  %i.kt = trunc <8 x i32> %i.ks to <8 x i16>
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %index512
  store <8 x i16> %i.kt, ptr %i.ku, align 2, !tbaa !31
  %index.next519 = add nuw i64 %index512, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next519, %n.vec508
  br i1 %i.kv, label %middle.block520, label %vector.body511, !llvm.loop !95

middle.block520:                                  ; preds = %vector.body511
  br i1 %cmp.n521, label %..loopexit228_crit_edge.us, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %vector.memcheck492, %.lr.ph253.us, %middle.block520
  %indvars.iv301.ph = phi i64 [ 0, %vector.memcheck492 ], [ 0, %.lr.ph253.us ], [ %n.vec508, %middle.block520 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %scalar.ph504
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %scalar.ph504 ], [ %indvars.iv301.ph, %scalar.ph504.preheader ] ; 8 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.iv, i64 %indvars.iv301
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !31
  %i.ky = zext i16 %i.kx to i32
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %indvars.iv301
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !31
  %i.lb = zext i16 %i.la to i32
  %i.lc = add nuw nsw i32 %i.lb, %i.ky
  %i.ld = mul nuw nsw i32 %i.lc, 20
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %indvars.iv301
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !31
  %i.lg = zext i16 %i.lf to i32
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %indvars.iv301
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !31
  %i.lj = zext i16 %i.li to i32
  %i.lk = add nuw nsw i32 %i.lj, %i.lg
  %i.ll = mul nsw i32 %i.lk, -5
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %indvars.iv301
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !31
  %i.lo = zext i16 %i.ln to i32
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %indvars.iv301
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !31
  %i.lr = zext i16 %i.lq to i32
  %i.ls = add nuw nsw i32 %i.ld, 16
  %i.lt = add nsw i32 %i.ls, %i.ll
  %i.lu = add nsw i32 %i.lt, %i.lo
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = ashr i32 %i.lv, 5
  %i.lx = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.lw, i32 0)
  %i.ly = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.lx, i32 %i.iu)
  %i.lz = trunc i32 %i.ly to i16
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %indvars.iv301
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !31
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count305
  br i1 %exitcond306.not, label %..loopexit228_crit_edge.us, label %scalar.ph504, !llvm.loop !96

..loopexit228_crit_edge.us:                       ; preds = %scalar.ph504, %middle.block520
  %exitcond312.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count311
  br i1 %exitcond312.not, label %.lr.ph261, label %.lr.ph253.us, !llvm.loop !97

.lr.ph261:                                        ; preds = %..loopexit228_crit_edge.us, %.preheader229, %.preheader229.thread
  %i.mb = phi i32 [ %i.ir, %.preheader229.thread ], [ %i.ip, %.preheader229 ], [ %i.ip, %..loopexit228_crit_edge.us ]
  %i.mc = load ptr, ptr @img, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 15520 ; 3 uses
  %smax316 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 3 uses
  %i.me = sext i32 %i.mb to i64                   ; 5 uses
  %i.mf = sext i32 %i.c to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.me
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !29 ; 3 uses
  %i.mi = ptrtoaddr ptr %i.mh to i64              ; 6 uses
  %indvars.iv.next320 = add nsw i64 %i.me, 1      ; 4 uses
  br i1 %i.v, label %.lr.ph259, label %.loopexit227

.loopexit:                                        ; preds = %scalar.ph535, %middle.block551
  %i.mj = icmp slt i64 %indvars.iv.next320, %i.mf
  br i1 %i.mj, label %.lr.ph259.1, label %.loopexit227

.lr.ph259.1:                                      ; preds = %.loopexit
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.next320
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !29 ; 3 uses
  %indvars.iv.next320.1 = add nsw i64 %i.me, 2    ; 3 uses
  %i.mm = add i32 %i.b, 41
  %i.mn = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.mm)
  %i.mo = add nsw i64 %i.me, 3                    ; 2 uses
  %i.mp = trunc nsw i64 %i.mo to i32
  %i.mq = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.mp)
  %i.mr = trunc nsw i64 %indvars.iv.next320.1 to i32
  %i.ms = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.mr)
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next320 ; 3 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !29 ; 3 uses
  %i.mv = sext i32 %i.ms to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !29 ; 3 uses
  %i.my = getelementptr i8, ptr %i.mt, i64 -8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !29 ; 3 uses
  %i.na = sext i32 %i.mq to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.na
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !29 ; 3 uses
  %i.nd = getelementptr i8, ptr %i.mt, i64 -16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !29 ; 3 uses
  %i.nf = sext i32 %i.mn to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.nf
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !29 ; 3 uses
  %i.ni = load i32, ptr %i.md, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count317.1 = zext nneg i32 %smax316 to i64 ; 3 uses
  %min.iters.check567 = icmp slt i32 %i.f, 16
  br i1 %min.iters.check567, label %scalar.ph566.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %.lr.ph259.1
  %i.nj = ptrtoaddr ptr %i.ml to i64              ; 6 uses
  %i.nk = ptrtoaddr ptr %i.nh to i64
  %i.nl = ptrtoaddr ptr %i.ne to i64
  %i.nm = ptrtoaddr ptr %i.nc to i64
  %i.nn = ptrtoaddr ptr %i.mz to i64
  %i.no = ptrtoaddr ptr %i.mx to i64
  %i.np = ptrtoaddr ptr %i.mu to i64
  %i.nq = sub i64 %i.nj, %i.np
  %diff.check555 = icmp ult i64 %i.nq, 16
  %i.nr = sub i64 %i.nj, %i.no
  %diff.check556 = icmp ult i64 %i.nr, 16
  %conflict.rdx557 = or i1 %diff.check555, %diff.check556
  %i.ns = sub i64 %i.nj, %i.nn
  %diff.check558 = icmp ult i64 %i.ns, 16
  %conflict.rdx559 = or i1 %conflict.rdx557, %diff.check558
  %i.nt = sub i64 %i.nj, %i.nm
  %diff.check560 = icmp ult i64 %i.nt, 16
  %conflict.rdx561 = or i1 %conflict.rdx559, %diff.check560
  %i.nu = sub i64 %i.nj, %i.nl
  %diff.check562 = icmp ult i64 %i.nu, 16
  %conflict.rdx563 = or i1 %conflict.rdx561, %diff.check562
  %i.nv = sub i64 %i.nj, %i.nk
  %diff.check564 = icmp ult i64 %i.nv, 16
  %conflict.rdx565 = or i1 %conflict.rdx563, %diff.check564
  br i1 %conflict.rdx565, label %scalar.ph566.preheader, label %vector.ph568

vector.ph568:                                     ; preds = %vector.memcheck554
  %n.vec570 = and i64 %wide.trip.count317.1, 2147483640 ; 3 uses
  %broadcast.splatinsert571 = insertelement <8 x i32> poison, i32 %i.ni, i64 0
  %broadcast.splat572 = shufflevector <8 x i32> %broadcast.splatinsert571, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph568
  %index574 = phi i64 [ 0, %vector.ph568 ], [ %index.next581, %vector.body573 ] ; 8 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.mu, i64 %index574
  %wide.load575 = load <8 x i16>, ptr %i.nw, align 2, !tbaa !31
  %i.nx = zext <8 x i16> %wide.load575 to <8 x i32>
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %index574
  %wide.load576 = load <8 x i16>, ptr %i.ny, align 2, !tbaa !31
  %i.nz = zext <8 x i16> %wide.load576 to <8 x i32>
  %i.oa = add nuw nsw <8 x i32> %i.nz, %i.nx
  %i.ob = mul nuw nsw <8 x i32> %i.oa, splat (i32 20)
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.mz, i64 %index574
  %wide.load577 = load <8 x i16>, ptr %i.oc, align 2, !tbaa !31
  %i.od = zext <8 x i16> %wide.load577 to <8 x i32>
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %index574
  %wide.load578 = load <8 x i16>, ptr %i.oe, align 2, !tbaa !31
  %i.of = zext <8 x i16> %wide.load578 to <8 x i32>
  %i.og = add nuw nsw <8 x i32> %i.of, %i.od
  %i.oh = mul nsw <8 x i32> %i.og, splat (i32 -5)
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %index574
  %wide.load579 = load <8 x i16>, ptr %i.oi, align 2, !tbaa !31
  %i.oj = zext <8 x i16> %wide.load579 to <8 x i32>
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.nh, i64 %index574
  %wide.load580 = load <8 x i16>, ptr %i.ok, align 2, !tbaa !31
  %i.ol = zext <8 x i16> %wide.load580 to <8 x i32>
  %i.om = add nuw nsw <8 x i32> %i.ob, splat (i32 16)
  %i.on = add nsw <8 x i32> %i.om, %i.oh
  %i.oo = add nsw <8 x i32> %i.on, %i.oj
  %i.op = add nsw <8 x i32> %i.oo, %i.ol
  %i.oq = ashr <8 x i32> %i.op, splat (i32 5)
  %i.or = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oq, <8 x i32> zeroinitializer)
  %i.os = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.or, <8 x i32> %broadcast.splat572)
  %i.ot = trunc <8 x i32> %i.os to <8 x i16>
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %index574
  store <8 x i16> %i.ot, ptr %i.ou, align 2, !tbaa !31
  %index.next581 = add nuw i64 %index574, 8       ; 2 uses
  %i.ov = icmp eq i64 %index.next581, %n.vec570
  br i1 %i.ov, label %middle.block582, label %vector.body573, !llvm.loop !98

middle.block582:                                  ; preds = %vector.body573
  %cmp.n583 = icmp eq i64 %n.vec570, %wide.trip.count317.1
  br i1 %cmp.n583, label %.lr.ph259.2, label %scalar.ph566.preheader

scalar.ph566.preheader:                           ; preds = %vector.memcheck554, %.lr.ph259.1, %middle.block582
  %indvars.iv313.1.ph = phi i64 [ 0, %vector.memcheck554 ], [ 0, %.lr.ph259.1 ], [ %n.vec570, %middle.block582 ]
  br label %scalar.ph566

scalar.ph566:                                     ; preds = %scalar.ph566.preheader, %scalar.ph566
  %indvars.iv313.1 = phi i64 [ %indvars.iv.next314.1, %scalar.ph566 ], [ %indvars.iv313.1.ph, %scalar.ph566.preheader ] ; 8 uses
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.mu, i64 %indvars.iv313.1
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !31
  %i.oy = zext i16 %i.ox to i32
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv313.1
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !31
  %i.pb = zext i16 %i.pa to i32
  %i.pc = add nuw nsw i32 %i.pb, %i.oy
  %i.pd = mul nuw nsw i32 %i.pc, 20
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.mz, i64 %indvars.iv313.1
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !31
  %i.pg = zext i16 %i.pf to i32
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %indvars.iv313.1
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !31
  %i.pj = zext i16 %i.pi to i32
  %i.pk = add nuw nsw i32 %i.pj, %i.pg
  %i.pl = mul nsw i32 %i.pk, -5
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %indvars.iv313.1
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !31
  %i.po = zext i16 %i.pn to i32
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.nh, i64 %indvars.iv313.1
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !31
  %i.pr = zext i16 %i.pq to i32
  %i.ps = add nuw nsw i32 %i.pd, 16
  %i.pt = add nsw i32 %i.ps, %i.pl
  %i.pu = add nsw i32 %i.pt, %i.po
  %i.pv = add nsw i32 %i.pu, %i.pr
  %i.pw = ashr i32 %i.pv, 5
  %i.px = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.pw, i32 0)
  %i.py = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.px, i32 %i.ni)
  %i.pz = trunc i32 %i.py to i16
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %indvars.iv313.1
  store i16 %i.pz, ptr %i.qa, align 2, !tbaa !31
  %indvars.iv.next314.1 = add nuw nsw i64 %indvars.iv313.1, 1 ; 2 uses
  %exitcond318.1.not = icmp eq i64 %indvars.iv.next314.1, %wide.trip.count317.1
  br i1 %exitcond318.1.not, label %.lr.ph259.2, label %scalar.ph566, !llvm.loop !99

.lr.ph259.2:                                      ; preds = %scalar.ph566, %middle.block582
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.next320.1
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !29 ; 3 uses
  %i.qd = add i32 %i.b, 42
  %i.qe = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.qd)
  %i.qf = add i32 %i.b, 41
  %i.qg = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.qf)
  %i.qh = trunc nsw i64 %i.mo to i32
  %i.qi = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.qh)
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next320.1 ; 3 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !29 ; 3 uses
  %i.ql = sext i32 %i.qi to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ql
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !29 ; 3 uses
  %i.qo = getelementptr i8, ptr %i.qj, i64 -8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !29 ; 3 uses
  %i.qq = sext i32 %i.qg to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.qq
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !29 ; 3 uses
  %i.qt = getelementptr i8, ptr %i.qj, i64 -16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !29 ; 3 uses
  %i.qv = sext i32 %i.qe to i64
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.qv
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !29 ; 3 uses
  %i.qy = load i32, ptr %i.md, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count317.2 = zext nneg i32 %smax316 to i64 ; 3 uses
  %min.iters.check598 = icmp slt i32 %i.f, 16
  br i1 %min.iters.check598, label %scalar.ph597.preheader, label %vector.memcheck585

vector.memcheck585:                               ; preds = %.lr.ph259.2
  %i.qz = ptrtoaddr ptr %i.qx to i64
  %i.ra = ptrtoaddr ptr %i.qu to i64
  %i.rb = ptrtoaddr ptr %i.qs to i64
  %i.rc = ptrtoaddr ptr %i.qp to i64
  %i.rd = ptrtoaddr ptr %i.qn to i64
  %i.re = ptrtoaddr ptr %i.qk to i64
  %i.rf = ptrtoaddr ptr %i.qc to i64              ; 6 uses
  %i.rg = sub i64 %i.rf, %i.re
  %diff.check586 = icmp ult i64 %i.rg, 16
  %i.rh = sub i64 %i.rf, %i.rd
  %diff.check587 = icmp ult i64 %i.rh, 16
  %conflict.rdx588 = or i1 %diff.check586, %diff.check587
  %i.ri = sub i64 %i.rf, %i.rc
  %diff.check589 = icmp ult i64 %i.ri, 16
  %conflict.rdx590 = or i1 %conflict.rdx588, %diff.check589
  %i.rj = sub i64 %i.rf, %i.rb
  %diff.check591 = icmp ult i64 %i.rj, 16
  %conflict.rdx592 = or i1 %conflict.rdx590, %diff.check591
  %i.rk = sub i64 %i.rf, %i.ra
  %diff.check593 = icmp ult i64 %i.rk, 16
  %conflict.rdx594 = or i1 %conflict.rdx592, %diff.check593
  %i.rl = sub i64 %i.rf, %i.qz
  %diff.check595 = icmp ult i64 %i.rl, 16
  %conflict.rdx596 = or i1 %conflict.rdx594, %diff.check595
  br i1 %conflict.rdx596, label %scalar.ph597.preheader, label %vector.ph599

vector.ph599:                                     ; preds = %vector.memcheck585
  %n.vec601 = and i64 %wide.trip.count317.2, 2147483640 ; 3 uses
  %broadcast.splatinsert602 = insertelement <8 x i32> poison, i32 %i.qy, i64 0
  %broadcast.splat603 = shufflevector <8 x i32> %broadcast.splatinsert602, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph599
  %index605 = phi i64 [ 0, %vector.ph599 ], [ %index.next612, %vector.body604 ] ; 8 uses
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.qk, i64 %index605
  %wide.load606 = load <8 x i16>, ptr %i.rm, align 2, !tbaa !31
  %i.rn = zext <8 x i16> %wide.load606 to <8 x i32>
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index605
  %wide.load607 = load <8 x i16>, ptr %i.ro, align 2, !tbaa !31
  %i.rp = zext <8 x i16> %wide.load607 to <8 x i32>
  %i.rq = add nuw nsw <8 x i32> %i.rp, %i.rn
  %i.rr = mul nuw nsw <8 x i32> %i.rq, splat (i32 20)
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %index605
  %wide.load608 = load <8 x i16>, ptr %i.rs, align 2, !tbaa !31
  %i.rt = zext <8 x i16> %wide.load608 to <8 x i32>
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %index605
  %wide.load609 = load <8 x i16>, ptr %i.ru, align 2, !tbaa !31
  %i.rv = zext <8 x i16> %wide.load609 to <8 x i32>
  %i.rw = add nuw nsw <8 x i32> %i.rv, %i.rt
  %i.rx = mul nsw <8 x i32> %i.rw, splat (i32 -5)
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %index605
  %wide.load610 = load <8 x i16>, ptr %i.ry, align 2, !tbaa !31
  %i.rz = zext <8 x i16> %wide.load610 to <8 x i32>
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.qx, i64 %index605
  %wide.load611 = load <8 x i16>, ptr %i.sa, align 2, !tbaa !31
  %i.sb = zext <8 x i16> %wide.load611 to <8 x i32>
  %i.sc = add nuw nsw <8 x i32> %i.rr, splat (i32 16)
  %i.sd = add nsw <8 x i32> %i.sc, %i.rx
  %i.se = add nsw <8 x i32> %i.sd, %i.rz
  %i.sf = add nsw <8 x i32> %i.se, %i.sb
  %i.sg = ashr <8 x i32> %i.sf, splat (i32 5)
  %i.sh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.sg, <8 x i32> zeroinitializer)
  %i.si = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.sh, <8 x i32> %broadcast.splat603)
  %i.sj = trunc <8 x i32> %i.si to <8 x i16>
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %index605
  store <8 x i16> %i.sj, ptr %i.sk, align 2, !tbaa !31
  %index.next612 = add nuw i64 %index605, 8       ; 2 uses
  %i.sl = icmp eq i64 %index.next612, %n.vec601
  br i1 %i.sl, label %middle.block613, label %vector.body604, !llvm.loop !100

middle.block613:                                  ; preds = %vector.body604
  %cmp.n614 = icmp eq i64 %n.vec601, %wide.trip.count317.2
  br i1 %cmp.n614, label %.loopexit227, label %scalar.ph597.preheader

scalar.ph597.preheader:                           ; preds = %vector.memcheck585, %.lr.ph259.2, %middle.block613
  %indvars.iv313.2.ph = phi i64 [ 0, %vector.memcheck585 ], [ 0, %.lr.ph259.2 ], [ %n.vec601, %middle.block613 ]
  br label %scalar.ph597

scalar.ph597:                                     ; preds = %scalar.ph597.preheader, %scalar.ph597
  %indvars.iv313.2 = phi i64 [ %indvars.iv.next314.2, %scalar.ph597 ], [ %indvars.iv313.2.ph, %scalar.ph597.preheader ] ; 8 uses
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.qk, i64 %indvars.iv313.2
  %i.sn = load i16, ptr %i.sm, align 2, !tbaa !31
  %i.so = zext i16 %i.sn to i32
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv313.2
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !31
  %i.sr = zext i16 %i.sq to i32
  %i.ss = add nuw nsw i32 %i.sr, %i.so
  %i.st = mul nuw nsw i32 %i.ss, 20
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv313.2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !31
  %i.sw = zext i16 %i.sv to i32
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %indvars.iv313.2
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !31
  %i.sz = zext i16 %i.sy to i32
  %i.ta = add nuw nsw i32 %i.sz, %i.sw
  %i.tb = mul nsw i32 %i.ta, -5
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %indvars.iv313.2
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !31
  %i.te = zext i16 %i.td to i32
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.qx, i64 %indvars.iv313.2
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !31
  %i.th = zext i16 %i.tg to i32
  %i.ti = add nuw nsw i32 %i.st, 16
  %i.tj = add nsw i32 %i.ti, %i.tb
  %i.tk = add nsw i32 %i.tj, %i.te
  %i.tl = add nsw i32 %i.tk, %i.th
  %i.tm = ashr i32 %i.tl, 5
  %i.tn = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.tm, i32 0)
  %i.to = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.tn, i32 %i.qy)
  %i.tp = trunc i32 %i.to to i16
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %indvars.iv313.2
  store i16 %i.tp, ptr %i.tq, align 2, !tbaa !31
  %indvars.iv.next314.2 = add nuw nsw i64 %indvars.iv313.2, 1 ; 2 uses
  %exitcond318.2.not = icmp eq i64 %indvars.iv.next314.2, %wide.trip.count317.2
  br i1 %exitcond318.2.not, label %.loopexit227, label %scalar.ph597, !llvm.loop !101

.lr.ph259:                                        ; preds = %.lr.ph261
  %i.tr = add i32 %i.b, 40
  %i.ts = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.tr)
  %i.tt = trunc nsw i64 %indvars.iv.next320 to i32
  %i.tu = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.tt)
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.me ; 3 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !29 ; 3 uses
  %i.tx = sext i32 %i.tu to i64
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.tx
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !29 ; 3 uses
  %i.ua = getelementptr i8, ptr %i.tv, i64 -8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !29 ; 3 uses
  %i.uc = sext i32 %i.g to i64
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.uc
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !29 ; 3 uses
  %i.uf = getelementptr i8, ptr %i.tv, i64 -16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !29 ; 3 uses
  %i.uh = sext i32 %i.ts to i64
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.uh
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !29 ; 3 uses
  %i.uk = load i32, ptr %i.md, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count317 = zext nneg i32 %smax316 to i64 ; 3 uses
  %min.iters.check536 = icmp slt i32 %i.f, 16
  br i1 %min.iters.check536, label %scalar.ph535.preheader, label %vector.memcheck523

vector.memcheck523:                               ; preds = %.lr.ph259
  %i.ul = ptrtoaddr ptr %i.uj to i64
  %i.um = ptrtoaddr ptr %i.ug to i64
  %i.un = ptrtoaddr ptr %i.ue to i64
  %i.uo = ptrtoaddr ptr %i.ub to i64
  %i.up = ptrtoaddr ptr %i.tz to i64
  %i.uq = ptrtoaddr ptr %i.tw to i64
  %i.ur = sub i64 %i.mi, %i.uq
  %diff.check524 = icmp ult i64 %i.ur, 16
  %i.us = sub i64 %i.mi, %i.up
  %diff.check525 = icmp ult i64 %i.us, 16
  %conflict.rdx526 = or i1 %diff.check524, %diff.check525
  %i.ut = sub i64 %i.mi, %i.uo
  %diff.check527 = icmp ult i64 %i.ut, 16
  %conflict.rdx528 = or i1 %conflict.rdx526, %diff.check527
  %i.uu = sub i64 %i.mi, %i.un
  %diff.check529 = icmp ult i64 %i.uu, 16
  %conflict.rdx530 = or i1 %conflict.rdx528, %diff.check529
  %i.uv = sub i64 %i.mi, %i.um
  %diff.check531 = icmp ult i64 %i.uv, 16
  %conflict.rdx532 = or i1 %conflict.rdx530, %diff.check531
  %i.uw = sub i64 %i.mi, %i.ul
  %diff.check533 = icmp ult i64 %i.uw, 16
  %conflict.rdx534 = or i1 %conflict.rdx532, %diff.check533
  br i1 %conflict.rdx534, label %scalar.ph535.preheader, label %vector.ph537

vector.ph537:                                     ; preds = %vector.memcheck523
  %n.vec539 = and i64 %wide.trip.count317, 2147483640 ; 3 uses
  %broadcast.splatinsert540 = insertelement <8 x i32> poison, i32 %i.uk, i64 0
  %broadcast.splat541 = shufflevector <8 x i32> %broadcast.splatinsert540, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph537
  %index543 = phi i64 [ 0, %vector.ph537 ], [ %index.next550, %vector.body542 ] ; 8 uses
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %index543
  %wide.load544 = load <8 x i16>, ptr %i.ux, align 2, !tbaa !31
  %i.uy = zext <8 x i16> %wide.load544 to <8 x i32>
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.tz, i64 %index543
  %wide.load545 = load <8 x i16>, ptr %i.uz, align 2, !tbaa !31
  %i.va = zext <8 x i16> %wide.load545 to <8 x i32>
  %i.vb = add nuw nsw <8 x i32> %i.va, %i.uy
  %i.vc = mul nuw nsw <8 x i32> %i.vb, splat (i32 20)
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %index543
  %wide.load546 = load <8 x i16>, ptr %i.vd, align 2, !tbaa !31
  %i.ve = zext <8 x i16> %wide.load546 to <8 x i32>
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.ue, i64 %index543
  %wide.load547 = load <8 x i16>, ptr %i.vf, align 2, !tbaa !31
  %i.vg = zext <8 x i16> %wide.load547 to <8 x i32>
  %i.vh = add nuw nsw <8 x i32> %i.vg, %i.ve
  %i.vi = mul nsw <8 x i32> %i.vh, splat (i32 -5)
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.ug, i64 %index543
  %wide.load548 = load <8 x i16>, ptr %i.vj, align 2, !tbaa !31
  %i.vk = zext <8 x i16> %wide.load548 to <8 x i32>
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr %i.uj, i64 %index543
  %wide.load549 = load <8 x i16>, ptr %i.vl, align 2, !tbaa !31
  %i.vm = zext <8 x i16> %wide.load549 to <8 x i32>
  %i.vn = add nuw nsw <8 x i32> %i.vc, splat (i32 16)
  %i.vo = add nsw <8 x i32> %i.vn, %i.vi
  %i.vp = add nsw <8 x i32> %i.vo, %i.vk
  %i.vq = add nsw <8 x i32> %i.vp, %i.vm
  %i.vr = ashr <8 x i32> %i.vq, splat (i32 5)
  %i.vs = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.vr, <8 x i32> zeroinitializer)
  %i.vt = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.vs, <8 x i32> %broadcast.splat541)
  %i.vu = trunc <8 x i32> %i.vt to <8 x i16>
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %index543
  store <8 x i16> %i.vu, ptr %i.vv, align 2, !tbaa !31
  %index.next550 = add nuw i64 %index543, 8       ; 2 uses
  %i.vw = icmp eq i64 %index.next550, %n.vec539
  br i1 %i.vw, label %middle.block551, label %vector.body542, !llvm.loop !102

middle.block551:                                  ; preds = %vector.body542
  %cmp.n552 = icmp eq i64 %n.vec539, %wide.trip.count317
  br i1 %cmp.n552, label %.loopexit, label %scalar.ph535.preheader

scalar.ph535.preheader:                           ; preds = %vector.memcheck523, %.lr.ph259, %middle.block551
  %indvars.iv313.ph = phi i64 [ 0, %vector.memcheck523 ], [ 0, %.lr.ph259 ], [ %n.vec539, %middle.block551 ]
  br label %scalar.ph535

scalar.ph535:                                     ; preds = %scalar.ph535.preheader, %scalar.ph535
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %scalar.ph535 ], [ %indvars.iv313.ph, %scalar.ph535.preheader ] ; 8 uses
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %indvars.iv313
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !31
  %i.vz = zext i16 %i.vy to i32
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.tz, i64 %indvars.iv313
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !31
  %i.wc = zext i16 %i.wb to i32
  %i.wd = add nuw nsw i32 %i.wc, %i.vz
  %i.we = mul nuw nsw i32 %i.wd, 20
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %indvars.iv313
  %i.wg = load i16, ptr %i.wf, align 2, !tbaa !31
  %i.wh = zext i16 %i.wg to i32
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.ue, i64 %indvars.iv313
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !31
  %i.wk = zext i16 %i.wj to i32
  %i.wl = add nuw nsw i32 %i.wk, %i.wh
  %i.wm = mul nsw i32 %i.wl, -5
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.ug, i64 %indvars.iv313
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !31
  %i.wp = zext i16 %i.wo to i32
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.uj, i64 %indvars.iv313
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !31
  %i.ws = zext i16 %i.wr to i32
  %i.wt = add nuw nsw i32 %i.we, 16
  %i.wu = add nsw i32 %i.wt, %i.wm
  %i.wv = add nsw i32 %i.wu, %i.wp
  %i.ww = add nsw i32 %i.wv, %i.ws
  %i.wx = ashr i32 %i.ww, 5
  %i.wy = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.wx, i32 0)
  %i.wz = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.wy, i32 %i.uk)
  %i.xa = trunc i32 %i.wz to i16
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %indvars.iv313
  store i16 %i.xa, ptr %i.xb, align 2, !tbaa !31
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count317
  br i1 %exitcond318.not, label %.loopexit, label %scalar.ph535, !llvm.loop !103

.preheader236:                                    ; preds = %scalar.ph348, %middle.block363
  %i.xc = add i32 %i.b, 37                        ; 3 uses
  %i.xd = icmp sgt i32 %i.b, -35
  br i1 %i.xd, label %.lr.ph244, label %.lr.ph248

.preheader236.thread:                             ; preds = %.preheader238
  %i.xe = add i32 %i.b, 37
  br label %.lr.ph248

.lr.ph244:                                        ; preds = %.preheader236
  %i.xf = load ptr, ptr @imgY_sub_tmp, align 8    ; 3 uses
  %smax274 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %i.xg = load ptr, ptr @img, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 15520
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !63 ; 2 uses
  %smax280 = tail call i32 @llvm.smax.i32(i32 %i.xc, i32 3)
  %wide.trip.count281 = zext nneg i32 %smax280 to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  %wide.trip.count275 = zext nneg i32 %smax274 to i64
  %min.iters.check367 = icmp slt i32 %i.f, 4
  %n.vec370 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert371 = insertelement <4 x i32> poison, i32 %i.xi, i64 0
  %broadcast.splat372 = shufflevector <4 x i32> %broadcast.splatinsert371, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n383 = icmp eq i64 %n.vec370, %wide.trip.count
  br label %.lr.ph.us245

.lr.ph.us245:                                     ; preds = %..loopexit235_crit_edge.us, %.lr.ph244
  %i.xj = phi ptr [ %i.xo, %..loopexit235_crit_edge.us ], [ %.pre, %.lr.ph244 ] ; 2 uses
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %..loopexit235_crit_edge.us ], [ 2, %.lr.ph244 ] ; 3 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv277
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !29 ; 2 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 3 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv277 ; 4 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv.next278
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !61 ; 3 uses
  %i.xp = getelementptr i8, ptr %i.xm, i64 -8
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !61 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !61 ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xm, i64 -16
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !61 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !61 ; 2 uses
  br i1 %min.iters.check367, label %scalar.ph366.preheader, label %vector.body373

vector.body373:                                   ; preds = %.lr.ph.us245, %vector.body373
  %index374 = phi i64 [ %index.next381, %vector.body373 ], [ 0, %.lr.ph.us245 ] ; 8 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %index374
  %wide.load375 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !4
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %index374
  %wide.load376 = load <4 x i32>, ptr %i.xy, align 4, !tbaa !4
  %i.xz = add nsw <4 x i32> %wide.load376, %wide.load375
  %i.ya = mul nsw <4 x i32> %i.xz, splat (i32 20)
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %index374
  %wide.load377 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !4
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %index374
  %wide.load378 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !4
  %i.yd = add nsw <4 x i32> %wide.load378, %wide.load377
  %i.ye = mul nsw <4 x i32> %i.yd, splat (i32 -5)
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %index374
  %wide.load379 = load <4 x i32>, ptr %i.yf, align 4, !tbaa !4
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %index374
  %wide.load380 = load <4 x i32>, ptr %i.yg, align 4, !tbaa !4
  %i.yh = add <4 x i32> %i.ya, splat (i32 512)
  %i.yi = add <4 x i32> %i.yh, %i.ye
  %i.yj = add <4 x i32> %i.yi, %wide.load379
  %i.yk = add <4 x i32> %i.yj, %wide.load380
  %i.yl = ashr <4 x i32> %i.yk, splat (i32 10)
  %i.ym = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yl, <4 x i32> zeroinitializer)
  %i.yn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ym, <4 x i32> %broadcast.splat372)
  %i.yo = trunc <4 x i32> %i.yn to <4 x i16>
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %i.xl, i64 %index374
  store <4 x i16> %i.yo, ptr %i.yp, align 2, !tbaa !31
  %index.next381 = add nuw i64 %index374, 4       ; 2 uses
  %i.yq = icmp eq i64 %index.next381, %n.vec370
  br i1 %i.yq, label %middle.block382, label %vector.body373, !llvm.loop !104

middle.block382:                                  ; preds = %vector.body373
  br i1 %cmp.n383, label %..loopexit235_crit_edge.us, label %scalar.ph366.preheader

scalar.ph366.preheader:                           ; preds = %.lr.ph.us245, %middle.block382
  %indvars.iv271.ph = phi i64 [ 0, %.lr.ph.us245 ], [ %n.vec370, %middle.block382 ]
  br label %scalar.ph366

scalar.ph366:                                     ; preds = %scalar.ph366.preheader, %scalar.ph366
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %scalar.ph366 ], [ %indvars.iv271.ph, %scalar.ph366.preheader ] ; 8 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %indvars.iv271
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !4
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %indvars.iv271
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !4
  %i.yv = add nsw i32 %i.yu, %i.ys
  %i.yw = mul nsw i32 %i.yv, 20
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %indvars.iv271
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !4
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv271
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !4
  %i.zb = add nsw i32 %i.za, %i.yy
  %i.zc = mul nsw i32 %i.zb, -5
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv271
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !4
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv271
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !4
  %i.zh = add i32 %i.yw, 512
  %i.zi = add i32 %i.zh, %i.zc
  %i.zj = add i32 %i.zi, %i.ze
  %i.zk = add i32 %i.zj, %i.zg
  %i.zl = ashr i32 %i.zk, 10
  %i.zm = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.zl, i32 0)
  %i.zn = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.zm, i32 %i.xi)
  %i.zo = trunc i32 %i.zn to i16
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %i.xl, i64 %indvars.iv271
  store i16 %i.zo, ptr %i.zp, align 2, !tbaa !31
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count275
  br i1 %exitcond276.not, label %..loopexit235_crit_edge.us, label %scalar.ph366, !llvm.loop !105

..loopexit235_crit_edge.us:                       ; preds = %scalar.ph366, %middle.block382
  %exitcond282.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count281
  br i1 %exitcond282.not, label %.lr.ph248, label %.lr.ph.us245, !llvm.loop !106

.lr.ph248:                                        ; preds = %..loopexit235_crit_edge.us, %.preheader236.thread, %.preheader236
  %i.zq = phi i32 [ %i.xe, %.preheader236.thread ], [ %i.xc, %.preheader236 ], [ %i.xc, %..loopexit235_crit_edge.us ]
  %i.zr = load ptr, ptr @imgY_sub_tmp, align 8    ; 12 uses
  %i.zs = load ptr, ptr @img, align 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 15520 ; 3 uses
  %smax286 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 3 uses
  %i.zu = sext i32 %i.zq to i64                   ; 5 uses
  %i.zv = sext i32 %i.c to i64
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.zu
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !29 ; 2 uses
  %indvars.iv.next290 = add nsw i64 %i.zu, 1      ; 4 uses
  br i1 %i.v, label %.lr.ph, label %.loopexit227

.loopexit232:                                     ; preds = %scalar.ph385, %middle.block401
  %i.zy = icmp slt i64 %indvars.iv.next290, %i.zv
  br i1 %i.zy, label %.lr.ph.1, label %.loopexit227

.lr.ph.1:                                         ; preds = %.loopexit232
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.next290
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !29 ; 2 uses
  %indvars.iv.next290.1 = add nsw i64 %i.zu, 2    ; 3 uses
  %i.aab = add i32 %i.b, 41
  %i.aac = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.aab)
  %i.aad = add nsw i64 %i.zu, 3                   ; 2 uses
  %i.aae = trunc nsw i64 %i.aad to i32
  %i.aaf = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.aae)
  %i.aag = trunc nsw i64 %indvars.iv.next290.1 to i32
  %i.aah = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.aag)
  %i.aai = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %indvars.iv.next290 ; 3 uses
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !61 ; 2 uses
  %i.aak = sext i32 %i.aah to i64
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.aak
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !61 ; 2 uses
  %i.aan = getelementptr i8, ptr %i.aai, i64 -8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !61 ; 2 uses
  %i.aap = sext i32 %i.aaf to i64
  %i.aaq = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.aap
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !61 ; 2 uses
  %i.aas = getelementptr i8, ptr %i.aai, i64 -16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !61 ; 2 uses
  %i.aau = sext i32 %i.aac to i64
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.aau
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !61 ; 2 uses
  %i.aax = load i32, ptr %i.zt, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count287.1 = zext nneg i32 %smax286 to i64 ; 3 uses
  %min.iters.check405 = icmp slt i32 %i.f, 4
  br i1 %min.iters.check405, label %scalar.ph404.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.1
  %n.vec408 = and i64 %wide.trip.count287.1, 2147483644 ; 3 uses
  %broadcast.splatinsert409 = insertelement <4 x i32> poison, i32 %i.aax, i64 0
  %broadcast.splat410 = shufflevector <4 x i32> %broadcast.splatinsert409, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body411

vector.body411:                                   ; preds = %vector.body411, %vector.ph406
  %index412 = phi i64 [ 0, %vector.ph406 ], [ %index.next419, %vector.body411 ] ; 8 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %index412
  %wide.load413 = load <4 x i32>, ptr %i.aay, align 4, !tbaa !4
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %index412
  %wide.load414 = load <4 x i32>, ptr %i.aaz, align 4, !tbaa !4
  %i.aba = add nsw <4 x i32> %wide.load414, %wide.load413
  %i.abb = mul nsw <4 x i32> %i.aba, splat (i32 20)
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aao, i64 %index412
  %wide.load415 = load <4 x i32>, ptr %i.abc, align 4, !tbaa !4
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %index412
  %wide.load416 = load <4 x i32>, ptr %i.abd, align 4, !tbaa !4
  %i.abe = add nsw <4 x i32> %wide.load416, %wide.load415
  %i.abf = mul nsw <4 x i32> %i.abe, splat (i32 -5)
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %index412
  %wide.load417 = load <4 x i32>, ptr %i.abg, align 4, !tbaa !4
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %index412
  %wide.load418 = load <4 x i32>, ptr %i.abh, align 4, !tbaa !4
  %i.abi = add <4 x i32> %i.abb, splat (i32 512)
  %i.abj = add <4 x i32> %i.abi, %i.abf
  %i.abk = add <4 x i32> %i.abj, %wide.load417
  %i.abl = add <4 x i32> %i.abk, %wide.load418
  %i.abm = ashr <4 x i32> %i.abl, splat (i32 10)
  %i.abn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abm, <4 x i32> zeroinitializer)
  %i.abo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abn, <4 x i32> %broadcast.splat410)
  %i.abp = trunc <4 x i32> %i.abo to <4 x i16>
  %i.abq = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %index412
  store <4 x i16> %i.abp, ptr %i.abq, align 2, !tbaa !31
  %index.next419 = add nuw i64 %index412, 4       ; 2 uses
  %i.abr = icmp eq i64 %index.next419, %n.vec408
  br i1 %i.abr, label %middle.block420, label %vector.body411, !llvm.loop !107

middle.block420:                                  ; preds = %vector.body411
  %cmp.n421 = icmp eq i64 %n.vec408, %wide.trip.count287.1
  br i1 %cmp.n421, label %.lr.ph.2, label %scalar.ph404.preheader

scalar.ph404.preheader:                           ; preds = %.lr.ph.1, %middle.block420
  %indvars.iv283.1.ph = phi i64 [ 0, %.lr.ph.1 ], [ %n.vec408, %middle.block420 ]
  br label %scalar.ph404

scalar.ph404:                                     ; preds = %scalar.ph404.preheader, %scalar.ph404
  %indvars.iv283.1 = phi i64 [ %indvars.iv.next284.1, %scalar.ph404 ], [ %indvars.iv283.1.ph, %scalar.ph404.preheader ] ; 8 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv283.1
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !4
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %indvars.iv283.1
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !4
  %i.abw = add nsw i32 %i.abv, %i.abt
  %i.abx = mul nsw i32 %i.abw, 20
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.aao, i64 %indvars.iv283.1
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !4
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %indvars.iv283.1
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !4
  %i.acc = add nsw i32 %i.acb, %i.abz
  %i.acd = mul nsw i32 %i.acc, -5
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv283.1
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !4
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %indvars.iv283.1
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !4
  %i.aci = add i32 %i.abx, 512
  %i.acj = add i32 %i.aci, %i.acd
  %i.ack = add i32 %i.acj, %i.acf
  %i.acl = add i32 %i.ack, %i.ach
  %i.acm = ashr i32 %i.acl, 10
  %i.acn = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.acm, i32 0)
  %i.aco = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.acn, i32 %i.aax)
  %i.acp = trunc i32 %i.aco to i16
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %indvars.iv283.1
  store i16 %i.acp, ptr %i.acq, align 2, !tbaa !31
  %indvars.iv.next284.1 = add nuw nsw i64 %indvars.iv283.1, 1 ; 2 uses
  %exitcond288.1.not = icmp eq i64 %indvars.iv.next284.1, %wide.trip.count287.1
  br i1 %exitcond288.1.not, label %.lr.ph.2, label %scalar.ph404, !llvm.loop !108

.lr.ph.2:                                         ; preds = %scalar.ph404, %middle.block420
  %i.acr = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.next290.1
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !29 ; 2 uses
  %i.act = add i32 %i.b, 42
  %i.acu = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.act)
  %i.acv = add i32 %i.b, 41
  %i.acw = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.acv)
  %i.acx = trunc nsw i64 %i.aad to i32
  %i.acy = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.acx)
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %indvars.iv.next290.1 ; 3 uses
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !61 ; 2 uses
  %i.adb = sext i32 %i.acy to i64
  %i.adc = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.adb
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !61 ; 2 uses
  %i.ade = getelementptr i8, ptr %i.acz, i64 -8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !61 ; 2 uses
  %i.adg = sext i32 %i.acw to i64
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.adg
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !61 ; 2 uses
  %i.adj = getelementptr i8, ptr %i.acz, i64 -16
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !61 ; 2 uses
  %i.adl = sext i32 %i.acu to i64
  %i.adm = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.adl
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !61 ; 2 uses
  %i.ado = load i32, ptr %i.zt, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count287.2 = zext nneg i32 %smax286 to i64 ; 3 uses
  %min.iters.check424 = icmp slt i32 %i.f, 4
  br i1 %min.iters.check424, label %scalar.ph423.preheader, label %vector.ph425

vector.ph425:                                     ; preds = %.lr.ph.2
  %n.vec427 = and i64 %wide.trip.count287.2, 2147483644 ; 3 uses
  %broadcast.splatinsert428 = insertelement <4 x i32> poison, i32 %i.ado, i64 0
  %broadcast.splat429 = shufflevector <4 x i32> %broadcast.splatinsert428, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph425
  %index431 = phi i64 [ 0, %vector.ph425 ], [ %index.next438, %vector.body430 ] ; 8 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %index431
  %wide.load432 = load <4 x i32>, ptr %i.adp, align 4, !tbaa !4
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %index431
  %wide.load433 = load <4 x i32>, ptr %i.adq, align 4, !tbaa !4
  %i.adr = add nsw <4 x i32> %wide.load433, %wide.load432
  %i.ads = mul nsw <4 x i32> %i.adr, splat (i32 20)
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %index431
  %wide.load434 = load <4 x i32>, ptr %i.adt, align 4, !tbaa !4
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %index431
  %wide.load435 = load <4 x i32>, ptr %i.adu, align 4, !tbaa !4
  %i.adv = add nsw <4 x i32> %wide.load435, %wide.load434
  %i.adw = mul nsw <4 x i32> %i.adv, splat (i32 -5)
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %index431
  %wide.load436 = load <4 x i32>, ptr %i.adx, align 4, !tbaa !4
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %index431
  %wide.load437 = load <4 x i32>, ptr %i.ady, align 4, !tbaa !4
  %i.adz = add <4 x i32> %i.ads, splat (i32 512)
  %i.aea = add <4 x i32> %i.adz, %i.adw
  %i.aeb = add <4 x i32> %i.aea, %wide.load436
  %i.aec = add <4 x i32> %i.aeb, %wide.load437
  %i.aed = ashr <4 x i32> %i.aec, splat (i32 10)
  %i.aee = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aed, <4 x i32> zeroinitializer)
  %i.aef = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aee, <4 x i32> %broadcast.splat429)
  %i.aeg = trunc <4 x i32> %i.aef to <4 x i16>
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %i.acs, i64 %index431
  store <4 x i16> %i.aeg, ptr %i.aeh, align 2, !tbaa !31
  %index.next438 = add nuw i64 %index431, 4       ; 2 uses
  %i.aei = icmp eq i64 %index.next438, %n.vec427
  br i1 %i.aei, label %middle.block439, label %vector.body430, !llvm.loop !109

middle.block439:                                  ; preds = %vector.body430
  %cmp.n440 = icmp eq i64 %n.vec427, %wide.trip.count287.2
  br i1 %cmp.n440, label %.loopexit227, label %scalar.ph423.preheader

scalar.ph423.preheader:                           ; preds = %.lr.ph.2, %middle.block439
  %indvars.iv283.2.ph = phi i64 [ 0, %.lr.ph.2 ], [ %n.vec427, %middle.block439 ]
  br label %scalar.ph423

scalar.ph423:                                     ; preds = %scalar.ph423.preheader, %scalar.ph423
  %indvars.iv283.2 = phi i64 [ %indvars.iv.next284.2, %scalar.ph423 ], [ %indvars.iv283.2.ph, %scalar.ph423.preheader ] ; 8 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %indvars.iv283.2
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !4
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %indvars.iv283.2
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !4
  %i.aen = add nsw i32 %i.aem, %i.aek
  %i.aeo = mul nsw i32 %i.aen, 20
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %indvars.iv283.2
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !4
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %indvars.iv283.2
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !4
  %i.aet = add nsw i32 %i.aes, %i.aeq
  %i.aeu = mul nsw i32 %i.aet, -5
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %indvars.iv283.2
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !4
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %indvars.iv283.2
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !4
  %i.aez = add i32 %i.aeo, 512
  %i.afa = add i32 %i.aez, %i.aeu
  %i.afb = add i32 %i.afa, %i.aew
  %i.afc = add i32 %i.afb, %i.aey
  %i.afd = ashr i32 %i.afc, 10
  %i.afe = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.afd, i32 0)
  %i.aff = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.afe, i32 %i.ado)
  %i.afg = trunc i32 %i.aff to i16
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.acs, i64 %indvars.iv283.2
  store i16 %i.afg, ptr %i.afh, align 2, !tbaa !31
  %indvars.iv.next284.2 = add nuw nsw i64 %indvars.iv283.2, 1 ; 2 uses
  %exitcond288.2.not = icmp eq i64 %indvars.iv.next284.2, %wide.trip.count287.2
  br i1 %exitcond288.2.not, label %.loopexit227, label %scalar.ph423, !llvm.loop !110

.lr.ph:                                           ; preds = %.lr.ph248
  %i.afi = add i32 %i.b, 40
  %i.afj = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.afi)
  %i.afk = trunc nsw i64 %indvars.iv.next290 to i32
  %i.afl = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.afk)
  %i.afm = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.zu ; 3 uses
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !61 ; 2 uses
  %i.afo = sext i32 %i.afl to i64
  %i.afp = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.afo
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !61 ; 2 uses
  %i.afr = getelementptr i8, ptr %i.afm, i64 -8
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !61 ; 2 uses
  %i.aft = sext i32 %i.g to i64
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.aft
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !61 ; 2 uses
  %i.afw = getelementptr i8, ptr %i.afm, i64 -16
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !61 ; 2 uses
  %i.afy = sext i32 %i.afj to i64
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.zr, i64 %i.afy
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !61 ; 2 uses
  %i.agb = load i32, ptr %i.zt, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count287 = zext nneg i32 %smax286 to i64 ; 3 uses
  %min.iters.check386 = icmp slt i32 %i.f, 4
  br i1 %min.iters.check386, label %scalar.ph385.preheader, label %vector.ph387

vector.ph387:                                     ; preds = %.lr.ph
  %n.vec389 = and i64 %wide.trip.count287, 2147483644 ; 3 uses
  %broadcast.splatinsert390 = insertelement <4 x i32> poison, i32 %i.agb, i64 0
  %broadcast.splat391 = shufflevector <4 x i32> %broadcast.splatinsert390, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body392

vector.body392:                                   ; preds = %vector.body392, %vector.ph387
  %index393 = phi i64 [ 0, %vector.ph387 ], [ %index.next400, %vector.body392 ] ; 8 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %index393
  %wide.load394 = load <4 x i32>, ptr %i.agc, align 4, !tbaa !4
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %index393
  %wide.load395 = load <4 x i32>, ptr %i.agd, align 4, !tbaa !4
  %i.age = add nsw <4 x i32> %wide.load395, %wide.load394
  %i.agf = mul nsw <4 x i32> %i.age, splat (i32 20)
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %index393
  %wide.load396 = load <4 x i32>, ptr %i.agg, align 4, !tbaa !4
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %index393
  %wide.load397 = load <4 x i32>, ptr %i.agh, align 4, !tbaa !4
  %i.agi = add nsw <4 x i32> %wide.load397, %wide.load396
  %i.agj = mul nsw <4 x i32> %i.agi, splat (i32 -5)
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %index393
  %wide.load398 = load <4 x i32>, ptr %i.agk, align 4, !tbaa !4
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.aga, i64 %index393
  %wide.load399 = load <4 x i32>, ptr %i.agl, align 4, !tbaa !4
  %i.agm = add <4 x i32> %i.agf, splat (i32 512)
  %i.agn = add <4 x i32> %i.agm, %i.agj
  %i.ago = add <4 x i32> %i.agn, %wide.load398
  %i.agp = add <4 x i32> %i.ago, %wide.load399
  %i.agq = ashr <4 x i32> %i.agp, splat (i32 10)
  %i.agr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.agq, <4 x i32> zeroinitializer)
  %i.ags = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agr, <4 x i32> %broadcast.splat391)
  %i.agt = trunc <4 x i32> %i.ags to <4 x i16>
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %index393
  store <4 x i16> %i.agt, ptr %i.agu, align 2, !tbaa !31
  %index.next400 = add nuw i64 %index393, 4       ; 2 uses
  %i.agv = icmp eq i64 %index.next400, %n.vec389
  br i1 %i.agv, label %middle.block401, label %vector.body392, !llvm.loop !111

middle.block401:                                  ; preds = %vector.body392
  %cmp.n402 = icmp eq i64 %n.vec389, %wide.trip.count287
  br i1 %cmp.n402, label %.loopexit232, label %scalar.ph385.preheader

scalar.ph385.preheader:                           ; preds = %.lr.ph, %middle.block401
  %indvars.iv283.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec389, %middle.block401 ]
  br label %scalar.ph385

scalar.ph385:                                     ; preds = %scalar.ph385.preheader, %scalar.ph385
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph385 ], [ %indvars.iv283.ph, %scalar.ph385.preheader ] ; 8 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv283
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !4
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %indvars.iv283
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !4
  %i.aha = add nsw i32 %i.agz, %i.agx
  %i.ahb = mul nsw i32 %i.aha, 20
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv283
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !4
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv283
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !4
  %i.ahg = add nsw i32 %i.ahf, %i.ahd
  %i.ahh = mul nsw i32 %i.ahg, -5
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %indvars.iv283
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !4
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.aga, i64 %indvars.iv283
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !4
  %i.ahm = add i32 %i.ahb, 512
  %i.ahn = add i32 %i.ahm, %i.ahh
  %i.aho = add i32 %i.ahn, %i.ahj
  %i.ahp = add i32 %i.aho, %i.ahl
  %i.ahq = ashr i32 %i.ahp, 10
  %i.ahr = tail call range(i32 -2, 2147483647) i32 @llvm.smax.i32(i32 range(i32 -2147483648, 2147483647) %i.ahq, i32 0)
  %i.ahs = tail call range(i32 -2147483648, 2147483647) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.ahr, i32 %i.agb)
  %i.aht = trunc i32 %i.ahs to i16
  %i.ahu = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %indvars.iv283
  store i16 %i.aht, ptr %i.ahu, align 2, !tbaa !31
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count287
  br i1 %exitcond288.not, label %.loopexit232, label %scalar.ph385, !llvm.loop !112

.loopexit227:                                     ; preds = %scalar.ph423, %scalar.ph597, %middle.block439, %middle.block613, %.lr.ph248, %.lr.ph261, %.loopexit232, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @getHorSubImageBiLinear(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6396
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %i.c = add i32 %i.b, 40                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6392
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25   ; 4 uses
  %i.f = add i32 %i.e, 40                         ; 3 uses
  %i.g = add i32 %i.e, 39                         ; 2 uses
  %i.h = sub i32 %i.g, %7                         ; 7 uses
  %i.i = icmp sgt i32 %i.b, -40
  br i1 %i.i, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = sext i32 %4 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %i.r = sext i32 %5 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = sext i32 %6 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 3 uses
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = sext i32 %2 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 3 uses
  %i.ad = icmp sgt i32 %i.h, 0
  %i.ae = icmp slt i32 %i.h, %i.f                 ; 2 uses
  %i.af = sext i32 %i.g to i64                    ; 4 uses
  br i1 %i.ad, label %.lr.ph46.split.us, label %.lr.ph46.split

.lr.ph46.split.us:                                ; preds = %.lr.ph46
  %i.ag = sext i32 %7 to i64                      ; 4 uses
  br i1 %i.ae, label %.lr.ph.us.us.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph46.split.us
  %smax69 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count70 = zext nneg i32 %smax69 to i64
  %wide.trip.count64 = zext nneg i32 %i.h to i64  ; 5 uses
  %min.iters.check115 = icmp ult i32 %i.h, 8
  %i.ah = shl nsw i64 %i.ag, 1
  %n.vec118 = and i64 %wide.trip.count64, 2147483640 ; 3 uses
  %cmp.n125 = icmp eq i64 %n.vec118, %wide.trip.count64
  %xtraiter192 = and i64 %wide.trip.count64, 1
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  %i.ai = add nsw i64 %wide.trip.count64, -1
  br label %.lr.ph.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph46.split.us
  %i.aj = zext nneg i32 %i.h to i64               ; 13 uses
  %smax83 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count84 = zext nneg i32 %smax83 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 1                ; 2 uses
  %i.al = zext i32 %7 to i64
  %i.am = add nuw nsw i64 %i.al, %i.aj
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = add nuw nsw i64 %i.an, 2                ; 2 uses
  %i.ap = shl nsw i64 %i.af, 1
  %i.aq = zext i32 %7 to i64
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 5 uses
  %min.iters.check178 = icmp ult i32 %i.h, 8
  %i.as = shl nsw i64 %i.ag, 1
  %n.vec181 = and i64 %i.aj, 2147483640           ; 3 uses
  %cmp.n188 = icmp eq i64 %n.vec181, %i.aj
  %xtraiter194 = and i64 %i.aj, 1
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %i.at = add nsw i64 %i.aj, -1
  %min.iters.check140 = icmp ult i32 %7, 3
  %min.iters.check142 = icmp ult i32 %7, 15
  %n.mod.vf144 = and i64 %i.ar, 12
  %n.vec145 = and i64 %i.ar, 8589934576           ; 4 uses
  %i.au = add nuw nsw i64 %n.vec145, %i.aj
  %cmp.n154 = icmp eq i64 %i.ar, %n.vec145
  %min.epilog.iters.check160 = icmp eq i64 %n.mod.vf144, 0
  %n.vec163 = and i64 %i.ar, 8589934588           ; 3 uses
  %i.av = add nuw nsw i64 %n.vec163, %i.aj
  %cmp.n171 = icmp eq i64 %i.ar, %n.vec163
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv80 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next81, %._crit_edge.us.us ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 10 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 10 uses
  %invariant.gep90 = getelementptr [2 x i8], ptr %i.az, i64 %i.ag ; 4 uses
  br i1 %min.iters.check178, label %scalar.ph177.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph.us.us
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 2 uses
  %i.bd = ptrtoaddr ptr %i.az to i64
  %i.be = ptrtoaddr ptr %i.ax to i64
  %i.bf = sub i64 %i.bc, %i.be
  %diff.check174 = icmp ult i64 %i.bf, 16
  %i.bg = add i64 %i.as, %i.bd
  %i.bh = sub i64 %i.bc, %i.bg
  %diff.check175 = icmp ult i64 %i.bh, 16
  %conflict.rdx176 = or i1 %diff.check174, %diff.check175
  br i1 %conflict.rdx176, label %scalar.ph177.preheader, label %vector.body182

vector.body182:                                   ; preds = %vector.memcheck173, %vector.body182
  %index183 = phi i64 [ %index.next186, %vector.body182 ], [ 0, %vector.memcheck173 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index183
  %wide.load184 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !31
end_hunk_0
