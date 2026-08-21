Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
  %.539.i = phi i32 [ 60, %define_patches.exit ], [ %i.fh, %bb.o ], [ 67, %.preheader.6.i ], [ 68, %.preheader.7.i ], [ 54, %bb.k ], [ 66, %.preheader.5.i ], [ 52, %bb.m ], [ 55, %bb.j ], [ 65, %.preheader.4.i ], [ 53, %bb.l ], [ 56, %bb.i ], [ 64, %.preheader.3.i ], [ 69, %.preheader.8.i ], [ 57, %bb.h ], [ 63, %.preheader.2.i ], [ 51, %bb.n ], [ 58, %bb.g ], [ 62, %.preheader.1.i ], [ 59, %bb.f ], [ 61, %.preheader.preheader.i ] ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !19 ; 6 uses
  %i.fk = srem i32 %i.fj, 72                      ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 36
  br i1 %i.fl, label %bb.p, label %compute_slice_width.exit

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
  %.0.i = phi i64 [ 72, %bb.p ], [ 72, %compute_slice_height.exit ], [ %i.fr, %bb.q ] ; 6 uses
  %i.fs = icmp sgt i32 %i.cu, 0
  br i1 %i.fs, label %.preheader474.lr.ph, label %._crit_edge524

.preheader474.lr.ph:                              ; preds = %compute_slice_width.exit
  %i.ft = fmul reassoc nnan nsz arcp contract afn float %i.q, %i.q
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %i.ft, %i.l
  %i.fu = sext i32 %i.cl to i64                   ; 7 uses
  %i.fv = getelementptr [4 x i8], ptr %i.cs, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fy = xor i32 %i.cl, -1                       ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ga = add i32 %i.cl, 1                        ; 2 uses
  %i.gb = icmp sgt i32 %i.fj, 0
  br i1 %i.gb, label %.preheader474.preheader, label %.preheader474.us

.preheader474.preheader:                          ; preds = %.preheader474.lr.ph
  %i.gc = zext i32 %.539.i to i64                 ; 3 uses
  %i.gd = shl nuw nsw i64 %.0.i, 4
  %i.ge = shl i32 %.539.i, 2
  %i.gf = mul nsw i64 %i.u, %i.gc
  %i.gg = shl i64 %i.gf, 2
  %i.gh = shl nsw i64 %i.u, 2
  %i.gi = shl nsw i64 %i.u, 2
  %scevgep706 = getelementptr i8, ptr %0, i64 -4
  %scevgep710 = getelementptr i8, ptr %0, i64 -4
  %i.gj = sub i32 0, %.539.i
  %i.gk = zext i32 %i.gj to i64
  %broadcast.splatinsert793 = insertelement <8 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat794 = shufflevector <8 x i64> %broadcast.splatinsert793, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert842 = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat843 = shufflevector <4 x i64> %broadcast.splatinsert842, <4 x i64> poison, <4 x i32> zeroinitializer
  %stride.check720 = icmp slt i32 %i.t, 0
  %i.gl = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %stride.check = icmp slt i32 %i.t, 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat676 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert677 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat678 = shufflevector <4 x float> %broadcast.splatinsert677, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat680 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gm = insertelement <4 x float> %i.gl, float 1.000000e+00, i64 3
  br label %.preheader474

.preheader474.us:                                 ; preds = %.preheader474.lr.ph, %.preheader474.us
  %.0409523.us = phi i32 [ %i.gn, %.preheader474.us ], [ 0, %.preheader474.lr.ph ]
  %i.gn = add nsw i32 %.0409523.us, %.539.i       ; 2 uses
  %i.go = icmp slt i32 %i.gn, %i.cu
  br i1 %i.go, label %.preheader474.us, label %._crit_edge524

.preheader474:                                    ; preds = %.preheader474.preheader, %._crit_edge521
  %indvar664 = phi i64 [ 0, %.preheader474.preheader ], [ %indvar.next665, %._crit_edge521 ] ; 4 uses
  %indvar655 = phi i32 [ 0, %.preheader474.preheader ], [ %indvar.next656, %._crit_edge521 ] ; 2 uses
  %i.gp = phi i32 [ %i.cu, %.preheader474.preheader ], [ %i.hg, %._crit_edge521 ] ; 3 uses
  %i.gq = phi i32 [ %i.fj, %.preheader474.preheader ], [ %i.hh, %._crit_edge521 ] ; 2 uses
  %i.gr = phi i32 [ %i.fj, %.preheader474.preheader ], [ %i.hi, %._crit_edge521 ] ; 3 uses
  %indvars.iv561 = phi i64 [ 0, %.preheader474.preheader ], [ %indvars.iv.next562, %._crit_edge521 ] ; 6 uses
  %indvars.iv = phi i32 [ %.539.i, %.preheader474.preheader ], [ %indvars.iv.next, %._crit_edge521 ] ; 2 uses
  %i.gs = mul i64 %indvar664, %i.gk               ; 2 uses
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = trunc i64 %i.gs to i32
  %i.gv = add i32 %i.gu, -1
  %i.gw = mul i32 %i.ge, %indvar655
  %i.gx = mul i64 %i.gg, %indvar664               ; 2 uses
  %i.gy = mul i64 %indvar664, %i.gc
  %i.gz = xor i64 %i.gy, -1
  %i.ha = add nuw i64 %indvars.iv561, 1
  %indvars585 = trunc i64 %indvars.iv561 to i32   ; 5 uses
  %i.hb = icmp sgt i32 %i.gr, 0
  br i1 %i.hb, label %.lr.ph520, label %._crit_edge521

.lr.ph520:                                        ; preds = %.preheader474
  %i.hc = add nsw i32 %.539.i, %indvars585
  %i.hd = getelementptr i8, ptr %0, i64 %i.gx
  %i.he = getelementptr i8, ptr %0, i64 %i.gx
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  br label %bb.r

._crit_edge524:                                   ; preds = %.preheader474.us, %._crit_edge521, %compute_slice_width.exit
  tail call void @free(ptr noundef %i.aj) #9
  tail call void @free(ptr noundef %i.cs) #9
  ret void

._crit_edge521:                                   ; preds = %.loopexit470, %.preheader474
  %i.hg = phi i32 [ %i.gp, %.preheader474 ], [ %i.it, %.loopexit470 ] ; 2 uses
  %i.hh = phi i32 [ %i.gq, %.preheader474 ], [ %i.iu, %.loopexit470 ]
  %i.hi = phi i32 [ %i.gr, %.preheader474 ], [ %i.iu, %.loopexit470 ]
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, %i.gc ; 2 uses
  %indvars = trunc i64 %indvars.iv.next562 to i32
  %i.hj = icmp sgt i32 %i.hg, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next656 = add i32 %indvar655, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hj, label %.preheader474, label %._crit_edge524, !llvm.loop !31

bb.r:                                             ; preds = %.lr.ph520, %.loopexit470
  %indvar = phi i64 [ 0, %.lr.ph520 ], [ %indvar.next, %.loopexit470 ] ; 5 uses
  %i.hk = phi i32 [ %i.gp, %.lr.ph520 ], [ %i.it, %.loopexit470 ]
  %i.hl = phi i32 [ %i.gq, %.lr.ph520 ], [ %i.iu, %.loopexit470 ]
  %i.hm = phi i32 [ %i.gp, %.lr.ph520 ], [ %i.iw, %.loopexit470 ] ; 3 uses
  %indvars.iv544 = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next545, %.loopexit470 ] ; 21 uses
  %i.hn = phi i32 [ %i.gr, %.lr.ph520 ], [ %i.iu, %.loopexit470 ] ; 5 uses
  %i.ho = add nuw i64 %.0.i, %indvars.iv544
  %sext = shl i64 %i.ho, 32
  %i.hp = ashr exact i64 %sext, 32
  %i.hq = or disjoint i64 %indvars.iv544, 1
  %i.hr = or disjoint i64 %indvars.iv544, 1
  %i.hs = or disjoint i64 %indvars.iv544, 1
  %i.ht = mul i64 %.0.i, %indvar
  %i.hu = mul i64 %i.gd, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.hu
  %i.hv = getelementptr i8, ptr %1, i64 %i.hu
  %scevgep660 = getelementptr i8, ptr %i.hv, i64 16
  %i.hw = or disjoint i64 %indvars.iv544, 1
  %i.hx = mul i64 %.0.i, %indvar
  %i.hy = xor i64 %i.hx, -1
  %scevgep666 = getelementptr i8, ptr %i.hd, i64 %i.hu
  %scevgep667 = getelementptr i8, ptr %i.hf, i64 %i.hu
  %i.hz = or disjoint i64 %indvars.iv544, 1
  %i.ia = mul i64 %.0.i, %indvar
  %indvars584 = trunc i64 %indvars.iv544 to i32   ; 13 uses
  %i.ib = sub nsw i64 0, %indvars.iv544
  %i.ic = getelementptr [4 x i8], ptr %i.fw, i64 %i.ib ; 17 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 %i.hm) ; 6 uses
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, %.0.i ; 3 uses
  %i.id = trunc i64 %indvars.iv.next545 to i32
  %i.ie = tail call i32 @llvm.smin.i32(i32 %i.id, i32 %i.hn) ; 8 uses
  %i.if = icmp sgt i32 %., %indvars585            ; 3 uses
  br i1 %i.if, label %.lr.ph, label %.preheader473

