Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/looprestoration_tmpl?download=true
inline.NumInlined: 132
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 29
begin_hunk_0_@wiener_c:bb.a
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  %bound0572 = icmp ult ptr %.0157, %scevgep550
  %bound1573 = icmp ult ptr %.32..32..32..pre61.i215, %scevgep
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  %bound0576 = icmp ult ptr %.0157, %scevgep551
  %bound1577 = icmp ult ptr %.40..40..40..pre63.i217, %scevgep
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx579 = or i1 %conflict.rdx575, %found.conflict578
  %conflict.rdx583 = or i1 %conflict.rdx579, %found.conflict582
  br i1 %conflict.rdx583, label %.preheader.i218.preheader, label %vector.ph586

vector.ph586:                                     ; preds = %vector.memcheck544
  %i.ke = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert588 = insertelement <8 x i16> poison, i16 %i.ke, i64 0
  %broadcast.splat589 = shufflevector <8 x i16> %broadcast.splatinsert588, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kf = sext <8 x i16> %broadcast.splat589 to <8 x i32>
  %i.kg = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert590 = insertelement <8 x i16> poison, i16 %i.kg, i64 0
  %broadcast.splat591 = shufflevector <8 x i16> %broadcast.splatinsert590, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kh = sext <8 x i16> %broadcast.splat591 to <8 x i32>
  %i.ki = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert592 = insertelement <8 x i16> poison, i16 %i.ki, i64 0
  %broadcast.splat593 = shufflevector <8 x i16> %broadcast.splatinsert592, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kj = sext <8 x i16> %broadcast.splat593 to <8 x i32>
  %i.kk = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert594 = insertelement <8 x i16> poison, i16 %i.kk, i64 0
  %broadcast.splat595 = shufflevector <8 x i16> %broadcast.splatinsert594, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kl = sext <8 x i16> %broadcast.splat595 to <8 x i32>
  %i.km = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert596 = insertelement <8 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat597 = shufflevector <8 x i16> %broadcast.splatinsert596, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kn = sext <8 x i16> %broadcast.splat597 to <8 x i32>
  %i.ko = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert598 = insertelement <8 x i16> poison, i16 %i.ko, i64 0
  %broadcast.splat599 = shufflevector <8 x i16> %broadcast.splatinsert598, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kp = sext <8 x i16> %broadcast.splat599 to <8 x i32>
  %i.kq = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert600 = insertelement <8 x i16> poison, i16 %i.kq, i64 0
  %broadcast.splat601 = shufflevector <8 x i16> %broadcast.splatinsert600, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kr = sext <8 x i16> %broadcast.splat601 to <8 x i32>
  br label %vector.body608

vector.body608:                                   ; preds = %vector.body608, %vector.ph586
  %index609 = phi i64 [ 0, %vector.ph586 ], [ %index.next617, %vector.body608 ] ; 9 uses
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %index609
  %wide.load610 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !13, !alias.scope !115
  %i.kt = zext <8 x i16> %wide.load610 to <8 x i32>
  %i.ku = mul nsw <8 x i32> %i.kf, %i.kt
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %index609
  %wide.load611 = load <8 x i16>, ptr %i.kv, align 2, !tbaa !13, !alias.scope !116
  %i.kw = zext <8 x i16> %wide.load611 to <8 x i32>
  %i.kx = mul nsw <8 x i32> %i.kh, %i.kw
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %index609
  %wide.load612 = load <8 x i16>, ptr %i.ky, align 2, !tbaa !13, !alias.scope !117
  %i.kz = zext <8 x i16> %wide.load612 to <8 x i32>
  %i.la = mul nsw <8 x i32> %i.kj, %i.kz
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %index609
  %wide.load613 = load <8 x i16>, ptr %i.lb, align 2, !tbaa !13, !alias.scope !118
  %i.lc = zext <8 x i16> %wide.load613 to <8 x i32>
  %i.ld = mul nsw <8 x i32> %i.kl, %i.lc
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i215, i64 %index609
  %wide.load614 = load <8 x i16>, ptr %i.le, align 2, !tbaa !13, !alias.scope !119
  %i.lf = zext <8 x i16> %wide.load614 to <8 x i32>
  %i.lg = mul nsw <8 x i32> %i.kn, %i.lf
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i217, i64 %index609
  %wide.load615 = load <8 x i16>, ptr %i.lh, align 2, !tbaa !13, !alias.scope !120
  %i.li = zext <8 x i16> %wide.load615 to <8 x i32>
  %i.lj = mul nsw <8 x i32> %i.kp, %i.li
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index609
  %wide.load616 = load <8 x i16>, ptr %i.lk, align 16, !tbaa !13, !alias.scope !121
  %i.ll = zext <8 x i16> %wide.load616 to <8 x i32>
  %i.lm = mul nsw <8 x i32> %i.kr, %i.ll
  %i.ln = add <8 x i32> %broadcast.splat603, %i.ku
  %i.lo = add <8 x i32> %i.ln, %i.kx
  %i.lp = add <8 x i32> %i.lo, %i.la
  %i.lq = add <8 x i32> %i.lp, %i.ld
  %i.lr = add <8 x i32> %i.lq, %i.lg
  %i.ls = add <8 x i32> %i.lr, %i.lj
  %i.lt = add <8 x i32> %i.ls, %i.lm
  %i.lu = ashr <8 x i32> %i.lt, %broadcast.splat605 ; 2 uses
  %i.lv = icmp slt <8 x i32> %i.lu, zeroinitializer
  %i.lw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.lu, <8 x i32> %broadcast.splat607)
  %i.lx = trunc <8 x i32> %i.lw to <8 x i16>
  %i.ly = select <8 x i1> %i.lv, <8 x i16> zeroinitializer, <8 x i16> %i.lx
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.1158, i64 %index609
  store <8 x i16> %i.ly, ptr %i.lz, align 2, !tbaa !13, !alias.scope !122, !noalias !123
  %index.next617 = add nuw i64 %index609, 8       ; 2 uses
  %i.ma = icmp eq i64 %index.next617, %n.vec587
  br i1 %i.ma, label %middle.block618, label %vector.body608, !llvm.loop !46

