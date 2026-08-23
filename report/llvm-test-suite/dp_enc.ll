Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/dp_enc?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pc_block:bb.a

bb.q:                                             ; preds = %bb.p
  %i.jk = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ic) ; 2 uses
  %i.jl = trunc nsw i32 %i.jk to i16
  %i.jm = sub i16 %.0409541, %i.jl                ; 7 uses
  %i.jn = mul nsw i32 %i.jk, %i.id
  %i.jo = ashr i32 %i.jn, %6
  %i.jp = shl nsw i32 %i.jo, 1
  %i.jq = sub nsw i32 %i.ji, %i.jp                ; 2 uses
  %i.jr = icmp slt i32 %i.jq, 1
  br i1 %i.jr, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.js = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hz) ; 2 uses
  %i.jt = trunc nsw i32 %i.js to i16
  %i.ju = sub i16 %.0411540, %i.jt                ; 6 uses
  %i.jv = mul nsw i32 %i.js, %i.ia
  %i.jw = ashr i32 %i.jv, %6
  %.neg473 = mul i32 %i.jw, -3
  %i.jx = add i32 %i.jq, %.neg473                 ; 2 uses
  %i.jy = icmp slt i32 %i.jx, 1
  br i1 %i.jy, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jz = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hw) ; 2 uses
  %i.ka = trunc nsw i32 %i.jz to i16
  %i.kb = sub i16 %.0413539, %i.ka                ; 5 uses
  %i.kc = mul nsw i32 %i.jz, %i.hx
  %i.kd = ashr i32 %i.kc, %6
  %i.ke = shl nsw i32 %i.kd, 2
  %i.kf = sub nsw i32 %i.jx, %i.ke                ; 2 uses
  %i.kg = icmp slt i32 %i.kf, 1
  br i1 %i.kg, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kh = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ht) ; 2 uses
  %i.ki = trunc nsw i32 %i.kh to i16
  %i.kj = sub i16 %.2425537, %i.ki                ; 4 uses
  %i.kk = mul nsw i32 %i.kh, %i.hu
  %i.kl = ashr i32 %i.kk, %6
  %.neg474 = mul i32 %i.kl, -5
  %i.km = add i32 %i.kf, %.neg474                 ; 2 uses
  %i.kn = icmp slt i32 %i.km, 1
  br i1 %i.kn, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ko = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hq) ; 2 uses
  %i.kp = trunc nsw i32 %i.ko to i16
  %i.kq = sub i16 %.2429536, %i.kp                ; 3 uses
  %i.kr = mul nsw i32 %i.ko, %i.hr
  %i.ks = ashr i32 %i.kr, %6
  %.neg475 = mul i32 %i.ks, -6
  %i.kt = add i32 %i.km, %.neg475                 ; 2 uses
  %i.ku = icmp slt i32 %i.kt, 1
  br i1 %i.ku, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kv = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hn) ; 2 uses
  %i.kw = trunc nsw i32 %i.kv to i16
  %i.kx = sub i16 %.2433535, %i.kw                ; 2 uses
  %i.ky = mul nsw i32 %i.kv, %i.ho
  %i.kz = ashr i32 %i.ky, %6
  %.neg476 = mul i32 %i.kz, -7
  %i.la = add i32 %i.kt, %.neg476
  %i.lb = icmp slt i32 %i.la, 1
  br i1 %i.lb, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lc = tail call i16 @llvm.scmp.i16.i32(i32 %i.hl, i32 %i.hh)
  %i.ld = add i16 %i.lc, %.2437534
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph544
  %i.le = icmp slt i32 %i.ja, 0
  br i1 %i.le, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.lf = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ie) ; 2 uses
  %i.lg = trunc nsw i32 %i.lf to i16
  %i.lh = add i16 %.0542, %i.lg                   ; 8 uses
  %i.li = mul i32 %i.if, %i.lf
  %i.lj = sub i32 0, %i.li
  %i.lk = ashr i32 %i.lj, %6
  %i.ll = sub nsw i32 %i.ja, %i.lk                ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, -1
  br i1 %i.lm, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ln = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ic) ; 2 uses
  %i.lo = trunc nsw i32 %i.ln to i16
  %i.lp = add i16 %.0409541, %i.lo                ; 7 uses
  %i.lq = mul i32 %i.id, %i.ln
  %i.lr = sub i32 0, %i.lq
  %i.ls = ashr i32 %i.lr, %6
  %i.lt = shl nsw i32 %i.ls, 1
  %i.lu = sub nsw i32 %i.ll, %i.lt                ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, -1
  br i1 %i.lv, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lw = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hz) ; 2 uses
  %i.lx = trunc nsw i32 %i.lw to i16
  %i.ly = add i16 %.0411540, %i.lx                ; 6 uses
  %i.lz = mul i32 %i.ia, %i.lw
  %i.ma = sub i32 0, %i.lz
  %i.mb = ashr i32 %i.ma, %6
  %.neg469 = mul i32 %i.mb, -3
  %i.mc = add i32 %i.lu, %.neg469                 ; 2 uses
  %i.md = icmp sgt i32 %i.mc, -1
  br i1 %i.md, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.me = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hw) ; 2 uses
  %i.mf = trunc nsw i32 %i.me to i16
  %i.mg = add i16 %.0413539, %i.mf                ; 5 uses
  %i.mh = mul i32 %i.hx, %i.me
  %i.mi = sub i32 0, %i.mh
  %i.mj = ashr i32 %i.mi, %6
  %i.mk = shl nsw i32 %i.mj, 2
  %i.ml = sub nsw i32 %i.mc, %i.mk                ; 2 uses
  %i.mm = icmp sgt i32 %i.ml, -1
  br i1 %i.mm, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mn = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ht) ; 2 uses
  %i.mo = trunc nsw i32 %i.mn to i16
  %i.mp = add i16 %.2425537, %i.mo                ; 4 uses
  %i.mq = mul i32 %i.hu, %i.mn
  %i.mr = sub i32 0, %i.mq
  %i.ms = ashr i32 %i.mr, %6
  %.neg470 = mul i32 %i.ms, -5
  %i.mt = add i32 %i.ml, %.neg470                 ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, -1
  br i1 %i.mu, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mv = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hq) ; 2 uses
  %i.mw = trunc nsw i32 %i.mv to i16
  %i.mx = add i16 %.2429536, %i.mw                ; 3 uses
  %i.my = mul i32 %i.hr, %i.mv
  %i.mz = sub i32 0, %i.my
  %i.na = ashr i32 %i.mz, %6
  %.neg471 = mul i32 %i.na, -6
  %i.nb = add i32 %i.mt, %.neg471                 ; 2 uses
  %i.nc = icmp sgt i32 %i.nb, -1
  br i1 %i.nc, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nd = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hn) ; 2 uses
  %i.ne = trunc nsw i32 %i.nd to i16
  %i.nf = add i16 %.2433535, %i.ne                ; 2 uses
  %i.ng = mul i32 %i.ho, %i.nd
  %i.nh = sub i32 0, %i.ng
  %i.ni = ashr i32 %i.nh, %6
  %.neg472 = mul i32 %i.ni, -7
  %i.nj = add i32 %i.nb, %.neg472
  %i.nk = icmp sgt i32 %i.nj, -1
  br i1 %i.nk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nl = tail call i16 @llvm.scmp.i16.i32(i32 %i.hh, i32 %i.hl)
  %i.nm = add i16 %i.nl, %.2437534
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.x, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.3438 = phi i16 [ %.2437534, %bb.p ], [ %.2437534, %bb.q ], [ %.2437534, %bb.r ], [ %.2437534, %bb.s ], [ %.2437534, %bb.t ], [ %.2437534, %bb.u ], [ %.2437534, %bb.v ], [ %i.ld, %bb.w ], [ %.2437534, %bb.y ], [ %.2437534, %bb.z ], [ %.2437534, %bb.aa ], [ %.2437534, %bb.ab ], [ %.2437534, %bb.ac ], [ %.2437534, %bb.ad ], [ %.2437534, %bb.ae ], [ %i.nm, %bb.af ], [ %.2437534, %bb.x ] ; 2 uses
  %.3434 = phi i16 [ %.2433535, %bb.p ], [ %.2433535, %bb.q ], [ %.2433535, %bb.r ], [ %.2433535, %bb.s ], [ %.2433535, %bb.t ], [ %.2433535, %bb.u ], [ %i.kx, %bb.v ], [ %i.kx, %bb.w ], [ %.2433535, %bb.y ], [ %.2433535, %bb.z ], [ %.2433535, %bb.aa ], [ %.2433535, %bb.ab ], [ %.2433535, %bb.ac ], [ %.2433535, %bb.ad ], [ %i.nf, %bb.ae ], [ %i.nf, %bb.af ], [ %.2433535, %bb.x ] ; 2 uses
  %.3430 = phi i16 [ %.2429536, %bb.p ], [ %.2429536, %bb.q ], [ %.2429536, %bb.r ], [ %.2429536, %bb.s ], [ %.2429536, %bb.t ], [ %i.kq, %bb.u ], [ %i.kq, %bb.v ], [ %i.kq, %bb.w ], [ %.2429536, %bb.y ], [ %.2429536, %bb.z ], [ %.2429536, %bb.aa ], [ %.2429536, %bb.ab ], [ %.2429536, %bb.ac ], [ %i.mx, %bb.ad ], [ %i.mx, %bb.ae ], [ %i.mx, %bb.af ], [ %.2429536, %bb.x ] ; 2 uses
  %.3426 = phi i16 [ %.2425537, %bb.p ], [ %.2425537, %bb.q ], [ %.2425537, %bb.r ], [ %.2425537, %bb.s ], [ %i.kj, %bb.t ], [ %i.kj, %bb.u ], [ %i.kj, %bb.v ], [ %i.kj, %bb.w ], [ %.2425537, %bb.y ], [ %.2425537, %bb.z ], [ %.2425537, %bb.aa ], [ %.2425537, %bb.ab ], [ %i.mp, %bb.ac ], [ %i.mp, %bb.ad ], [ %i.mp, %bb.ae ], [ %i.mp, %bb.af ], [ %.2425537, %bb.x ] ; 2 uses
  %.1414 = phi i16 [ %.0413539, %bb.p ], [ %.0413539, %bb.q ], [ %.0413539, %bb.r ], [ %i.kb, %bb.s ], [ %i.kb, %bb.t ], [ %i.kb, %bb.u ], [ %i.kb, %bb.v ], [ %i.kb, %bb.w ], [ %.0413539, %bb.y ], [ %.0413539, %bb.z ], [ %.0413539, %bb.aa ], [ %i.mg, %bb.ab ], [ %i.mg, %bb.ac ], [ %i.mg, %bb.ad ], [ %i.mg, %bb.ae ], [ %i.mg, %bb.af ], [ %.0413539, %bb.x ] ; 2 uses
  %.1412 = phi i16 [ %.0411540, %bb.p ], [ %.0411540, %bb.q ], [ %i.ju, %bb.r ], [ %i.ju, %bb.s ], [ %i.ju, %bb.t ], [ %i.ju, %bb.u ], [ %i.ju, %bb.v ], [ %i.ju, %bb.w ], [ %.0411540, %bb.y ], [ %.0411540, %bb.z ], [ %i.ly, %bb.aa ], [ %i.ly, %bb.ab ], [ %i.ly, %bb.ac ], [ %i.ly, %bb.ad ], [ %i.ly, %bb.ae ], [ %i.ly, %bb.af ], [ %.0411540, %bb.x ] ; 2 uses
  %.1410 = phi i16 [ %.0409541, %bb.p ], [ %i.jm, %bb.q ], [ %i.jm, %bb.r ], [ %i.jm, %bb.s ], [ %i.jm, %bb.t ], [ %i.jm, %bb.u ], [ %i.jm, %bb.v ], [ %i.jm, %bb.w ], [ %.0409541, %bb.y ], [ %i.lp, %bb.z ], [ %i.lp, %bb.aa ], [ %i.lp, %bb.ab ], [ %i.lp, %bb.ac ], [ %i.lp, %bb.ad ], [ %i.lp, %bb.ae ], [ %i.lp, %bb.af ], [ %.0409541, %bb.x ] ; 2 uses
  %.1 = phi i16 [ %i.jf, %bb.p ], [ %i.jf, %bb.q ], [ %i.jf, %bb.r ], [ %i.jf, %bb.s ], [ %i.jf, %bb.t ], [ %i.jf, %bb.u ], [ %i.jf, %bb.v ], [ %i.jf, %bb.w ], [ %i.lh, %bb.y ], [ %i.lh, %bb.z ], [ %i.lh, %bb.aa ], [ %i.lh, %bb.ab ], [ %i.lh, %bb.ac ], [ %i.lh, %bb.ad ], [ %i.lh, %bb.ae ], [ %i.lh, %bb.af ], [ %.0542, %bb.x ] ; 2 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge545, label %.lr.ph544, !llvm.loop !34