.lr.ph:                                           ; preds = %bb.r
  %i.ig = sext i32 %i.ie to i64
  %i.ih = sub nsw i64 %i.ig, %indvars.iv544
  %i.ii = shl nsw i64 %i.ih, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %indvars.iv)
  %i.ij = add i32 %., %i.gt
  %i.ik = add i32 %i.gv, %.
  %xtraiter = and i32 %i.ij, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407475.prol = phi i32 [ %i.ir, %.prol.preheader ], [ %indvars585, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.il = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.im = mul nsw i32 %i.il, %.0407475.prol
  %i.in = add nsw i32 %i.im, %indvars584
  %i.io = shl nsw i32 %i.in, 2
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ip
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iq, i8 0, i64 %i.ii, i1 false)
  %i.ir = add nsw i32 %.0407475.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407475.unr = phi i32 [ %indvars585, %.lr.ph ], [ %i.ir, %.prol.preheader ]
  %i.is = icmp ult i32 %i.ik, 3
  br i1 %i.is, label %.preheader473.loopexit, label %.lr.ph.new

.preheader473.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.ct, align 4, !tbaa !30 ; 2 uses
  %.pre598 = load i32, ptr %i.fi, align 4, !tbaa !19 ; 2 uses
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.loopexit, %bb.r
  %i.it = phi i32 [ %.pre, %.preheader473.loopexit ], [ %i.hk, %bb.r ] ; 2 uses
  %i.iu = phi i32 [ %.pre598, %.preheader473.loopexit ], [ %i.hl, %bb.r ] ; 5 uses
  %i.iv = phi i32 [ %.pre598, %.preheader473.loopexit ], [ %i.hn, %bb.r ] ; 7 uses
  %i.iw = phi i32 [ %.pre, %.preheader473.loopexit ], [ %i.hm, %bb.r ] ; 5 uses
  %i.ix = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 9 uses
  %i.iy = add i32 %indvars584, %i.fy              ; 2 uses
  %i.iz = add i32 %i.ie, %i.cl                    ; 3 uses
  %i.ja = sext i32 %i.iy to i64
  %i.jb = shl nsw i64 %i.ja, 2
  %scevgep.i = getelementptr i8, ptr %i.ic, i64 %i.jb
  %i.jc = sub i32 %i.cl, %indvars584
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.jf = xor i32 %indvars584, -1
  %i.jg = add i32 %i.ie, %i.jf
  %i.jh = sext i32 %i.iv to i64
  %i.ji = shl nsw i64 %i.jh, 2
  %smin546 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %indvars584)
  %invariant.gep641 = getelementptr [4 x i8], ptr %i.ic, i64 %i.fu
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.ic, i64 %i.fu
  %scevgep712 = getelementptr i8, ptr %i.ix, i64 12
  %i.jj = sext i32 %i.hn to i64
  %smin749 = tail call i64 @llvm.smin.i64(i64 %i.jj, i64 %i.hp)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407475 = phi i32 [ %i.kl, %.lr.ph.new ], [ %.0407475.unr, %.prol.loopexit ] ; 5 uses
  %i.jk = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jl = mul nsw i32 %i.jk, %.0407475
  %i.jm = add nsw i32 %i.jl, %indvars584
  %i.jn = shl nsw i32 %i.jm, 2
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jo
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jp, i8 0, i64 %i.ii, i1 false)
  %i.jq = add nsw i32 %.0407475, 1
  %i.jr = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.js = mul nsw i32 %i.jr, %i.jq
  %i.jt = add nsw i32 %i.js, %indvars584
  %i.ju = shl nsw i32 %i.jt, 2
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jw, i8 0, i64 %i.ii, i1 false)
  %i.jx = add nsw i32 %.0407475, 2
  %i.jy = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jz = mul nsw i32 %i.jy, %i.jx
  %i.ka = add nsw i32 %i.jz, %indvars584
  %i.kb = shl nsw i32 %i.ka, 2
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kc
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kd, i8 0, i64 %i.ii, i1 false)
  %i.ke = add nsw i32 %.0407475, 3
  %i.kf = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.kg = mul nsw i32 %i.kf, %i.ke
  %i.kh = add nsw i32 %i.kg, %indvars584
  %i.ki = shl nsw i32 %i.kh, 2
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kk, i8 0, i64 %i.ii, i1 false)
  %i.kl = add nsw i32 %.0407475, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kl, %smin
  br i1 %exitcond.not.3, label %.preheader473.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge503
  br i1 %i.j, label %.preheader469, label %.preheader471

.preheader471:                                    ; preds = %bb.s
  br i1 %i.if, label %.lr.ph509, label %.loopexit470

.lr.ph509:                                        ; preds = %.preheader471
  %factor.op.mul = shl i32 %i.iv, 2
  %i.km = sext i32 %i.hn to i64
  %i.kn = icmp slt i64 %indvars.iv544, %i.km
  br i1 %i.kn, label %.preheader462.lr.ph.preheader, label %.loopexit470

.preheader462.lr.ph.preheader:                    ; preds = %.lr.ph509
  %i.ko = sext i32 %i.ie to i64                   ; 3 uses
  %i.kp = sext i32 %. to i64                      ; 2 uses
  %i.kq = mul i32 %i.gw, %i.iv
  %i.kr = shl i32 %i.iv, 2
  %smax661 = tail call i64 @llvm.smax.i64(i64 %i.ko, i64 %i.hw)
  %i.ks = add i64 %smax661, %i.hy
  %i.kt = shl nsw i64 %i.ks, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep660, i64 %i.kt
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kp, i64 %i.ha)
  %i.ku = add i64 %smax668, %i.gz
  %i.kv = mul i64 %i.gh, %i.ku
  %i.kw = getelementptr i8, ptr %scevgep667, i64 %i.kv
  %scevgep669 = getelementptr i8, ptr %i.kw, i64 %i.kt
  %smax670 = tail call i64 @llvm.smax.i64(i64 %i.ko, i64 %i.hs) ; 2 uses
  %i.kx = sub i64 %smax670, %i.ht                 ; 2 uses
  %min.iters.check672 = icmp ult i64 %i.kx, 5
  %i.ky = and i64 %smax670, 3                     ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 0
  %i.la = select i1 %i.kz, i64 4, i64 %i.ky
  %n.vec674 = sub i64 %i.kx, %i.la                ; 2 uses
  %i.lb = add i64 %indvars.iv544, %n.vec674
  br label %.preheader462.lr.ph

.preheader469:                                    ; preds = %bb.s
  br i1 %i.if, label %.lr.ph516, label %.loopexit470

.lr.ph516:                                        ; preds = %.preheader469
  %factor.op.mul517 = shl i32 %i.iv, 2
  %i.lc = sext i32 %i.hn to i64
  %i.ld = icmp slt i64 %indvars.iv544, %i.lc
  br i1 %i.ld, label %.preheader.lr.ph.preheader, label %.loopexit470

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph516
  %i.le = sext i32 %i.ie to i64                   ; 2 uses
  %i.lf = sext i32 %. to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %i.le, i64 %i.hz) ; 2 uses
  %i.lg = sub i64 %smax, %i.ia                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.lg, 4
  %i.lh = and i64 %smax, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.lg, %i.lh               ; 2 uses
  %i.li = add i64 %indvars.iv544, %n.vec
  %cmp.n = icmp eq i64 %i.lh, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader473, %._crit_edge503
  %indvars.iv566 = phi i64 [ 0, %.preheader473 ], [ %indvars.iv.next567, %._crit_edge503 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv566 ; 4 uses
  %i.lk = load i16, ptr %i.lj, align 8, !tbaa !25 ; 5 uses
  %i.ll = icmp sgt i16 %i.lk, 0
  %i.lm = sext i16 %i.lk to i32                   ; 2 uses
  %i.ln = sub nsw i32 0, %i.lm
  %i.lo = select i1 %i.ll, i32 0, i32 %i.ln       ; 2 uses
  %i.lp = tail call i32 @llvm.smax.i32(i32 %i.lo, i32 %indvars585) ; 7 uses
  %i.lq = icmp slt i16 %i.lk, 0
  %spec.select452 = tail call i16 @llvm.smax.i16(i16 %i.lk, i16 0)
  %spec.select = zext nneg i16 %spec.select452 to i32 ; 2 uses
  %i.lr = sub i32 %i.iw, %spec.select
  %spec.select449 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lr) ; 3 uses
  %i.ls = tail call i16 @llvm.smin.i16(i16 %i.lk, i16 0)
  %i.lt = sext i16 %i.ls to i32
  %i.lu = sub nsw i32 %i.cl, %i.lt
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lp, i32 %i.lu) ; 2 uses
  %i.lw = add nsw i32 %i.cl, %spec.select
  %i.lx = xor i32 %i.lw, -1
  %i.ly = add i32 %i.iw, %i.lx
  %spec.select451 = tail call i32 @llvm.smin.i32(i32 %spec.select449, i32 %i.ly) ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !28 ; 2 uses
  %i.mb = sext i16 %i.ma to i32                   ; 3 uses
  %i.mc = sub nsw i32 0, %i.mb
  %i.md = tail call i32 @llvm.smax.i32(i32 %indvars584, i32 %i.mc) ; 5 uses
  %i.me = sub i32 %i.iv, %i.mb                    ; 2 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.ie, i32 %i.me) ; 3 uses
  %i.mf = add nsw i32 %indvars584, %i.mb          ; 2 uses
  %i.mg = tail call i32 @llvm.smin.i32(i32 %indvars584, i32 %i.mf)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mg) ; 2 uses
  %i.mh = sub nsw i32 %indvars584, %..i           ; 5 uses
  %i.mi = tail call i16 @llvm.smax.i16(i16 %i.ma, i16 0)
  %i.mj = zext nneg i16 %i.mi to i32
  %i.mk = add i32 %i.ie, %i.mj
  %i.ml = sub i32 %i.iv, %i.mk
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.ml) ; 2 uses
  %i.mn = add i32 %i.mm, %i.ie                    ; 5 uses
  %i.mo = add i32 %i.lp, %i.lm                    ; 2 uses
  %i.mp = tail call i32 @llvm.smin.i32(i32 %i.lp, i32 %i.mo)
  %i.mq = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mp) ; 2 uses
  %i.mr = sub i32 %i.lp, %i.mq                    ; 2 uses
  %.v138.i = select i1 %i.lq, i32 %i.lp, i32 %i.mo ; 2 uses
  %i.ms = xor i32 %.v138.i, -1
  %i.mt = add i32 %i.iw, %i.ms
  %i.mu = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mt)
  %i.mv = add i32 %i.mu, %i.lp                    ; 2 uses
  %i.mw = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 %i.iz) ; 2 uses
  %i.mx = icmp slt i32 %i.iy, %i.mw
  br i1 %i.mx, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.my = add i32 %i.jc, %i.mw
  %i.mz = zext i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 2
  %i.nb = add nuw nsw i64 %i.na, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.nb, i1 false), !tbaa !11
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.nc = icmp slt i32 %i.mh, %i.mn               ; 4 uses
  br i1 %i.nc, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mr, %i.mv
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.nd = sext i32 %i.mh to i64
  %i.ne = shl nsw i64 %i.nd, 2
  %scevgep158.i = getelementptr i8, ptr %i.ic, i64 %i.ne
  %i.nf = add i32 %i.jg, %..i
  %i.ng = add i32 %i.nf, %i.mm
  %i.nh = zext i32 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, 2
  %i.nj = add nuw nsw i64 %i.ni, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.nj, i1 false), !tbaa !11
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !29
  %i.nm = sext i32 %i.nl to i64                   ; 4 uses
  %i.nn = sext i32 %i.mr to i64                   ; 5 uses
  %i.no = add i32 %i.mv, 1
  %i.np = sext i32 %i.mh to i64
  %i.nq = sext i32 %i.mn to i64
  %i.nr = xor i32 %.v138.i, -1
  %i.ns = add i32 %i.iw, %i.nr
  %smin780 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.ns)
  %i.nt = add i32 %i.mq, %smin780                 ; 3 uses
  %i.nu = zext i32 %i.nt to i64
  %i.nv = add nuw nsw i64 %i.nu, 1                ; 5 uses
  %min.iters.check782 = icmp ult i32 %i.nt, 3
  %min.iters.check784 = icmp ult i32 %i.nt, 15
  %i.nw = and i64 %i.nv, 12
  %n.vec786 = and i64 %i.nv, 8589934576           ; 4 uses
  %i.nx = add nsw i64 %n.vec786, %i.nn            ; 2 uses
  %broadcast.splatinsert795 = insertelement <8 x i64> poison, i64 %i.nn, i64 0
  %broadcast.splat796 = shufflevector <8 x i64> %broadcast.splatinsert795, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat796, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n826 = icmp eq i64 %i.nv, %n.vec786
  %min.epilog.iters.check833 = icmp eq i64 %i.nw, 0
  %n.vec835 = and i64 %i.nv, 8589934588           ; 3 uses
  %i.ny = add nsw i64 %n.vec835, %i.nn
  %cmp.n866 = icmp eq i64 %i.nv, %n.vec835
  br label %iter.check830