middle.block618:                                  ; preds = %vector.body608
  br i1 %cmp.n619, label %wiener_filter_hv.exit222, label %.preheader.i218.preheader

.preheader.i218.preheader:                        ; preds = %vector.memcheck544, %.preheader.lr.ph.i205, %middle.block618
  %indvars.iv.i219.ph = phi i64 [ 0, %vector.memcheck544 ], [ 0, %.preheader.lr.ph.i205 ], [ %n.vec587, %middle.block618 ]
  br label %.preheader.i218

.preheader.i218:                                  ; preds = %.preheader.i218.preheader, %.preheader.i218
  %indvars.iv.i219 = phi i64 [ %indvars.iv.next.i220, %.preheader.i218 ], [ %indvars.iv.i219.ph, %.preheader.i218.preheader ] ; 9 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %indvars.iv.i219
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !13
  %i.md = zext i16 %i.mc to i32
  %i.me = load i16, ptr %i.l, align 2, !tbaa !13
  %i.mf = sext i16 %i.me to i32
  %i.mg = mul nsw i32 %i.mf, %i.md
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %indvars.iv.i219
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !13
  %i.mj = zext i16 %i.mi to i32
  %i.mk = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.ml = sext i16 %i.mk to i32
  %i.mm = mul nsw i32 %i.ml, %i.mj
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %indvars.iv.i219
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !13
  %i.mp = zext i16 %i.mo to i32
  %i.mq = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.mr = sext i16 %i.mq to i32
  %i.ms = mul nsw i32 %i.mr, %i.mp
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %indvars.iv.i219
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !13
  %i.mv = zext i16 %i.mu to i32
  %i.mw = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.mx = sext i16 %i.mw to i32
  %i.my = mul nsw i32 %i.mx, %i.mv
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i215, i64 %indvars.iv.i219
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !13
  %i.nb = zext i16 %i.na to i32
  %i.nc = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.nd = sext i16 %i.nc to i32
  %i.ne = mul nsw i32 %i.nd, %i.nb
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i217, i64 %indvars.iv.i219
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !13
  %i.nh = zext i16 %i.ng to i32
  %i.ni = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.nj = sext i16 %i.ni to i32
  %i.nk = mul nsw i32 %i.nj, %i.nh
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i219
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !13
  %i.nn = zext i16 %i.nm to i32
  %i.no = load i16, ptr %i.js, align 2, !tbaa !13
  %i.np = sext i16 %i.no to i32
  %i.nq = mul nsw i32 %i.np, %i.nn
  %i.nr = add i32 %i.jy, %i.mg
  %i.ns = add i32 %i.nr, %i.mm
  %i.nt = add i32 %i.ns, %i.ms
  %i.nu = add i32 %i.nt, %i.my
  %i.nv = add i32 %i.nu, %i.ne
  %i.nw = add i32 %i.nv, %i.nk
  %i.nx = add i32 %i.nw, %i.nq
  %i.ny = ashr i32 %i.nx, %i.jn                   ; 2 uses
  %i.nz = icmp slt i32 %i.ny, 0
  %i.oa = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.ny, i32 %8)
  %i.ob = trunc i32 %i.oa to i16
  %i.oc = select i1 %i.nz, i16 0, i16 %i.ob
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %.1158, i64 %indvars.iv.i219
  store i16 %i.oc, ptr %i.od, align 2, !tbaa !13
  %indvars.iv.next.i220 = add nuw nsw i64 %indvars.iv.i219, 1 ; 2 uses
  %exitcond.not.i221 = icmp eq i64 %indvars.iv.next.i220, %wide.trip.count.i206
  br i1 %exitcond.not.i221, label %wiener_filter_hv.exit222, label %.preheader.i218, !llvm.loop !47

