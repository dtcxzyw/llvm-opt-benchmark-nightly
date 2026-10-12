Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/looprestoration_tmpl?download=true
inline.NumInlined: 132
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@wiener_c:bb.a
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx575 = or i1 %found.conflict573, %conflict.rdx570
  %bound0576 = icmp ult ptr %.0157, %scevgep550
  %bound1577 = icmp ult ptr %.32..32..32..pre61.i215, %scevgep
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx580 = or i1 %found.conflict578, %conflict.rdx575
  %bound0581 = icmp ult ptr %.0157, %scevgep551
  %bound1582 = icmp ult ptr %.40..40..40..pre63.i217, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx585 = or i1 %found.conflict583, %conflict.rdx580
  %conflict.rdx590 = or i1 %found.conflict588, %conflict.rdx585
  br i1 %conflict.rdx590, label %.preheader.i218.preheader, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck544
  %i.kf = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert595 = insertelement <8 x i16> poison, i16 %i.kf, i64 0
  %broadcast.splat596 = shufflevector <8 x i16> %broadcast.splatinsert595, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kg = sext <8 x i16> %broadcast.splat596 to <8 x i32>
  %i.kh = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert597 = insertelement <8 x i16> poison, i16 %i.kh, i64 0
  %broadcast.splat598 = shufflevector <8 x i16> %broadcast.splatinsert597, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ki = sext <8 x i16> %broadcast.splat598 to <8 x i32>
  %i.kj = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert599 = insertelement <8 x i16> poison, i16 %i.kj, i64 0
  %broadcast.splat600 = shufflevector <8 x i16> %broadcast.splatinsert599, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kk = sext <8 x i16> %broadcast.splat600 to <8 x i32>
  %i.kl = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert601 = insertelement <8 x i16> poison, i16 %i.kl, i64 0
  %broadcast.splat602 = shufflevector <8 x i16> %broadcast.splatinsert601, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.km = sext <8 x i16> %broadcast.splat602 to <8 x i32>
  %i.kn = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert603 = insertelement <8 x i16> poison, i16 %i.kn, i64 0
  %broadcast.splat604 = shufflevector <8 x i16> %broadcast.splatinsert603, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ko = sext <8 x i16> %broadcast.splat604 to <8 x i32>
  %i.kp = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert605 = insertelement <8 x i16> poison, i16 %i.kp, i64 0
  %broadcast.splat606 = shufflevector <8 x i16> %broadcast.splatinsert605, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kq = sext <8 x i16> %broadcast.splat606 to <8 x i32>
  %i.kr = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert607 = insertelement <8 x i16> poison, i16 %i.kr, i64 0
  %broadcast.splat608 = shufflevector <8 x i16> %broadcast.splatinsert607, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ks = sext <8 x i16> %broadcast.splat608 to <8 x i32>
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph593
  %index616 = phi i64 [ 0, %vector.ph593 ], [ %index.next624, %vector.body615 ] ; 9 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %index616
  %wide.load617 = load <8 x i16>, ptr %i.kt, align 2, !tbaa !13, !alias.scope !115
  %i.ku = zext <8 x i16> %wide.load617 to <8 x i32>
  %i.kv = mul nsw <8 x i32> %i.kg, %i.ku
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %index616
  %wide.load618 = load <8 x i16>, ptr %i.kw, align 2, !tbaa !13, !alias.scope !116
  %i.kx = zext <8 x i16> %wide.load618 to <8 x i32>
  %i.ky = mul nsw <8 x i32> %i.ki, %i.kx
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %index616
  %wide.load619 = load <8 x i16>, ptr %i.kz, align 2, !tbaa !13, !alias.scope !117
  %i.la = zext <8 x i16> %wide.load619 to <8 x i32>
  %i.lb = mul nsw <8 x i32> %i.kk, %i.la
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %index616
  %wide.load620 = load <8 x i16>, ptr %i.lc, align 2, !tbaa !13, !alias.scope !118
  %i.ld = zext <8 x i16> %wide.load620 to <8 x i32>
  %i.le = mul nsw <8 x i32> %i.km, %i.ld
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i215, i64 %index616
  %wide.load621 = load <8 x i16>, ptr %i.lf, align 2, !tbaa !13, !alias.scope !119
  %i.lg = zext <8 x i16> %wide.load621 to <8 x i32>
  %i.lh = mul nsw <8 x i32> %i.ko, %i.lg
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i217, i64 %index616
  %wide.load622 = load <8 x i16>, ptr %i.li, align 2, !tbaa !13, !alias.scope !120
  %i.lj = zext <8 x i16> %wide.load622 to <8 x i32>
  %i.lk = mul nsw <8 x i32> %i.kq, %i.lj
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index616
  %wide.load623 = load <8 x i16>, ptr %i.ll, align 16, !tbaa !13, !alias.scope !121
  %i.lm = zext <8 x i16> %wide.load623 to <8 x i32>
  %i.ln = mul nsw <8 x i32> %i.ks, %i.lm
  %i.lo = add <8 x i32> %broadcast.splat610, %i.kv
  %i.lp = add <8 x i32> %i.lo, %i.ky
  %i.lq = add <8 x i32> %i.lp, %i.lb
  %i.lr = add <8 x i32> %i.lq, %i.le
  %i.ls = add <8 x i32> %i.lr, %i.lh
  %i.lt = add <8 x i32> %i.ls, %i.lk
  %i.lu = add <8 x i32> %i.lt, %i.ln
  %i.lv = ashr <8 x i32> %i.lu, %broadcast.splat612 ; 2 uses
  %i.lw = icmp slt <8 x i32> %i.lv, zeroinitializer
  %i.lx = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.lv, <8 x i32> %broadcast.splat614)
  %i.ly = trunc <8 x i32> %i.lx to <8 x i16>
  %i.lz = select <8 x i1> %i.lw, <8 x i16> zeroinitializer, <8 x i16> %i.ly
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.1158, i64 %index616
  store <8 x i16> %i.lz, ptr %i.ma, align 2, !tbaa !13, !alias.scope !122, !noalias !123
  %index.next624 = add nuw i64 %index616, 8       ; 2 uses
  %i.mb = icmp eq i64 %index.next624, %n.vec594
  br i1 %i.mb, label %middle.block625, label %vector.body615, !llvm.loop !46