iter.check830:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.np, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.nz = load float, ptr %i.ix, align 4, !tbaa !11 ; 3 uses
  %i.oa = load <2 x float>, ptr %i.jd, align 4, !tbaa !11 ; 5 uses
  br i1 %min.iters.check782, label %vec.epilog.scalar.ph831.preheader, label %vector.main.loop.iter.check783

vector.main.loop.iter.check783:                   ; preds = %iter.check830
  br i1 %min.iters.check784, label %vec.epilog.ph834, label %vector.ph785

vector.ph785:                                     ; preds = %vector.main.loop.iter.check783
  %broadcast.splatinsert787 = insertelement <8 x float> poison, float %i.nz, i64 0
  %broadcast.splat788 = shufflevector <8 x float> %broadcast.splatinsert787, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat790 = shufflevector <2 x float> %i.oa, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat792 = shufflevector <2 x float> %i.oa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph785
  %index798 = phi i64 [ 0, %vector.ph785 ], [ %index.next823, %vector.body797 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph785 ], [ %vec.ind.next, %vector.body797 ] ; 3 uses
  %vec.phi799 = phi <8 x float> [ zeroinitializer, %vector.ph785 ], [ %i.oz, %vector.body797 ]
  %vec.phi800 = phi <8 x float> [ zeroinitializer, %vector.ph785 ], [ %i.pa, %vector.body797 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.ob = mul nsw <8 x i64> %vec.ind, %broadcast.splat794
  %i.oc = mul nsw <8 x i64> %step.add, %broadcast.splat794
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.ob ; 4 uses
  %wide.gep801 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.oc ; 4 uses
  %wide.gep802 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.nm ; 3 uses
  %wide.gep803 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep801, i64 %i.nm ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather804 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather805 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep802, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather806 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep803, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.od = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather805 ; 2 uses
  %i.oe = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather804, %wide.masked.gather806 ; 2 uses
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %i.od
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.oe, %i.oe
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %broadcast.splat788
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %broadcast.splat788
  %wide.gep807 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep808 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 4
  %wide.masked.gather809 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep807, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather810 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep808, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep811 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 4
  %wide.gep812 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 4
  %wide.masked.gather813 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep811, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather814 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep812, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.oj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather809, %wide.masked.gather813 ; 2 uses
  %i.ok = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather810, %wide.masked.gather814 ; 2 uses
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %i.oj
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %i.ok
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %broadcast.splat790
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat790
  %wide.gep815 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep816 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 8
  %wide.masked.gather817 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep815, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather818 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep816, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep819 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 8
  %wide.gep820 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 8
  %wide.masked.gather821 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep819, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather822 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep820, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.op = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather817, %wide.masked.gather821 ; 2 uses
  %i.oq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather818, %wide.masked.gather822 ; 2 uses
  %i.or = fmul reassoc nsz arcp contract afn <8 x float> %i.op, %i.op
  %i.os = fmul reassoc nsz arcp contract afn <8 x float> %i.oq, %i.oq
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %i.or, %broadcast.splat792
  %i.ou = fmul reassoc nsz arcp contract afn <8 x float> %i.os, %broadcast.splat792
  %i.ov = fadd reassoc nsz arcp contract afn <8 x float> %i.oh, %vec.phi799
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.oi, %vec.phi800
  %i.ox = fadd reassoc nsz arcp contract afn <8 x float> %i.ov, %i.on
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.ow, %i.oo
  %i.oz = fadd reassoc nsz arcp contract afn <8 x float> %i.ox, %i.ot ; 2 uses
  %i.pa = fadd reassoc nsz arcp contract afn <8 x float> %i.oy, %i.ou ; 2 uses
  %index.next823 = add nuw i64 %index798, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.pb = icmp eq i64 %index.next823, %n.vec786
  br i1 %i.pb, label %middle.block824, label %vector.body797, !llvm.loop !36

middle.block824:                                  ; preds = %vector.body797
  %bin.rdx825 = fadd reassoc nsz arcp contract afn <8 x float> %i.pa, %i.oz
  %i.pc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx825) ; 3 uses
  br i1 %cmp.n826, label %._crit_edge.i447, label %vec.epilog.iter.check832

vec.epilog.iter.check832:                         ; preds = %middle.block824
  br i1 %min.epilog.iters.check833, label %vec.epilog.scalar.ph831.preheader, label %vec.epilog.ph834, !prof !39

vec.epilog.ph834:                                 ; preds = %vector.main.loop.iter.check783, %vec.epilog.iter.check832
  %vec.epilog.resume.val827 = phi i64 [ %n.vec786, %vec.epilog.iter.check832 ], [ 0, %vector.main.loop.iter.check783 ]
  %bc.resume.val828 = phi i64 [ %i.nx, %vec.epilog.iter.check832 ], [ %i.nn, %vector.main.loop.iter.check783 ]
  %bc.merge.rdx829 = phi float [ %i.pc, %vec.epilog.iter.check832 ], [ 0.000000e+00, %vector.main.loop.iter.check783 ]
  %i.pd = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx829, i64 0
  %broadcast.splatinsert836 = insertelement <4 x float> poison, float %i.nz, i64 0
  %broadcast.splat837 = shufflevector <4 x float> %broadcast.splatinsert836, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat839 = shufflevector <2 x float> %i.oa, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat841 = shufflevector <2 x float> %i.oa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert844 = insertelement <4 x i64> poison, i64 %bc.resume.val828, i64 0
  %broadcast.splat845 = shufflevector <4 x i64> %broadcast.splatinsert844, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction846 = add nsw <4 x i64> %broadcast.splat845, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body847

