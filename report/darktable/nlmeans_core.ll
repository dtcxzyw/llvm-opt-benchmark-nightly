inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
bb.p:                                             ; preds = %compute_slice_height.exit
  %i.fm = srem i32 %i.fj, 68                      ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, %i.fk
  br i1 %i.fn, label %bb.q, label %compute_slice_width.exit

bb.q:                                             ; preds = %bb.p
  %i.fo = icmp slt i32 %i.fm, 36
  %i.fp = srem i32 %i.fj, 64
  %i.fq = icmp sgt i32 %i.fp, %i.fm
  %or.cond.i = and i1 %i.fo, %i.fq
  %i.fr = select i1 %or.cond.i, i64 64, i64 68
  br label %compute_slice_width.exit

compute_slice_width.exit:                         ; preds = %compute_slice_height.exit, %bb.p, %bb.q
  %.0.i = phi i64 [ 72, %bb.p ], [ 72, %compute_slice_height.exit ], [ %i.fr, %bb.q ] ; 8 uses
  %i.fs = icmp sgt i32 %i.cu, 0
  br i1 %i.fs, label %.preheader473.lr.ph, label %._crit_edge523

.preheader473.lr.ph:                              ; preds = %compute_slice_width.exit
  %i.ft = fmul reassoc nnan nsz arcp contract afn float %i.q, %i.q
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %i.ft, %i.l
  %i.fu = sext i32 %i.cl to i64                   ; 8 uses
  %i.fv = getelementptr [4 x i8], ptr %i.cs, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fy = xor i32 %i.cl, -1                       ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ga = add i32 %i.cl, 1                        ; 2 uses
  %i.gb = icmp sgt i32 %i.fj, 0
  br i1 %i.gb, label %.preheader473.preheader, label %.preheader473.us

.preheader473.preheader:                          ; preds = %.preheader473.lr.ph
  %i.gc = zext i32 %.5.i to i64                   ; 3 uses
  %i.gd = shl nuw nsw i64 %.0.i, 4
  %i.ge = shl i32 %.5.i, 2
  %i.gf = mul nsw i64 %i.u, %i.gc
  %i.gg = shl i64 %i.gf, 2
  %i.gh = shl nsw i64 %i.u, 2
  %i.gi = shl nsw i64 %i.fu, 2
  %i.gj = mul nsw i64 %.0.i, -4
  %i.gk = shl nsw i64 %i.u, 2
  %scevgep706 = getelementptr i8, ptr %0, i64 -4
  %scevgep710 = getelementptr i8, ptr %0, i64 -4
  %i.gl = sub i32 0, %.5.i
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr i8, ptr %i.cs, i64 %i.gi
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %broadcast.splatinsert793 = insertelement <8 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat794 = shufflevector <8 x i64> %broadcast.splatinsert793, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert842 = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat843 = shufflevector <4 x i64> %broadcast.splatinsert842, <4 x i64> poison, <4 x i32> zeroinitializer
  %stride.check720 = icmp slt i32 %i.t, 0
  %i.gp = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %stride.check = icmp slt i32 %i.t, 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat675 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert676 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat677 = shufflevector <4 x float> %broadcast.splatinsert676, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat679 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gq = insertelement <4 x float> %i.gp, float 1.000000e+00, i64 3
  br label %.preheader473

.preheader473.us:                                 ; preds = %.preheader473.lr.ph, %.preheader473.us
  %.0392522.us = phi i32 [ %i.gr, %.preheader473.us ], [ 0, %.preheader473.lr.ph ]
  %i.gr = add nsw i32 %.0392522.us, %.5.i         ; 2 uses
  %i.gs = icmp slt i32 %i.gr, %i.cu
  br i1 %i.gs, label %.preheader473.us, label %._crit_edge523

.preheader473:                                    ; preds = %.preheader473.preheader, %._crit_edge520
  %indvar663 = phi i64 [ 0, %.preheader473.preheader ], [ %indvar.next664, %._crit_edge520 ] ; 4 uses
  %indvar654 = phi i32 [ 0, %.preheader473.preheader ], [ %indvar.next655, %._crit_edge520 ] ; 2 uses
  %i.gt = phi i32 [ %i.cu, %.preheader473.preheader ], [ %i.hk, %._crit_edge520 ] ; 3 uses
  %i.gu = phi i32 [ %i.fj, %.preheader473.preheader ], [ %i.hl, %._crit_edge520 ] ; 2 uses
  %i.gv = phi i32 [ %i.fj, %.preheader473.preheader ], [ %i.hm, %._crit_edge520 ] ; 3 uses
  %indvars.iv560 = phi i64 [ 0, %.preheader473.preheader ], [ %indvars.iv.next561, %._crit_edge520 ] ; 6 uses
  %indvars.iv = phi i32 [ %.5.i, %.preheader473.preheader ], [ %indvars.iv.next, %._crit_edge520 ] ; 2 uses
  %i.gw = mul i64 %indvar663, %i.gm               ; 2 uses
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = trunc i64 %i.gw to i32
  %i.gz = add i32 %i.gy, -1
  %i.ha = mul i32 %i.ge, %indvar654
  %i.hb = mul i64 %i.gg, %indvar663               ; 2 uses
  %i.hc = mul i64 %indvar663, %i.gc
  %i.hd = xor i64 %i.hc, -1
  %i.he = add nuw i64 %indvars.iv560, 1
  %indvars584 = trunc i64 %indvars.iv560 to i32   ; 5 uses
  %i.hf = icmp sgt i32 %i.gv, 0
  br i1 %i.hf, label %.lr.ph519, label %._crit_edge520

.lr.ph519:                                        ; preds = %.preheader473
  %i.hg = add nsw i32 %.5.i, %indvars584
  %i.hh = getelementptr i8, ptr %0, i64 %i.hb
  %i.hi = getelementptr i8, ptr %0, i64 %i.hb
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  br label %bb.r

._crit_edge523:                                   ; preds = %.preheader473.us, %._crit_edge520, %compute_slice_width.exit
  tail call void @free(ptr noundef %i.aj) #9
  tail call void @free(ptr noundef %i.cs) #9
  ret void

._crit_edge520:                                   ; preds = %.loopexit469, %.preheader473
  %i.hk = phi i32 [ %i.gt, %.preheader473 ], [ %i.iz, %.loopexit469 ] ; 2 uses
  %i.hl = phi i32 [ %i.gu, %.preheader473 ], [ %i.ja, %.loopexit469 ]
  %i.hm = phi i32 [ %i.gv, %.preheader473 ], [ %i.ja, %.loopexit469 ]
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, %i.gc ; 2 uses
  %indvars = trunc i64 %indvars.iv.next561 to i32
  %i.hn = icmp sgt i32 %i.hk, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.5.i
  %indvar.next655 = add i32 %indvar654, 1
  %indvar.next664 = add i64 %indvar663, 1
  br i1 %i.hn, label %.preheader473, label %._crit_edge523, !llvm.loop !31

bb.r:                                             ; preds = %.lr.ph519, %.loopexit469
  %indvar = phi i64 [ 0, %.lr.ph519 ], [ %indvar.next, %.loopexit469 ] ; 7 uses
  %i.ho = phi i32 [ %i.gt, %.lr.ph519 ], [ %i.iz, %.loopexit469 ]
  %i.hp = phi i32 [ %i.gu, %.lr.ph519 ], [ %i.ja, %.loopexit469 ]
  %i.hq = phi i32 [ %i.gt, %.lr.ph519 ], [ %i.jc, %.loopexit469 ] ; 3 uses
  %indvars.iv543 = phi i64 [ 0, %.lr.ph519 ], [ %indvars.iv.next544, %.loopexit469 ] ; 20 uses
  %i.hr = phi i32 [ %i.gv, %.lr.ph519 ], [ %i.ja, %.loopexit469 ] ; 5 uses
  %i.hs = add nuw i64 %.0.i, %indvars.iv543
  %sext = shl i64 %i.hs, 32
  %i.ht = ashr exact i64 %sext, 32
  %i.hu = mul i64 %.0.i, %indvar
  %i.hv = or disjoint i64 %indvars.iv543, 1
  %i.hw = mul i64 %i.gj, %indvar
  %scevgep701 = getelementptr i8, ptr %i.go, i64 %i.hw ; 2 uses
  %i.hx = or disjoint i64 %indvars.iv543, 1
  %i.hy = or disjoint i64 %indvars.iv543, 1
  %i.hz = mul i64 %.0.i, %indvar
  %i.ia = mul i64 %i.gd, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.ia
  %i.ib = getelementptr i8, ptr %1, i64 %i.ia
  %scevgep659 = getelementptr i8, ptr %i.ib, i64 16
  %i.ic = or disjoint i64 %indvars.iv543, 1
  %i.id = mul i64 %.0.i, %indvar
  %i.ie = xor i64 %i.id, -1
  %scevgep665 = getelementptr i8, ptr %i.hh, i64 %i.ia
  %scevgep666 = getelementptr i8, ptr %i.hj, i64 %i.ia
  %i.if = or disjoint i64 %indvars.iv543, 1
  %i.ig = mul i64 %.0.i, %indvar
  %indvars583 = trunc i64 %indvars.iv543 to i32   ; 13 uses
  %i.ih = sub nsw i64 0, %indvars.iv543
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.ih ; 15 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.hg, i32 %i.hq) ; 6 uses
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, %.0.i ; 3 uses
  %i.ij = trunc i64 %indvars.iv.next544 to i32
  %i.ik = tail call i32 @llvm.smin.i32(i32 %i.ij, i32 %i.hr) ; 8 uses
  %i.il = icmp sgt i32 %., %indvars584            ; 3 uses
  br i1 %i.il, label %.lr.ph, label %.preheader472