middle.block625:                                  ; preds = %vector.body615
  br i1 %cmp.n626, label %wiener_filter_hv.exit222, label %.preheader.i218.preheader

.preheader.i218.preheader:                        ; preds = %vector.memcheck544, %.preheader.lr.ph.i205, %middle.block625
  %indvars.iv.i219.ph = phi i64 [ 0, %vector.memcheck544 ], [ 0, %.preheader.lr.ph.i205 ], [ %n.vec594, %middle.block625 ]
  br label %.preheader.i218

.preheader.i218:                                  ; preds = %.preheader.i218.preheader, %.preheader.i218
  %indvars.iv.i219 = phi i64 [ %indvars.iv.next.i220, %.preheader.i218 ], [ %indvars.iv.i219.ph, %.preheader.i218.preheader ] ; 9 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %indvars.iv.i219
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !13
  %i.me = zext i16 %i.md to i32
  %i.mf = load i16, ptr %i.l, align 2, !tbaa !13
  %i.mg = sext i16 %i.mf to i32
  %i.mh = mul nsw i32 %i.mg, %i.me
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %indvars.iv.i219
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !13
  %i.mk = zext i16 %i.mj to i32
  %i.ml = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.mm = sext i16 %i.ml to i32
  %i.mn = mul nsw i32 %i.mm, %i.mk
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %indvars.iv.i219
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !13
  %i.mq = zext i16 %i.mp to i32
  %i.mr = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.ms = sext i16 %i.mr to i32
  %i.mt = mul nsw i32 %i.ms, %i.mq
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %indvars.iv.i219
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !13
  %i.mw = zext i16 %i.mv to i32
  %i.mx = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.my = sext i16 %i.mx to i32
  %i.mz = mul nsw i32 %i.my, %i.mw
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i215, i64 %indvars.iv.i219
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !13
  %i.nc = zext i16 %i.nb to i32
  %i.nd = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.ne = sext i16 %i.nd to i32
  %i.nf = mul nsw i32 %i.ne, %i.nc
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i217, i64 %indvars.iv.i219
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !13
  %i.ni = zext i16 %i.nh to i32
  %i.nj = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.nk = sext i16 %i.nj to i32
  %i.nl = mul nsw i32 %i.nk, %i.ni
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i219
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !13
  %i.no = zext i16 %i.nn to i32
  %i.np = load i16, ptr %i.js, align 2, !tbaa !13
  %i.nq = sext i16 %i.np to i32
  %i.nr = mul nsw i32 %i.nq, %i.no
  %i.ns = add i32 %i.jy, %i.mh
  %i.nt = add i32 %i.ns, %i.mn
  %i.nu = add i32 %i.nt, %i.mt
  %i.nv = add i32 %i.nu, %i.mz
  %i.nw = add i32 %i.nv, %i.nf
  %i.nx = add i32 %i.nw, %i.nl
  %i.ny = add i32 %i.nx, %i.nr
  %i.nz = ashr i32 %i.ny, %i.jn                   ; 2 uses
  %i.oa = icmp slt i32 %i.nz, 0
  %i.ob = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.nz, i32 %8)
  %i.oc = trunc i32 %i.ob to i16
  %i.od = select i1 %i.oa, i16 0, i16 %i.oc
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.1158, i64 %indvars.iv.i219
  store i16 %i.od, ptr %i.oe, align 2, !tbaa !13
  %indvars.iv.next.i220 = add nuw nsw i64 %indvars.iv.i219, 1 ; 2 uses
  %exitcond.not.i221 = icmp eq i64 %indvars.iv.next.i220, %wide.trip.count.i206
  br i1 %exitcond.not.i221, label %wiener_filter_hv.exit222, label %.preheader.i218, !llvm.loop !47