wiener_filter_hv.exit222:                         ; preds = %.preheader.i218, %middle.block618, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(780) %.0.318363, ptr noundef nonnull align 16 dereferenceable(780) %i.c, i64 780, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8.scevgep.i204.sroa_idx, i64 48, i1 false), !tbaa !11
  %.0..0..0.318 = load ptr, ptr %i.g, align 16, !tbaa !11 ; 9 uses
  store ptr %.0..0..0.318, ptr %.48..48..48..sroa_idx1097, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.oe = getelementptr inbounds nuw i8, ptr %.1160, i64 8
  %i.of = getelementptr i8, ptr %.1158, i64 %1    ; 12 uses
  %i.og = add nsw i32 %.1162, -1
  %i.oh = icmp sgt i32 %.1162, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.oh, label %bb.k, label %bb.l

bb.l:                                             ; preds = %wiener_filter_hv.exit222
  %i.oi = and i32 %7, 8
  %.not171 = icmp eq i32 %i.oi, 0
  br i1 %.not171, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef readonly %i.o, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.jr, label %.preheader.lr.ph.i227, label %wiener_filter_hv.exit244

.preheader.lr.ph.i227:                            ; preds = %bb.m
  %.8..8..8.scevgep.i204.sroa_idx1070 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.8..8..8..pre55.i231 = load ptr, ptr %.8..8..8.scevgep.i204.sroa_idx1070, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..phi.trans.insert56.i232.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.16..16..16..pre57.i233 = load ptr, ptr %.16..16..16..phi.trans.insert56.i232.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..phi.trans.insert58.i234.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.24..24..24..pre59.i235 = load ptr, ptr %.24..24..24..phi.trans.insert58.i234.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..phi.trans.insert60.i236.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.32..32..32..pre61.i237 = load ptr, ptr %.32..32..32..phi.trans.insert60.i236.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..sroa_idx1090 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre63.i239 = load ptr, ptr %.40..40..40..sroa_idx1090, align 8, !tbaa !11 ; 4 uses
  %min.iters.check658 = icmp ult i32 %4, 16
  br i1 %min.iters.check658, label %.preheader.i240.preheader, label %vector.memcheck621

vector.memcheck621:                               ; preds = %.preheader.lr.ph.i227
  %i.oj = shl nuw nsw i64 %wide.trip.count.i206, 1 ; 7 uses
  %i.ok = mul i64 %indvar, %1
  %i.ol = getelementptr i8, ptr %.0157, i64 %1
  %i.om = getelementptr i8, ptr %i.ol, i64 %i.oj
  %scevgep622 = getelementptr i8, ptr %i.om, i64 %i.ok ; 7 uses
  %scevgep623 = getelementptr i8, ptr %.0..0..0.318, i64 %i.oj
  %scevgep624 = getelementptr i8, ptr %6, i64 30
  %scevgep625 = getelementptr i8, ptr %.8..8..8..pre55.i231, i64 %i.oj
  %scevgep626 = getelementptr i8, ptr %.16..16..16..pre57.i233, i64 %i.oj
  %scevgep627 = getelementptr i8, ptr %.24..24..24..pre59.i235, i64 %i.oj
  %scevgep628 = getelementptr i8, ptr %.32..32..32..pre61.i237, i64 %i.oj
  %scevgep629 = getelementptr i8, ptr %.40..40..40..pre63.i239, i64 %i.oj
  %bound0630 = icmp ult ptr %i.of, %scevgep623
  %bound1631 = icmp ult ptr %.0..0..0.318, %scevgep622
  %found.conflict632 = and i1 %bound0630, %bound1631
  %bound0633 = icmp ult ptr %i.of, %scevgep624
  %bound1634 = icmp ult ptr %i.l, %scevgep622
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %found.conflict632, %found.conflict635
  %bound0637 = icmp ult ptr %i.of, %scevgep625
  %bound1638 = icmp ult ptr %.8..8..8..pre55.i231, %scevgep622
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  %bound0641 = icmp ult ptr %i.of, %scevgep626
  %bound1642 = icmp ult ptr %.16..16..16..pre57.i233, %scevgep622
  %found.conflict643 = and i1 %bound0641, %bound1642
  %conflict.rdx644 = or i1 %conflict.rdx640, %found.conflict643
  %bound0645 = icmp ult ptr %i.of, %scevgep627
  %bound1646 = icmp ult ptr %.24..24..24..pre59.i235, %scevgep622
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %conflict.rdx644, %found.conflict647
  %bound0649 = icmp ult ptr %i.of, %scevgep628
  %bound1650 = icmp ult ptr %.32..32..32..pre61.i237, %scevgep622
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %i.of, %scevgep629
  %bound1654 = icmp ult ptr %.40..40..40..pre63.i239, %scevgep622
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  br i1 %conflict.rdx656, label %.preheader.i240.preheader, label %vector.ph659