.lr.ph:                                           ; preds = %bb.r
  %i.im = sext i32 %i.ik to i64
  %i.in = sub nsw i64 %i.im, %indvars.iv543
  %i.io = shl nsw i64 %i.in, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hq, i32 %indvars.iv)
  %i.ip = add i32 %., %i.gx
  %i.iq = add i32 %i.gz, %.
  %xtraiter = and i32 %i.ip, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0398474.prol = phi i32 [ %i.ix, %.prol.preheader ], [ %indvars584, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ir = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.is = mul nsw i32 %i.ir, %.0398474.prol
  %i.it = add nsw i32 %i.is, %indvars583
  %i.iu = shl nsw i32 %i.it, 2
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iw, i8 0, i64 %i.io, i1 false)
  %i.ix = add nsw i32 %.0398474.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0398474.unr = phi i32 [ %indvars584, %.lr.ph ], [ %i.ix, %.prol.preheader ]
  %i.iy = icmp ult i32 %i.iq, 3
  br i1 %i.iy, label %.preheader472.loopexit, label %.lr.ph.new

.preheader472.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.ct, align 4, !tbaa !30 ; 2 uses
  %.pre597 = load i32, ptr %i.fi, align 4, !tbaa !19 ; 2 uses
  br label %.preheader472

.preheader472:                                    ; preds = %.preheader472.loopexit, %bb.r
  %i.iz = phi i32 [ %.pre, %.preheader472.loopexit ], [ %i.ho, %bb.r ] ; 2 uses
  %i.ja = phi i32 [ %.pre597, %.preheader472.loopexit ], [ %i.hp, %bb.r ] ; 5 uses
  %i.jb = phi i32 [ %.pre597, %.preheader472.loopexit ], [ %i.hr, %bb.r ] ; 7 uses
  %i.jc = phi i32 [ %.pre, %.preheader472.loopexit ], [ %i.hq, %bb.r ] ; 5 uses
  %i.jd = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 9 uses
  %i.je = add i32 %indvars583, %i.fy              ; 2 uses
  %i.jf = add i32 %i.ik, %i.cl                    ; 3 uses
  %i.jg = sext i32 %i.je to i64
  %i.jh = shl nsw i64 %i.jg, 2
  %scevgep.i = getelementptr i8, ptr %i.ii, i64 %i.jh
  %i.ji = sub i32 %i.cl, %indvars583
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jl = xor i32 %indvars583, -1
  %i.jm = add i32 %i.ik, %i.jl
  %i.jn = sext i32 %i.jb to i64
  %i.jo = shl nsw i64 %i.jn, 2
  %smin545 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %indvars583)
  %invariant.gep640 = getelementptr [4 x i8], ptr %i.ii, i64 %i.fu
  %invariant.gep641 = getelementptr [4 x i8], ptr %i.ii, i64 %i.fu
  %scevgep712 = getelementptr i8, ptr %i.jd, i64 12
  %i.jp = sext i32 %i.hr to i64
  %smin749 = tail call i64 @llvm.smin.i64(i64 %i.jp, i64 %i.ht)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0398474 = phi i32 [ %i.kr, %.lr.ph.new ], [ %.0398474.unr, %.prol.loopexit ] ; 5 uses
  %i.jq = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jr = mul nsw i32 %i.jq, %.0398474
  %i.js = add nsw i32 %i.jr, %indvars583
  %i.jt = shl nsw i32 %i.js, 2
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ju
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jv, i8 0, i64 %i.io, i1 false)
  %i.jw = add nsw i32 %.0398474, 1
  %i.jx = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jy = mul nsw i32 %i.jx, %i.jw
  %i.jz = add nsw i32 %i.jy, %indvars583
  %i.ka = shl nsw i32 %i.jz, 2
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kb
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kc, i8 0, i64 %i.io, i1 false)
  %i.kd = add nsw i32 %.0398474, 2
  %i.ke = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.kf = mul nsw i32 %i.ke, %i.kd
  %i.kg = add nsw i32 %i.kf, %indvars583
  %i.kh = shl nsw i32 %i.kg, 2
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ki
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kj, i8 0, i64 %i.io, i1 false)
  %i.kk = add nsw i32 %.0398474, 3
  %i.kl = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.km = mul nsw i32 %i.kl, %i.kk
  %i.kn = add nsw i32 %i.km, %indvars583
  %i.ko = shl nsw i32 %i.kn, 2
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kp
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kq, i8 0, i64 %i.io, i1 false)
  %i.kr = add nsw i32 %.0398474, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kr, %smin
  br i1 %exitcond.not.3, label %.preheader472.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge502
  br i1 %i.j, label %.preheader468, label %.preheader470

.preheader470:                                    ; preds = %bb.s
  br i1 %i.il, label %.lr.ph508, label %.loopexit469

.lr.ph508:                                        ; preds = %.preheader470
  %factor.op.mul = shl i32 %i.jb, 2
  %i.ks = sext i32 %i.hr to i64
  %i.kt = icmp slt i64 %indvars.iv543, %i.ks
  br i1 %i.kt, label %.preheader461.lr.ph.preheader, label %.loopexit469

.preheader461.lr.ph.preheader:                    ; preds = %.lr.ph508
  %i.ku = sext i32 %i.ik to i64                   ; 3 uses
  %i.kv = sext i32 %. to i64                      ; 2 uses
  %i.kw = mul i32 %i.ha, %i.jb
  %i.kx = shl i32 %i.jb, 2
  %smax660 = tail call i64 @llvm.smax.i64(i64 %i.ku, i64 %i.ic)
  %i.ky = add i64 %smax660, %i.ie
  %i.kz = shl nsw i64 %i.ky, 4                    ; 2 uses
  %scevgep661 = getelementptr i8, ptr %scevgep659, i64 %i.kz
  %smax667 = tail call i64 @llvm.smax.i64(i64 %i.kv, i64 %i.he)
  %i.la = add i64 %smax667, %i.hd
  %i.lb = mul i64 %i.gh, %i.la
  %i.lc = getelementptr i8, ptr %scevgep666, i64 %i.lb
  %scevgep668 = getelementptr i8, ptr %i.lc, i64 %i.kz
  %smax669 = tail call i64 @llvm.smax.i64(i64 %i.ku, i64 %i.hy) ; 2 uses
  %i.ld = sub i64 %smax669, %i.hz                 ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.ld, 5
  %i.le = and i64 %smax669, 3                     ; 2 uses
  %i.lf = icmp eq i64 %i.le, 0
  %i.lg = select i1 %i.lf, i64 4, i64 %i.le
  %n.vec673 = sub i64 %i.ld, %i.lg                ; 2 uses
  %i.lh = add i64 %indvars.iv543, %n.vec673
  br label %.preheader461.lr.ph

.preheader468:                                    ; preds = %bb.s
  br i1 %i.il, label %.lr.ph515, label %.loopexit469

.lr.ph515:                                        ; preds = %.preheader468
  %factor.op.mul516 = shl i32 %i.jb, 2
  %i.li = sext i32 %i.hr to i64
  %i.lj = icmp slt i64 %indvars.iv543, %i.li
  br i1 %i.lj, label %.preheader.lr.ph.preheader, label %.loopexit469

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph515
  %i.lk = sext i32 %i.ik to i64                   ; 2 uses
  %i.ll = sext i32 %. to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %i.lk, i64 %i.if) ; 2 uses
  %i.lm = sub i64 %smax, %i.ig                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.lm, 4
  %i.ln = and i64 %smax, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.lm, %i.ln               ; 2 uses
  %i.lo = add i64 %indvars.iv543, %n.vec
  %cmp.n = icmp eq i64 %i.ln, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader472, %._crit_edge502
  %indvars.iv565 = phi i64 [ 0, %.preheader472 ], [ %indvars.iv.next566, %._crit_edge502 ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv565 ; 4 uses
  %i.lq = load i16, ptr %i.lp, align 8, !tbaa !25 ; 5 uses
  %i.lr = icmp sgt i16 %i.lq, 0
  %i.ls = sext i16 %i.lq to i32                   ; 2 uses
  %i.lt = sub nsw i32 0, %i.ls
  %i.lu = select i1 %i.lr, i32 0, i32 %i.lt       ; 2 uses
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lu, i32 %indvars584) ; 7 uses
  %i.lw = icmp slt i16 %i.lq, 0
  %spec.select451 = tail call i16 @llvm.smax.i16(i16 %i.lq, i16 0)
  %spec.select = zext nneg i16 %spec.select451 to i32 ; 2 uses
  %i.lx = sub i32 %i.jc, %spec.select
  %spec.select448 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lx) ; 3 uses
  %i.ly = tail call i16 @llvm.smin.i16(i16 %i.lq, i16 0)
  %i.lz = sext i16 %i.ly to i32
  %i.ma = sub nsw i32 %i.cl, %i.lz
  %i.mb = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %i.ma) ; 2 uses
  %i.mc = add nsw i32 %i.cl, %spec.select
  %i.md = xor i32 %i.mc, -1
  %i.me = add i32 %i.jc, %i.md
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %spec.select448, i32 %i.me) ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !28 ; 2 uses
  %i.mh = sext i16 %i.mg to i32                   ; 3 uses
  %i.mi = sub nsw i32 0, %i.mh
  %i.mj = tail call i32 @llvm.smax.i32(i32 %indvars583, i32 %i.mi) ; 5 uses
  %i.mk = sub i32 %i.jb, %i.mh                    ; 2 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.ik, i32 %i.mk) ; 3 uses
  %i.ml = add nsw i32 %indvars583, %i.mh          ; 2 uses
  %i.mm = tail call i32 @llvm.smin.i32(i32 %indvars583, i32 %i.ml)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mm) ; 2 uses
  %i.mn = sub nsw i32 %indvars583, %..i           ; 5 uses
  %i.mo = tail call i16 @llvm.smax.i16(i16 %i.mg, i16 0)
  %i.mp = zext nneg i16 %i.mo to i32
  %i.mq = add i32 %i.ik, %i.mp
  %i.mr = sub i32 %i.jb, %i.mq
  %i.ms = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mr) ; 2 uses
  %i.mt = add i32 %i.ms, %i.ik                    ; 5 uses
  %i.mu = add i32 %i.lv, %i.ls                    ; 2 uses
  %i.mv = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %i.mu)
  %i.mw = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mv) ; 2 uses
  %i.mx = sub i32 %i.lv, %i.mw                    ; 2 uses
  %.v138.i = select i1 %i.lw, i32 %i.lv, i32 %i.mu ; 2 uses
  %i.my = xor i32 %.v138.i, -1
  %i.mz = add i32 %i.jc, %i.my
  %i.na = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mz)
  %i.nb = add i32 %i.na, %i.lv                    ; 2 uses
  %i.nc = tail call i32 @llvm.smin.i32(i32 %i.mn, i32 %i.jf) ; 2 uses
  %i.nd = icmp slt i32 %i.je, %i.nc
  br i1 %i.nd, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.ne = add i32 %i.ji, %i.nc
  %i.nf = zext i32 %i.ne to i64
  %i.ng = shl nuw nsw i64 %i.nf, 2
  %i.nh = add nuw nsw i64 %i.ng, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.nh, i1 false), !tbaa !11
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.ni = icmp slt i32 %i.mn, %i.mt               ; 4 uses
  br i1 %i.ni, label %.preheader.lr.ph.i443, label %._crit_edge148.i