wiener_filter_hv.exit222:                         ; preds = %.preheader.i218, %middle.block625, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(780) %.0.318363, ptr noundef nonnull align 16 dereferenceable(780) %i.c, i64 780, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8.scevgep.i204.sroa_idx, i64 48, i1 false), !tbaa !11
  %.0..0..0.318 = load ptr, ptr %i.g, align 16, !tbaa !11 ; 9 uses
  store ptr %.0..0..0.318, ptr %.48..48..48..sroa_idx1104, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.of = getelementptr inbounds nuw i8, ptr %.1160, i64 8
  %i.og = getelementptr i8, ptr %.1158, i64 %1    ; 12 uses
  %i.oh = add nsw i32 %.1162, -1
  %i.oi = icmp sgt i32 %.1162, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.oi, label %bb.k, label %bb.l

bb.l:                                             ; preds = %wiener_filter_hv.exit222
  %i.oj = and i32 %7, 8
  %.not171 = icmp eq i32 %i.oj, 0
  br i1 %.not171, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef readonly %i.o, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.jr, label %.preheader.lr.ph.i227, label %wiener_filter_hv.exit244

.preheader.lr.ph.i227:                            ; preds = %bb.m
  %.8..8..8.scevgep.i204.sroa_idx1077 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.8..8..8..pre55.i231 = load ptr, ptr %.8..8..8.scevgep.i204.sroa_idx1077, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..phi.trans.insert56.i232.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.16..16..16..pre57.i233 = load ptr, ptr %.16..16..16..phi.trans.insert56.i232.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..phi.trans.insert58.i234.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.24..24..24..pre59.i235 = load ptr, ptr %.24..24..24..phi.trans.insert58.i234.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..phi.trans.insert60.i236.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.32..32..32..pre61.i237 = load ptr, ptr %.32..32..32..phi.trans.insert60.i236.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..sroa_idx1097 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre63.i239 = load ptr, ptr %.40..40..40..sroa_idx1097, align 8, !tbaa !11 ; 4 uses
  %min.iters.check665 = icmp ult i32 %4, 16
  br i1 %min.iters.check665, label %.preheader.i240.preheader, label %vector.memcheck628