._crit_edge545:                                   ; preds = %bb.ag, %bb.o
  %.2437.lcssa = phi i16 [ %i.go, %bb.o ], [ %.3438, %bb.ag ]
  %.2433.lcssa = phi i16 [ %i.gq, %bb.o ], [ %.3434, %bb.ag ]
  %.2429.lcssa = phi i16 [ %i.gs, %bb.o ], [ %.3430, %bb.ag ]
  %.2425.lcssa = phi i16 [ %i.gu, %bb.o ], [ %.3426, %bb.ag ]
  %.0413.lcssa = phi i16 [ %i.gw, %bb.o ], [ %.1414, %bb.ag ]
  %.0411.lcssa = phi i16 [ %i.gy, %bb.o ], [ %.1412, %bb.ag ]
  %.0409.lcssa = phi i16 [ %i.ha, %bb.o ], [ %.1410, %bb.ag ]
  %.0.lcssa = phi i16 [ %i.hc, %bb.o ], [ %.1, %bb.ag ]
  store i16 %.2437.lcssa, ptr %3, align 2, !tbaa !8
  store i16 %.2433.lcssa, ptr %i.gp, align 2, !tbaa !8
  store i16 %.2429.lcssa, ptr %i.gr, align 2, !tbaa !8
  store i16 %.2425.lcssa, ptr %i.gt, align 2, !tbaa !8
  store i16 %.0413.lcssa, ptr %i.gv, align 2, !tbaa !8
  store i16 %.0411.lcssa, ptr %i.gx, align 2, !tbaa !8
  store i16 %.0409.lcssa, ptr %i.gz, align 2, !tbaa !8
  store i16 %.0.lcssa, ptr %i.hb, align 2, !tbaa !8
  br label %.loopexit526