.preheader.lr.ph.i443:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mx, %i.nb
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i443
  %i.nj = sext i32 %i.mn to i64
  %i.nk = shl nsw i64 %i.nj, 2
  %scevgep158.i = getelementptr i8, ptr %i.ii, i64 %i.nk
  %i.nl = add i32 %i.jm, %..i
  %i.nm = add i32 %i.nl, %i.ms
  %i.nn = zext i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 2
  %i.np = add nuw nsw i64 %i.no, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.np, i1 false), !tbaa !11
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i443
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !29
  %i.ns = sext i32 %i.nr to i64                   ; 4 uses
  %i.nt = sext i32 %i.mx to i64                   ; 5 uses
  %i.nu = add i32 %i.nb, 1
  %i.nv = sext i32 %i.mn to i64
  %i.nw = sext i32 %i.mt to i64
  %i.nx = xor i32 %.v138.i, -1
  %i.ny = add i32 %i.jc, %i.nx
  %smin780 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.ny)
  %i.nz = add i32 %i.mw, %smin780                 ; 3 uses
  %i.oa = zext i32 %i.nz to i64
  %i.ob = add nuw nsw i64 %i.oa, 1                ; 5 uses
  %min.iters.check782 = icmp ult i32 %i.nz, 3
  %min.iters.check784 = icmp ult i32 %i.nz, 15
  %i.oc = and i64 %i.ob, 12
  %n.vec786 = and i64 %i.ob, 8589934576           ; 4 uses
  %i.od = add nsw i64 %n.vec786, %i.nt            ; 2 uses
  %broadcast.splatinsert795 = insertelement <8 x i64> poison, i64 %i.nt, i64 0
  %broadcast.splat796 = shufflevector <8 x i64> %broadcast.splatinsert795, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat796, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n826 = icmp eq i64 %i.ob, %n.vec786
  %min.epilog.iters.check833 = icmp eq i64 %i.oc, 0
  %n.vec835 = and i64 %i.ob, 8589934588           ; 3 uses
  %i.oe = add nsw i64 %n.vec835, %i.nt
  %cmp.n866 = icmp eq i64 %i.ob, %n.vec835
  br label %iter.check830

iter.check830:                                    ; preds = %._crit_edge.i446, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nv, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i446 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.of = load float, ptr %i.jd, align 4, !tbaa !11 ; 3 uses
  %i.og = load <2 x float>, ptr %i.jj, align 4, !tbaa !11 ; 5 uses
  br i1 %min.iters.check782, label %vec.epilog.scalar.ph831.preheader, label %vector.main.loop.iter.check783

vector.main.loop.iter.check783:                   ; preds = %iter.check830
  br i1 %min.iters.check784, label %vec.epilog.ph834, label %vector.ph785

vector.ph785:                                     ; preds = %vector.main.loop.iter.check783
  %broadcast.splatinsert787 = insertelement <8 x float> poison, float %i.of, i64 0
  %broadcast.splat788 = shufflevector <8 x float> %broadcast.splatinsert787, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat790 = shufflevector <2 x float> %i.og, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat792 = shufflevector <2 x float> %i.og, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph785
  %index798 = phi i64 [ 0, %vector.ph785 ], [ %index.next823, %vector.body797 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph785 ], [ %vec.ind.next, %vector.body797 ] ; 3 uses
  %vec.phi799 = phi <8 x float> [ zeroinitializer, %vector.ph785 ], [ %i.pf, %vector.body797 ]
  %vec.phi800 = phi <8 x float> [ zeroinitializer, %vector.ph785 ], [ %i.pg, %vector.body797 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.oh = mul nsw <8 x i64> %vec.ind, %broadcast.splat794
  %i.oi = mul nsw <8 x i64> %step.add, %broadcast.splat794
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.oh ; 4 uses
  %wide.gep801 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.oi ; 4 uses
  %wide.gep802 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.ns ; 3 uses
  %wide.gep803 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep801, i64 %i.ns ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather804 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather805 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep802, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather806 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep803, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.oj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather805 ; 2 uses
  %i.ok = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather804, %wide.masked.gather806 ; 2 uses
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %i.oj
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %i.ok
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %broadcast.splat788
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat788
  %wide.gep807 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep808 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 4
  %wide.masked.gather809 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep807, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather810 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep808, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep811 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 4
  %wide.gep812 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 4
  %wide.masked.gather813 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep811, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather814 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep812, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.op = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather809, %wide.masked.gather813 ; 2 uses
  %i.oq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather810, %wide.masked.gather814 ; 2 uses
  %i.or = fmul reassoc nsz arcp contract afn <8 x float> %i.op, %i.op
  %i.os = fmul reassoc nsz arcp contract afn <8 x float> %i.oq, %i.oq
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %i.or, %broadcast.splat790
  %i.ou = fmul reassoc nsz arcp contract afn <8 x float> %i.os, %broadcast.splat790
  %wide.gep815 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep816 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 8
  %wide.masked.gather817 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep815, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather818 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep816, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep819 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 8
  %wide.gep820 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 8
  %wide.masked.gather821 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep819, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather822 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep820, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.ov = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather817, %wide.masked.gather821 ; 2 uses
  %i.ow = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather818, %wide.masked.gather822 ; 2 uses
  %i.ox = fmul reassoc nsz arcp contract afn <8 x float> %i.ov, %i.ov
  %i.oy = fmul reassoc nsz arcp contract afn <8 x float> %i.ow, %i.ow
  %i.oz = fmul reassoc nsz arcp contract afn <8 x float> %i.ox, %broadcast.splat792
  %i.pa = fmul reassoc nsz arcp contract afn <8 x float> %i.oy, %broadcast.splat792
  %i.pb = fadd reassoc nsz arcp contract afn <8 x float> %i.on, %i.ot
  %i.pc = fadd reassoc nsz arcp contract afn <8 x float> %i.oo, %i.ou
  %i.pd = fadd reassoc nsz arcp contract afn <8 x float> %i.pb, %i.oz
  %i.pe = fadd reassoc nsz arcp contract afn <8 x float> %i.pc, %i.pa
  %i.pf = fadd reassoc nsz arcp contract afn <8 x float> %i.pd, %vec.phi799 ; 2 uses
  %i.pg = fadd reassoc nsz arcp contract afn <8 x float> %i.pe, %vec.phi800 ; 2 uses
  %index.next823 = add nuw i64 %index798, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ph = icmp eq i64 %index.next823, %n.vec786
  br i1 %i.ph, label %middle.block824, label %vector.body797, !llvm.loop !36

middle.block824:                                  ; preds = %vector.body797
  %bin.rdx825 = fadd reassoc nsz arcp contract afn <8 x float> %i.pg, %i.pf
  %i.pi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx825) ; 3 uses
  br i1 %cmp.n826, label %._crit_edge.i446, label %vec.epilog.iter.check832

vec.epilog.iter.check832:                         ; preds = %middle.block824
  br i1 %min.epilog.iters.check833, label %vec.epilog.scalar.ph831.preheader, label %vec.epilog.ph834, !prof !39

vec.epilog.ph834:                                 ; preds = %vector.main.loop.iter.check783, %vec.epilog.iter.check832
  %vec.epilog.resume.val827 = phi i64 [ %n.vec786, %vec.epilog.iter.check832 ], [ 0, %vector.main.loop.iter.check783 ]
  %bc.resume.val828 = phi i64 [ %i.od, %vec.epilog.iter.check832 ], [ %i.nt, %vector.main.loop.iter.check783 ]
  %bc.merge.rdx829 = phi float [ %i.pi, %vec.epilog.iter.check832 ], [ 0.000000e+00, %vector.main.loop.iter.check783 ]
  %i.pj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx829, i64 0
  %broadcast.splatinsert836 = insertelement <4 x float> poison, float %i.of, i64 0
  %broadcast.splat837 = shufflevector <4 x float> %broadcast.splatinsert836, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat839 = shufflevector <2 x float> %i.og, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat841 = shufflevector <2 x float> %i.og, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert844 = insertelement <4 x i64> poison, i64 %bc.resume.val828, i64 0
  %broadcast.splat845 = shufflevector <4 x i64> %broadcast.splatinsert844, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction846 = add nsw <4 x i64> %broadcast.splat845, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body847