vector.ph659:                                     ; preds = %vector.memcheck621
  %n.vec660 = and i64 %wide.trip.count.i206, 2147483640 ; 3 uses
  %i.on = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert661 = insertelement <8 x i16> poison, i16 %i.on, i64 0
  %broadcast.splat662 = shufflevector <8 x i16> %broadcast.splatinsert661, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.oo = sext <8 x i16> %broadcast.splat662 to <8 x i32>
  %i.op = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert663 = insertelement <8 x i16> poison, i16 %i.op, i64 0
  %broadcast.splat664 = shufflevector <8 x i16> %broadcast.splatinsert663, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.oq = sext <8 x i16> %broadcast.splat664 to <8 x i32>
  %i.or = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert665 = insertelement <8 x i16> poison, i16 %i.or, i64 0
  %broadcast.splat666 = shufflevector <8 x i16> %broadcast.splatinsert665, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.os = sext <8 x i16> %broadcast.splat666 to <8 x i32>
  %i.ot = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert667 = insertelement <8 x i16> poison, i16 %i.ot, i64 0
  %broadcast.splat668 = shufflevector <8 x i16> %broadcast.splatinsert667, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ou = sext <8 x i16> %broadcast.splat668 to <8 x i32>
  %i.ov = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert669 = insertelement <8 x i16> poison, i16 %i.ov, i64 0
  %broadcast.splat670 = shufflevector <8 x i16> %broadcast.splatinsert669, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ow = sext <8 x i16> %broadcast.splat670 to <8 x i32>
  %i.ox = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert671 = insertelement <8 x i16> poison, i16 %i.ox, i64 0
  %broadcast.splat672 = shufflevector <8 x i16> %broadcast.splatinsert671, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.oy = sext <8 x i16> %broadcast.splat672 to <8 x i32>
  %i.oz = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert673 = insertelement <8 x i16> poison, i16 %i.oz, i64 0
  %broadcast.splat674 = shufflevector <8 x i16> %broadcast.splatinsert673, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.pa = sext <8 x i16> %broadcast.splat674 to <8 x i32>
  %broadcast.splatinsert675 = insertelement <8 x i32> poison, i32 %i.jy, i64 0
  %broadcast.splat676 = shufflevector <8 x i32> %broadcast.splatinsert675, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert677 = insertelement <8 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat678 = shufflevector <8 x i32> %broadcast.splatinsert677, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert679 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat680 = shufflevector <8 x i32> %broadcast.splatinsert679, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph659
  %index682 = phi i64 [ 0, %vector.ph659 ], [ %index.next690, %vector.body681 ] ; 9 uses
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.318, i64 %index682
  %wide.load683 = load <8 x i16>, ptr %i.pb, align 2, !tbaa !13, !alias.scope !125
  %i.pc = zext <8 x i16> %wide.load683 to <8 x i32>
  %i.pd = mul nsw <8 x i32> %i.oo, %i.pc
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i231, i64 %index682
  %wide.load684 = load <8 x i16>, ptr %i.pe, align 2, !tbaa !13, !alias.scope !126
  %i.pf = zext <8 x i16> %wide.load684 to <8 x i32>
  %i.pg = mul nsw <8 x i32> %i.oq, %i.pf
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i233, i64 %index682
  %wide.load685 = load <8 x i16>, ptr %i.ph, align 2, !tbaa !13, !alias.scope !127
  %i.pi = zext <8 x i16> %wide.load685 to <8 x i32>
  %i.pj = mul nsw <8 x i32> %i.os, %i.pi
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i235, i64 %index682
  %wide.load686 = load <8 x i16>, ptr %i.pk, align 2, !tbaa !13, !alias.scope !128
  %i.pl = zext <8 x i16> %wide.load686 to <8 x i32>
  %i.pm = mul nsw <8 x i32> %i.ou, %i.pl
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i237, i64 %index682
  %wide.load687 = load <8 x i16>, ptr %i.pn, align 2, !tbaa !13, !alias.scope !129
  %i.po = zext <8 x i16> %wide.load687 to <8 x i32>
  %i.pp = mul nsw <8 x i32> %i.ow, %i.po
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i239, i64 %index682
  %wide.load688 = load <8 x i16>, ptr %i.pq, align 2, !tbaa !13, !alias.scope !130
  %i.pr = zext <8 x i16> %wide.load688 to <8 x i32>
  %i.ps = mul nsw <8 x i32> %i.oy, %i.pr
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index682
  %wide.load689 = load <8 x i16>, ptr %i.pt, align 16, !tbaa !13
  %i.pu = zext <8 x i16> %wide.load689 to <8 x i32>
  %i.pv = mul nsw <8 x i32> %i.pa, %i.pu
  %i.pw = add <8 x i32> %broadcast.splat676, %i.pd
  %i.px = add <8 x i32> %i.pw, %i.pg
  %i.py = add <8 x i32> %i.px, %i.pj
  %i.pz = add <8 x i32> %i.py, %i.pm
  %i.qa = add <8 x i32> %i.pz, %i.pp
  %i.qb = add <8 x i32> %i.qa, %i.ps
  %i.qc = add <8 x i32> %i.qb, %i.pv
  %i.qd = ashr <8 x i32> %i.qc, %broadcast.splat678 ; 2 uses
  %i.qe = icmp slt <8 x i32> %i.qd, zeroinitializer
  %i.qf = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.qd, <8 x i32> %broadcast.splat680)
  %i.qg = trunc <8 x i32> %i.qf to <8 x i16>
  %i.qh = select <8 x i1> %i.qe, <8 x i16> zeroinitializer, <8 x i16> %i.qg
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.of, i64 %index682
  store <8 x i16> %i.qh, ptr %i.qi, align 2, !tbaa !13, !alias.scope !131, !noalias !132
  %index.next690 = add nuw i64 %index682, 8       ; 2 uses
  %i.qj = icmp eq i64 %index.next690, %n.vec660
  br i1 %i.qj, label %middle.block691, label %vector.body681, !llvm.loop !57