bb.ah:                                            ; preds = %.lr.ph572, %.loopexit
  %indvars.iv604 = phi i64 [ %i.cy, %.lr.ph572 ], [ %indvars.iv.next605, %.loopexit ] ; 4 uses
  %i.nn = sub nsw i64 %indvars.iv604, %i.cy
  %i.no = getelementptr inbounds [4 x i8], ptr %0, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !4  ; 7 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv604 ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -4 ; 4 uses
  br i1 %i.cw, label %.lr.ph568.preheader, label %._crit_edge569

.lr.ph568.preheader:                              ; preds = %bb.ah
  br i1 %min.iters.check678, label %.lr.ph568.preheader695, label %vector.ph679

vector.ph679:                                     ; preds = %.lr.ph568.preheader
  %broadcast.splatinsert681 = insertelement <4 x i32> poison, i32 %i.np, i64 0
  %broadcast.splat682 = shufflevector <4 x i32> %broadcast.splatinsert681, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body683

vector.body683:                                   ; preds = %vector.body683, %vector.ph679
  %index684 = phi i64 [ 0, %vector.ph679 ], [ %index.next688, %vector.body683 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph679 ], [ %i.ny, %vector.body683 ]
  %vec.phi685 = phi <4 x i32> [ zeroinitializer, %vector.ph679 ], [ %i.nz, %vector.body683 ]
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index684 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %wide.load686.a = load <4 x i16>, ptr %i.ns, align 2, !tbaa !8
  %wide.load687.a = load <4 x i16>, ptr %i.nt, align 2, !tbaa !8
  %i.nu = sext <4 x i16> %wide.load686.a to <4 x i32>
  %i.nv = sext <4 x i16> %wide.load687.a to <4 x i32>
  %7 = sub nsw i64 0, %index684
  %8 = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %7 ; 2 uses
  %9 = getelementptr inbounds i8, ptr %8, i64 -12
  %10 = getelementptr inbounds i8, ptr %8, i64 -28
  %wide.load687 = load <4 x i32>, ptr %9, align 4, !tbaa !4
  %wide.load688 = load <4 x i32>, ptr %10, align 4, !tbaa !4
  %11 = sub <4 x i32> %wide.load687, %broadcast.splat682
  %12 = sub <4 x i32> %wide.load688, %broadcast.splat682
  %reverse = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse689 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.nw = mul <4 x i32> %reverse, %i.nu
  %i.nx = mul <4 x i32> %reverse689, %i.nv
  %i.ny = add <4 x i32> %i.nw, %vec.phi           ; 2 uses
  %i.nz = add <4 x i32> %i.nx, %vec.phi685        ; 2 uses
  %index.next688 = add nuw i64 %index684, 8       ; 2 uses
  %i.oa = icmp eq i64 %index.next688, %n.vec680
  br i1 %i.oa, label %middle.block689, label %vector.body683, !llvm.loop !35