vec.epilog.vector.body847:                        ; preds = %vec.epilog.vector.body847, %vec.epilog.ph834
  %index848 = phi i64 [ %vec.epilog.resume.val827, %vec.epilog.ph834 ], [ %index.next863, %vec.epilog.vector.body847 ]
  %vec.ind849 = phi <4 x i64> [ %induction846, %vec.epilog.ph834 ], [ %vec.ind.next864, %vec.epilog.vector.body847 ] ; 2 uses
  %vec.phi850 = phi <4 x float> [ %i.pj, %vec.epilog.ph834 ], [ %i.pw, %vec.epilog.vector.body847 ]
  %i.pk = mul nsw <4 x i64> %vec.ind849, %broadcast.splat843
  %wide.gep851 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pk ; 4 uses
  %wide.gep852 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep851, i64 %i.ns ; 3 uses
  %wide.masked.gather853 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep851, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep852, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pl = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather853, %wide.masked.gather854 ; 2 uses
  %i.pm = fmul reassoc nsz arcp contract afn <4 x float> %i.pl, %i.pl
  %i.pn = fmul reassoc nsz arcp contract afn <4 x float> %i.pm, %broadcast.splat837
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep851, i64 4
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep857 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852, i64 4
  %wide.masked.gather858 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.po = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather856, %wide.masked.gather858 ; 2 uses
  %i.pp = fmul reassoc nsz arcp contract afn <4 x float> %i.po, %i.po
  %i.pq = fmul reassoc nsz arcp contract afn <4 x float> %i.pp, %broadcast.splat839
  %wide.gep859 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep851, i64 8
  %wide.masked.gather860 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep861 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852, i64 8
  %wide.masked.gather862 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep861, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pr = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather860, %wide.masked.gather862 ; 2 uses
  %i.ps = fmul reassoc nsz arcp contract afn <4 x float> %i.pr, %i.pr
  %i.pt = fmul reassoc nsz arcp contract afn <4 x float> %i.ps, %broadcast.splat841
  %i.pu = fadd reassoc nsz arcp contract afn <4 x float> %i.pn, %i.pq
  %i.pv = fadd reassoc nsz arcp contract afn <4 x float> %i.pu, %i.pt
  %i.pw = fadd reassoc nsz arcp contract afn <4 x float> %i.pv, %vec.phi850 ; 2 uses
  %index.next863 = add nuw i64 %index848, 4       ; 2 uses
  %vec.ind.next864 = add nsw <4 x i64> %vec.ind849, splat (i64 4)
  %i.px = icmp eq i64 %index.next863, %n.vec835
  br i1 %i.px, label %vec.epilog.middle.block865, label %vec.epilog.vector.body847, !llvm.loop !40

vec.epilog.middle.block865:                       ; preds = %vec.epilog.vector.body847
  %i.py = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pw) ; 2 uses
  br i1 %cmp.n866, label %._crit_edge.i446, label %vec.epilog.scalar.ph831.preheader

vec.epilog.scalar.ph831.preheader:                ; preds = %iter.check830, %vec.epilog.iter.check832, %vec.epilog.middle.block865
  %indvars.iv.i.ph = phi i64 [ %i.nt, %iter.check830 ], [ %i.od, %vec.epilog.iter.check832 ], [ %i.oe, %vec.epilog.middle.block865 ]
  %.0123143.i.ph = phi float [ 0.000000e+00, %iter.check830 ], [ %i.pi, %vec.epilog.iter.check832 ], [ %i.py, %vec.epilog.middle.block865 ]
  br label %vec.epilog.scalar.ph831

._crit_edge148.i:                                 ; preds = %._crit_edge.i446, %.preheader.us.preheader.i, %.preheader140.i
  %i.pz = tail call i32 @llvm.smax.i32(i32 %i.mn, i32 %i.mt) ; 3 uses
  %i.qa = icmp slt i32 %i.pz, %i.jf
  br i1 %i.qa, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pz to i64
  %i.qb = shl nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.ii, i64 %i.qb
  %i.qc = xor i32 %i.pz, -1
  %i.qd = add i32 %i.jf, %i.qc
  %i.qe = zext i32 %i.qd to i64
  %i.qf = shl nuw nsw i64 %i.qe, 2
  %i.qg = add nuw nsw i64 %i.qf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.qg, i1 false), !tbaa !11
  br label %init_column_sums.exit

._crit_edge.i446:                                 ; preds = %vec.epilog.scalar.ph831, %vec.epilog.middle.block865, %middle.block824
  %.lcssa = phi float [ %i.py, %vec.epilog.middle.block865 ], [ %i.pi, %middle.block824 ], [ %i.ra, %vec.epilog.scalar.ph831 ]
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv156.i
  store float %.lcssa, ptr %i.qh, align 4, !tbaa !11
  %indvars.iv.next157.i = add nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.qi = icmp slt i64 %indvars.iv.next157.i, %i.nw
  br i1 %i.qi, label %iter.check830, label %._crit_edge148.i

vec.epilog.scalar.ph831:                          ; preds = %vec.epilog.scalar.ph831.preheader, %vec.epilog.scalar.ph831
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph831 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph831.preheader ] ; 2 uses
  %.0123143.i = phi float [ %i.ra, %vec.epilog.scalar.ph831 ], [ %.0123143.i.ph, %vec.epilog.scalar.ph831.preheader ]
  %i.qj = mul nsw i64 %indvars.iv.i, %i.u
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qj ; 3 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.ns ; 2 uses
  %i.ql = load float, ptr %gep.i, align 4, !tbaa !11
  %i.qm = load float, ptr %i.qk, align 4, !tbaa !11
  %i.qn = fsub reassoc nsz arcp contract afn float %i.ql, %i.qm ; 2 uses
  %i.qo = fmul reassoc nsz arcp contract afn float %i.qn, %i.qn
  %i.qp = fmul reassoc nsz arcp contract afn float %i.qo, %i.of
  %i.qq = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qs = load <2 x float>, ptr %i.qq, align 4, !tbaa !11
  %i.qt = load <2 x float>, ptr %i.qr, align 4, !tbaa !11
  %i.qu = fsub reassoc nsz arcp contract afn <2 x float> %i.qs, %i.qt ; 2 uses
  %i.qv = fmul reassoc nsz arcp contract afn <2 x float> %i.qu, %i.qu
  %i.qw = fmul reassoc nsz arcp contract afn <2 x float> %i.qv, %i.og ; 2 uses
  %5 = extractelement <2 x float> %i.qw, i64 0
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qp, %5
  %i.qy = extractelement <2 x float> %i.qw, i64 1
  %i.qz = fadd reassoc nsz arcp contract afn float %i.qx, %i.qy
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qz, %.0123143.i ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i445 = icmp eq i32 %i.nu, %lftr.wideiv.i
  br i1 %exitcond.not.i445, label %._crit_edge.i446, label %vec.epilog.scalar.ph831, !llvm.loop !41

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.rb = icmp slt i32 %i.lv, %spec.select448
  br i1 %i.rb, label %.lr.ph501, label %._crit_edge502