middle.block691:                                  ; preds = %vector.body681
  %cmp.n692 = icmp eq i64 %n.vec660, %wide.trip.count.i206
  br i1 %cmp.n692, label %wiener_filter_hv.exit244, label %.preheader.i240.preheader

.preheader.i240.preheader:                        ; preds = %vector.memcheck621, %.preheader.lr.ph.i227, %middle.block691
  %indvars.iv.i241.ph = phi i64 [ 0, %vector.memcheck621 ], [ 0, %.preheader.lr.ph.i227 ], [ %n.vec660, %middle.block691 ]
  br label %.preheader.i240

.preheader.i240:                                  ; preds = %.preheader.i240.preheader, %.preheader.i240
  %indvars.iv.i241 = phi i64 [ %indvars.iv.next.i242, %.preheader.i240 ], [ %indvars.iv.i241.ph, %.preheader.i240.preheader ] ; 9 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.318, i64 %indvars.iv.i241
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !13
  %i.qm = zext i16 %i.ql to i32
  %i.qn = load i16, ptr %i.l, align 2, !tbaa !13
  %i.qo = sext i16 %i.qn to i32
  %i.qp = mul nsw i32 %i.qo, %i.qm
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i231, i64 %indvars.iv.i241
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !13
  %i.qs = zext i16 %i.qr to i32
  %i.qt = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.qu = sext i16 %i.qt to i32
  %i.qv = mul nsw i32 %i.qu, %i.qs
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i233, i64 %indvars.iv.i241
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !13
  %i.qy = zext i16 %i.qx to i32
  %i.qz = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.ra = sext i16 %i.qz to i32
  %i.rb = mul nsw i32 %i.ra, %i.qy
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i235, i64 %indvars.iv.i241
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !13
  %i.re = zext i16 %i.rd to i32
  %i.rf = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.rg = sext i16 %i.rf to i32
  %i.rh = mul nsw i32 %i.rg, %i.re
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i237, i64 %indvars.iv.i241
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !13
  %i.rk = zext i16 %i.rj to i32
  %i.rl = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.rm = sext i16 %i.rl to i32
  %i.rn = mul nsw i32 %i.rm, %i.rk
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i239, i64 %indvars.iv.i241
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !13
  %i.rq = zext i16 %i.rp to i32
  %i.rr = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.rs = sext i16 %i.rr to i32
  %i.rt = mul nsw i32 %i.rs, %i.rq
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i241
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !13
  %i.rw = zext i16 %i.rv to i32
  %i.rx = load i16, ptr %i.js, align 2, !tbaa !13
  %i.ry = sext i16 %i.rx to i32
  %i.rz = mul nsw i32 %i.ry, %i.rw
  %i.sa = add i32 %i.jy, %i.qp
  %i.sb = add i32 %i.sa, %i.qv
  %i.sc = add i32 %i.sb, %i.rb
  %i.sd = add i32 %i.sc, %i.rh
  %i.se = add i32 %i.sd, %i.rn
  %i.sf = add i32 %i.se, %i.rt
  %i.sg = add i32 %i.sf, %i.rz
  %i.sh = ashr i32 %i.sg, %i.jn                   ; 2 uses
  %i.si = icmp slt i32 %i.sh, 0
  %i.sj = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.sh, i32 %8)
  %i.sk = trunc i32 %i.sj to i16
  %i.sl = select i1 %i.si, i16 0, i16 %i.sk
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.of, i64 %indvars.iv.i241
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !13
  %indvars.iv.next.i242 = add nuw nsw i64 %indvars.iv.i241, 1 ; 2 uses
  %exitcond.not.i243 = icmp eq i64 %indvars.iv.next.i242, %wide.trip.count.i206
  br i1 %exitcond.not.i243, label %wiener_filter_hv.exit244, label %.preheader.i240, !llvm.loop !58

wiener_filter_hv.exit244:                         ; preds = %.preheader.i240, %middle.block691, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(780) %.0..0..0.318, ptr noundef nonnull align 16 dereferenceable(780) %i.b, i64 780, i1 false)
  %.8..8..8.scevgep.i204.sroa_idx1067 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8.scevgep.i204.sroa_idx1067, i64 48, i1 false), !tbaa !11
  %.0..0..0.319 = load ptr, ptr %i.g, align 16, !tbaa !11 ; 6 uses
  %.48..48..48..sroa_idx1098 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.0..0..0.319, ptr %.48..48..48..sroa_idx1098, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.sn = getelementptr inbounds i8, ptr %i.o, i64 %1
  %i.so = getelementptr i8, ptr %i.of, i64 %1     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef readonly %i.sn, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.jr, label %.preheader.lr.ph.i249, label %wiener_filter_hv.exit266