middle.block689:                                  ; preds = %vector.body683
  %bin.rdx = add <4 x i32> %i.nz, %i.ny
  %i.ob = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n690, label %._crit_edge569, label %.lr.ph568.preheader695

.lr.ph568.preheader695:                           ; preds = %.lr.ph568.preheader, %middle.block689
  %indvars.iv591.ph = phi i64 [ 0, %.lr.ph568.preheader ], [ %n.vec680, %middle.block689 ]
  %.0417566.ph = phi i32 [ 0, %.lr.ph568.preheader ], [ %i.ob, %middle.block689 ]
  br label %.lr.ph568

.lr.ph568:                                        ; preds = %.lr.ph568.preheader695, %.lr.ph568
  %indvars.iv591 = phi i64 [ %indvars.iv.next592, %.lr.ph568 ], [ %indvars.iv591.ph, %.lr.ph568.preheader695 ] ; 3 uses
  %.0417566 = phi i32 [ %i.of, %.lr.ph568 ], [ %.0417566.ph, %.lr.ph568.preheader695 ]
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv591
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !8
  %i.oe = sext i16 %i.od to i32
  %13 = sub nsw i64 0, %indvars.iv591
  %14 = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !4
  %.neg467 = sub i32 %15, %i.np
  %.neg468 = mul i32 %.neg467, %i.oe
  %i.of = add i32 %.neg468, %.0417566             ; 2 uses
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  %exitcond595.not = icmp eq i64 %indvars.iv.next592, %wide.trip.count594
  br i1 %exitcond595.not, label %._crit_edge569, label %.lr.ph568, !llvm.loop !36