.lr.ph501:                                        ; preds = %init_column_sums.exit
  %i.rc = sub nsw i32 %i.mj, %i.cl
  %i.rd = add i32 %i.mj, %i.cl                    ; 2 uses
  %i.re = tail call i32 @llvm.smin.i32(i32 %i.rd, i32 %.437) ; 2 uses
  %i.rf = icmp slt i32 %i.rc, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !29
  %i.ri = icmp slt i32 %i.mj, %.437               ; 2 uses
  %i.rj = sext i32 %i.rh to i64                   ; 8 uses
  %i.rk = tail call i32 @llvm.smin.i32(i32 %i.mb, i32 %spec.select450)
  %i.rl = sub i32 %i.mj, %i.cl
  %i.rm = sext i32 %i.rl to i64                   ; 6 uses
  %i.rn = sext i32 %i.re to i64
  %i.ro = zext nneg i32 %i.mj to i64              ; 2 uses
  %i.rp = sext i32 %.437 to i64                   ; 2 uses
  %smin546 = tail call i32 @llvm.smin.i32(i32 %smin545, i32 %i.ml)
  %i.rq = sub i32 0, %smin546
  %i.rr = sext i32 %i.rq to i64                   ; 4 uses
  %i.rs = add i64 %indvars.iv543, %i.rr           ; 7 uses
  %i.rt = sext i32 %i.mt to i64                   ; 4 uses
  %i.ru = sext i32 %i.lu to i64
  %smax562 = tail call i64 @llvm.smax.i64(i64 %indvars.iv560, i64 %i.ru) ; 3 uses
  %i.rv = sext i32 %spec.select448 to i64         ; 3 uses
  %i.rw = sext i32 %i.mb to i64
  %i.rx = sext i32 %spec.select450 to i64
  %i.ry = sext i32 %i.rk to i64
  %invariant.op = add nsw i64 %i.rv, -1
  %i.rz = shl nsw i64 %i.rs, 2
  %scevgep702 = getelementptr i8, ptr %scevgep701, i64 %i.rz ; 3 uses
  %i.sa = add i64 %i.hx, %i.rr
  %i.sb = sext i32 %i.mt to i64
  %smax703 = tail call i64 @llvm.smax.i64(i64 %i.sa, i64 %i.sb) ; 2 uses
  %i.sc = shl nsw i64 %smax703, 2
  %scevgep704 = getelementptr i8, ptr %scevgep701, i64 %i.sc ; 3 uses
  %i.sd = sub i64 %smax562, %i.fu
  %i.se = mul i64 %i.gk, %i.sd                    ; 2 uses
  %i.sf = shl nsw i64 %i.rs, 4                    ; 2 uses
  %i.sg = shl nsw i64 %i.rj, 2                    ; 2 uses
  %i.sh = getelementptr i8, ptr %0, i64 %i.se
  %i.si = getelementptr i8, ptr %i.sh, i64 %i.sf
  %scevgep705 = getelementptr i8, ptr %i.si, i64 %i.sg
  %i.sj = add nuw i64 %smax562, 1
  %smax707 = tail call i64 @llvm.smax.i64(i64 %i.rv, i64 %i.sj)
  %i.sk = sub i64 %smax707, %i.fu
  %reass.sub = shl i64 %i.sk, 2
  %i.sl = add i64 %reass.sub, -4
  %i.sm = mul i64 %i.sl, %i.u
  %i.sn = shl nsw i64 %smax703, 4
  %i.so = add i64 %i.sm, %i.sn                    ; 2 uses
  %i.sp = getelementptr i8, ptr %scevgep706, i64 %i.so
  %scevgep708 = getelementptr i8, ptr %i.sp, i64 %i.sg
  %i.sq = getelementptr i8, ptr %0, i64 %i.se
  %scevgep709 = getelementptr i8, ptr %i.sq, i64 %i.sf
  %scevgep711 = getelementptr i8, ptr %scevgep710, i64 %i.so
  %i.sr = add i64 %i.hv, %i.rr
  %smax725 = tail call i64 @llvm.smax.i64(i64 %i.sr, i64 %i.rt)
  %i.ss = add i64 %i.hu, %i.rr
  %i.st = sub i64 %smax725, %i.ss                 ; 3 uses
  %i.su = sext i32 %i.rd to i64
  %smin750 = tail call i64 @llvm.smin.i64(i64 %smin749, i64 %i.su)
  %i.sv = sext i32 %i.mk to i64
  %smin751 = tail call i64 @llvm.smin.i64(i64 %smin750, i64 %i.sv)
  %i.sw = sub i64 %smin751, %i.rm                 ; 7 uses
  %min.iters.check753 = icmp ult i64 %i.sw, 8
  %min.iters.check754 = icmp ult i64 %i.sw, 32
  %i.sx = and i64 %i.sw, 24
  %n.vec756 = and i64 %i.sw, -32                  ; 4 uses
  %i.sy = add i64 %n.vec756, %i.rm
  %invariant.gep900 = getelementptr [4 x i8], ptr %i.ii, i64 %i.rm
  %cmp.n770 = icmp eq i64 %i.sw, %n.vec756
  %min.epilog.iters.check = icmp eq i64 %i.sx, 0
  %n.vec772 = and i64 %i.sw, -8                   ; 3 uses
  %i.sz = add i64 %n.vec772, %i.rm
  %invariant.gep902 = getelementptr [4 x i8], ptr %i.ii, i64 %i.rm
  %cmp.n777 = icmp eq i64 %i.sw, %n.vec772
  %min.iters.check727 = icmp ult i64 %i.st, 9
  %bound0713 = icmp ult ptr %scevgep702, %scevgep708
  %bound1714 = icmp ult ptr %scevgep705, %scevgep704
  %found.conflict715 = and i1 %bound0713, %bound1714
  %bound0717 = icmp ult ptr %scevgep702, %scevgep711
  %bound1718 = icmp ult ptr %scevgep709, %scevgep704
  %found.conflict719 = and i1 %bound0717, %bound1718
  %i.ta = or i1 %found.conflict719, %stride.check720
  %conflict.rdx = or i1 %found.conflict715, %i.ta
  %bound0721 = icmp ult ptr %scevgep702, %scevgep712
  %bound1722 = icmp ult ptr %i.jd, %scevgep704
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx724 = or i1 %conflict.rdx, %found.conflict723
  %i.tb = and i64 %i.st, 7                        ; 2 uses
  %i.tc = icmp eq i64 %i.tb, 0
  %i.td = select i1 %i.tc, i64 8, i64 %i.tb
  %n.vec729 = sub i64 %i.st, %i.td                ; 2 uses
  %i.te = add i64 %i.rs, %n.vec729
  br label %bb.u

._crit_edge502:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next566, %i.ah
  br i1 %exitcond568.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph501, %.loopexit
  %indvars.iv563 = phi i64 [ %smax562, %.lr.ph501 ], [ %indvars.iv.next564, %.loopexit ] ; 11 uses
  br i1 %i.rf, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check753, label %.lr.ph477.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check754, label %vec.epilog.ph, label %vector.body757

vector.body757:                                   ; preds = %vector.main.loop.iter.check, %vector.body757
  %index758 = phi i64 [ %index.next766, %vector.body757 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.ti, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi759 = phi <8 x float> [ %i.tj, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi760 = phi <8 x float> [ %i.tk, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi761 = phi <8 x float> [ %i.tl, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %index758 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %gep901, i64 32
  %i.tg = getelementptr inbounds nuw i8, ptr %gep901, i64 64
  %i.th = getelementptr inbounds nuw i8, ptr %gep901, i64 96
  %wide.load762 = load <8 x float>, ptr %gep901, align 4, !tbaa !11
  %wide.load763 = load <8 x float>, ptr %i.tf, align 4, !tbaa !11
  %wide.load764 = load <8 x float>, ptr %i.tg, align 4, !tbaa !11
  %wide.load765 = load <8 x float>, ptr %i.th, align 4, !tbaa !11
  %i.ti = fadd reassoc nsz arcp contract afn <8 x float> %wide.load762, %vec.phi ; 2 uses
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi759 ; 2 uses
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load764, %vec.phi760 ; 2 uses
  %i.tl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load765, %vec.phi761 ; 2 uses
  %index.next766 = add nuw i64 %index758, 32      ; 2 uses
  %i.tm = icmp eq i64 %index.next766, %n.vec756
  br i1 %i.tm, label %middle.block767, label %vector.body757, !llvm.loop !42

middle.block767:                                  ; preds = %vector.body757
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.tj, %i.ti
  %bin.rdx768 = fadd reassoc nsz arcp contract afn <8 x float> %i.tk, %bin.rdx
  %bin.rdx769 = fadd reassoc nsz arcp contract afn <8 x float> %i.tl, %bin.rdx768
  %i.tn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx769) ; 3 uses
  br i1 %cmp.n770, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block767
  br i1 %min.epilog.iters.check, label %.lr.ph477.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec756, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.tn, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.to = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index773 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next776, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi774 = phi <8 x float> [ %i.to, %vec.epilog.ph ], [ %i.tp, %vec.epilog.vector.body ]
  %gep903 = getelementptr [4 x i8], ptr %invariant.gep902, i64 %index773
  %wide.load775 = load <8 x float>, ptr %gep903, align 4, !tbaa !11
  %i.tp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load775, %vec.phi774 ; 2 uses
  %index.next776 = add nuw i64 %index773, 8       ; 2 uses
  %i.tq = icmp eq i64 %index.next776, %n.vec772
  br i1 %i.tq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.tr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tp) ; 2 uses
  br i1 %cmp.n777, label %._crit_edge, label %.lr.ph477.preheader

.lr.ph477.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv530.ph = phi i64 [ %i.rm, %iter.check ], [ %i.sy, %vec.epilog.iter.check ], [ %i.sz, %vec.epilog.middle.block ]
  %.0402476.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.tn, %vec.epilog.iter.check ], [ %i.tr, %vec.epilog.middle.block ]
  br label %.lr.ph477

._crit_edge:                                      ; preds = %.lr.ph477, %middle.block767, %vec.epilog.middle.block, %bb.u
  %.0402.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.tr, %vec.epilog.middle.block ], [ %i.tn, %middle.block767 ], [ %i.uc, %.lr.ph477 ] ; 2 uses
  %i.ts = mul nsw i64 %indvars.iv563, %i.u
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ts ; 2 uses
  %i.tu = mul i64 %i.jo, %indvars.iv563
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tu ; 2 uses
  %i.tw = load float, ptr %i.fz, align 4, !tbaa !45 ; 2 uses
  %i.tx = load float, ptr %i.k, align 8, !tbaa !17
  %i.ty = fcmp reassoc nsz arcp contract afn olt float %i.tx, 0.000000e+00
  br i1 %i.ty, label %.preheader464, label %.preheader466

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.ri, label %.lr.ph481, label %.loopexit465

.preheader464:                                    ; preds = %._crit_edge
  br i1 %i.ri, label %.lr.ph487, label %.loopexit465

.lr.ph487:                                        ; preds = %.preheader464
  %i.tz = fmul reassoc nsz arcp contract afn float %i.tw, f0xCB000000
  %invariant.gep488 = getelementptr [4 x i8], ptr %i.tt, i64 %i.rj
  br label %bb.v

.lr.ph477:                                        ; preds = %.lr.ph477.preheader, %.lr.ph477
  %indvars.iv530 = phi i64 [ %indvars.iv.next531, %.lr.ph477 ], [ %indvars.iv530.ph, %.lr.ph477.preheader ] ; 2 uses
  %.0402476 = phi float [ %i.uc, %.lr.ph477 ], [ %.0402476.ph, %.lr.ph477.preheader ]
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv530
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !11
  %i.uc = fadd reassoc nsz arcp contract afn float %i.ub, %.0402476 ; 2 uses
  %indvars.iv.next531 = add nsw i64 %indvars.iv530, 1 ; 2 uses
  %i.ud = icmp slt i64 %indvars.iv.next531, %i.rn
  br i1 %i.ud, label %.lr.ph477, label %._crit_edge, !llvm.loop !46