vec.epilog.vector.body847:                        ; preds = %vec.epilog.vector.body847, %vec.epilog.ph834
  %index848 = phi i64 [ %vec.epilog.resume.val827, %vec.epilog.ph834 ], [ %index.next863, %vec.epilog.vector.body847 ]
  %vec.ind849 = phi <4 x i64> [ %induction846, %vec.epilog.ph834 ], [ %vec.ind.next864, %vec.epilog.vector.body847 ] ; 2 uses
  %vec.phi850 = phi <4 x float> [ %i.pd, %vec.epilog.ph834 ], [ %i.pq, %vec.epilog.vector.body847 ]
  %i.pe = mul nsw <4 x i64> %vec.ind849, %broadcast.splat843
  %wide.gep851 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pe ; 4 uses
  %wide.gep852 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep851, i64 %i.nm ; 3 uses
  %wide.masked.gather853 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep851, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep852, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pf = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather853, %wide.masked.gather854 ; 2 uses
  %i.pg = fmul reassoc nsz arcp contract afn <4 x float> %i.pf, %i.pf
  %i.ph = fmul reassoc nsz arcp contract afn <4 x float> %i.pg, %broadcast.splat837
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep851, i64 4
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep857 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852, i64 4
  %wide.masked.gather858 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pi = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather856, %wide.masked.gather858 ; 2 uses
  %i.pj = fmul reassoc nsz arcp contract afn <4 x float> %i.pi, %i.pi
  %i.pk = fmul reassoc nsz arcp contract afn <4 x float> %i.pj, %broadcast.splat839
  %wide.gep859 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep851, i64 8
  %wide.masked.gather860 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep861 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852, i64 8
  %wide.masked.gather862 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep861, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pl = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather860, %wide.masked.gather862 ; 2 uses
  %i.pm = fmul reassoc nsz arcp contract afn <4 x float> %i.pl, %i.pl
  %i.pn = fmul reassoc nsz arcp contract afn <4 x float> %i.pm, %broadcast.splat841
  %i.po = fadd reassoc nsz arcp contract afn <4 x float> %i.ph, %vec.phi850
  %i.pp = fadd reassoc nsz arcp contract afn <4 x float> %i.po, %i.pk
  %i.pq = fadd reassoc nsz arcp contract afn <4 x float> %i.pp, %i.pn ; 2 uses
  %index.next863 = add nuw i64 %index848, 4       ; 2 uses
  %vec.ind.next864 = add nsw <4 x i64> %vec.ind849, splat (i64 4)
  %i.pr = icmp eq i64 %index.next863, %n.vec835
  br i1 %i.pr, label %vec.epilog.middle.block865, label %vec.epilog.vector.body847, !llvm.loop !40

vec.epilog.middle.block865:                       ; preds = %vec.epilog.vector.body847
  %i.ps = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pq) ; 2 uses
  br i1 %cmp.n866, label %._crit_edge.i447, label %vec.epilog.scalar.ph831.preheader

vec.epilog.scalar.ph831.preheader:                ; preds = %iter.check830, %vec.epilog.iter.check832, %vec.epilog.middle.block865
  %indvars.iv.i.ph = phi i64 [ %i.nn, %iter.check830 ], [ %i.nx, %vec.epilog.iter.check832 ], [ %i.ny, %vec.epilog.middle.block865 ]
  %.0121143.i.ph = phi float [ 0.000000e+00, %iter.check830 ], [ %i.pc, %vec.epilog.iter.check832 ], [ %i.ps, %vec.epilog.middle.block865 ]
  br label %vec.epilog.scalar.ph831

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pt = tail call i32 @llvm.smax.i32(i32 %i.mh, i32 %i.mn) ; 3 uses
  %i.pu = icmp slt i32 %i.pt, %i.iz
  br i1 %i.pu, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pt to i64
  %i.pv = shl nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.ic, i64 %i.pv
  %i.pw = xor i32 %i.pt, -1
  %i.px = add i32 %i.iz, %i.pw
  %i.py = zext i32 %i.px to i64
  %i.pz = shl nuw nsw i64 %i.py, 2
  %i.qa = add nuw nsw i64 %i.pz, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.qa, i1 false), !tbaa !11
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph831, %vec.epilog.middle.block865, %middle.block824
  %.lcssa = phi float [ %i.ps, %vec.epilog.middle.block865 ], [ %i.pc, %middle.block824 ], [ %i.qu, %vec.epilog.scalar.ph831 ]
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv156.i
  store float %.lcssa, ptr %i.qb, align 4, !tbaa !11
  %indvars.iv.next157.i = add nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.qc = icmp slt i64 %indvars.iv.next157.i, %i.nq
  br i1 %i.qc, label %iter.check830, label %._crit_edge148.i

vec.epilog.scalar.ph831:                          ; preds = %vec.epilog.scalar.ph831.preheader, %vec.epilog.scalar.ph831
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph831 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph831.preheader ] ; 2 uses
  %.0121143.i = phi float [ %i.qu, %vec.epilog.scalar.ph831 ], [ %.0121143.i.ph, %vec.epilog.scalar.ph831.preheader ]
  %i.qd = mul nsw i64 %indvars.iv.i, %i.u
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qd ; 3 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.nm ; 2 uses
  %i.qf = load float, ptr %gep.i, align 4, !tbaa !11
  %i.qg = load float, ptr %i.qe, align 4, !tbaa !11
  %i.qh = fsub reassoc nsz arcp contract afn float %i.qf, %i.qg ; 2 uses
  %i.qi = fmul reassoc nsz arcp contract afn float %i.qh, %i.qh
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, %i.nz
  %i.qk = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qm = load <2 x float>, ptr %i.qk, align 4, !tbaa !11
  %i.qn = load <2 x float>, ptr %i.ql, align 4, !tbaa !11
  %i.qo = fsub reassoc nsz arcp contract afn <2 x float> %i.qm, %i.qn ; 2 uses
  %i.qp = fmul reassoc nsz arcp contract afn <2 x float> %i.qo, %i.qo
  %i.qq = fmul reassoc nsz arcp contract afn <2 x float> %i.qp, %i.oa ; 2 uses
  %i.qr = fadd reassoc nsz arcp contract afn float %i.qj, %.0121143.i
  %i.qs = extractelement <2 x float> %i.qq, i64 0
  %i.qt = fadd reassoc nsz arcp contract afn float %i.qr, %i.qs
  %5 = extractelement <2 x float> %i.qq, i64 1
  %i.qu = fadd reassoc nsz arcp contract afn float %i.qt, %5 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.no, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph831, !llvm.loop !41

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qv = icmp slt i32 %i.lp, %spec.select449
  br i1 %i.qv, label %.lr.ph502, label %._crit_edge503

.lr.ph502:                                        ; preds = %init_column_sums.exit
  %i.qw = sub nsw i32 %i.md, %i.cl
  %i.qx = add i32 %i.md, %i.cl                    ; 2 uses
  %i.qy = tail call i32 @llvm.smin.i32(i32 %i.qx, i32 %.437) ; 2 uses
  %i.qz = icmp slt i32 %i.qw, %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !29
  %i.rc = icmp slt i32 %i.md, %.437               ; 2 uses
  %i.rd = sext i32 %i.rb to i64                   ; 8 uses
  %i.re = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %spec.select451)
  %i.rf = sub i32 %i.md, %i.cl
  %i.rg = sext i32 %i.rf to i64                   ; 6 uses
  %i.rh = sext i32 %i.qy to i64
  %i.ri = zext nneg i32 %i.md to i64              ; 2 uses
  %i.rj = sext i32 %.437 to i64                   ; 2 uses
  %smin547 = tail call i32 @llvm.smin.i32(i32 %smin546, i32 %i.mf)
  %i.rk = sub i32 0, %smin547
  %i.rl = sext i32 %i.rk to i64                   ; 4 uses
  %i.rm = add i64 %indvars.iv544, %i.rl           ; 7 uses
  %i.rn = sext i32 %i.mn to i64                   ; 4 uses
  %i.ro = sext i32 %i.lo to i64
  %smax563 = tail call i64 @llvm.smax.i64(i64 %indvars.iv561, i64 %i.ro) ; 3 uses
  %i.rp = sext i32 %spec.select449 to i64         ; 3 uses
  %i.rq = sext i32 %i.lv to i64
  %i.rr = sext i32 %spec.select451 to i64
  %i.rs = sext i32 %i.re to i64
  %invariant.op = add nsw i64 %i.rp, -1
  %i.rt = shl nsw i64 %i.rm, 2
  %scevgep702 = getelementptr i8, ptr %i.ic, i64 %i.rt ; 3 uses
  %i.ru = add i64 %i.hr, %i.rl
  %i.rv = sext i32 %i.mn to i64
  %smax703 = tail call i64 @llvm.smax.i64(i64 %i.ru, i64 %i.rv) ; 2 uses
  %i.rw = shl nsw i64 %smax703, 2
  %scevgep704 = getelementptr i8, ptr %i.ic, i64 %i.rw ; 3 uses
  %i.rx = sub i64 %smax563, %i.fu
  %i.ry = mul i64 %i.gi, %i.rx                    ; 2 uses
  %i.rz = shl nsw i64 %i.rm, 4                    ; 2 uses
  %i.sa = shl nsw i64 %i.rd, 2                    ; 2 uses
  %i.sb = getelementptr i8, ptr %0, i64 %i.ry
  %i.sc = getelementptr i8, ptr %i.sb, i64 %i.rz
  %scevgep705 = getelementptr i8, ptr %i.sc, i64 %i.sa
  %i.sd = add nuw i64 %smax563, 1
  %smax707 = tail call i64 @llvm.smax.i64(i64 %i.rp, i64 %i.sd)
  %i.se = sub i64 %smax707, %i.fu
  %reass.sub = shl i64 %i.se, 2
  %i.sf = add i64 %reass.sub, -4
  %i.sg = mul i64 %i.sf, %i.u
  %i.sh = shl nsw i64 %smax703, 4
  %i.si = add i64 %i.sg, %i.sh                    ; 2 uses
  %i.sj = getelementptr i8, ptr %scevgep706, i64 %i.si
  %scevgep708 = getelementptr i8, ptr %i.sj, i64 %i.sa
  %i.sk = getelementptr i8, ptr %0, i64 %i.ry
  %scevgep709 = getelementptr i8, ptr %i.sk, i64 %i.rz
  %scevgep711 = getelementptr i8, ptr %scevgep710, i64 %i.si
  %i.sl = add i64 %i.hq, %i.rl
  %smax725 = tail call i64 @llvm.smax.i64(i64 %i.sl, i64 %i.rn)
  %i.sm = add i64 %indvars.iv544, %i.rl
  %i.sn = sub i64 %smax725, %i.sm                 ; 3 uses
  %i.so = sext i32 %i.qx to i64
  %smin750 = tail call i64 @llvm.smin.i64(i64 %smin749, i64 %i.so)
  %i.sp = sext i32 %i.me to i64
  %smin751 = tail call i64 @llvm.smin.i64(i64 %smin750, i64 %i.sp)
  %i.sq = sub i64 %smin751, %i.rg                 ; 7 uses
  %min.iters.check753 = icmp ult i64 %i.sq, 8
  %min.iters.check754 = icmp ult i64 %i.sq, 32
  %i.sr = and i64 %i.sq, 24
  %n.vec756 = and i64 %i.sq, -32                  ; 4 uses
  %i.ss = add i64 %n.vec756, %i.rg
  %invariant.gep900 = getelementptr [4 x i8], ptr %i.ic, i64 %i.rg
  %cmp.n770 = icmp eq i64 %i.sq, %n.vec756
  %min.epilog.iters.check = icmp eq i64 %i.sr, 0
  %n.vec772 = and i64 %i.sq, -8                   ; 3 uses
  %i.st = add i64 %n.vec772, %i.rg
  %invariant.gep902 = getelementptr [4 x i8], ptr %i.ic, i64 %i.rg
  %cmp.n777 = icmp eq i64 %i.sq, %n.vec772
  %min.iters.check727 = icmp ult i64 %i.sn, 9
  %bound0713 = icmp ult ptr %scevgep702, %scevgep708
  %bound1714 = icmp ult ptr %scevgep705, %scevgep704
  %found.conflict715 = and i1 %bound0713, %bound1714
  %bound0717 = icmp ult ptr %scevgep702, %scevgep711
  %bound1718 = icmp ult ptr %scevgep709, %scevgep704
  %found.conflict719 = and i1 %bound0717, %bound1718
  %i.su = or i1 %found.conflict719, %stride.check720
  %conflict.rdx = or i1 %found.conflict715, %i.su
  %bound0721 = icmp ult ptr %scevgep702, %scevgep712
  %bound1722 = icmp ult ptr %i.ix, %scevgep704
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx724 = or i1 %conflict.rdx, %found.conflict723
  %i.sv = and i64 %i.sn, 7                        ; 2 uses
  %i.sw = icmp eq i64 %i.sv, 0
  %i.sx = select i1 %i.sw, i64 8, i64 %i.sv
  %n.vec729 = sub i64 %i.sn, %i.sx                ; 2 uses
  %i.sy = add i64 %i.rm, %n.vec729
  br label %bb.u