vector.memcheck628:                               ; preds = %.preheader.lr.ph.i227
  %i.ok = shl nuw nsw i64 %wide.trip.count.i206, 1 ; 7 uses
  %i.ol = mul i64 %1, %indvar
  %i.om = getelementptr i8, ptr %.0157, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 %1
  %scevgep629 = getelementptr i8, ptr %i.on, i64 %i.ok ; 7 uses
  %scevgep630 = getelementptr i8, ptr %.0..0..0.318, i64 %i.ok
  %scevgep631 = getelementptr i8, ptr %6, i64 30
  %scevgep632 = getelementptr i8, ptr %.8..8..8..pre55.i231, i64 %i.ok
  %scevgep633 = getelementptr i8, ptr %.16..16..16..pre57.i233, i64 %i.ok
  %scevgep634 = getelementptr i8, ptr %.24..24..24..pre59.i235, i64 %i.ok
  %scevgep635 = getelementptr i8, ptr %.32..32..32..pre61.i237, i64 %i.ok
  %scevgep636 = getelementptr i8, ptr %.40..40..40..pre63.i239, i64 %i.ok
  %bound0637 = icmp ult ptr %i.og, %scevgep630
  %bound1638 = icmp ult ptr %.0..0..0.318, %scevgep629
  %found.conflict639 = and i1 %bound0637, %bound1638
  %bound0640 = icmp ult ptr %i.og, %scevgep631
  %bound1641 = icmp ult ptr %i.l, %scevgep629
  %found.conflict642 = and i1 %bound0640, %bound1641
  %conflict.rdx643 = or i1 %found.conflict639, %found.conflict642
  %bound0644 = icmp ult ptr %i.og, %scevgep632
  %bound1645 = icmp ult ptr %.8..8..8..pre55.i231, %scevgep629
  %found.conflict646 = and i1 %bound0644, %bound1645
  %conflict.rdx647 = or i1 %conflict.rdx643, %found.conflict646
  %bound0648 = icmp ult ptr %i.og, %scevgep633
  %bound1649 = icmp ult ptr %.16..16..16..pre57.i233, %scevgep629
  %found.conflict650 = and i1 %bound0648, %bound1649
  %conflict.rdx651 = or i1 %conflict.rdx647, %found.conflict650
  %bound0652 = icmp ult ptr %i.og, %scevgep634
  %bound1653 = icmp ult ptr %.24..24..24..pre59.i235, %scevgep629
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx655 = or i1 %conflict.rdx651, %found.conflict654
  %bound0656 = icmp ult ptr %i.og, %scevgep635
  %bound1657 = icmp ult ptr %.32..32..32..pre61.i237, %scevgep629
  %found.conflict658 = and i1 %bound0656, %bound1657
  %conflict.rdx659 = or i1 %conflict.rdx655, %found.conflict658
  %bound0660 = icmp ult ptr %i.og, %scevgep636
  %bound1661 = icmp ult ptr %.40..40..40..pre63.i239, %scevgep629
  %found.conflict662 = and i1 %bound0660, %bound1661
  %conflict.rdx663 = or i1 %conflict.rdx659, %found.conflict662
  br i1 %conflict.rdx663, label %.preheader.i240.preheader, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck628
  %n.vec667 = and i64 %wide.trip.count.i206, 2147483640 ; 3 uses
  %i.oo = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert668 = insertelement <8 x i16> poison, i16 %i.oo, i64 0
  %broadcast.splat669 = shufflevector <8 x i16> %broadcast.splatinsert668, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.op = sext <8 x i16> %broadcast.splat669 to <8 x i32>
  %i.oq = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert670 = insertelement <8 x i16> poison, i16 %i.oq, i64 0
  %broadcast.splat671 = shufflevector <8 x i16> %broadcast.splatinsert670, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.or = sext <8 x i16> %broadcast.splat671 to <8 x i32>
  %i.os = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert672 = insertelement <8 x i16> poison, i16 %i.os, i64 0
  %broadcast.splat673 = shufflevector <8 x i16> %broadcast.splatinsert672, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ot = sext <8 x i16> %broadcast.splat673 to <8 x i32>
  %i.ou = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert674 = insertelement <8 x i16> poison, i16 %i.ou, i64 0
  %broadcast.splat675 = shufflevector <8 x i16> %broadcast.splatinsert674, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ov = sext <8 x i16> %broadcast.splat675 to <8 x i32>
  %i.ow = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert676 = insertelement <8 x i16> poison, i16 %i.ow, i64 0
  %broadcast.splat677 = shufflevector <8 x i16> %broadcast.splatinsert676, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ox = sext <8 x i16> %broadcast.splat677 to <8 x i32>
  %i.oy = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert678 = insertelement <8 x i16> poison, i16 %i.oy, i64 0
  %broadcast.splat679 = shufflevector <8 x i16> %broadcast.splatinsert678, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.oz = sext <8 x i16> %broadcast.splat679 to <8 x i32>
  %i.pa = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !124
  %broadcast.splatinsert680 = insertelement <8 x i16> poison, i16 %i.pa, i64 0
  %broadcast.splat681 = shufflevector <8 x i16> %broadcast.splatinsert680, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.pb = sext <8 x i16> %broadcast.splat681 to <8 x i32>
  %broadcast.splatinsert682 = insertelement <8 x i32> poison, i32 %i.jy, i64 0
  %broadcast.splat683 = shufflevector <8 x i32> %broadcast.splatinsert682, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert684 = insertelement <8 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat685 = shufflevector <8 x i32> %broadcast.splatinsert684, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert686 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat687 = shufflevector <8 x i32> %broadcast.splatinsert686, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph666
  %index689 = phi i64 [ 0, %vector.ph666 ], [ %index.next697, %vector.body688 ] ; 9 uses
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.318, i64 %index689
  %wide.load690 = load <8 x i16>, ptr %i.pc, align 2, !tbaa !13, !alias.scope !125
  %i.pd = zext <8 x i16> %wide.load690 to <8 x i32>
  %i.pe = mul nsw <8 x i32> %i.op, %i.pd
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i231, i64 %index689
  %wide.load691 = load <8 x i16>, ptr %i.pf, align 2, !tbaa !13, !alias.scope !126
  %i.pg = zext <8 x i16> %wide.load691 to <8 x i32>
  %i.ph = mul nsw <8 x i32> %i.or, %i.pg
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i233, i64 %index689
  %wide.load692 = load <8 x i16>, ptr %i.pi, align 2, !tbaa !13, !alias.scope !127
  %i.pj = zext <8 x i16> %wide.load692 to <8 x i32>
  %i.pk = mul nsw <8 x i32> %i.ot, %i.pj
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i235, i64 %index689
  %wide.load693 = load <8 x i16>, ptr %i.pl, align 2, !tbaa !13, !alias.scope !128
  %i.pm = zext <8 x i16> %wide.load693 to <8 x i32>
  %i.pn = mul nsw <8 x i32> %i.ov, %i.pm
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i237, i64 %index689
  %wide.load694 = load <8 x i16>, ptr %i.po, align 2, !tbaa !13, !alias.scope !129
  %i.pp = zext <8 x i16> %wide.load694 to <8 x i32>
  %i.pq = mul nsw <8 x i32> %i.ox, %i.pp
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i239, i64 %index689
  %wide.load695 = load <8 x i16>, ptr %i.pr, align 2, !tbaa !13, !alias.scope !130
  %i.ps = zext <8 x i16> %wide.load695 to <8 x i32>
  %i.pt = mul nsw <8 x i32> %i.oz, %i.ps
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index689
  %wide.load696 = load <8 x i16>, ptr %i.pu, align 16, !tbaa !13
  %i.pv = zext <8 x i16> %wide.load696 to <8 x i32>
  %i.pw = mul nsw <8 x i32> %i.pb, %i.pv
  %i.px = add <8 x i32> %broadcast.splat683, %i.pe
  %i.py = add <8 x i32> %i.px, %i.ph
  %i.pz = add <8 x i32> %i.py, %i.pk
  %i.qa = add <8 x i32> %i.pz, %i.pn
  %i.qb = add <8 x i32> %i.qa, %i.pq
  %i.qc = add <8 x i32> %i.qb, %i.pt
  %i.qd = add <8 x i32> %i.qc, %i.pw
  %i.qe = ashr <8 x i32> %i.qd, %broadcast.splat685 ; 2 uses
  %i.qf = icmp slt <8 x i32> %i.qe, zeroinitializer
  %i.qg = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.qe, <8 x i32> %broadcast.splat687)
  %i.qh = trunc <8 x i32> %i.qg to <8 x i16>
  %i.qi = select <8 x i1> %i.qf, <8 x i16> zeroinitializer, <8 x i16> %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %index689
  store <8 x i16> %i.qi, ptr %i.qj, align 2, !tbaa !13, !alias.scope !131, !noalias !132
  %index.next697 = add nuw i64 %index689, 8       ; 2 uses
  %i.qk = icmp eq i64 %index.next697, %n.vec667
  br i1 %i.qk, label %middle.block698, label %vector.body688, !llvm.loop !57