bb.v:                                             ; preds = %.lr.ph487, %bb.v
  %indvars.iv540 = phi i64 [ %i.ro, %.lr.ph487 ], [ %indvars.iv.next541, %bb.v ] ; 4 uses
  %.1486 = phi float [ %.0402.lcssa, %.lr.ph487 ], [ %i.ul, %bb.v ]
  %gep642 = getelementptr [4 x i8], ptr %invariant.gep641, i64 %indvars.iv540
  %i.ue = load float, ptr %gep642, align 4, !tbaa !11
  %i.uf = trunc nuw nsw i64 %indvars.iv540 to i32
  %i.ug = add i32 %i.uf, %i.fy
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.uh
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !11
  %i.uk = fsub reassoc nsz arcp contract afn float %i.ue, %i.uj
  %i.ul = fadd reassoc nsz arcp contract afn float %i.uk, %.1486 ; 2 uses
  %i.um = fmul reassoc nsz arcp contract afn float %i.tz, %i.ul
  %i.un = fptosi float %i.um to i32               ; 2 uses
  %i.uo = add nsw i32 %i.un, 1065353216
  %i.up = icmp sgt i32 %i.un, -1056964609
  %i.uq = bitcast i32 %i.uo to float
  %i.ur = shl nuw nsw i64 %indvars.iv540, 2       ; 2 uses
  %gep489 = getelementptr [4 x i8], ptr %invariant.gep488, i64 %i.ur ; 3 uses
  %i.us = getelementptr i8, ptr %gep489, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !11
  %invariant.gep482 = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.ur ; 2 uses
  %i.uu = select i1 %i.up, float %i.uq, float 0.000000e+00
  %i.uv = load <2 x float>, ptr %gep489, align 4, !tbaa !11
  %i.uw = insertelement <4 x float> poison, float %i.uu, i64 0
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ut, i64 2
  %i.uz = shufflevector <2 x float> %i.uv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.va = shufflevector <4 x float> %i.uz, <4 x float> %i.uy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vb = fmul reassoc nsz arcp contract afn <4 x float> %i.ux, %i.va
  %i.vc = load <4 x float>, ptr %invariant.gep482, align 4, !tbaa !11
  %i.vd = fadd reassoc nsz arcp contract afn <4 x float> %i.vc, %i.vb
  store <4 x float> %i.vd, ptr %invariant.gep482, align 4, !tbaa !11
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %gep489, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ve, i32 0, i32 3, i32 1)
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %i.vf = icmp slt i64 %indvars.iv.next541, %i.rp
  br i1 %i.vf, label %bb.v, label %.loopexit465

.lr.ph481:                                        ; preds = %.preheader466, %.lr.ph481
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %.lr.ph481 ], [ %i.ro, %.preheader466 ] ; 4 uses
  %.2480 = phi float [ %i.vn, %.lr.ph481 ], [ %.0402.lcssa, %.preheader466 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep640, i64 %indvars.iv535
  %i.vg = load float, ptr %gep, align 4, !tbaa !11
  %i.vh = trunc nuw nsw i64 %indvars.iv535 to i32
  %i.vi = add i32 %i.vh, %i.fy
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.vj
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !11
  %i.vm = fsub reassoc nsz arcp contract afn float %i.vg, %i.vl
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vm, %.2480 ; 2 uses
  %i.vo = shl nuw nsw i64 %indvars.iv535, 2       ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.vo ; 3 uses
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.vp, i64 %i.rj ; 3 uses
  %i.vr = load float, ptr %i.vp, align 4, !tbaa !11
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.vu = load float, ptr %i.k, align 8, !tbaa !17
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vu, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.vo ; 2 uses
  %i.vw = load <2 x float>, ptr %i.vq, align 4, !tbaa !11 ; 2 uses
  %i.vx = extractelement <2 x float> %i.vw, i64 0
  %i.vy = fsub reassoc nsz arcp contract afn float %i.vr, %i.vx ; 2 uses
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vy, %i.vy
  %i.wa = load <2 x float>, ptr %i.vs, align 4, !tbaa !11
  %i.wb = load <2 x float>, ptr %i.vt, align 4, !tbaa !11 ; 2 uses
  %i.wc = fsub reassoc nsz arcp contract afn <2 x float> %i.wa, %i.wb ; 2 uses
  %i.wd = fmul reassoc nsz arcp contract afn <2 x float> %i.wc, %i.wc ; 2 uses
  %i.we = extractelement <2 x float> %i.wd, i64 0
  %i.wf = fadd reassoc nsz arcp contract afn float %i.we, %i.vz
  %i.wg = extractelement <2 x float> %i.wd, i64 1
  %i.wh = fadd reassoc nsz arcp contract afn float %i.wf, %i.wg
  %i.wi = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.wh
  %i.wj = fadd reassoc nsz arcp contract afn float %i.wi, %i.vn
  %i.wk = fmul reassoc nsz arcp contract afn float %i.wj, %i.tw
  %i.wl = fdiv reassoc nsz arcp contract afn float %i.wk, %i.vv
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, -2.000000e+00
  %i.wn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wm, float 0.000000e+00)
  %i.wo = fmul reassoc nnan nsz arcp contract afn float %i.wn, f0xCB000000
  %i.wp = fptosi float %i.wo to i32               ; 2 uses
  %i.wq = add nsw i32 %i.wp, 1065353216
  %i.wr = icmp sgt i32 %i.wp, -1056964609
  %i.ws = bitcast i32 %i.wq to float
  %i.wt = select i1 %i.wr, float %i.ws, float 0.000000e+00
  %i.wu = insertelement <4 x float> poison, float %i.wt, i64 0
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ww = shufflevector <2 x float> %i.vw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wx = insertelement <4 x float> %i.ww, float 1.000000e+00, i64 3
  %i.wy = shufflevector <2 x float> %i.wb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.wz = shufflevector <4 x float> %i.wx, <4 x float> %i.wy, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.xa = fmul reassoc nsz arcp contract afn <4 x float> %i.wv, %i.wz
  %i.xb = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !11
  %i.xc = fadd reassoc nsz arcp contract afn <4 x float> %i.xb, %i.xa
  store <4 x float> %i.xc, ptr %invariant.gep, align 4, !tbaa !11
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.xd, i32 0, i32 3, i32 1)
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %i.xe = icmp slt i64 %indvars.iv.next536, %i.rp
  br i1 %i.xe, label %.lr.ph481, label %.loopexit465

.loopexit465:                                     ; preds = %.lr.ph481, %bb.v, %.preheader466, %.preheader464
  %i.xf = icmp slt i64 %indvars.iv563, %i.ry
  br i1 %i.xf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit465
  %i.xg = trunc nsw i64 %indvars.iv563 to i32
  %i.xh = add i32 %i.ga, %i.xg
  %i.xi = sext i32 %i.xh to i64
  %i.xj = mul nsw i64 %i.xi, %i.u
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xj
  br i1 %i.ni, label %.lr.ph498, label %.loopexit

.lr.ph498:                                        ; preds = %bb.w, %.lr.ph498
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %.lr.ph498 ], [ %i.rs, %bb.w ] ; 3 uses
  %.idx630 = shl nsw i64 %indvars.iv557, 4
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 %.idx630 ; 4 uses
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.rj ; 3 uses
  %i.xn = load float, ptr %i.xl, align 4, !tbaa !11
  %i.xo = load float, ptr %i.xm, align 4, !tbaa !11
  %i.xp = fsub reassoc nsz arcp contract afn float %i.xn, %i.xo ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, %i.xp
  %i.xr = load float, ptr %i.jd, align 4, !tbaa !11
  %i.xs = fmul reassoc nsz arcp contract afn float %i.xq, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %i.xv = load <2 x float>, ptr %i.xt, align 4, !tbaa !11
  %i.xw = load <2 x float>, ptr %i.xu, align 4, !tbaa !11
  %i.xx = fsub reassoc nsz arcp contract afn <2 x float> %i.xv, %i.xw ; 2 uses
  %i.xy = fmul reassoc nsz arcp contract afn <2 x float> %i.xx, %i.xx
  %i.xz = load <2 x float>, ptr %i.jj, align 4, !tbaa !11
  %i.ya = fmul reassoc nsz arcp contract afn <2 x float> %i.xy, %i.xz ; 2 uses
  %i.yb = extractelement <2 x float> %i.ya, i64 0
  %i.yc = fadd reassoc nsz arcp contract afn float %i.xs, %i.yb
  %i.yd = extractelement <2 x float> %i.ya, i64 1
  %i.ye = fadd reassoc nsz arcp contract afn float %i.yc, %i.yd
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.yf, i32 0, i32 3, i32 1)
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv557 ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !11
  %i.yi = fadd reassoc nsz arcp contract afn float %i.ye, %i.yh
  store float %i.yi, ptr %i.yg, align 4, !tbaa !11
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.yj, i32 0, i32 3, i32 1)
  %indvars.iv.next558 = add nsw i64 %indvars.iv557, 1 ; 2 uses
  %i.yk = icmp slt i64 %indvars.iv.next558, %i.rt
  br i1 %i.yk, label %.lr.ph498, label %.loopexit

bb.x:                                             ; preds = %.loopexit465
  %i.yl = icmp slt i64 %indvars.iv563, %i.rx
  br i1 %i.yl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ym = sub nsw i64 %indvars.iv563, %i.fu
  %i.yn = mul nsw i64 %i.ym, %i.u
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yn
  %i.yp = trunc nsw i64 %indvars.iv563 to i32
  %i.yq = add i32 %i.ga, %i.yp
  %i.yr = sext i32 %i.yq to i64
  %i.ys = mul nsw i64 %i.yr, %i.u
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ys
  br i1 %i.ni, label %.lr.ph495, label %.loopexit