._crit_edge503:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %i.ah
  br i1 %exitcond569.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph502, %.loopexit
  %indvars.iv564 = phi i64 [ %smax563, %.lr.ph502 ], [ %indvars.iv.next565, %.loopexit ] ; 11 uses
  br i1 %i.qz, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check753, label %.lr.ph478.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check754, label %vec.epilog.ph, label %vector.body757

vector.body757:                                   ; preds = %vector.main.loop.iter.check, %vector.body757
  %index758 = phi i64 [ %index.next766, %vector.body757 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.tc, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi759 = phi <8 x float> [ %i.td, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi760 = phi <8 x float> [ %i.te, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi761 = phi <8 x float> [ %i.tf, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %index758 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %gep901, i64 32
  %i.ta = getelementptr inbounds nuw i8, ptr %gep901, i64 64
  %i.tb = getelementptr inbounds nuw i8, ptr %gep901, i64 96
  %wide.load762 = load <8 x float>, ptr %gep901, align 4, !tbaa !11
  %wide.load763 = load <8 x float>, ptr %i.sz, align 4, !tbaa !11
  %wide.load764 = load <8 x float>, ptr %i.ta, align 4, !tbaa !11
  %wide.load765 = load <8 x float>, ptr %i.tb, align 4, !tbaa !11
  %i.tc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load762, %vec.phi ; 2 uses
  %i.td = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi759 ; 2 uses
  %i.te = fadd reassoc nsz arcp contract afn <8 x float> %wide.load764, %vec.phi760 ; 2 uses
  %i.tf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load765, %vec.phi761 ; 2 uses
  %index.next766 = add nuw i64 %index758, 32      ; 2 uses
  %i.tg = icmp eq i64 %index.next766, %n.vec756
  br i1 %i.tg, label %middle.block767, label %vector.body757, !llvm.loop !42

middle.block767:                                  ; preds = %vector.body757
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.td, %i.tc
  %bin.rdx768 = fadd reassoc nsz arcp contract afn <8 x float> %i.te, %bin.rdx
  %bin.rdx769 = fadd reassoc nsz arcp contract afn <8 x float> %i.tf, %bin.rdx768
  %i.th = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx769) ; 3 uses
  br i1 %cmp.n770, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block767
  br i1 %min.epilog.iters.check, label %.lr.ph478.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec756, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.th, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.ti = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index773 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next776, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi774 = phi <8 x float> [ %i.ti, %vec.epilog.ph ], [ %i.tj, %vec.epilog.vector.body ]
  %gep903 = getelementptr [4 x i8], ptr %invariant.gep902, i64 %index773
  %wide.load775 = load <8 x float>, ptr %gep903, align 4, !tbaa !11
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load775, %vec.phi774 ; 2 uses
  %index.next776 = add nuw i64 %index773, 8       ; 2 uses
  %i.tk = icmp eq i64 %index.next776, %n.vec772
  br i1 %i.tk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.tl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tj) ; 2 uses
  br i1 %cmp.n777, label %._crit_edge, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv531.ph = phi i64 [ %i.rg, %iter.check ], [ %i.ss, %vec.epilog.iter.check ], [ %i.st, %vec.epilog.middle.block ]
  %.0404476.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.th, %vec.epilog.iter.check ], [ %i.tl, %vec.epilog.middle.block ]
  br label %.lr.ph478

._crit_edge:                                      ; preds = %.lr.ph478, %middle.block767, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.tl, %vec.epilog.middle.block ], [ %i.th, %middle.block767 ], [ %i.tw, %.lr.ph478 ] ; 2 uses
  %i.tm = mul nsw i64 %indvars.iv564, %i.u
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tm ; 2 uses
  %i.to = mul i64 %i.ji, %indvars.iv564
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.to ; 2 uses
  %i.tq = load float, ptr %i.fz, align 4, !tbaa !45 ; 2 uses
  %i.tr = load float, ptr %i.k, align 8, !tbaa !17
  %i.ts = fcmp reassoc nsz arcp contract afn olt float %i.tr, 0.000000e+00
  br i1 %i.ts, label %.preheader465, label %.preheader467

.preheader467:                                    ; preds = %._crit_edge
  br i1 %i.rc, label %.lr.ph482, label %.loopexit466

.preheader465:                                    ; preds = %._crit_edge
  br i1 %i.rc, label %.lr.ph488, label %.loopexit466

.lr.ph488:                                        ; preds = %.preheader465
  %i.tt = fmul reassoc nsz arcp contract afn float %i.tq, f0xCB000000
  %invariant.gep489 = getelementptr [4 x i8], ptr %i.tn, i64 %i.rd
  br label %bb.v

.lr.ph478:                                        ; preds = %.lr.ph478.preheader, %.lr.ph478
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.lr.ph478 ], [ %indvars.iv531.ph, %.lr.ph478.preheader ] ; 2 uses
  %.0404476 = phi float [ %i.tw, %.lr.ph478 ], [ %.0404476.ph, %.lr.ph478.preheader ]
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv531
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !11
  %i.tw = fadd reassoc nsz arcp contract afn float %i.tv, %.0404476 ; 2 uses
  %indvars.iv.next532 = add nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.tx = icmp slt i64 %indvars.iv.next532, %i.rh
  br i1 %i.tx, label %.lr.ph478, label %._crit_edge, !llvm.loop !46

bb.v:                                             ; preds = %.lr.ph488, %bb.v
  %indvars.iv541 = phi i64 [ %i.ri, %.lr.ph488 ], [ %indvars.iv.next542, %bb.v ] ; 4 uses
  %.1486 = phi float [ %.0404.lcssa, %.lr.ph488 ], [ %i.uf, %bb.v ]
  %gep643 = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv541
  %i.ty = load float, ptr %gep643, align 4, !tbaa !11
  %i.tz = trunc nuw nsw i64 %indvars.iv541 to i32
  %i.ua = add i32 %i.tz, %i.fy
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.ub
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !11
  %i.ue = fsub reassoc nsz arcp contract afn float %i.ty, %i.ud
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ue, %.1486 ; 2 uses
  %i.ug = fmul reassoc nsz arcp contract afn float %i.tt, %i.uf
  %i.uh = fptosi float %i.ug to i32               ; 2 uses
  %i.ui = add nsw i32 %i.uh, 1065353216
  %i.uj = icmp sgt i32 %i.uh, -1056964609
  %i.uk = bitcast i32 %i.ui to float
  %i.ul = shl nuw nsw i64 %indvars.iv541, 2       ; 2 uses
  %gep490 = getelementptr [4 x i8], ptr %invariant.gep489, i64 %i.ul ; 3 uses
  %i.um = getelementptr i8, ptr %gep490, i64 8
  %i.un = load float, ptr %i.um, align 4, !tbaa !11
  %invariant.gep483 = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.ul ; 2 uses
  %i.uo = select i1 %i.uj, float %i.uk, float 0.000000e+00
  %i.up = load <2 x float>, ptr %gep490, align 4, !tbaa !11
  %i.uq = insertelement <4 x float> poison, float %i.uo, i64 0
  %i.ur = shufflevector <4 x float> %i.uq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.us = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.un, i64 2
  %i.ut = shufflevector <2 x float> %i.up, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uu = shufflevector <4 x float> %i.ut, <4 x float> %i.us, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uv = fmul reassoc nsz arcp contract afn <4 x float> %i.ur, %i.uu
  %i.uw = load <4 x float>, ptr %invariant.gep483, align 4, !tbaa !11
  %i.ux = fadd reassoc nsz arcp contract afn <4 x float> %i.uw, %i.uv
  store <4 x float> %i.ux, ptr %invariant.gep483, align 4, !tbaa !11
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %gep490, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.uy, i32 0, i32 3, i32 1)
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.uz = icmp slt i64 %indvars.iv.next542, %i.rj
  br i1 %i.uz, label %bb.v, label %.loopexit466