._crit_edge569:                                   ; preds = %.lr.ph568, %middle.block689, %bb.ah
  %.0417.lcssa = phi i32 [ 0, %bb.ah ], [ %i.ob, %middle.block689 ], [ %i.of, %.lr.ph568 ]
  %i.og = load i32, ptr %i.nq, align 4, !tbaa !4
  %i.oh = add nsw i32 %.0417.lcssa, %i.c
  %i.oi = ashr i32 %i.oh, %6
  %i.oj = add i32 %i.oi, %i.np
  %i.ok = sub i32 %i.og, %i.oj
  %i.ol = shl i32 %i.ok, %i.a                     ; 2 uses
  %i.om = ashr exact i32 %i.ol, %i.a              ; 4 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv604
  store i32 %i.om, ptr %i.on, align 4, !tbaa !4
  %i.oo = icmp sgt i32 %i.om, 0
  br i1 %i.oo, label %.preheader.preheader, label %bb.ai

.preheader.preheader:                             ; preds = %._crit_edge569
  br i1 %i.da, label %.lr.ph648, label %.loopexit

.preheader:                                       ; preds = %.lr.ph648
  %i.op = icmp sgt i64 %indvars.iv600646, 1
  br i1 %i.op, label %.lr.ph648, label %.loopexit, !llvm.loop !37