.lr.ph495:                                        ; preds = %bb.y, %.lr.ph495
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %.lr.ph495 ], [ %i.rs, %bb.y ] ; 3 uses
  %i.yu = shl nsw i64 %indvars.iv552, 2           ; 2 uses
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.yo, i64 %i.yu ; 3 uses
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.yt, i64 %i.yu ; 4 uses
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.rj ; 3 uses
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %i.rj ; 2 uses
  %i.yz = load float, ptr %i.yw, align 4, !tbaa !11
  %i.za = load float, ptr %i.yx, align 4, !tbaa !11
  %i.zb = fsub reassoc nsz arcp contract afn float %i.yz, %i.za ; 2 uses
  %i.zc = load float, ptr %i.yv, align 4, !tbaa !11
  %i.zd = load float, ptr %i.yy, align 4, !tbaa !11
  %i.ze = fsub reassoc nsz arcp contract afn float %i.zc, %i.zd ; 2 uses
  %i.zf = fmul reassoc nsz arcp contract afn float %i.zb, %i.zb
  %i.zg = fmul reassoc nsz arcp contract afn float %i.ze, %i.ze
  %i.zh = fsub reassoc nsz arcp contract afn float %i.zf, %i.zg
  %i.zi = load float, ptr %i.jd, align 4, !tbaa !11
  %i.zj = fmul reassoc nsz arcp contract afn float %i.zh, %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  %6 = load <2 x float>, ptr %i.zk, align 4, !tbaa !11
  %7 = load <2 x float>, ptr %i.zl, align 4, !tbaa !11
  %8 = fsub reassoc nsz arcp contract afn <2 x float> %6, %7 ; 2 uses
  %9 = load <2 x float>, ptr %i.zm, align 4, !tbaa !11
  %10 = load <2 x float>, ptr %i.zn, align 4, !tbaa !11
  %11 = fsub reassoc nsz arcp contract afn <2 x float> %9, %10 ; 2 uses
  %12 = fmul reassoc nsz arcp contract afn <2 x float> %8, %8
  %13 = fmul reassoc nsz arcp contract afn <2 x float> %11, %11
  %14 = fsub reassoc nsz arcp contract afn <2 x float> %12, %13
  %15 = load <2 x float>, ptr %i.jj, align 4, !tbaa !11
  %16 = fmul reassoc nsz arcp contract afn <2 x float> %14, %15 ; 2 uses
  %17 = extractelement <2 x float> %16, i64 0
  %18 = fadd reassoc nsz arcp contract afn float %i.zj, %17
  %19 = extractelement <2 x float> %16, i64 1
  %i.zo = fadd reassoc nsz arcp contract afn float %18, %19
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.zp, i32 0, i32 3, i32 1)
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv552 ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !11
  %i.zs = fadd reassoc nsz arcp contract afn float %i.zo, %i.zr
  store float %i.zs, ptr %i.zq, align 4, !tbaa !11
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.zt, i32 0, i32 3, i32 1)
  %indvars.iv.next553 = add nsw i64 %indvars.iv552, 1 ; 2 uses
  %i.zu = icmp slt i64 %indvars.iv.next553, %i.rt
  br i1 %i.zu, label %.lr.ph495, label %.loopexit

bb.z:                                             ; preds = %bb.x
  %.not = icmp sge i64 %indvars.iv563, %i.rw
  %i.zv = icmp slt i64 %indvars.iv563, %invariant.op
  %or.cond = select i1 %.not, i1 %i.zv, i1 false
  br i1 %or.cond, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.zw = sub nsw i64 %indvars.iv563, %i.fu
  %i.zx = mul nsw i64 %i.zw, %i.u
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zx ; 2 uses
  br i1 %i.ni, label %.lr.ph492.preheader, label %.loopexit

.lr.ph492.preheader:                              ; preds = %bb.aa
  %brmerge = select i1 %min.iters.check727, i1 true, i1 %conflict.rdx724
  br i1 %brmerge, label %.lr.ph492.preheader870, label %vector.ph728

vector.ph728:                                     ; preds = %.lr.ph492.preheader
  %i.zz = load float, ptr %i.jd, align 4, !tbaa !11, !alias.scope !47
  %broadcast.splatinsert740 = insertelement <8 x float> poison, float %i.zz, i64 0
  %broadcast.splat741 = shufflevector <8 x float> %broadcast.splatinsert740, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aaa = load float, ptr %i.jj, align 4, !tbaa !11, !alias.scope !47
  %broadcast.splatinsert742 = insertelement <8 x float> poison, float %i.aaa, i64 0
  %broadcast.splat743 = shufflevector <8 x float> %broadcast.splatinsert742, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aab = load float, ptr %i.jk, align 4, !tbaa !11, !alias.scope !47
  %broadcast.splatinsert744 = insertelement <8 x float> poison, float %i.aab, i64 0
  %broadcast.splat745 = shufflevector <8 x float> %broadcast.splatinsert744, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body730

vector.body730:                                   ; preds = %vector.body730, %vector.ph728
  %index731 = phi i64 [ 0, %vector.ph728 ], [ %index.next746, %vector.body730 ] ; 2 uses
  %i.aac = add i64 %i.rs, %index731               ; 2 uses
  %i.aad = shl nsw i64 %i.aac, 4
  %i.aae = getelementptr inbounds i8, ptr %i.zy, i64 %i.aad ; 2 uses
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.rj
  %wide.vec732 = load <32 x float>, ptr %i.aae, align 4, !tbaa !11, !alias.scope !50 ; 3 uses
  %strided.vec733 = shufflevector <32 x float> %wide.vec732, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec734 = shufflevector <32 x float> %wide.vec732, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec735 = shufflevector <32 x float> %wide.vec732, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.vec736 = load <32 x float>, ptr %i.aaf, align 4, !tbaa !11, !alias.scope !52 ; 3 uses
  %strided.vec737 = shufflevector <32 x float> %wide.vec736, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec738 = shufflevector <32 x float> %wide.vec736, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec739 = shufflevector <32 x float> %wide.vec736, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aag = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec733, %strided.vec737 ; 2 uses
  %i.aah = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec734, %strided.vec738 ; 2 uses
  %i.aai = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec735, %strided.vec739 ; 2 uses
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.aac ; 2 uses
  %wide.load = load <8 x float>, ptr %i.aaj, align 4, !tbaa !11, !alias.scope !54, !noalias !56
  %i.aak = fmul reassoc nsz arcp contract afn <8 x float> %i.aag, %i.aag
  %i.aal = fmul reassoc nsz arcp contract afn <8 x float> %i.aak, %broadcast.splat741
  %i.aam = fmul reassoc nsz arcp contract afn <8 x float> %i.aah, %i.aah
  %i.aan = fmul reassoc nsz arcp contract afn <8 x float> %i.aam, %broadcast.splat743
  %i.aao = fmul reassoc nsz arcp contract afn <8 x float> %i.aai, %i.aai
  %i.aap = fmul reassoc nsz arcp contract afn <8 x float> %i.aao, %broadcast.splat745
  %i.aaq = fadd reassoc nsz arcp contract afn <8 x float> %i.aap, %i.aan
  %i.aar = fadd reassoc nsz arcp contract afn <8 x float> %i.aaq, %i.aal
  %i.aas = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.aar
  store <8 x float> %i.aas, ptr %i.aaj, align 4, !tbaa !11, !alias.scope !54, !noalias !56
  %index.next746 = add nuw i64 %index731, 8       ; 2 uses
  %i.aat = icmp eq i64 %index.next746, %n.vec729
  br i1 %i.aat, label %.lr.ph492.preheader870, label %vector.body730, !llvm.loop !57

.lr.ph492.preheader870:                           ; preds = %vector.body730, %.lr.ph492.preheader
  %indvars.iv547.ph = phi i64 [ %i.rs, %.lr.ph492.preheader ], [ %i.te, %vector.body730 ]
  br label %.lr.ph492