.preheader.lr.ph.i249:                            ; preds = %wiener_filter_hv.exit244
  %.8..8..8.scevgep.i204.sroa_idx1071 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.8..8..8..pre55.i253 = load ptr, ptr %.8..8..8.scevgep.i204.sroa_idx1071, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..phi.trans.insert56.i254.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.16..16..16..pre57.i255 = load ptr, ptr %.16..16..16..phi.trans.insert56.i254.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..phi.trans.insert58.i256.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.24..24..24..pre59.i257 = load ptr, ptr %.24..24..24..phi.trans.insert58.i256.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..phi.trans.insert60.i258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.32..32..32..pre61.i259 = load ptr, ptr %.32..32..32..phi.trans.insert60.i258.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..sroa_idx1091 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre63.i261 = load ptr, ptr %.40..40..40..sroa_idx1091, align 8, !tbaa !11 ; 4 uses
  %min.iters.check731 = icmp ult i32 %4, 16
  br i1 %min.iters.check731, label %.preheader.i262.preheader, label %vector.memcheck694

vector.memcheck694:                               ; preds = %.preheader.lr.ph.i249
  %i.sp = shl nuw nsw i64 %wide.trip.count.i206, 1 ; 6 uses
  %i.sq = add i64 %1, %wide.trip.count.i206
  %i.sr = shl i64 %i.sq, 1
  %i.ss = mul i64 %indvar, %1
  %i.st = getelementptr i8, ptr %.0157, i64 %i.sr
  %scevgep695 = getelementptr i8, ptr %i.st, i64 %i.ss ; 7 uses
  %scevgep696 = getelementptr i8, ptr %.0..0..0.319, i64 %i.sp
  %scevgep697 = getelementptr i8, ptr %6, i64 30
  %scevgep698 = getelementptr i8, ptr %.8..8..8..pre55.i253, i64 %i.sp
  %scevgep699 = getelementptr i8, ptr %.16..16..16..pre57.i255, i64 %i.sp
  %scevgep700 = getelementptr i8, ptr %.24..24..24..pre59.i257, i64 %i.sp
  %scevgep701 = getelementptr i8, ptr %.32..32..32..pre61.i259, i64 %i.sp
  %scevgep702 = getelementptr i8, ptr %.40..40..40..pre63.i261, i64 %i.sp
  %bound0703 = icmp ult ptr %i.so, %scevgep696
  %bound1704 = icmp ult ptr %.0..0..0.319, %scevgep695
  %found.conflict705 = and i1 %bound0703, %bound1704
  %bound0706 = icmp ult ptr %i.so, %scevgep697
  %bound1707 = icmp ult ptr %i.l, %scevgep695
  %found.conflict708 = and i1 %bound0706, %bound1707
  %conflict.rdx709 = or i1 %found.conflict705, %found.conflict708
  %bound0710 = icmp ult ptr %i.so, %scevgep698
  %bound1711 = icmp ult ptr %.8..8..8..pre55.i253, %scevgep695
  %found.conflict712 = and i1 %bound0710, %bound1711
  %conflict.rdx713 = or i1 %conflict.rdx709, %found.conflict712
  %bound0714 = icmp ult ptr %i.so, %scevgep699
  %bound1715 = icmp ult ptr %.16..16..16..pre57.i255, %scevgep695
  %found.conflict716 = and i1 %bound0714, %bound1715
  %conflict.rdx717 = or i1 %conflict.rdx713, %found.conflict716
  %bound0718 = icmp ult ptr %i.so, %scevgep700
  %bound1719 = icmp ult ptr %.24..24..24..pre59.i257, %scevgep695
  %found.conflict720 = and i1 %bound0718, %bound1719
  %conflict.rdx721 = or i1 %conflict.rdx717, %found.conflict720
  %bound0722 = icmp ult ptr %i.so, %scevgep701
  %bound1723 = icmp ult ptr %.32..32..32..pre61.i259, %scevgep695
  %found.conflict724 = and i1 %bound0722, %bound1723
  %conflict.rdx725 = or i1 %conflict.rdx721, %found.conflict724
  %bound0726 = icmp ult ptr %i.so, %scevgep702
  %bound1727 = icmp ult ptr %.40..40..40..pre63.i261, %scevgep695
  %found.conflict728 = and i1 %bound0726, %bound1727
  %conflict.rdx729 = or i1 %conflict.rdx725, %found.conflict728
  br i1 %conflict.rdx729, label %.preheader.i262.preheader, label %vector.ph732