middle.block698:                                  ; preds = %vector.body688
  %cmp.n699 = icmp eq i64 %n.vec667, %wide.trip.count.i206
  br i1 %cmp.n699, label %wiener_filter_hv.exit244, label %.preheader.i240.preheader

.preheader.i240.preheader:                        ; preds = %vector.memcheck628, %.preheader.lr.ph.i227, %middle.block698
  %indvars.iv.i241.ph = phi i64 [ 0, %vector.memcheck628 ], [ 0, %.preheader.lr.ph.i227 ], [ %n.vec667, %middle.block698 ]
  br label %.preheader.i240

.preheader.i240:                                  ; preds = %.preheader.i240.preheader, %.preheader.i240
  %indvars.iv.i241 = phi i64 [ %indvars.iv.next.i242, %.preheader.i240 ], [ %indvars.iv.i241.ph, %.preheader.i240.preheader ] ; 9 uses
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.318, i64 %indvars.iv.i241
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !13
  %i.qn = zext i16 %i.qm to i32
  %i.qo = load i16, ptr %i.l, align 2, !tbaa !13
  %i.qp = sext i16 %i.qo to i32
  %i.qq = mul nsw i32 %i.qp, %i.qn
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i231, i64 %indvars.iv.i241
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !13
  %i.qt = zext i16 %i.qs to i32
  %i.qu = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.qv = sext i16 %i.qu to i32
  %i.qw = mul nsw i32 %i.qv, %i.qt
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i233, i64 %indvars.iv.i241
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !13
  %i.qz = zext i16 %i.qy to i32
  %i.ra = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.rb = sext i16 %i.ra to i32
  %i.rc = mul nsw i32 %i.rb, %i.qz
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i235, i64 %indvars.iv.i241
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !13
  %i.rf = zext i16 %i.re to i32
  %i.rg = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.rh = sext i16 %i.rg to i32
  %i.ri = mul nsw i32 %i.rh, %i.rf
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i237, i64 %indvars.iv.i241
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !13
  %i.rl = zext i16 %i.rk to i32
  %i.rm = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.rn = sext i16 %i.rm to i32
  %i.ro = mul nsw i32 %i.rn, %i.rl
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i239, i64 %indvars.iv.i241
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !13
  %i.rr = zext i16 %i.rq to i32
  %i.rs = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.rt = sext i16 %i.rs to i32
  %i.ru = mul nsw i32 %i.rt, %i.rr
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i241
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !13
  %i.rx = zext i16 %i.rw to i32
  %i.ry = load i16, ptr %i.js, align 2, !tbaa !13
  %i.rz = sext i16 %i.ry to i32
  %i.sa = mul nsw i32 %i.rz, %i.rx
  %i.sb = add i32 %i.jy, %i.qq
  %i.sc = add i32 %i.sb, %i.qw
  %i.sd = add i32 %i.sc, %i.rc
  %i.se = add i32 %i.sd, %i.ri
  %i.sf = add i32 %i.se, %i.ro
  %i.sg = add i32 %i.sf, %i.ru
  %i.sh = add i32 %i.sg, %i.sa
  %i.si = ashr i32 %i.sh, %i.jn                   ; 2 uses
  %i.sj = icmp slt i32 %i.si, 0
  %i.sk = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.si, i32 %8)
  %i.sl = trunc i32 %i.sk to i16
  %i.sm = select i1 %i.sj, i16 0, i16 %i.sl
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv.i241
  store i16 %i.sm, ptr %i.sn, align 2, !tbaa !13
  %indvars.iv.next.i242 = add nuw nsw i64 %indvars.iv.i241, 1 ; 2 uses
  %exitcond.not.i243 = icmp eq i64 %indvars.iv.next.i242, %wide.trip.count.i206
  br i1 %exitcond.not.i243, label %wiener_filter_hv.exit244, label %.preheader.i240, !llvm.loop !58

wiener_filter_hv.exit244:                         ; preds = %.preheader.i240, %middle.block698, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(780) %.0..0..0.318, ptr noundef nonnull align 16 dereferenceable(780) %i.b, i64 780, i1 false)
  %.8..8..8.scevgep.i204.sroa_idx1074 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8.scevgep.i204.sroa_idx1074, i64 48, i1 false), !tbaa !11
  %.0..0..0.319 = load ptr, ptr %i.g, align 16, !tbaa !11 ; 6 uses
  %.48..48..48..sroa_idx1105 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.0..0..0.319, ptr %.48..48..48..sroa_idx1105, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.so = getelementptr inbounds i8, ptr %i.o, i64 %1
  %i.sp = getelementptr i8, ptr %i.og, i64 %1     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef readonly %i.so, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.jr, label %.preheader.lr.ph.i249, label %wiener_filter_hv.exit266