.lr.ph492:                                        ; preds = %.lr.ph492.preheader870, %.lr.ph492
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %.lr.ph492 ], [ %indvars.iv547.ph, %.lr.ph492.preheader870 ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv547, 4
  %i.aau = getelementptr inbounds i8, ptr %i.zy, i64 %.idx ; 3 uses
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.aau, i64 %i.rj ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aaw = load float, ptr %20, align 4, !tbaa !11
  %21 = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aax = load float, ptr %21, align 4, !tbaa !11
  %22 = fsub reassoc nsz arcp contract afn float %i.aaw, %i.aax ; 2 uses
  %23 = load float, ptr %i.jk, align 4, !tbaa !11
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv547 ; 2 uses
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !11
  %i.aba = load <2 x float>, ptr %i.aau, align 4, !tbaa !11
  %i.abb = load <2 x float>, ptr %i.aav, align 4, !tbaa !11
  %i.abc = fsub reassoc nsz arcp contract afn <2 x float> %i.aba, %i.abb ; 2 uses
  %i.abd = load <2 x float>, ptr %i.jd, align 4, !tbaa !11
  %i.abe = fmul reassoc nsz arcp contract afn <2 x float> %i.abc, %i.abc
  %i.abf = fmul reassoc nsz arcp contract afn <2 x float> %i.abe, %i.abd ; 2 uses
  %24 = fmul reassoc nsz arcp contract afn float %22, %22
  %.neg458 = fmul reassoc nsz arcp contract afn float %24, %23
  %i.abg = extractelement <2 x float> %i.abf, i64 1
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg458, %i.abg
  %i.abh = extractelement <2 x float> %i.abf, i64 0
  %reass.add460 = fadd reassoc nsz arcp contract afn float %reass.add, %i.abh
  %i.abi = fsub reassoc nsz arcp contract afn float %i.aaz, %reass.add460
  store float %i.abi, ptr %i.aay, align 4, !tbaa !11
  %indvars.iv.next548 = add nsw i64 %indvars.iv547, 1 ; 2 uses
  %i.abj = icmp slt i64 %indvars.iv.next548, %i.rt
  br i1 %i.abj, label %.lr.ph492, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph492, %.lr.ph495, %.lr.ph498, %bb.aa, %bb.y, %bb.w, %bb.z
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.abk = icmp slt i64 %indvars.iv.next564, %i.rv
  br i1 %i.abk, label %bb.u, label %._crit_edge502

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge513
  %indvars.iv580 = phi i64 [ %indvars.iv560, %.preheader.lr.ph.preheader ], [ %indvars.iv.next581, %._crit_edge513 ] ; 2 uses
  %i.abl = trunc nsw i64 %indvars.iv580 to i32
  %.reass517 = mul i32 %factor.op.mul516, %i.abl
  %i.abm = sext i32 %.reass517 to i64
  %i.abn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.abm ; 2 uses
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.abo = add nuw i64 %indvars.iv543, %index
  %i.abp = shl nuw nsw i64 %i.abo, 4
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.abp ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.abq, align 4, !tbaa !11 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec651 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec652 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec653 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 5 uses
  %i.abr = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec, %strided.vec653
  %i.abs = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec651, %strided.vec653
  %i.abt = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec652, %strided.vec653
  %i.abu = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec653, %strided.vec653
  %i.abv = shufflevector <4 x float> %i.abr, <4 x float> %i.abs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abw = shufflevector <4 x float> %i.abt, <4 x float> %i.abu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.abv, <8 x float> %i.abw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.abq, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abx = icmp eq i64 %index.next, %n.vec
  br i1 %i.abx, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge513, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv577.ph = phi i64 [ %indvars.iv543, %.preheader.lr.ph ], [ %i.lo, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv577 = phi i64 [ %indvars.iv.next578, %.preheader ], [ %indvars.iv577.ph, %.preheader.preheader ] ; 2 uses
  %.idx631 = shl nuw nsw i64 %indvars.iv577, 4
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abn, i64 %.idx631 ; 2 uses
  %i.abz = load <4 x float>, ptr %i.aby, align 4, !tbaa !11 ; 2 uses
  %i.aca = shufflevector <4 x float> %i.abz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.acb = fdiv reassoc nsz arcp contract afn <4 x float> %i.abz, %i.aca
  store <4 x float> %i.acb, ptr %i.aby, align 4, !tbaa !11
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %i.acc = icmp slt i64 %indvars.iv.next578, %i.lk
  br i1 %i.acc, label %.preheader, label %._crit_edge513, !llvm.loop !60

._crit_edge513:                                   ; preds = %.preheader, %middle.block
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %i.acd = icmp slt i64 %indvars.iv.next581, %i.ll
  br i1 %i.acd, label %.preheader.lr.ph, label %.loopexit469

.preheader461.lr.ph:                              ; preds = %.preheader461.lr.ph.preheader, %._crit_edge506
  %indvar656 = phi i32 [ 0, %.preheader461.lr.ph.preheader ], [ %indvar.next657, %._crit_edge506 ] ; 2 uses
  %indvars.iv573 = phi i64 [ %indvars.iv560, %.preheader461.lr.ph.preheader ], [ %indvars.iv.next574, %._crit_edge506 ] ; 3 uses
  %i.ace = mul nsw i64 %indvars.iv573, %i.u
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ace ; 5 uses
  %i.acg = trunc nsw i64 %indvars.iv573 to i32
  %.reass = mul i32 %factor.op.mul, %i.acg
  %i.ach = sext i32 %.reass to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ach ; 5 uses
  br i1 %min.iters.check671, label %.preheader461.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader461.lr.ph
  %i.acj = mul i32 %i.kx, %indvar656
  %i.ack = add i32 %i.kw, %i.acj
  %i.acl = sext i32 %i.ack to i64
  %i.acm = shl nsw i64 %i.acl, 2                  ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.acm
  %scevgep658 = getelementptr i8, ptr %scevgep, i64 %i.acm
  %bound0 = icmp ult ptr %scevgep658, %scevgep668
  %bound1 = icmp ult ptr %scevgep665, %scevgep662
  %found.conflict = and i1 %bound0, %bound1
  %i.acn = or i1 %found.conflict, %stride.check
  br i1 %i.acn, label %.preheader461.preheader, label %vector.body680

vector.body680:                                   ; preds = %vector.memcheck, %vector.body680
  %index681 = phi i64 [ %index.next697, %vector.body680 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.aco = add nuw i64 %indvars.iv543, %index681
  %i.acp = shl nuw nsw i64 %i.aco, 2              ; 2 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.acp ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 12 ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.acp
  %wide.vec682 = load <16 x float>, ptr %i.acs, align 4, !tbaa !11, !alias.scope !61 ; 4 uses
  %strided.vec683 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec684 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec685 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec686 = shufflevector <16 x float> %wide.vec682, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.act = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat, %strided.vec683
  %wide.vec687 = load <16 x float>, ptr %i.acq, align 4, !tbaa !11, !alias.scope !64, !noalias !61 ; 4 uses
  %strided.vec688 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec689 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec690 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec691 = shufflevector <16 x float> %wide.vec687, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec692 = load <16 x float>, ptr %i.acr, align 4, !tbaa !11, !alias.scope !64, !noalias !61
  %strided.vec693 = shufflevector <16 x float> %wide.vec692, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.acu = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat675, %strided.vec688
  %i.acv = fdiv reassoc nsz arcp contract afn <4 x float> %i.acu, %strided.vec693
  %i.acw = fadd reassoc nsz arcp contract afn <4 x float> %i.acv, %i.act
  %i.acx = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat677, %strided.vec684
  %i.acy = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat679, %strided.vec689
  %i.acz = fdiv reassoc nsz arcp contract afn <4 x float> %i.acy, %strided.vec693
  %i.ada = fadd reassoc nsz arcp contract afn <4 x float> %i.acz, %i.acx
  %i.adb = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat677, %strided.vec685
  %wide.vec694 = load <16 x float>, ptr %i.acr, align 4, !tbaa !11, !alias.scope !64, !noalias !61
  %strided.vec695 = shufflevector <16 x float> %wide.vec694, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.adc = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat679, %strided.vec690
  %i.add = fdiv reassoc nsz arcp contract afn <4 x float> %i.adc, %strided.vec695
  %i.ade = fadd reassoc nsz arcp contract afn <4 x float> %i.add, %i.adb
  %i.adf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec686, zeroinitializer
  %i.adg = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec691, %strided.vec695
  %i.adh = fadd reassoc nsz arcp contract afn <4 x float> %i.adg, %i.adf
  %i.adi = shufflevector <4 x float> %i.acw, <4 x float> %i.ada, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adj = shufflevector <4 x float> %i.ade, <4 x float> %i.adh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec696 = shufflevector <8 x float> %i.adi, <8 x float> %i.adj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec696, ptr %i.acq, align 4, !tbaa !11, !alias.scope !64, !noalias !61
  %index.next697 = add nuw i64 %index681, 4       ; 2 uses
  %i.adk = icmp eq i64 %index.next697, %n.vec673
  br i1 %i.adk, label %.preheader461.preheader, label %vector.body680, !llvm.loop !66

.preheader461.preheader:                          ; preds = %vector.body680, %vector.memcheck, %.preheader461.lr.ph
  %indvars.iv570.ph = phi i64 [ %indvars.iv543, %vector.memcheck ], [ %indvars.iv543, %.preheader461.lr.ph ], [ %i.lh, %vector.body680 ]
  br label %.preheader461

.preheader461:                                    ; preds = %.preheader461.preheader, %.preheader461
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %.preheader461 ], [ %indvars.iv570.ph, %.preheader461.preheader ] ; 2 uses
  %i.adl = shl nuw nsw i64 %indvars.iv570, 2      ; 5 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.adl ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 12
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.adl
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !11
  %i.adq = fmul reassoc nsz arcp contract afn float %i.f, %i.adp
  %i.adr = or disjoint i64 %i.adl, 1              ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.adr
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.adr
  %i.adu = or disjoint i64 %i.adl, 2              ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.adu
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.adu
  %i.adx = or disjoint i64 %i.adl, 3              ; 2 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.adx
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.adx
  %i.aea = load float, ptr %i.adn, align 4, !tbaa !11
  %i.aeb = load <4 x float>, ptr %i.adm, align 4, !tbaa !11
  %i.aec = fmul reassoc nsz arcp contract afn <4 x float> %i.aeb, %i.gq
  %i.aed = insertelement <4 x float> poison, float %i.aea, i64 0
  %i.aee = shufflevector <4 x float> %i.aed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aef = fdiv reassoc nsz arcp contract afn <4 x float> %i.aec, %i.aee ; 4 uses
  %i.aeg = extractelement <4 x float> %i.aef, i64 0
  %i.aeh = fadd reassoc nsz arcp contract afn float %i.aeg, %i.adq
  store float %i.aeh, ptr %i.adm, align 4, !tbaa !11
  %i.aei = load float, ptr %i.ads, align 4, !tbaa !11
  %i.aej = fmul reassoc nsz arcp contract afn float %i.g, %i.aei
  %i.aek = extractelement <4 x float> %i.aef, i64 1
  %i.ael = fadd reassoc nsz arcp contract afn float %i.aek, %i.aej
  store float %i.ael, ptr %i.adt, align 4, !tbaa !11
  %i.aem = load float, ptr %i.adv, align 4, !tbaa !11
  %i.aen = fmul reassoc nsz arcp contract afn float %i.g, %i.aem
  %i.aeo = extractelement <4 x float> %i.aef, i64 2
  %i.aep = fadd reassoc nsz arcp contract afn float %i.aeo, %i.aen
  store float %i.aep, ptr %i.adw, align 4, !tbaa !11
  %i.aeq = load float, ptr %i.ady, align 4, !tbaa !11
  %i.aer = fmul reassoc nsz arcp contract afn float %i.aeq, 0.000000e+00
  %i.aes = extractelement <4 x float> %i.aef, i64 3
  %i.aet = fadd reassoc nsz arcp contract afn float %i.aes, %i.aer
  store float %i.aet, ptr %i.adz, align 4, !tbaa !11
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.aeu = icmp slt i64 %indvars.iv.next571, %i.ku
  br i1 %i.aeu, label %.preheader461, label %._crit_edge506, !llvm.loop !67

._crit_edge506:                                   ; preds = %.preheader461
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %i.aev = icmp slt i64 %indvars.iv.next574, %i.kv
  %indvar.next657 = add i32 %indvar656, 1
  br i1 %i.aev, label %.preheader461.lr.ph, label %.loopexit469

.loopexit469:                                     ; preds = %._crit_edge506, %._crit_edge513, %.preheader470, %.lr.ph508, %.preheader468, %.lr.ph515
  %i.aew = sext i32 %i.ja to i64
  %i.aex = icmp slt i64 %indvars.iv.next544, %i.aew
  %indvar.next = add i64 %indvar, 1
  br i1 %i.aex, label %bb.r, label %._crit_edge520
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