vector.ph732:                                     ; preds = %vector.memcheck694
  %n.vec733 = and i64 %wide.trip.count.i206, 2147483640 ; 3 uses
  %i.su = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert734 = insertelement <8 x i16> poison, i16 %i.su, i64 0
  %broadcast.splat735 = shufflevector <8 x i16> %broadcast.splatinsert734, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sv = sext <8 x i16> %broadcast.splat735 to <8 x i32>
  %i.sw = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert736 = insertelement <8 x i16> poison, i16 %i.sw, i64 0
  %broadcast.splat737 = shufflevector <8 x i16> %broadcast.splatinsert736, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sx = sext <8 x i16> %broadcast.splat737 to <8 x i32>
  %i.sy = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert738 = insertelement <8 x i16> poison, i16 %i.sy, i64 0
  %broadcast.splat739 = shufflevector <8 x i16> %broadcast.splatinsert738, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sz = sext <8 x i16> %broadcast.splat739 to <8 x i32>
  %i.ta = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert740 = insertelement <8 x i16> poison, i16 %i.ta, i64 0
  %broadcast.splat741 = shufflevector <8 x i16> %broadcast.splatinsert740, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.tb = sext <8 x i16> %broadcast.splat741 to <8 x i32>
  %i.tc = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert742 = insertelement <8 x i16> poison, i16 %i.tc, i64 0
  %broadcast.splat743 = shufflevector <8 x i16> %broadcast.splatinsert742, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.td = sext <8 x i16> %broadcast.splat743 to <8 x i32>
  %i.te = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert744 = insertelement <8 x i16> poison, i16 %i.te, i64 0
  %broadcast.splat745 = shufflevector <8 x i16> %broadcast.splatinsert744, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.tf = sext <8 x i16> %broadcast.splat745 to <8 x i32>
  %i.tg = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert746 = insertelement <8 x i16> poison, i16 %i.tg, i64 0
  %broadcast.splat747 = shufflevector <8 x i16> %broadcast.splatinsert746, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.th = sext <8 x i16> %broadcast.splat747 to <8 x i32>
  %broadcast.splatinsert748 = insertelement <8 x i32> poison, i32 %i.jy, i64 0
  %broadcast.splat749 = shufflevector <8 x i32> %broadcast.splatinsert748, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert750 = insertelement <8 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat751 = shufflevector <8 x i32> %broadcast.splatinsert750, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert752 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat753 = shufflevector <8 x i32> %broadcast.splatinsert752, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body754

vector.body754:                                   ; preds = %vector.body754, %vector.ph732
  %index755 = phi i64 [ 0, %vector.ph732 ], [ %index.next763, %vector.body754 ] ; 9 uses
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.319, i64 %index755
  %wide.load756 = load <8 x i16>, ptr %i.ti, align 2, !tbaa !13, !alias.scope !134
  %i.tj = zext <8 x i16> %wide.load756 to <8 x i32>
  %i.tk = mul nsw <8 x i32> %i.sv, %i.tj
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i253, i64 %index755
  %wide.load757 = load <8 x i16>, ptr %i.tl, align 2, !tbaa !13, !alias.scope !135
  %i.tm = zext <8 x i16> %wide.load757 to <8 x i32>
  %i.tn = mul nsw <8 x i32> %i.sx, %i.tm
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i255, i64 %index755
  %wide.load758 = load <8 x i16>, ptr %i.to, align 2, !tbaa !13, !alias.scope !136
  %i.tp = zext <8 x i16> %wide.load758 to <8 x i32>
  %i.tq = mul nsw <8 x i32> %i.sz, %i.tp
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i257, i64 %index755
  %wide.load759 = load <8 x i16>, ptr %i.tr, align 2, !tbaa !13, !alias.scope !137
  %i.ts = zext <8 x i16> %wide.load759 to <8 x i32>
  %i.tt = mul nsw <8 x i32> %i.tb, %i.ts
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i259, i64 %index755
  %wide.load760 = load <8 x i16>, ptr %i.tu, align 2, !tbaa !13, !alias.scope !138
  %i.tv = zext <8 x i16> %wide.load760 to <8 x i32>
  %i.tw = mul nsw <8 x i32> %i.td, %i.tv
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i261, i64 %index755
  %wide.load761 = load <8 x i16>, ptr %i.tx, align 2, !tbaa !13, !alias.scope !139
  %i.ty = zext <8 x i16> %wide.load761 to <8 x i32>
  %i.tz = mul nsw <8 x i32> %i.tf, %i.ty
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index755
  %wide.load762 = load <8 x i16>, ptr %i.ua, align 16, !tbaa !13
  %i.ub = zext <8 x i16> %wide.load762 to <8 x i32>
  %i.uc = mul nsw <8 x i32> %i.th, %i.ub
  %i.ud = add <8 x i32> %broadcast.splat749, %i.tk
  %i.ue = add <8 x i32> %i.ud, %i.tn
  %i.uf = add <8 x i32> %i.ue, %i.tq
  %i.ug = add <8 x i32> %i.uf, %i.tt
  %i.uh = add <8 x i32> %i.ug, %i.tw
  %i.ui = add <8 x i32> %i.uh, %i.tz
  %i.uj = add <8 x i32> %i.ui, %i.uc
  %i.uk = ashr <8 x i32> %i.uj, %broadcast.splat751 ; 2 uses
  %i.ul = icmp slt <8 x i32> %i.uk, zeroinitializer
  %i.um = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.uk, <8 x i32> %broadcast.splat753)
  %i.un = trunc <8 x i32> %i.um to <8 x i16>
  %i.uo = select <8 x i1> %i.ul, <8 x i16> zeroinitializer, <8 x i16> %i.un
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %index755
  store <8 x i16> %i.uo, ptr %i.up, align 2, !tbaa !13, !alias.scope !140, !noalias !141
  %index.next763 = add nuw i64 %index755, 8       ; 2 uses
  %i.uq = icmp eq i64 %index.next763, %n.vec733
  br i1 %i.uq, label %middle.block764, label %vector.body754, !llvm.loop !68