.lr.ph648:                                        ; preds = %.preheader.preheader, %.preheader
  %.0415647 = phi i32 [ %i.pd, %.preheader ], [ %i.om, %.preheader.preheader ]
  %indvars.iv600646 = phi i64 [ %indvars.iv.next601, %.preheader ], [ %i.cx, %.preheader.preheader ] ; 3 uses
  %indvars.iv.next601 = add nsw i64 %indvars.iv600646, -1 ; 3 uses
  %i.oq = sub nsw i64 1, %indvars.iv600646
  %i.or = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !4  ; 2 uses
  %i.ot = sub nsw i32 %i.np, %i.os
  %i.ou = tail call i32 @llvm.scmp.i32.i32(i32 %i.np, i32 %i.os) ; 2 uses
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next601 ; 2 uses
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !8
  %i.ox = trunc nsw i32 %i.ou to i16
  %i.oy = sub i16 %i.ow, %i.ox
  store i16 %i.oy, ptr %i.ov, align 2, !tbaa !8
  %i.oz = mul nsw i32 %i.ou, %i.ot
  %i.pa = ashr i32 %i.oz, %6
  %i.pb = trunc i64 %indvars.iv.next601 to i32
  %i.pc = sub i32 %i.pb, %4
  %.neg466 = mul i32 %i.pa, %i.pc
  %i.pd = add i32 %.neg466, %.0415647             ; 2 uses
  %i.pe = icmp slt i32 %i.pd, 1
  br i1 %i.pe, label %..loopexit.loopexit641_crit_edge, label %.preheader, !llvm.loop !37

bb.ai:                                            ; preds = %._crit_edge569
  %i.pf = icmp ne i32 %i.ol, 0
  %or.cond692 = and i1 %i.pf, %i.cz
  br i1 %or.cond692, label %.lr.ph645, label %.loopexit

.preheader523:                                    ; preds = %.lr.ph645
  %i.pg = icmp sgt i64 %indvars.iv596643, 1
  br i1 %i.pg, label %.lr.ph645, label %.loopexit, !llvm.loop !38

.lr.ph645:                                        ; preds = %bb.ai, %.preheader523
  %.1416644 = phi i32 [ %i.ps, %.preheader523 ], [ %i.om, %bb.ai ]
  %indvars.iv596643 = phi i64 [ %indvars.iv.next597, %.preheader523 ], [ %i.cx, %bb.ai ] ; 3 uses
  %indvars.iv.next597 = add nsw i64 %indvars.iv596643, -1 ; 3 uses
  %i.ph = sub nsw i64 1, %indvars.iv596643
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !4  ; 2 uses
  %.neg480 = sub i32 %i.pj, %i.np
  %i.pk = tail call i32 @llvm.scmp.i32.i32(i32 %i.np, i32 %i.pj) ; 2 uses
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next597 ; 2 uses
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !8
  %i.pn = trunc nsw i32 %i.pk to i16
  %i.po = add i16 %i.pm, %i.pn
  store i16 %i.po, ptr %i.pl, align 2, !tbaa !8
  %.neg481 = mul i32 %.neg480, %i.pk
  %i.pp = ashr i32 %.neg481, %6
  %i.pq = trunc i64 %indvars.iv.next597 to i32
  %i.pr = sub i32 %i.pq, %4
  %.neg464 = mul i32 %i.pp, %i.pr
  %i.ps = add i32 %.neg464, %.1416644             ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, -1
  br i1 %i.pt, label %..loopexit.loopexit641_crit_edge, label %.preheader523, !llvm.loop !38

..loopexit.loopexit641_crit_edge:                 ; preds = %.lr.ph645, %.lr.ph648
  br label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %.preheader523, %.preheader, %..loopexit.loopexit641_crit_edge, %.preheader.preheader, %bb.ai
  %indvars.iv.next605 = add nsw i64 %indvars.iv604, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next605 to i32
  %exitcond607.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond607.not, label %.loopexit526, label %bb.ah, !llvm.loop !39

.loopexit526:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.loopexit, %middle.block, %.preheader528, %.preheader525, %._crit_edge560, %._crit_edge545, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i16 -1, 2) i16 @llvm.scmp.i16.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !11, !12}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !11, !12, !13}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{!32, !11, !12}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11, !12, !13}
!36 = distinct !{!36, !11, !13, !12}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
end_hunk_0