.lr.ph482:                                        ; preds = %.preheader467, %.lr.ph482
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %.lr.ph482 ], [ %i.ri, %.preheader467 ] ; 4 uses
  %.2480 = phi float [ %i.vh, %.lr.ph482 ], [ %.0404.lcssa, %.preheader467 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep641, i64 %indvars.iv536
  %i.va = load float, ptr %gep, align 4, !tbaa !11
  %i.vb = trunc nuw nsw i64 %indvars.iv536 to i32
  %i.vc = add i32 %i.vb, %i.fy
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.vd
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !11
  %i.vg = fsub reassoc nsz arcp contract afn float %i.va, %i.vf
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vg, %.2480 ; 2 uses
  %i.vi = shl nuw nsw i64 %indvars.iv536, 2       ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.vi ; 3 uses
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.rd ; 3 uses
  %i.vl = load float, ptr %i.vj, align 4, !tbaa !11
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vo = load float, ptr %i.k, align 8, !tbaa !17
  %i.vp = fadd reassoc nsz arcp contract afn float %i.vo, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.vi ; 2 uses
  %i.vq = load <2 x float>, ptr %i.vk, align 4, !tbaa !11 ; 2 uses
  %i.vr = extractelement <2 x float> %i.vq, i64 0
  %i.vs = fsub reassoc nsz arcp contract afn float %i.vl, %i.vr ; 2 uses
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vs, %i.vs
  %i.vu = load <2 x float>, ptr %i.vm, align 4, !tbaa !11
  %i.vv = load <2 x float>, ptr %i.vn, align 4, !tbaa !11 ; 2 uses
  %i.vw = fsub reassoc nsz arcp contract afn <2 x float> %i.vu, %i.vv ; 2 uses
  %i.vx = fmul reassoc nsz arcp contract afn <2 x float> %i.vw, %i.vw ; 2 uses
  %i.vy = extractelement <2 x float> %i.vx, i64 0
  %i.vz = fadd reassoc nsz arcp contract afn float %i.vy, %i.vt
  %i.wa = extractelement <2 x float> %i.vx, i64 1
  %i.wb = fadd reassoc nsz arcp contract afn float %i.vz, %i.wa
  %i.wc = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.wb
  %i.wd = fadd reassoc nsz arcp contract afn float %i.wc, %i.vh
  %i.we = fmul reassoc nsz arcp contract afn float %i.wd, %i.tq
  %i.wf = fdiv reassoc nsz arcp contract afn float %i.we, %i.vp
  %i.wg = fadd reassoc nsz arcp contract afn float %i.wf, -2.000000e+00
  %i.wh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wg, float 0.000000e+00)
  %i.wi = fmul reassoc nnan nsz arcp contract afn float %i.wh, f0xCB000000
  %i.wj = fptosi float %i.wi to i32               ; 2 uses
  %i.wk = add nsw i32 %i.wj, 1065353216
  %i.wl = icmp sgt i32 %i.wj, -1056964609
  %i.wm = bitcast i32 %i.wk to float
  %i.wn = select i1 %i.wl, float %i.wm, float 0.000000e+00
  %i.wo = insertelement <4 x float> poison, float %i.wn, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wq = shufflevector <2 x float> %i.vq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wr = insertelement <4 x float> %i.wq, float 1.000000e+00, i64 3
  %i.ws = shufflevector <2 x float> %i.vv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.wt = shufflevector <4 x float> %i.wr, <4 x float> %i.ws, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.wu = fmul reassoc nsz arcp contract afn <4 x float> %i.wp, %i.wt
  %i.wv = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !11
  %i.ww = fadd reassoc nsz arcp contract afn <4 x float> %i.wv, %i.wu
  store <4 x float> %i.ww, ptr %invariant.gep, align 4, !tbaa !11
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.wx, i32 0, i32 3, i32 1)
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.wy = icmp slt i64 %indvars.iv.next537, %i.rj
  br i1 %i.wy, label %.lr.ph482, label %.loopexit466

.loopexit466:                                     ; preds = %.lr.ph482, %bb.v, %.preheader467, %.preheader465
  %i.wz = icmp slt i64 %indvars.iv564, %i.rs
  br i1 %i.wz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit466
  %i.xa = trunc nsw i64 %indvars.iv564 to i32
  %i.xb = add i32 %i.ga, %i.xa
  %i.xc = sext i32 %i.xb to i64
  %i.xd = mul nsw i64 %i.xc, %i.u
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xd
  br i1 %i.nc, label %.lr.ph499, label %.loopexit

.lr.ph499:                                        ; preds = %bb.w, %.lr.ph499
  %indvars.iv558 = phi i64 [ %indvars.iv.next559, %.lr.ph499 ], [ %i.rm, %bb.w ] ; 3 uses
  %.idx631 = shl nsw i64 %indvars.iv558, 4
  %i.xf = getelementptr inbounds i8, ptr %i.xe, i64 %.idx631 ; 4 uses
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %i.rd ; 3 uses
  %i.xh = load float, ptr %i.xf, align 4, !tbaa !11
  %i.xi = load float, ptr %i.xg, align 4, !tbaa !11
  %i.xj = fsub reassoc nsz arcp contract afn float %i.xh, %i.xi ; 2 uses
  %i.xk = fmul reassoc nsz arcp contract afn float %i.xj, %i.xj
  %i.xl = load float, ptr %i.ix, align 4, !tbaa !11
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xk, %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.xp = load <2 x float>, ptr %i.xn, align 4, !tbaa !11
  %i.xq = load <2 x float>, ptr %i.xo, align 4, !tbaa !11
  %i.xr = fsub reassoc nsz arcp contract afn <2 x float> %i.xp, %i.xq ; 2 uses
  %i.xs = fmul reassoc nsz arcp contract afn <2 x float> %i.xr, %i.xr
  %i.xt = load <2 x float>, ptr %i.jd, align 4, !tbaa !11
  %i.xu = fmul reassoc nsz arcp contract afn <2 x float> %i.xs, %i.xt ; 2 uses
  %i.xv = extractelement <2 x float> %i.xu, i64 0
  %i.xw = fadd reassoc nsz arcp contract afn float %i.xv, %i.xm
  %i.xx = extractelement <2 x float> %i.xu, i64 1
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xw, %i.xx
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.xz, i32 0, i32 3, i32 1)
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv558 ; 2 uses
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !11
  %i.yc = fadd reassoc nsz arcp contract afn float %i.xy, %i.yb
  store float %i.yc, ptr %i.ya, align 4, !tbaa !11
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.yd, i32 0, i32 3, i32 1)
  %indvars.iv.next559 = add nsw i64 %indvars.iv558, 1 ; 2 uses
  %i.ye = icmp slt i64 %indvars.iv.next559, %i.rn
  br i1 %i.ye, label %.lr.ph499, label %.loopexit

bb.x:                                             ; preds = %.loopexit466
  %i.yf = icmp slt i64 %indvars.iv564, %i.rr
  br i1 %i.yf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.yg = sub nsw i64 %indvars.iv564, %i.fu
  %i.yh = mul nsw i64 %i.yg, %i.u
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yh
  %i.yj = trunc nsw i64 %indvars.iv564 to i32
  %i.yk = add i32 %i.ga, %i.yj
  %i.yl = sext i32 %i.yk to i64
  %i.ym = mul nsw i64 %i.yl, %i.u
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ym
  br i1 %i.nc, label %.lr.ph496, label %.loopexit

.lr.ph496:                                        ; preds = %bb.y, %.lr.ph496
  %indvars.iv553 = phi i64 [ %indvars.iv.next554, %.lr.ph496 ], [ %i.rm, %bb.y ] ; 3 uses
  %i.yo = shl nsw i64 %indvars.iv553, 2           ; 2 uses
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.yo ; 4 uses
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %i.yo ; 5 uses
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.yq, i64 %i.rd ; 4 uses
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.rd ; 3 uses
  %i.yt = load float, ptr %i.yq, align 4, !tbaa !11
  %i.yu = load float, ptr %i.yr, align 4, !tbaa !11
  %i.yv = fsub reassoc nsz arcp contract afn float %i.yt, %i.yu ; 2 uses
  %i.yw = load float, ptr %i.yp, align 4, !tbaa !11
  %i.yx = load float, ptr %i.ys, align 4, !tbaa !11
  %i.yy = fsub reassoc nsz arcp contract afn float %i.yw, %i.yx ; 2 uses
  %i.yz = fmul reassoc nsz arcp contract afn float %i.yv, %i.yv
  %i.za = fmul reassoc nsz arcp contract afn float %i.yy, %i.yy
  %i.zb = fsub reassoc nsz arcp contract afn float %i.yz, %i.za
  %i.zc = load float, ptr %i.ix, align 4, !tbaa !11
  %i.zd = fmul reassoc nsz arcp contract afn float %i.zb, %i.zc
  %6 = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %7 = load float, ptr %6, align 4, !tbaa !11
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %8 = load float, ptr %i.ze, align 4, !tbaa !11
  %9 = fsub reassoc nsz arcp contract afn float %7, %8 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  %10 = load float, ptr %i.zf, align 4, !tbaa !11
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %11 = load float, ptr %i.zg, align 4, !tbaa !11
  %12 = fsub reassoc nsz arcp contract afn float %10, %11 ; 2 uses
  %13 = fmul reassoc nsz arcp contract afn float %9, %9
  %14 = fmul reassoc nsz arcp contract afn float %12, %12
  %15 = fsub reassoc nsz arcp contract afn float %13, %14
  %16 = load float, ptr %i.jd, align 4, !tbaa !11
  %17 = fmul reassoc nsz arcp contract afn float %15, %16
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %18 = load float, ptr %i.zh, align 4, !tbaa !11
  %19 = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %20 = load float, ptr %19, align 4, !tbaa !11
  %21 = fsub reassoc nsz arcp contract afn float %18, %20 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %23 = load float, ptr %22, align 4, !tbaa !11
  %24 = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %25 = load float, ptr %24, align 4, !tbaa !11
  %26 = fsub reassoc nsz arcp contract afn float %23, %25 ; 2 uses
  %27 = fmul reassoc nsz arcp contract afn float %21, %21
  %28 = fmul reassoc nsz arcp contract afn float %26, %26
  %29 = fsub reassoc nsz arcp contract afn float %27, %28
  %30 = load float, ptr %i.je, align 4, !tbaa !11
  %31 = fmul reassoc nsz arcp contract afn float %29, %30
  %i.zi = fadd reassoc nsz arcp contract afn float %17, %i.zd
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.zj, i32 0, i32 3, i32 1)
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv553 ; 2 uses
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !11
  %32 = fadd reassoc nsz arcp contract afn float %i.zi, %i.zl
  %i.zm = fadd reassoc nsz arcp contract afn float %32, %31
  store float %i.zm, ptr %i.zk, align 4, !tbaa !11
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.zn, i32 0, i32 3, i32 1)
  %indvars.iv.next554 = add nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.zo = icmp slt i64 %indvars.iv.next554, %i.rn
  br i1 %i.zo, label %.lr.ph496, label %.loopexit