middle.block764:                                  ; preds = %vector.body754
  %cmp.n765 = icmp eq i64 %n.vec733, %wide.trip.count.i206
  br i1 %cmp.n765, label %wiener_filter_hv.exit266, label %.preheader.i262.preheader

.preheader.i262.preheader:                        ; preds = %vector.memcheck694, %.preheader.lr.ph.i249, %middle.block764
  %indvars.iv.i263.ph = phi i64 [ 0, %vector.memcheck694 ], [ 0, %.preheader.lr.ph.i249 ], [ %n.vec733, %middle.block764 ]
  br label %.preheader.i262

.preheader.i262:                                  ; preds = %.preheader.i262.preheader, %.preheader.i262
  %indvars.iv.i263 = phi i64 [ %indvars.iv.next.i264, %.preheader.i262 ], [ %indvars.iv.i263.ph, %.preheader.i262.preheader ] ; 9 uses
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.319, i64 %indvars.iv.i263
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !13
  %i.ut = zext i16 %i.us to i32
  %i.uu = load i16, ptr %i.l, align 2, !tbaa !13
  %i.uv = sext i16 %i.uu to i32
  %i.uw = mul nsw i32 %i.uv, %i.ut
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i253, i64 %indvars.iv.i263
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !13
  %i.uz = zext i16 %i.uy to i32
  %i.va = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.vb = sext i16 %i.va to i32
  %i.vc = mul nsw i32 %i.vb, %i.uz
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i255, i64 %indvars.iv.i263
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !13
  %i.vf = zext i16 %i.ve to i32
  %i.vg = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.vh = sext i16 %i.vg to i32
  %i.vi = mul nsw i32 %i.vh, %i.vf
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i257, i64 %indvars.iv.i263
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !13
  %i.vl = zext i16 %i.vk to i32
  %i.vm = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.vn = sext i16 %i.vm to i32
  %i.vo = mul nsw i32 %i.vn, %i.vl
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i259, i64 %indvars.iv.i263
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !13
  %i.vr = zext i16 %i.vq to i32
  %i.vs = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.vt = sext i16 %i.vs to i32
  %i.vu = mul nsw i32 %i.vt, %i.vr
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i261, i64 %indvars.iv.i263
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !13
  %i.vx = zext i16 %i.vw to i32
  %i.vy = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.vz = sext i16 %i.vy to i32
  %i.wa = mul nsw i32 %i.vz, %i.vx
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i263
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !13
  %i.wd = zext i16 %i.wc to i32
  %i.we = load i16, ptr %i.js, align 2, !tbaa !13
  %i.wf = sext i16 %i.we to i32
  %i.wg = mul nsw i32 %i.wf, %i.wd
  %i.wh = add i32 %i.jy, %i.uw
  %i.wi = add i32 %i.wh, %i.vc
  %i.wj = add i32 %i.wi, %i.vi
  %i.wk = add i32 %i.wj, %i.vo
  %i.wl = add i32 %i.wk, %i.vu
  %i.wm = add i32 %i.wl, %i.wa
  %i.wn = add i32 %i.wm, %i.wg
  %i.wo = ashr i32 %i.wn, %i.jn                   ; 2 uses
  %i.wp = icmp slt i32 %i.wo, 0
  %i.wq = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.wo, i32 %8)
  %i.wr = trunc i32 %i.wq to i16
  %i.ws = select i1 %i.wp, i16 0, i16 %i.wr
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.so, i64 %indvars.iv.i263
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !13
  %indvars.iv.next.i264 = add nuw nsw i64 %indvars.iv.i263, 1 ; 2 uses
  %exitcond.not.i265 = icmp eq i64 %indvars.iv.next.i264, %wide.trip.count.i206
  br i1 %exitcond.not.i265, label %wiener_filter_hv.exit266, label %.preheader.i262, !llvm.loop !69

wiener_filter_hv.exit266:                         ; preds = %.preheader.i262, %middle.block764, %wiener_filter_hv.exit244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(780) %.0..0..0.319, ptr noundef nonnull align 16 dereferenceable(780) %i.a, i64 780, i1 false)
  %.8..8..8.scevgep.i204.sroa_idx1068 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8.scevgep.i204.sroa_idx1068, i64 48, i1 false), !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.wu = getelementptr inbounds i8, ptr %i.so, i64 %1
  br label %bb.n

end_hunk_0