.preheader.lr.ph.i249:                            ; preds = %wiener_filter_hv.exit244
  %.8..8..8.scevgep.i204.sroa_idx1078 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.8..8..8..pre55.i253 = load ptr, ptr %.8..8..8.scevgep.i204.sroa_idx1078, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..phi.trans.insert56.i254.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.16..16..16..pre57.i255 = load ptr, ptr %.16..16..16..phi.trans.insert56.i254.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..phi.trans.insert58.i256.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.24..24..24..pre59.i257 = load ptr, ptr %.24..24..24..phi.trans.insert58.i256.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..phi.trans.insert60.i258.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.32..32..32..pre61.i259 = load ptr, ptr %.32..32..32..phi.trans.insert60.i258.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..sroa_idx1098 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre63.i261 = load ptr, ptr %.40..40..40..sroa_idx1098, align 8, !tbaa !11 ; 4 uses
  %min.iters.check738 = icmp ult i32 %4, 16
  br i1 %min.iters.check738, label %.preheader.i262.preheader, label %vector.memcheck701

vector.memcheck701:                               ; preds = %.preheader.lr.ph.i249
  %i.sq = shl nuw nsw i64 %wide.trip.count.i206, 1 ; 6 uses
  %i.sr = add i64 %1, %wide.trip.count.i206
  %i.ss = shl i64 %i.sr, 1
  %i.st = mul i64 %1, %indvar
  %i.su = getelementptr i8, ptr %.0157, i64 %i.st
  %scevgep702 = getelementptr i8, ptr %i.su, i64 %i.ss ; 7 uses
  %scevgep703 = getelementptr i8, ptr %.0..0..0.319, i64 %i.sq
  %scevgep704 = getelementptr i8, ptr %6, i64 30
  %scevgep705 = getelementptr i8, ptr %.8..8..8..pre55.i253, i64 %i.sq
  %scevgep706 = getelementptr i8, ptr %.16..16..16..pre57.i255, i64 %i.sq
  %scevgep707 = getelementptr i8, ptr %.24..24..24..pre59.i257, i64 %i.sq
  %scevgep708 = getelementptr i8, ptr %.32..32..32..pre61.i259, i64 %i.sq
  %scevgep709 = getelementptr i8, ptr %.40..40..40..pre63.i261, i64 %i.sq
  %bound0710 = icmp ult ptr %i.sp, %scevgep703
  %bound1711 = icmp ult ptr %.0..0..0.319, %scevgep702
  %found.conflict712 = and i1 %bound0710, %bound1711
  %bound0713 = icmp ult ptr %i.sp, %scevgep704
  %bound1714 = icmp ult ptr %i.l, %scevgep702
  %found.conflict715 = and i1 %bound0713, %bound1714
  %conflict.rdx716 = or i1 %found.conflict712, %found.conflict715
  %bound0717 = icmp ult ptr %i.sp, %scevgep705
  %bound1718 = icmp ult ptr %.8..8..8..pre55.i253, %scevgep702
  %found.conflict719 = and i1 %bound0717, %bound1718
  %conflict.rdx720 = or i1 %conflict.rdx716, %found.conflict719
  %bound0721 = icmp ult ptr %i.sp, %scevgep706
  %bound1722 = icmp ult ptr %.16..16..16..pre57.i255, %scevgep702
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx724 = or i1 %conflict.rdx720, %found.conflict723
  %bound0725 = icmp ult ptr %i.sp, %scevgep707
  %bound1726 = icmp ult ptr %.24..24..24..pre59.i257, %scevgep702
  %found.conflict727 = and i1 %bound0725, %bound1726
  %conflict.rdx728 = or i1 %conflict.rdx724, %found.conflict727
  %bound0729 = icmp ult ptr %i.sp, %scevgep708
  %bound1730 = icmp ult ptr %.32..32..32..pre61.i259, %scevgep702
  %found.conflict731 = and i1 %bound0729, %bound1730
  %conflict.rdx732 = or i1 %conflict.rdx728, %found.conflict731
  %bound0733 = icmp ult ptr %i.sp, %scevgep709
  %bound1734 = icmp ult ptr %.40..40..40..pre63.i261, %scevgep702
  %found.conflict735 = and i1 %bound0733, %bound1734
  %conflict.rdx736 = or i1 %conflict.rdx732, %found.conflict735
  br i1 %conflict.rdx736, label %.preheader.i262.preheader, label %vector.ph739