bb.z:                                             ; preds = %bb.x
  %.not = icmp sge i64 %indvars.iv564, %i.rq
  %i.zp = icmp slt i64 %indvars.iv564, %invariant.op
  %or.cond = select i1 %.not, i1 %i.zp, i1 false
  br i1 %or.cond, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.zq = sub nsw i64 %indvars.iv564, %i.fu
  %i.zr = mul nsw i64 %i.zq, %i.u
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zr ; 2 uses
  br i1 %i.nc, label %.lr.ph493.preheader, label %.loopexit

.lr.ph493.preheader:                              ; preds = %bb.aa
  %brmerge = select i1 %min.iters.check727, i1 true, i1 %conflict.rdx724
  br i1 %brmerge, label %.lr.ph493.preheader870, label %vector.ph728

vector.ph728:                                     ; preds = %.lr.ph493.preheader
  %i.zt = load float, ptr %i.ix, align 4, !tbaa !11, !alias.scope !47
  %broadcast.splatinsert740 = insertelement <8 x float> poison, float %i.zt, i64 0
  %broadcast.splat741 = shufflevector <8 x float> %broadcast.splatinsert740, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zu = load float, ptr %i.jd, align 4, !tbaa !11, !alias.scope !47
  %broadcast.splatinsert742 = insertelement <8 x float> poison, float %i.zu, i64 0
  %broadcast.splat743 = shufflevector <8 x float> %broadcast.splatinsert742, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zv = load float, ptr %i.je, align 4, !tbaa !11, !alias.scope !47
  %broadcast.splatinsert744 = insertelement <8 x float> poison, float %i.zv, i64 0
  %broadcast.splat745 = shufflevector <8 x float> %broadcast.splatinsert744, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body730

vector.body730:                                   ; preds = %vector.body730, %vector.ph728
  %index731 = phi i64 [ 0, %vector.ph728 ], [ %index.next746, %vector.body730 ] ; 2 uses
  %i.zw = add i64 %i.rm, %index731                ; 2 uses
  %i.zx = shl nsw i64 %i.zw, 4
  %i.zy = getelementptr inbounds i8, ptr %i.zs, i64 %i.zx ; 2 uses
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.zy, i64 %i.rd
  %wide.vec732 = load <32 x float>, ptr %i.zy, align 4, !tbaa !11, !alias.scope !50 ; 3 uses
  %strided.vec733 = shufflevector <32 x float> %wide.vec732, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec734 = shufflevector <32 x float> %wide.vec732, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec735 = shufflevector <32 x float> %wide.vec732, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.vec736 = load <32 x float>, ptr %i.zz, align 4, !tbaa !11, !alias.scope !52 ; 3 uses
  %strided.vec737 = shufflevector <32 x float> %wide.vec736, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec738 = shufflevector <32 x float> %wide.vec736, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec739 = shufflevector <32 x float> %wide.vec736, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aaa = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec733, %strided.vec737 ; 2 uses
  %i.aab = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec734, %strided.vec738 ; 2 uses
  %i.aac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec735, %strided.vec739 ; 2 uses
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.zw ; 2 uses
  %wide.load = load <8 x float>, ptr %i.aad, align 4, !tbaa !11, !alias.scope !54, !noalias !56
  %i.aae = fmul reassoc nsz arcp contract afn <8 x float> %i.aaa, %i.aaa
  %i.aaf = fmul reassoc nsz arcp contract afn <8 x float> %i.aae, %broadcast.splat741
  %i.aag = fmul reassoc nsz arcp contract afn <8 x float> %i.aab, %i.aab
  %i.aah = fmul reassoc nsz arcp contract afn <8 x float> %i.aag, %broadcast.splat743
  %i.aai = fmul reassoc nsz arcp contract afn <8 x float> %i.aac, %i.aac
  %i.aaj = fmul reassoc nsz arcp contract afn <8 x float> %i.aai, %broadcast.splat745
  %i.aak = fadd reassoc nsz arcp contract afn <8 x float> %i.aah, %i.aaf
  %i.aal = fadd reassoc nsz arcp contract afn <8 x float> %i.aak, %i.aaj
  %i.aam = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.aal
  store <8 x float> %i.aam, ptr %i.aad, align 4, !tbaa !11, !alias.scope !54, !noalias !56
  %index.next746 = add nuw i64 %index731, 8       ; 2 uses
  %i.aan = icmp eq i64 %index.next746, %n.vec729
  br i1 %i.aan, label %.lr.ph493.preheader870, label %vector.body730, !llvm.loop !57

.lr.ph493.preheader870:                           ; preds = %vector.body730, %.lr.ph493.preheader
  %indvars.iv548.ph = phi i64 [ %i.rm, %.lr.ph493.preheader ], [ %i.sy, %vector.body730 ]
  br label %.lr.ph493