vector.ph739:                                     ; preds = %vector.memcheck701
  %n.vec740 = and i64 %wide.trip.count.i206, 2147483640 ; 3 uses
  %i.sv = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert741 = insertelement <8 x i16> poison, i16 %i.sv, i64 0
  %broadcast.splat742 = shufflevector <8 x i16> %broadcast.splatinsert741, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sw = sext <8 x i16> %broadcast.splat742 to <8 x i32>
  %i.sx = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert743 = insertelement <8 x i16> poison, i16 %i.sx, i64 0
  %broadcast.splat744 = shufflevector <8 x i16> %broadcast.splatinsert743, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sy = sext <8 x i16> %broadcast.splat744 to <8 x i32>
  %i.sz = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert745 = insertelement <8 x i16> poison, i16 %i.sz, i64 0
  %broadcast.splat746 = shufflevector <8 x i16> %broadcast.splatinsert745, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ta = sext <8 x i16> %broadcast.splat746 to <8 x i32>
  %i.tb = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert747 = insertelement <8 x i16> poison, i16 %i.tb, i64 0
  %broadcast.splat748 = shufflevector <8 x i16> %broadcast.splatinsert747, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.tc = sext <8 x i16> %broadcast.splat748 to <8 x i32>
  %i.td = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert749 = insertelement <8 x i16> poison, i16 %i.td, i64 0
  %broadcast.splat750 = shufflevector <8 x i16> %broadcast.splatinsert749, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.te = sext <8 x i16> %broadcast.splat750 to <8 x i32>
  %i.tf = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert751 = insertelement <8 x i16> poison, i16 %i.tf, i64 0
  %broadcast.splat752 = shufflevector <8 x i16> %broadcast.splatinsert751, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.tg = sext <8 x i16> %broadcast.splat752 to <8 x i32>
  %i.th = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !133
  %broadcast.splatinsert753 = insertelement <8 x i16> poison, i16 %i.th, i64 0
  %broadcast.splat754 = shufflevector <8 x i16> %broadcast.splatinsert753, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ti = sext <8 x i16> %broadcast.splat754 to <8 x i32>
  %broadcast.splatinsert755 = insertelement <8 x i32> poison, i32 %i.jy, i64 0
  %broadcast.splat756 = shufflevector <8 x i32> %broadcast.splatinsert755, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert757 = insertelement <8 x i32> poison, i32 %i.jn, i64 0
  %broadcast.splat758 = shufflevector <8 x i32> %broadcast.splatinsert757, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert759 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat760 = shufflevector <8 x i32> %broadcast.splatinsert759, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body761

vector.body761:                                   ; preds = %vector.body761, %vector.ph739
  %index762 = phi i64 [ 0, %vector.ph739 ], [ %index.next770, %vector.body761 ] ; 9 uses
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.319, i64 %index762
  %wide.load763 = load <8 x i16>, ptr %i.tj, align 2, !tbaa !13, !alias.scope !134
  %i.tk = zext <8 x i16> %wide.load763 to <8 x i32>
  %i.tl = mul nsw <8 x i32> %i.sw, %i.tk
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i253, i64 %index762
  %wide.load764 = load <8 x i16>, ptr %i.tm, align 2, !tbaa !13, !alias.scope !135
  %i.tn = zext <8 x i16> %wide.load764 to <8 x i32>
  %i.to = mul nsw <8 x i32> %i.sy, %i.tn
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i255, i64 %index762
  %wide.load765 = load <8 x i16>, ptr %i.tp, align 2, !tbaa !13, !alias.scope !136
  %i.tq = zext <8 x i16> %wide.load765 to <8 x i32>
  %i.tr = mul nsw <8 x i32> %i.ta, %i.tq
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i257, i64 %index762
  %wide.load766 = load <8 x i16>, ptr %i.ts, align 2, !tbaa !13, !alias.scope !137
  %i.tt = zext <8 x i16> %wide.load766 to <8 x i32>
  %i.tu = mul nsw <8 x i32> %i.tc, %i.tt
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i259, i64 %index762
  %wide.load767 = load <8 x i16>, ptr %i.tv, align 2, !tbaa !13, !alias.scope !138
  %i.tw = zext <8 x i16> %wide.load767 to <8 x i32>
  %i.tx = mul nsw <8 x i32> %i.te, %i.tw
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i261, i64 %index762
  %wide.load768 = load <8 x i16>, ptr %i.ty, align 2, !tbaa !13, !alias.scope !139
  %i.tz = zext <8 x i16> %wide.load768 to <8 x i32>
  %i.ua = mul nsw <8 x i32> %i.tg, %i.tz
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index762
  %wide.load769 = load <8 x i16>, ptr %i.ub, align 16, !tbaa !13
  %i.uc = zext <8 x i16> %wide.load769 to <8 x i32>
  %i.ud = mul nsw <8 x i32> %i.ti, %i.uc
  %i.ue = add <8 x i32> %broadcast.splat756, %i.tl
  %i.uf = add <8 x i32> %i.ue, %i.to
  %i.ug = add <8 x i32> %i.uf, %i.tr
  %i.uh = add <8 x i32> %i.ug, %i.tu
  %i.ui = add <8 x i32> %i.uh, %i.tx
  %i.uj = add <8 x i32> %i.ui, %i.ua
  %i.uk = add <8 x i32> %i.uj, %i.ud
  %i.ul = ashr <8 x i32> %i.uk, %broadcast.splat758 ; 2 uses
  %i.um = icmp slt <8 x i32> %i.ul, zeroinitializer
  %i.un = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ul, <8 x i32> %broadcast.splat760)
  %i.uo = trunc <8 x i32> %i.un to <8 x i16>
  %i.up = select <8 x i1> %i.um, <8 x i16> zeroinitializer, <8 x i16> %i.uo
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.sp, i64 %index762
  store <8 x i16> %i.up, ptr %i.uq, align 2, !tbaa !13, !alias.scope !140, !noalias !141
  %index.next770 = add nuw i64 %index762, 8       ; 2 uses
  %i.ur = icmp eq i64 %index.next770, %n.vec740
  br i1 %i.ur, label %middle.block771, label %vector.body761, !llvm.loop !68

middle.block771:                                  ; preds = %vector.body761
  %cmp.n772 = icmp eq i64 %n.vec740, %wide.trip.count.i206
  br i1 %cmp.n772, label %wiener_filter_hv.exit266, label %.preheader.i262.preheader

.preheader.i262.preheader:                        ; preds = %vector.memcheck701, %.preheader.lr.ph.i249, %middle.block771
  %indvars.iv.i263.ph = phi i64 [ 0, %vector.memcheck701 ], [ 0, %.preheader.lr.ph.i249 ], [ %n.vec740, %middle.block771 ]
  br label %.preheader.i262

.preheader.i262:                                  ; preds = %.preheader.i262.preheader, %.preheader.i262
  %indvars.iv.i263 = phi i64 [ %indvars.iv.next.i264, %.preheader.i262 ], [ %indvars.iv.i263.ph, %.preheader.i262.preheader ] ; 9 uses
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0.319, i64 %indvars.iv.i263
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !13
  %i.uu = zext i16 %i.ut to i32
  %i.uv = load i16, ptr %i.l, align 2, !tbaa !13
  %i.uw = sext i16 %i.uv to i32
  %i.ux = mul nsw i32 %i.uw, %i.uu
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i253, i64 %indvars.iv.i263
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !13
  %i.va = zext i16 %i.uz to i32
  %i.vb = load i16, ptr %i.jt, align 2, !tbaa !13
  %i.vc = sext i16 %i.vb to i32
  %i.vd = mul nsw i32 %i.vc, %i.va
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i255, i64 %indvars.iv.i263
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !13
  %i.vg = zext i16 %i.vf to i32
  %i.vh = load i16, ptr %i.ju, align 2, !tbaa !13
  %i.vi = sext i16 %i.vh to i32
  %i.vj = mul nsw i32 %i.vi, %i.vg
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i257, i64 %indvars.iv.i263
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !13
  %i.vm = zext i16 %i.vl to i32
  %i.vn = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.vo = sext i16 %i.vn to i32
  %i.vp = mul nsw i32 %i.vo, %i.vm
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i259, i64 %indvars.iv.i263
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !13
  %i.vs = zext i16 %i.vr to i32
  %i.vt = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.vu = sext i16 %i.vt to i32
  %i.vv = mul nsw i32 %i.vu, %i.vs
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i261, i64 %indvars.iv.i263
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !13
  %i.vy = zext i16 %i.vx to i32
  %i.vz = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.wa = sext i16 %i.vz to i32
  %i.wb = mul nsw i32 %i.wa, %i.vy
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i263
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !13
  %i.we = zext i16 %i.wd to i32
  %i.wf = load i16, ptr %i.js, align 2, !tbaa !13
  %i.wg = sext i16 %i.wf to i32
  %i.wh = mul nsw i32 %i.wg, %i.we
  %i.wi = add i32 %i.jy, %i.ux
  %i.wj = add i32 %i.wi, %i.vd
  %i.wk = add i32 %i.wj, %i.vj
  %i.wl = add i32 %i.wk, %i.vp
  %i.wm = add i32 %i.wl, %i.vv
  %i.wn = add i32 %i.wm, %i.wb
  %i.wo = add i32 %i.wn, %i.wh
  %i.wp = ashr i32 %i.wo, %i.jn                   ; 2 uses
  %i.wq = icmp slt i32 %i.wp, 0
  %i.wr = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.wp, i32 %8)
  %i.ws = trunc i32 %i.wr to i16
  %i.wt = select i1 %i.wq, i16 0, i16 %i.ws
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %i.sp, i64 %indvars.iv.i263
  store i16 %i.wt, ptr %i.wu, align 2, !tbaa !13
  %indvars.iv.next.i264 = add nuw nsw i64 %indvars.iv.i263, 1 ; 2 uses
  %exitcond.not.i265 = icmp eq i64 %indvars.iv.next.i264, %wide.trip.count.i206
  br i1 %exitcond.not.i265, label %wiener_filter_hv.exit266, label %.preheader.i262, !llvm.loop !69

wiener_filter_hv.exit266:                         ; preds = %.preheader.i262, %middle.block771, %wiener_filter_hv.exit244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(780) %.0..0..0.319, ptr noundef nonnull align 16 dereferenceable(780) %i.a, i64 780, i1 false)
  %.8..8..8.scevgep.i204.sroa_idx1075 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8.scevgep.i204.sroa_idx1075, i64 48, i1 false), !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.wv = getelementptr inbounds i8, ptr %i.sp, i64 %1
end_hunk_0