.lr.ph493:                                        ; preds = %.lr.ph493.preheader870, %.lr.ph493
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %.lr.ph493 ], [ %indvars.iv548.ph, %.lr.ph493.preheader870 ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv548, 4
  %i.aao = getelementptr inbounds i8, ptr %i.zs, i64 %.idx ; 3 uses
  %i.aap = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.rd ; 2 uses
  %33 = load float, ptr %i.aao, align 4, !tbaa !11
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !11
  %34 = fsub reassoc nsz arcp contract afn float %33, %i.aaq ; 2 uses
  %i.aar = load float, ptr %i.ix, align 4, !tbaa !11
  %35 = getelementptr inbounds nuw i8, ptr %i.aao, i64 4
  %36 = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv548 ; 2 uses
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !11
  %37 = fmul reassoc nsz arcp contract afn float %34, %34
  %.neg456 = fmul reassoc nsz arcp contract afn float %37, %i.aar
  %i.aau = load <2 x float>, ptr %35, align 4, !tbaa !11
  %i.aav = load <2 x float>, ptr %36, align 4, !tbaa !11
  %i.aaw = fsub reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aav ; 2 uses
  %i.aax = load <2 x float>, ptr %i.jd, align 4, !tbaa !11
  %i.aay = fmul reassoc nsz arcp contract afn <2 x float> %i.aaw, %i.aaw
  %i.aaz = fmul reassoc nsz arcp contract afn <2 x float> %i.aay, %i.aax ; 2 uses
  %i.aba = extractelement <2 x float> %i.aaz, i64 0
  %reass.add = fadd reassoc nsz arcp contract afn float %i.aba, %.neg456
  %i.abb = extractelement <2 x float> %i.aaz, i64 1
  %reass.add461 = fadd reassoc nsz arcp contract afn float %reass.add, %i.abb
  %i.abc = fsub reassoc nsz arcp contract afn float %i.aat, %reass.add461
  store float %i.abc, ptr %i.aas, align 4, !tbaa !11
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.abd = icmp slt i64 %indvars.iv.next549, %i.rn
  br i1 %i.abd, label %.lr.ph493, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph493, %.lr.ph496, %.lr.ph499, %bb.aa, %bb.y, %bb.w, %bb.z
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %i.abe = icmp slt i64 %indvars.iv.next565, %i.rp
  br i1 %i.abe, label %bb.u, label %._crit_edge503

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge514
  %indvars.iv581 = phi i64 [ %indvars.iv561, %.preheader.lr.ph.preheader ], [ %indvars.iv.next582, %._crit_edge514 ] ; 2 uses
  %i.abf = trunc nsw i64 %indvars.iv581 to i32
  %.reass518 = mul i32 %factor.op.mul517, %i.abf
  %i.abg = sext i32 %.reass518 to i64
  %i.abh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.abg ; 2 uses
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.abi = add nuw i64 %indvars.iv544, %index
  %i.abj = shl nuw nsw i64 %i.abi, 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abj ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.abk, align 4, !tbaa !11 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec652 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec653 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec654 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 5 uses
  %i.abl = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec, %strided.vec654
  %i.abm = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec652, %strided.vec654
  %i.abn = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec653, %strided.vec654
  %i.abo = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec654, %strided.vec654
  %i.abp = shufflevector <4 x float> %i.abl, <4 x float> %i.abm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abq = shufflevector <4 x float> %i.abn, <4 x float> %i.abo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.abp, <8 x float> %i.abq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.abk, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abr = icmp eq i64 %index.next, %n.vec
  br i1 %i.abr, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge514, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv578.ph = phi i64 [ %indvars.iv544, %.preheader.lr.ph ], [ %i.li, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv578 = phi i64 [ %indvars.iv.next579, %.preheader ], [ %indvars.iv578.ph, %.preheader.preheader ] ; 2 uses
  %.idx632 = shl nuw nsw i64 %indvars.iv578, 4
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abh, i64 %.idx632 ; 2 uses
  %i.abt = load <4 x float>, ptr %i.abs, align 4, !tbaa !11 ; 2 uses
  %i.abu = shufflevector <4 x float> %i.abt, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.abv = fdiv reassoc nsz arcp contract afn <4 x float> %i.abt, %i.abu
  store <4 x float> %i.abv, ptr %i.abs, align 4, !tbaa !11
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %i.abw = icmp slt i64 %indvars.iv.next579, %i.le
  br i1 %i.abw, label %.preheader, label %._crit_edge514, !llvm.loop !60

._crit_edge514:                                   ; preds = %.preheader, %middle.block
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %i.abx = icmp slt i64 %indvars.iv.next582, %i.lf
  br i1 %i.abx, label %.preheader.lr.ph, label %.loopexit470

.preheader462.lr.ph:                              ; preds = %.preheader462.lr.ph.preheader, %._crit_edge507
  %indvar657 = phi i32 [ 0, %.preheader462.lr.ph.preheader ], [ %indvar.next658, %._crit_edge507 ] ; 2 uses
  %indvars.iv574 = phi i64 [ %indvars.iv561, %.preheader462.lr.ph.preheader ], [ %indvars.iv.next575, %._crit_edge507 ] ; 3 uses
  %i.aby = mul nsw i64 %indvars.iv574, %i.u
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aby ; 5 uses
  %i.aca = trunc nsw i64 %indvars.iv574 to i32
  %.reass = mul i32 %factor.op.mul, %i.aca
  %i.acb = sext i32 %.reass to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.acb ; 5 uses
  br i1 %min.iters.check672, label %.preheader462.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader462.lr.ph
  %i.acd = mul i32 %i.kr, %indvar657
  %i.ace = add i32 %i.kq, %i.acd
  %i.acf = sext i32 %i.ace to i64
  %i.acg = shl nsw i64 %i.acf, 2                  ; 2 uses
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.acg
  %scevgep659 = getelementptr i8, ptr %scevgep, i64 %i.acg
  %bound0 = icmp ult ptr %scevgep659, %scevgep669
  %bound1 = icmp ult ptr %scevgep666, %scevgep663
  %found.conflict = and i1 %bound0, %bound1
  %i.ach = or i1 %found.conflict, %stride.check
  br i1 %i.ach, label %.preheader462.preheader, label %vector.body681

vector.body681:                                   ; preds = %vector.memcheck, %vector.body681
  %index682 = phi i64 [ %index.next698, %vector.body681 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.aci = add nuw i64 %indvars.iv544, %index682
  %i.acj = shl nuw nsw i64 %i.aci, 2              ; 2 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.acj ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 12 ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.acj
  %wide.vec683 = load <16 x float>, ptr %i.acm, align 4, !tbaa !11, !alias.scope !61 ; 4 uses
  %strided.vec684 = shufflevector <16 x float> %wide.vec683, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec685 = shufflevector <16 x float> %wide.vec683, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec686 = shufflevector <16 x float> %wide.vec683, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec687 = shufflevector <16 x float> %wide.vec683, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.acn = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat, %strided.vec684
  %wide.vec688 = load <16 x float>, ptr %i.ack, align 4, !tbaa !11, !alias.scope !64, !noalias !61 ; 4 uses
  %strided.vec689 = shufflevector <16 x float> %wide.vec688, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec690 = shufflevector <16 x float> %wide.vec688, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec691 = shufflevector <16 x float> %wide.vec688, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec692 = shufflevector <16 x float> %wide.vec688, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec693 = load <16 x float>, ptr %i.acl, align 4, !tbaa !11, !alias.scope !64, !noalias !61
  %strided.vec694 = shufflevector <16 x float> %wide.vec693, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.aco = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat676, %strided.vec689
  %i.acp = fdiv reassoc nsz arcp contract afn <4 x float> %i.aco, %strided.vec694
  %i.acq = fadd reassoc nsz arcp contract afn <4 x float> %i.acp, %i.acn
  %i.acr = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat678, %strided.vec685
  %i.acs = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat680, %strided.vec690
  %i.act = fdiv reassoc nsz arcp contract afn <4 x float> %i.acs, %strided.vec694
  %i.acu = fadd reassoc nsz arcp contract afn <4 x float> %i.act, %i.acr
  %i.acv = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat678, %strided.vec686
  %wide.vec695 = load <16 x float>, ptr %i.acl, align 4, !tbaa !11, !alias.scope !64, !noalias !61
  %strided.vec696 = shufflevector <16 x float> %wide.vec695, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %i.acw = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat680, %strided.vec691
  %i.acx = fdiv reassoc nsz arcp contract afn <4 x float> %i.acw, %strided.vec696
  %i.acy = fadd reassoc nsz arcp contract afn <4 x float> %i.acx, %i.acv
  %i.acz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec687, zeroinitializer
  %i.ada = fdiv reassoc nsz arcp contract afn <4 x float> %strided.vec692, %strided.vec696
  %i.adb = fadd reassoc nsz arcp contract afn <4 x float> %i.ada, %i.acz
  %i.adc = shufflevector <4 x float> %i.acq, <4 x float> %i.acu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.add = shufflevector <4 x float> %i.acy, <4 x float> %i.adb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec697 = shufflevector <8 x float> %i.adc, <8 x float> %i.add, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec697, ptr %i.ack, align 4, !tbaa !11, !alias.scope !64, !noalias !61
  %index.next698 = add nuw i64 %index682, 4       ; 2 uses
  %i.ade = icmp eq i64 %index.next698, %n.vec674
  br i1 %i.ade, label %.preheader462.preheader, label %vector.body681, !llvm.loop !66

.preheader462.preheader:                          ; preds = %vector.body681, %vector.memcheck, %.preheader462.lr.ph
  %indvars.iv571.ph = phi i64 [ %indvars.iv544, %vector.memcheck ], [ %indvars.iv544, %.preheader462.lr.ph ], [ %i.lb, %vector.body681 ]
  br label %.preheader462

.preheader462:                                    ; preds = %.preheader462.preheader, %.preheader462
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %.preheader462 ], [ %indvars.iv571.ph, %.preheader462.preheader ] ; 2 uses
  %i.adf = shl nuw nsw i64 %indvars.iv571, 2      ; 5 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.adf ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 12
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.adf
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !11
  %i.adk = fmul reassoc nsz arcp contract afn float %i.f, %i.adj
  %i.adl = or disjoint i64 %i.adf, 1              ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.adl
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.adl
  %i.ado = or disjoint i64 %i.adf, 2              ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.ado
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.ado
  %i.adr = or disjoint i64 %i.adf, 3              ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.adr
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.adr
  %i.adu = load float, ptr %i.adh, align 4, !tbaa !11
  %i.adv = load <4 x float>, ptr %i.adg, align 4, !tbaa !11
  %i.adw = fmul reassoc nsz arcp contract afn <4 x float> %i.adv, %i.gm
  %i.adx = insertelement <4 x float> poison, float %i.adu, i64 0
  %i.ady = shufflevector <4 x float> %i.adx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adz = fdiv reassoc nsz arcp contract afn <4 x float> %i.adw, %i.ady ; 4 uses
  %i.aea = extractelement <4 x float> %i.adz, i64 0
  %i.aeb = fadd reassoc nsz arcp contract afn float %i.aea, %i.adk
  store float %i.aeb, ptr %i.adg, align 4, !tbaa !11
  %i.aec = load float, ptr %i.adm, align 4, !tbaa !11
  %i.aed = fmul reassoc nsz arcp contract afn float %i.g, %i.aec
  %i.aee = extractelement <4 x float> %i.adz, i64 1
  %i.aef = fadd reassoc nsz arcp contract afn float %i.aee, %i.aed
  store float %i.aef, ptr %i.adn, align 4, !tbaa !11
  %i.aeg = load float, ptr %i.adp, align 4, !tbaa !11
  %i.aeh = fmul reassoc nsz arcp contract afn float %i.g, %i.aeg
  %i.aei = extractelement <4 x float> %i.adz, i64 2
  %i.aej = fadd reassoc nsz arcp contract afn float %i.aei, %i.aeh
  store float %i.aej, ptr %i.adq, align 4, !tbaa !11
  %i.aek = load float, ptr %i.ads, align 4, !tbaa !11
  %i.ael = fmul reassoc nsz arcp contract afn float %i.aek, 0.000000e+00
  %i.aem = extractelement <4 x float> %i.adz, i64 3
  %i.aen = fadd reassoc nsz arcp contract afn float %i.aem, %i.ael
  store float %i.aen, ptr %i.adt, align 4, !tbaa !11
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %i.aeo = icmp slt i64 %indvars.iv.next572, %i.ko
  br i1 %i.aeo, label %.preheader462, label %._crit_edge507, !llvm.loop !67

._crit_edge507:                                   ; preds = %.preheader462
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %i.aep = icmp slt i64 %indvars.iv.next575, %i.kp
  %indvar.next658 = add i32 %indvar657, 1
  br i1 %i.aep, label %.preheader462.lr.ph, label %.loopexit470

.loopexit470:                                     ; preds = %._crit_edge507, %._crit_edge514, %.preheader471, %.lr.ph509, %.preheader469, %.lr.ph516
  %i.aeq = sext i32 %i.iu to i64
  %i.aer = icmp slt i64 %indvars.iv.next545, %i.aeq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.aer, label %bb.r, label %._crit_edge521
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
