Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
compute_slice_height.exit:                        ; preds = %define_patches.exit, %.preheader.preheader.i, %bb.f, %.preheader.1.i, %bb.g, %.preheader.2.i, %bb.h, %.preheader.3.i, %bb.i, %.preheader.4.i, %bb.j, %.preheader.5.i, %bb.k, %.preheader.6.i, %bb.l, %.preheader.7.i, %bb.m, %.preheader.8.i, %bb.n, %bb.o
  %.539.i = phi i32 [ 60, %define_patches.exit ], [ %i.ff, %bb.o ], [ 67, %.preheader.6.i ], [ 68, %.preheader.7.i ], [ 54, %bb.k ], [ 66, %.preheader.5.i ], [ 52, %bb.m ], [ 55, %bb.j ], [ 65, %.preheader.4.i ], [ 53, %bb.l ], [ 56, %bb.i ], [ 64, %.preheader.3.i ], [ 69, %.preheader.8.i ], [ 57, %bb.h ], [ 63, %.preheader.2.i ], [ 51, %bb.n ], [ 58, %bb.g ], [ 62, %.preheader.1.i ], [ 59, %bb.f ], [ 61, %.preheader.preheader.i ] ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !42 ; 6 uses
  %i.fi = srem i32 %i.fh, 72                      ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 36
  br i1 %i.fj, label %bb.p, label %compute_slice_width.exit

bb.p:                                             ; preds = %compute_slice_height.exit
  %i.fk = srem i32 %i.fh, 68                      ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, %i.fi
  br i1 %i.fl, label %bb.q, label %compute_slice_width.exit

bb.q:                                             ; preds = %bb.p
  %i.fm = icmp slt i32 %i.fk, 36
  %i.fn = srem i32 %i.fh, 64
  %i.fo = icmp sgt i32 %i.fn, %i.fk
  %or.cond.i = and i1 %i.fm, %i.fo
  %i.fp = select i1 %or.cond.i, i64 64, i64 68
  br label %compute_slice_width.exit

compute_slice_width.exit:                         ; preds = %compute_slice_height.exit, %bb.p, %bb.q
  %.0.i = phi i64 [ 72, %bb.p ], [ 72, %compute_slice_height.exit ], [ %i.fp, %bb.q ] ; 5 uses
  %i.fq = icmp sgt i32 %i.cs, 0
  br i1 %i.fq, label %.preheader475.lr.ph, label %._crit_edge525

.preheader475.lr.ph:                              ; preds = %compute_slice_width.exit
  %i.fr = fmul reassoc nnan nsz arcp contract afn float %i.o, %i.o
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %i.fr, %i.j
  %i.fs = sext i32 %i.cj to i64                   ; 7 uses
  %i.ft = getelementptr [4 x i8], ptr %i.cq, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fw = xor i32 %i.cj, -1                       ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fy = add i32 %i.cj, 1                        ; 2 uses
  %i.fz = icmp sgt i32 %i.fh, 0
  br i1 %i.fz, label %.preheader475.preheader, label %.preheader475.us

.preheader475.preheader:                          ; preds = %.preheader475.lr.ph
  %i.ga = zext i32 %.539.i to i64                 ; 3 uses
  %i.gb = shl nuw nsw i64 %.0.i, 4
  %i.gc = shl i32 %.539.i, 2
  %i.gd = mul nsw i64 %i.s, %i.ga
  %i.ge = shl i64 %i.gd, 2
  %i.gf = shl nsw i64 %i.s, 2
  %i.gg = shl nsw i64 %i.s, 2
  %scevgep705 = getelementptr i8, ptr %0, i64 -4
  %scevgep709 = getelementptr i8, ptr %0, i64 -4
  %i.gh = sub i32 0, %.539.i
  %i.gi = zext i32 %i.gh to i64
  %broadcast.splatinsert787 = insertelement <8 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat788 = shufflevector <8 x i64> %broadcast.splatinsert787, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert836 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat837 = shufflevector <4 x i64> %broadcast.splatinsert836, <4 x i64> poison, <4 x i32> zeroinitializer
  %stride.check719 = icmp slt i32 %i.r, 0
  %stride.check = icmp slt i32 %i.r, 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert674 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat675 = shufflevector <4 x float> %broadcast.splatinsert674, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert676 = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat677 = shufflevector <4 x float> %broadcast.splatinsert676, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert678 = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat679 = shufflevector <4 x float> %broadcast.splatinsert678, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.d, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader475

.preheader475.us:                                 ; preds = %.preheader475.lr.ph, %.preheader475.us
  %.0409524.us = phi i32 [ %i.gl, %.preheader475.us ], [ 0, %.preheader475.lr.ph ]
  %i.gl = add nsw i32 %.0409524.us, %.539.i       ; 2 uses
  %i.gm = icmp slt i32 %i.gl, %i.cs
  br i1 %i.gm, label %.preheader475.us, label %._crit_edge525

.preheader475:                                    ; preds = %.preheader475.preheader, %._crit_edge522
  %indvar664 = phi i64 [ 0, %.preheader475.preheader ], [ %indvar.next665, %._crit_edge522 ] ; 4 uses
  %indvar656 = phi i32 [ 0, %.preheader475.preheader ], [ %indvar.next657, %._crit_edge522 ] ; 2 uses
  %i.gn = phi i32 [ %i.cs, %.preheader475.preheader ], [ %i.he, %._crit_edge522 ] ; 3 uses
  %i.go = phi i32 [ %i.fh, %.preheader475.preheader ], [ %i.hf, %._crit_edge522 ] ; 2 uses
  %i.gp = phi i32 [ %i.fh, %.preheader475.preheader ], [ %i.hg, %._crit_edge522 ] ; 3 uses
  %indvars.iv562 = phi i64 [ 0, %.preheader475.preheader ], [ %indvars.iv.next563, %._crit_edge522 ] ; 6 uses
  %indvars.iv = phi i32 [ %.539.i, %.preheader475.preheader ], [ %indvars.iv.next, %._crit_edge522 ] ; 2 uses
  %i.gq = mul i64 %indvar664, %i.gi               ; 2 uses
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = trunc i64 %i.gq to i32
  %i.gt = add i32 %i.gs, -1
  %i.gu = mul i32 %i.gc, %indvar656
  %i.gv = mul i64 %i.ge, %indvar664               ; 2 uses
  %i.gw = mul i64 %indvar664, %i.ga
  %i.gx = xor i64 %i.gw, -1
  %i.gy = add nuw i64 %indvars.iv562, 1
  %indvars586 = trunc i64 %indvars.iv562 to i32   ; 5 uses
  %i.gz = icmp sgt i32 %i.gp, 0
  br i1 %i.gz, label %.lr.ph521, label %._crit_edge522

.lr.ph521:                                        ; preds = %.preheader475
  %i.ha = add nsw i32 %.539.i, %indvars586
  %i.hb = getelementptr i8, ptr %0, i64 %i.gv
  %i.hc = getelementptr i8, ptr %0, i64 %i.gv
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  br label %bb.r

._crit_edge525:                                   ; preds = %.preheader475.us, %._crit_edge522, %compute_slice_width.exit
  tail call void @free(ptr noundef %i.ah) #9
  tail call void @free(ptr noundef %i.cq) #9
  ret void

._crit_edge522:                                   ; preds = %.loopexit471, %.preheader475
  %i.he = phi i32 [ %i.gn, %.preheader475 ], [ %i.ip, %.loopexit471 ] ; 2 uses
  %i.hf = phi i32 [ %i.go, %.preheader475 ], [ %i.iq, %.loopexit471 ]
  %i.hg = phi i32 [ %i.gp, %.preheader475 ], [ %i.iq, %.loopexit471 ]
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, %i.ga ; 2 uses
  %indvars = trunc i64 %indvars.iv.next563 to i32
  %i.hh = icmp sgt i32 %i.he, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next657 = add i32 %indvar656, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hh, label %.preheader475, label %._crit_edge525, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph521, %.loopexit471
  %indvar = phi i64 [ 0, %.lr.ph521 ], [ %indvar.next, %.loopexit471 ] ; 5 uses
  %i.hi = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.ip, %.loopexit471 ]
  %i.hj = phi i32 [ %i.go, %.lr.ph521 ], [ %i.iq, %.loopexit471 ]
  %i.hk = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.is, %.loopexit471 ] ; 3 uses
  %indvars.iv545 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next546, %.loopexit471 ] ; 20 uses
  %i.hl = phi i32 [ %i.gp, %.lr.ph521 ], [ %i.iq, %.loopexit471 ] ; 4 uses
  %i.hm = or disjoint i64 %indvars.iv545, 1
  %i.hn = or disjoint i64 %indvars.iv545, 1
  %i.ho = mul i64 %.0.i, %indvar
  %i.hp = or disjoint i64 %indvars.iv545, 1
  %i.hq = mul i64 %i.gb, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.hq
  %i.hr = getelementptr i8, ptr %1, i64 %i.hq
  %scevgep661 = getelementptr i8, ptr %i.hr, i64 16
  %i.hs = or disjoint i64 %indvars.iv545, 1
  %i.ht = mul i64 %.0.i, %indvar
  %i.hu = xor i64 %i.ht, -1
  %scevgep666 = getelementptr i8, ptr %i.hb, i64 %i.hq
  %scevgep667 = getelementptr i8, ptr %i.hd, i64 %i.hq
  %i.hv = mul i64 %.0.i, %indvar
  %i.hw = or disjoint i64 %indvars.iv545, 1
  %indvars585 = trunc i64 %indvars.iv545 to i32   ; 13 uses
  %i.hx = sub nsw i64 0, %indvars.iv545
  %i.hy = getelementptr [4 x i8], ptr %i.fu, i64 %i.hx ; 17 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.hk) ; 6 uses
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, %.0.i ; 3 uses
  %i.hz = trunc i64 %indvars.iv.next546 to i32
  %i.ia = tail call i32 @llvm.smin.i32(i32 %i.hz, i32 %i.hl) ; 8 uses
  %i.ib = icmp sgt i32 %., %indvars586            ; 3 uses
  br i1 %i.ib, label %.lr.ph, label %.preheader474

.lr.ph:                                           ; preds = %bb.r
  %i.ic = sext i32 %i.ia to i64
  %i.id = sub nsw i64 %i.ic, %indvars.iv545
  %i.ie = shl nsw i64 %i.id, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hk, i32 %indvars.iv)
  %i.if = add i32 %., %i.gr
  %i.ig = add i32 %i.gt, %.
  %xtraiter = and i32 %i.if, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407476.prol = phi i32 [ %i.in, %.prol.preheader ], [ %indvars586, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ih = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ii = mul nsw i32 %i.ih, %.0407476.prol
  %i.ij = add nsw i32 %i.ii, %indvars585
  %i.ik = shl nsw i32 %i.ij, 2
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %1, i64 %i.il
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.im, i8 0, i64 %i.ie, i1 false)
  %i.in = add nsw i32 %.0407476.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407476.unr = phi i32 [ %indvars586, %.lr.ph ], [ %i.in, %.prol.preheader ]
  %i.io = icmp ult i32 %i.ig, 3
  br i1 %i.io, label %.preheader474.loopexit, label %.lr.ph.new

.preheader474.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !52 ; 2 uses
  %.pre599 = load i32, ptr %i.fg, align 4, !tbaa !42 ; 2 uses
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.loopexit, %bb.r
  %i.ip = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hi, %bb.r ] ; 2 uses
  %i.iq = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hj, %bb.r ] ; 5 uses
  %i.ir = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hl, %bb.r ] ; 7 uses
  %i.is = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hk, %bb.r ] ; 4 uses
  %i.it = load ptr, ptr %i.fv, align 8, !tbaa !55 ; 9 uses
  %i.iu = add i32 %indvars585, %i.fw              ; 2 uses
  %i.iv = add i32 %i.ia, %i.cj                    ; 3 uses
  %i.iw = sext i32 %i.iu to i64
  %i.ix = shl nsw i64 %i.iw, 2
  %scevgep.i = getelementptr i8, ptr %i.hy, i64 %i.ix
  %i.iy = sub i32 %i.cj, %indvars585
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 5 uses
  %i.jb = xor i32 %indvars585, -1
  %i.jc = add i32 %i.ia, %i.jb
  %i.jd = sext i32 %i.ir to i64
  %i.je = shl nsw i64 %i.jd, 2
  %smin547 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %indvars585)
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.hy, i64 %i.fs
  %invariant.gep643 = getelementptr [4 x i8], ptr %i.hy, i64 %i.fs
  %scevgep711 = getelementptr i8, ptr %i.it, i64 12
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407476 = phi i32 [ %i.kg, %.lr.ph.new ], [ %.0407476.unr, %.prol.loopexit ] ; 5 uses
  %i.jf = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jg = mul nsw i32 %i.jf, %.0407476
  %i.jh = add nsw i32 %i.jg, %indvars585
  %i.ji = shl nsw i32 %i.jh, 2
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.ie, i1 false)
  %i.jl = add nsw i32 %.0407476, 1
  %i.jm = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jn = mul nsw i32 %i.jm, %i.jl
  %i.jo = add nsw i32 %i.jn, %indvars585
  %i.jp = shl nsw i32 %i.jo, 2
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jq
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jr, i8 0, i64 %i.ie, i1 false)
  %i.js = add nsw i32 %.0407476, 2
  %i.jt = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ju = mul nsw i32 %i.jt, %i.js
  %i.jv = add nsw i32 %i.ju, %indvars585
  %i.jw = shl nsw i32 %i.jv, 2
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jy, i8 0, i64 %i.ie, i1 false)
  %i.jz = add nsw i32 %.0407476, 3
  %i.ka = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.kb = mul nsw i32 %i.ka, %i.jz
  %i.kc = add nsw i32 %i.kb, %indvars585
  %i.kd = shl nsw i32 %i.kc, 2
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ke
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kf, i8 0, i64 %i.ie, i1 false)
  %i.kg = add nsw i32 %.0407476, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kg, %smin
  br i1 %exitcond.not.3, label %.preheader474.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge504
  br i1 %spec.select448, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %bb.s
  br i1 %i.ib, label %.lr.ph510, label %.loopexit471

.lr.ph510:                                        ; preds = %.preheader472
  %factor.op.mul = shl i32 %i.ir, 2
  %i.kh = sext i32 %i.hl to i64
  %i.ki = icmp slt i64 %indvars.iv545, %i.kh
  br i1 %i.ki, label %.preheader463.lr.ph.preheader, label %.loopexit471

.preheader463.lr.ph.preheader:                    ; preds = %.lr.ph510
  %i.kj = sext i32 %i.ia to i64                   ; 3 uses
  %i.kk = sext i32 %. to i64                      ; 2 uses
  %i.kl = mul i32 %i.gu, %i.ir
  %i.km = shl i32 %i.ir, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.kj, i64 %i.hs)
  %i.kn = add i64 %smax, %i.hu
  %i.ko = shl nsw i64 %i.kn, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.ko
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kk, i64 %i.gy)
  %i.kp = add i64 %smax668, %i.gx
  %i.kq = mul i64 %i.gf, %i.kp
  %i.kr = getelementptr i8, ptr %scevgep667, i64 %i.kq
  %scevgep669 = getelementptr i8, ptr %i.kr, i64 %i.ko
  %i.ks = tail call i64 @llvm.smax.i64(i64 %i.kj, i64 %i.hp) ; 2 uses
  %i.kt = sub i64 %i.ks, %i.ho                    ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.kt, 5
  %i.ku = and i64 %i.ks, 3                        ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %i.kw = select i1 %i.kv, i64 4, i64 %i.ku
  %n.vec673 = sub i64 %i.kt, %i.kw                ; 2 uses
  %i.kx = add i64 %indvars.iv545, %n.vec673
  br label %.preheader463.lr.ph

.preheader470:                                    ; preds = %bb.s
  br i1 %i.ib, label %.lr.ph517, label %.loopexit471

.lr.ph517:                                        ; preds = %.preheader470
  %factor.op.mul518 = shl i32 %i.ir, 2
  %i.ky = sext i32 %i.hl to i64
  %i.kz = icmp slt i64 %indvars.iv545, %i.ky
  br i1 %i.kz, label %.preheader.lr.ph.preheader, label %.loopexit471

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph517
  %i.la = sext i32 %i.ia to i64                   ; 2 uses
  %i.lb = sext i32 %. to i64
  %i.lc = tail call i64 @llvm.smax.i64(i64 %i.la, i64 %i.hw) ; 2 uses
  %i.ld = sub i64 %i.lc, %i.hv                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ld, 4
  %i.le = and i64 %i.lc, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.ld, %i.le               ; 2 uses
  %i.lf = add i64 %indvars.iv545, %n.vec
  %cmp.n = icmp eq i64 %i.le, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader474, %._crit_edge504
  %indvars.iv567 = phi i64 [ 0, %.preheader474 ], [ %indvars.iv.next568, %._crit_edge504 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv567 ; 4 uses
  %i.lh = load i16, ptr %i.lg, align 8, !tbaa !49 ; 5 uses
  %i.li = icmp sgt i16 %i.lh, 0
  %i.lj = sext i16 %i.lh to i32                   ; 2 uses
  %i.lk = sub nsw i32 0, %i.lj
  %i.ll = select i1 %i.li, i32 0, i32 %i.lk       ; 2 uses
  %i.lm = tail call i32 @llvm.smax.i32(i32 %i.ll, i32 %indvars586) ; 7 uses
  %i.ln = icmp slt i16 %i.lh, 0
  %spec.select453 = tail call i16 @llvm.smax.i16(i16 %i.lh, i16 0)
  %spec.select = zext nneg i16 %spec.select453 to i32 ; 2 uses
  %i.lo = sub i32 %i.is, %spec.select
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lo) ; 3 uses
  %i.lp = tail call i16 @llvm.smin.i16(i16 %i.lh, i16 0)
  %i.lq = sext i16 %i.lp to i32
  %i.lr = sub nsw i32 %i.cj, %i.lq
  %i.ls = tail call i32 @llvm.smax.i32(i32 %i.lm, i32 %i.lr) ; 2 uses
  %i.lt = add nsw i32 %i.cj, %spec.select
  %i.lu = xor i32 %i.lt, -1
  %i.lv = add i32 %i.is, %i.lu
  %spec.select452 = tail call i32 @llvm.smin.i32(i32 %spec.select450, i32 %i.lv) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !50 ; 2 uses
  %i.ly = sext i16 %i.lx to i32                   ; 3 uses
  %i.lz = sub nsw i32 0, %i.ly
  %i.ma = tail call i32 @llvm.smax.i32(i32 %indvars585, i32 %i.lz) ; 5 uses
  %i.mb = sub i32 %i.ir, %i.ly
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.mb) ; 3 uses
  %i.mc = add nsw i32 %indvars585, %i.ly          ; 2 uses
  %i.md = tail call i32 @llvm.smin.i32(i32 %indvars585, i32 %i.mc)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.md) ; 2 uses
  %i.me = sub nsw i32 %indvars585, %..i           ; 5 uses
  %i.mf = tail call i16 @llvm.smax.i16(i16 %i.lx, i16 0)
  %i.mg = zext nneg i16 %i.mf to i32
  %i.mh = add i32 %i.ia, %i.mg
  %i.mi = sub i32 %i.ir, %i.mh
  %i.mj = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mi) ; 2 uses
  %i.mk = add i32 %i.mj, %i.ia                    ; 4 uses
  %i.ml = add i32 %i.lm, %i.lj                    ; 2 uses
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ml)
  %i.mn = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mm) ; 2 uses
  %i.mo = sub i32 %i.lm, %i.mn                    ; 2 uses
  %.v138.i = select i1 %i.ln, i32 %i.lm, i32 %i.ml
  %i.mp = xor i32 %.v138.i, -1
  %i.mq = add i32 %i.is, %i.mp
  %i.mr = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mq) ; 2 uses
  %i.ms = add i32 %i.mr, %i.lm                    ; 2 uses
  %i.mt = tail call i32 @llvm.smin.i32(i32 %i.me, i32 %i.iv) ; 2 uses
  %i.mu = icmp slt i32 %i.iu, %i.mt
  br i1 %i.mu, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.mv = add i32 %i.iy, %i.mt
  %i.mw = zext i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = add nuw nsw i64 %i.mx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.my, i1 false), !tbaa !56
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.mz = icmp slt i32 %i.me, %i.mk               ; 4 uses
  br i1 %i.mz, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mo, %i.ms
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.na = sext i32 %i.me to i64
  %i.nb = shl nuw nsw i64 %i.na, 2
  %scevgep158.i = getelementptr i8, ptr %i.hy, i64 %i.nb
  %i.nc = add i32 %i.jc, %..i
  %i.nd = add i32 %i.nc, %i.mj
  %i.ne = zext i32 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 2
  %i.ng = add nuw nsw i64 %i.nf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.ng, i1 false), !tbaa !56
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !51
  %i.nj = sext i32 %i.ni to i64                   ; 4 uses
  %i.nk = sext i32 %i.mo to i64                   ; 5 uses
  %i.nl = add i32 %i.ms, 1
  %i.nm = sext i32 %i.me to i64
  %i.nn = sext i32 %i.mk to i64
  %i.no = add i32 %i.mn, %i.mr                    ; 3 uses
  %i.np = zext i32 %i.no to i64
  %i.nq = add nuw nsw i64 %i.np, 1                ; 5 uses
  %min.iters.check776 = icmp ult i32 %i.no, 3
  %min.iters.check778 = icmp ult i32 %i.no, 15
  %i.nr = and i64 %i.nq, 12
  %n.vec780 = and i64 %i.nq, 8589934576           ; 4 uses
  %i.ns = add nsw i64 %n.vec780, %i.nk            ; 2 uses
  %broadcast.splatinsert789 = insertelement <8 x i64> poison, i64 %i.nk, i64 0
  %broadcast.splat790 = shufflevector <8 x i64> %broadcast.splatinsert789, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat790, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n820 = icmp eq i64 %i.nq, %n.vec780
  %min.epilog.iters.check827 = icmp eq i64 %i.nr, 0
  %n.vec829 = and i64 %i.nq, 8589934588           ; 3 uses
  %i.nt = add nsw i64 %n.vec829, %i.nk
  %cmp.n860 = icmp eq i64 %i.nq, %n.vec829
  br label %iter.check824

iter.check824:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nm, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %5 = load <2 x float>, ptr %i.it, align 4, !tbaa !56 ; 5 uses
  %i.nu = load float, ptr %i.ja, align 4, !tbaa !56 ; 3 uses
  br i1 %min.iters.check776, label %vec.epilog.scalar.ph825.preheader, label %vector.main.loop.iter.check777

vector.main.loop.iter.check777:                   ; preds = %iter.check824
  br i1 %min.iters.check778, label %vec.epilog.ph828, label %vector.ph779

vector.ph779:                                     ; preds = %vector.main.loop.iter.check777
  %broadcast.splat782 = shufflevector <2 x float> %5, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat784 = shufflevector <2 x float> %5, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert785 = insertelement <8 x float> poison, float %i.nu, i64 0
  %broadcast.splat786 = shufflevector <8 x float> %broadcast.splatinsert785, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body791

vector.body791:                                   ; preds = %vector.ph779, %vector.body791
  %index792 = phi i64 [ 0, %vector.ph779 ], [ %index.next817, %vector.body791 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph779 ], [ %vec.ind.next, %vector.body791 ] ; 3 uses
  %vec.phi793 = phi <8 x float> [ zeroinitializer, %vector.ph779 ], [ %i.ot, %vector.body791 ]
  %vec.phi794 = phi <8 x float> [ zeroinitializer, %vector.ph779 ], [ %i.ou, %vector.body791 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.nv = mul nsw <8 x i64> %vec.ind, %broadcast.splat788
  %i.nw = mul nsw <8 x i64> %step.add, %broadcast.splat788
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nv ; 4 uses
  %wide.gep795 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nw ; 4 uses
  %wide.gep796 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.nj ; 3 uses
  %wide.gep797 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep795, i64 %i.nj ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather798 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep795, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather799 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep796, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather800 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep797, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.nx = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather799 ; 2 uses
  %i.ny = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather798, %wide.masked.gather800 ; 2 uses
  %i.nz = fmul reassoc nsz arcp contract afn <8 x float> %i.nx, %i.nx
  %i.oa = fmul reassoc nsz arcp contract afn <8 x float> %i.ny, %i.ny
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %broadcast.splat782
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %i.oa, %broadcast.splat782
  %wide.gep801 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep802 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep795, i64 4
  %wide.masked.gather803 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather804 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep802, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep805 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep796, i64 4
  %wide.gep806 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep797, i64 4
  %wide.masked.gather807 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep805, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather808 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep806, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.od = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather803, %wide.masked.gather807 ; 2 uses
  %i.oe = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather804, %wide.masked.gather808 ; 2 uses
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %i.od
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.oe, %i.oe
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %broadcast.splat784
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %broadcast.splat784
  %wide.gep809 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep810 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep795, i64 8
  %wide.masked.gather811 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep809, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather812 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep810, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep813 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep796, i64 8
  %wide.gep814 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep797, i64 8
  %wide.masked.gather815 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep813, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather816 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep814, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather811, %wide.masked.gather815 ; 2 uses
  %i.ok = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather812, %wide.masked.gather816 ; 2 uses
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %i.oj
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %i.ok
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %broadcast.splat786
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat786
  %i.op = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi793, %i.ob
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi794, %i.oc
  %i.or = fadd reassoc nsz arcp contract afn <8 x float> %i.oh, %i.op
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.oi, %i.oq
  %i.ot = fadd reassoc nsz arcp contract afn <8 x float> %i.or, %i.on ; 2 uses
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %i.os, %i.oo ; 2 uses
  %index.next817 = add nuw i64 %index792, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ov = icmp eq i64 %index.next817, %n.vec780
  br i1 %i.ov, label %middle.block818, label %vector.body791, !llvm.loop !13

middle.block818:                                  ; preds = %vector.body791
  %bin.rdx819 = fadd reassoc nsz arcp contract afn <8 x float> %i.ou, %i.ot
  %i.ow = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx819) ; 3 uses
  br i1 %cmp.n820, label %._crit_edge.i447, label %vec.epilog.iter.check826

vec.epilog.iter.check826:                         ; preds = %middle.block818
  %slprdx.init863 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ow, i64 0
  br i1 %min.epilog.iters.check827, label %vec.epilog.scalar.ph825.preheader, label %vec.epilog.ph828, !prof !59

vec.epilog.ph828:                                 ; preds = %vector.main.loop.iter.check777, %vec.epilog.iter.check826
  %vec.epilog.resume.val821 = phi i64 [ %n.vec780, %vec.epilog.iter.check826 ], [ 0, %vector.main.loop.iter.check777 ]
  %bc.resume.val822 = phi i64 [ %i.ns, %vec.epilog.iter.check826 ], [ %i.nk, %vector.main.loop.iter.check777 ]
  %bc.merge.rdx823 = phi float [ %i.ow, %vec.epilog.iter.check826 ], [ 0.000000e+00, %vector.main.loop.iter.check777 ]
  %i.ox = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx823, i64 0
  %broadcast.splat831 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat833 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert834 = insertelement <4 x float> poison, float %i.nu, i64 0
  %broadcast.splat835 = shufflevector <4 x float> %broadcast.splatinsert834, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert838 = insertelement <4 x i64> poison, i64 %bc.resume.val822, i64 0
  %broadcast.splat839 = shufflevector <4 x i64> %broadcast.splatinsert838, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction840 = add nsw <4 x i64> %broadcast.splat839, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body841

vec.epilog.vector.body841:                        ; preds = %vec.epilog.vector.body841, %vec.epilog.ph828
  %index842 = phi i64 [ %vec.epilog.resume.val821, %vec.epilog.ph828 ], [ %index.next857, %vec.epilog.vector.body841 ]
  %vec.ind843 = phi <4 x i64> [ %induction840, %vec.epilog.ph828 ], [ %vec.ind.next858, %vec.epilog.vector.body841 ] ; 2 uses
  %vec.phi844 = phi <4 x float> [ %i.ox, %vec.epilog.ph828 ], [ %i.pk, %vec.epilog.vector.body841 ]
  %i.oy = mul nsw <4 x i64> %vec.ind843, %broadcast.splat837
  %wide.gep845 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.oy ; 4 uses
  %wide.gep846 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep845, i64 %i.nj ; 3 uses
  %wide.masked.gather847 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep845, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather848 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep846, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.oz = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather847, %wide.masked.gather848 ; 2 uses
  %i.pa = fmul reassoc nsz arcp contract afn <4 x float> %i.oz, %i.oz
  %i.pb = fmul reassoc nsz arcp contract afn <4 x float> %i.pa, %broadcast.splat831
  %wide.gep849 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep845, i64 4
  %wide.masked.gather850 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep851 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep846, i64 4
  %wide.masked.gather852 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep851, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pc = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather850, %wide.masked.gather852 ; 2 uses
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %i.pc
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pd, %broadcast.splat833
  %wide.gep853 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep845, i64 8
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep846, i64 8
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pf = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854, %wide.masked.gather856 ; 2 uses
  %i.pg = fmul reassoc nsz arcp contract afn <4 x float> %i.pf, %i.pf
  %i.ph = fmul reassoc nsz arcp contract afn <4 x float> %i.pg, %broadcast.splat835
  %i.pi = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi844, %i.pb
  %i.pj = fadd reassoc nsz arcp contract afn <4 x float> %i.pe, %i.pi
  %i.pk = fadd reassoc nsz arcp contract afn <4 x float> %i.pj, %i.ph ; 2 uses
  %index.next857 = add nuw i64 %index842, 4       ; 2 uses
  %vec.ind.next858 = add nsw <4 x i64> %vec.ind843, splat (i64 4)
  %i.pl = icmp eq i64 %index.next857, %n.vec829
  br i1 %i.pl, label %vec.epilog.middle.block859, label %vec.epilog.vector.body841, !llvm.loop !14

vec.epilog.middle.block859:                       ; preds = %vec.epilog.vector.body841
  %i.pm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pk) ; 2 uses
  %slprdx.init = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pm, i64 0
  br i1 %cmp.n860, label %._crit_edge.i447, label %vec.epilog.scalar.ph825.preheader

vec.epilog.scalar.ph825.preheader:                ; preds = %iter.check824, %vec.epilog.iter.check826, %vec.epilog.middle.block859
  %indvars.iv.i.ph = phi i64 [ %i.nk, %iter.check824 ], [ %i.ns, %vec.epilog.iter.check826 ], [ %i.nt, %vec.epilog.middle.block859 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %iter.check824 ], [ %slprdx.init863, %vec.epilog.iter.check826 ], [ %slprdx.init, %vec.epilog.middle.block859 ]
  %6 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.nu, i64 2
  %7 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %7, <4 x float> %6, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %vec.epilog.scalar.ph825

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pn = tail call i32 @llvm.smax.i32(i32 %i.me, i32 %i.mk) ; 3 uses
  %i.po = icmp slt i32 %i.pn, %i.iv
  br i1 %i.po, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pn to i64
  %i.pp = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.hy, i64 %i.pp
  %i.pq = xor i32 %i.pn, -1
  %i.pr = add i32 %i.iv, %i.pq
  %i.ps = zext i32 %i.pr to i64
  %i.pt = shl nuw nsw i64 %i.ps, 2
  %i.pu = add nuw nsw i64 %i.pt, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.pu, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph825, %vec.epilog.middle.block859, %middle.block818
  %slprdx.exit = phi <4 x float> [ poison, %vec.epilog.middle.block859 ], [ poison, %middle.block818 ], [ %slprdx.acc864, %vec.epilog.scalar.ph825 ]
  %slprdx.fromloop = phi i1 [ false, %vec.epilog.middle.block859 ], [ false, %middle.block818 ], [ true, %vec.epilog.scalar.ph825 ]
  %.lcssa = phi float [ %i.pm, %vec.epilog.middle.block859 ], [ %i.ow, %middle.block818 ], [ poison, %vec.epilog.scalar.ph825 ]
  %9 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %slprdx.fromloop, float %9, float %.lcssa
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv156.i
  store float %slprdx.sel, ptr %i.pv, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.pw = icmp slt i64 %indvars.iv.next157.i, %i.nn
  br i1 %i.pw, label %iter.check824, label %._crit_edge148.i

vec.epilog.scalar.ph825:                          ; preds = %vec.epilog.scalar.ph825.preheader, %vec.epilog.scalar.ph825
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph825 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph825.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x float> [ %slprdx.acc864, %vec.epilog.scalar.ph825 ], [ %slprdx.acc.ph, %vec.epilog.scalar.ph825.preheader ]
  %i.px = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.px ; 3 uses
  %i.py = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.nj ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.pz = load float, ptr %10, align 4, !tbaa !56
  %11 = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %12 = load float, ptr %11, align 4, !tbaa !56
  %13 = load <2 x float>, ptr %gep.i, align 4, !tbaa !56
  %14 = load <2 x float>, ptr %i.py, align 4, !tbaa !56
  %15 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.pz, i64 2
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %16, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %18 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %12, i64 2
  %19 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %19, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %21 = fsub reassoc nsz arcp contract afn <4 x float> %17, %20 ; 2 uses
  %22 = insertelement <4 x float> %21, float 1.000000e+00, i64 3
  %23 = fmul reassoc nsz arcp contract afn <4 x float> %21, %22
  %24 = fmul reassoc nsz arcp contract afn <4 x float> %23, %8
  %slprdx.acc864 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %24 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.nl, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph825, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qa = icmp slt i32 %i.lm, %spec.select450
  br i1 %i.qa, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qb = sub nsw i32 %i.ma, %i.cj
  %i.qc = add i32 %i.ma, %i.cj
  %i.qd = tail call i32 @llvm.smin.i32(i32 %i.qc, i32 %.437) ; 2 uses
  %i.qe = icmp slt i32 %i.qb, %i.qd
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !51
  %i.qh = icmp slt i32 %i.ma, %.437               ; 2 uses
  %i.qi = sext i32 %i.qg to i64                   ; 8 uses
  %i.qj = tail call i32 @llvm.smin.i32(i32 %i.ls, i32 %spec.select452)
  %i.qk = sub i32 %i.ma, %i.cj
  %i.ql = sext i32 %i.qk to i64                   ; 6 uses
  %i.qm = sext i32 %i.qd to i64                   ; 2 uses
  %i.qn = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.qo = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.mc)
  %i.qp = sub i32 0, %smin548
  %i.qq = sext i32 %i.qp to i64                   ; 4 uses
  %i.qr = add i64 %indvars.iv545, %i.qq           ; 7 uses
  %i.qs = sext i32 %i.mk to i64                   ; 5 uses
  %i.qt = sext i32 %i.ll to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.qt) ; 3 uses
  %i.qu = sext i32 %spec.select450 to i64         ; 3 uses
  %i.qv = sext i32 %i.ls to i64
  %i.qw = sext i32 %spec.select452 to i64
  %i.qx = sext i32 %i.qj to i64
  %invariant.op = add nsw i64 %i.qu, -1
  %i.qy = shl nsw i64 %i.qr, 2
  %scevgep701 = getelementptr i8, ptr %i.hy, i64 %i.qy ; 3 uses
  %i.qz = add i64 %i.hn, %i.qq
  %smax702 = tail call i64 @llvm.smax.i64(i64 %i.qz, i64 %i.qs) ; 2 uses
  %i.ra = shl nsw i64 %smax702, 2
  %scevgep703 = getelementptr i8, ptr %i.hy, i64 %i.ra ; 3 uses
  %i.rb = sub i64 %smax564, %i.fs
  %i.rc = mul i64 %i.gg, %i.rb                    ; 2 uses
  %i.rd = shl nsw i64 %i.qr, 4                    ; 2 uses
  %i.re = shl nsw i64 %i.qi, 2                    ; 2 uses
  %i.rf = getelementptr i8, ptr %0, i64 %i.rc
  %i.rg = getelementptr i8, ptr %i.rf, i64 %i.rd
  %scevgep704 = getelementptr i8, ptr %i.rg, i64 %i.re
  %i.rh = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.qu, i64 %i.rh)
  %i.ri = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.ri, 2
  %i.rj = add i64 %reass.sub, -4
  %i.rk = mul i64 %i.rj, %i.s
  %i.rl = shl nsw i64 %smax702, 4
  %i.rm = add i64 %i.rk, %i.rl                    ; 2 uses
  %i.rn = getelementptr i8, ptr %scevgep705, i64 %i.rm
  %scevgep707 = getelementptr i8, ptr %i.rn, i64 %i.re
  %i.ro = getelementptr i8, ptr %0, i64 %i.rc
  %scevgep708 = getelementptr i8, ptr %i.ro, i64 %i.rd
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.rm
  %i.rp = sub nsw i64 %i.qm, %i.ql                ; 7 uses
  %min.iters.check748 = icmp ult i64 %i.rp, 8
  %min.iters.check749 = icmp ult i64 %i.rp, 32
  %i.rq = and i64 %i.rp, 24
  %n.vec751 = and i64 %i.rp, -32                  ; 4 uses
  %i.rr = add nsw i64 %n.vec751, %i.ql
  %invariant.gep894 = getelementptr [4 x i8], ptr %i.hy, i64 %i.ql
  %cmp.n765 = icmp eq i64 %i.rp, %n.vec751
  %min.epilog.iters.check = icmp eq i64 %i.rq, 0
  %n.vec767 = and i64 %i.rp, -8                   ; 3 uses
  %i.rs = add nsw i64 %n.vec767, %i.ql
  %invariant.gep896 = getelementptr [4 x i8], ptr %i.hy, i64 %i.ql
  %cmp.n772 = icmp eq i64 %i.rp, %n.vec767
  %i.rt = add i64 %i.hm, %i.qq
  %i.ru = tail call i64 @llvm.smax.i64(i64 %i.rt, i64 %i.qs)
  %i.rv = add i64 %indvars.iv545, %i.qq
  %i.rw = sub i64 %i.ru, %i.rv                    ; 3 uses
  %min.iters.check725 = icmp ult i64 %i.rw, 9
  %bound0712 = icmp ult ptr %scevgep701, %scevgep707
  %bound1713 = icmp ult ptr %scevgep704, %scevgep703
  %found.conflict714 = and i1 %bound0712, %bound1713
  %bound0716 = icmp ult ptr %scevgep701, %scevgep710
  %bound1717 = icmp ult ptr %scevgep708, %scevgep703
  %found.conflict718 = and i1 %bound0716, %bound1717
  %i.rx = or i1 %found.conflict718, %stride.check719
  %conflict.rdx = or i1 %found.conflict714, %i.rx
  %bound0720 = icmp ult ptr %scevgep701, %scevgep711
  %bound1721 = icmp ult ptr %i.it, %scevgep703
  %found.conflict722 = and i1 %bound0720, %bound1721
  %conflict.rdx723 = or i1 %conflict.rdx, %found.conflict722
  %i.ry = and i64 %i.rw, 7                        ; 2 uses
  %i.rz = icmp eq i64 %i.ry, 0
  %i.sa = select i1 %i.rz, i64 8, i64 %i.ry
  %n.vec727 = sub i64 %i.rw, %i.sa                ; 2 uses
  %i.sb = add i64 %i.qr, %n.vec727
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qe, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check748, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check749, label %vec.epilog.ph, label %vector.body752

vector.body752:                                   ; preds = %vector.main.loop.iter.check, %vector.body752
  %index753 = phi i64 [ %index.next761, %vector.body752 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.sf, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi754 = phi <8 x float> [ %i.sg, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi755 = phi <8 x float> [ %i.sh, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi756 = phi <8 x float> [ %i.si, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep895 = getelementptr [4 x i8], ptr %invariant.gep894, i64 %index753 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %gep895, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %gep895, i64 64
  %i.se = getelementptr inbounds nuw i8, ptr %gep895, i64 96
  %wide.load757 = load <8 x float>, ptr %gep895, align 4, !tbaa !56
  %wide.load758 = load <8 x float>, ptr %i.sc, align 4, !tbaa !56
  %wide.load759 = load <8 x float>, ptr %i.sd, align 4, !tbaa !56
  %wide.load760 = load <8 x float>, ptr %i.se, align 4, !tbaa !56
  %i.sf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load757, %vec.phi ; 2 uses
  %i.sg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load758, %vec.phi754 ; 2 uses
  %i.sh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load759, %vec.phi755 ; 2 uses
  %i.si = fadd reassoc nsz arcp contract afn <8 x float> %wide.load760, %vec.phi756 ; 2 uses
  %index.next761 = add nuw i64 %index753, 32      ; 2 uses
  %i.sj = icmp eq i64 %index.next761, %n.vec751
  br i1 %i.sj, label %middle.block762, label %vector.body752, !llvm.loop !16

middle.block762:                                  ; preds = %vector.body752
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.sg, %i.sf
  %bin.rdx763 = fadd reassoc nsz arcp contract afn <8 x float> %i.sh, %bin.rdx
  %bin.rdx764 = fadd reassoc nsz arcp contract afn <8 x float> %i.si, %bin.rdx763
  %i.sk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx764) ; 3 uses
  br i1 %cmp.n765, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block762
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec751, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.sk, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.sl = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index768 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next771, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi769 = phi <8 x float> [ %i.sl, %vec.epilog.ph ], [ %i.sm, %vec.epilog.vector.body ]
  %gep897 = getelementptr [4 x i8], ptr %invariant.gep896, i64 %index768
  %wide.load770 = load <8 x float>, ptr %gep897, align 4, !tbaa !56
  %i.sm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load770, %vec.phi769 ; 2 uses
  %index.next771 = add nuw i64 %index768, 8       ; 2 uses
  %i.sn = icmp eq i64 %index.next771, %n.vec767
  br i1 %i.sn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.so = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.sm) ; 2 uses
  br i1 %cmp.n772, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.ql, %iter.check ], [ %i.rr, %vec.epilog.iter.check ], [ %i.rs, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.sk, %vec.epilog.iter.check ], [ %i.so, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block762, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.so, %vec.epilog.middle.block ], [ %i.sk, %middle.block762 ], [ %i.sz, %.lr.ph479 ] ; 2 uses
  %i.sp = mul nsw i64 %indvars.iv565, %i.s
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sp ; 2 uses
  %i.sr = mul i64 %i.je, %indvars.iv565
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sr ; 2 uses
  %i.st = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.su = load float, ptr %i.i, align 8, !tbaa !39
  %i.sv = fcmp reassoc nsz arcp contract afn olt float %i.su, 0.000000e+00
  br i1 %i.sv, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.qh, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.qh, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.sw = fmul reassoc nsz arcp contract afn float %i.st, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.sq, i64 %i.qi
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.sz, %.lr.ph479 ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv532
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !56
  %i.sz = fadd reassoc nsz arcp contract afn float %i.sy, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.ta = icmp slt i64 %indvars.iv.next533, %i.qm
  br i1 %i.ta, label %.lr.ph479, label %._crit_edge, !llvm.loop !18

bb.v:                                             ; preds = %.lr.ph489, %bb.v
  %indvars.iv542 = phi i64 [ %i.qn, %.lr.ph489 ], [ %indvars.iv.next543, %bb.v ] ; 4 uses
  %.1487 = phi float [ %.0404.lcssa, %.lr.ph489 ], [ %i.ti, %bb.v ]
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %indvars.iv542
  %i.tb = load float, ptr %gep644, align 4, !tbaa !56
  %i.tc = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.td = add i32 %i.tc, %i.fw
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.te
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !56
  %i.th = fsub reassoc nsz arcp contract afn float %i.tb, %i.tg
  %i.ti = fadd reassoc nsz arcp contract afn float %i.th, %.1487 ; 2 uses
  %i.tj = fmul reassoc nsz arcp contract afn float %i.sw, %i.ti
  %i.tk = fptosi float %i.tj to i32               ; 2 uses
  %i.tl = add nsw i32 %i.tk, 1065353216
  %i.tm = icmp sgt i32 %i.tk, -1056964609
  %i.tn = bitcast i32 %i.tl to float
  %i.to = shl nuw nsw i64 %indvars.iv542, 2       ; 2 uses
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %i.to ; 3 uses
  %i.tp = getelementptr i8, ptr %gep491, i64 8
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !56
  %invariant.gep484 = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.to ; 2 uses
  %i.tr = select i1 %i.tm, float %i.tn, float 0.000000e+00
  %i.ts = load <2 x float>, ptr %gep491, align 4, !tbaa !56
  %i.tt = insertelement <4 x float> poison, float %i.tr, i64 0
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tv = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.tq, i64 2
  %i.tw = shufflevector <2 x float> %i.ts, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> %i.tv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ty = fmul reassoc nsz arcp contract afn <4 x float> %i.tu, %i.tx
  %i.tz = load <4 x float>, ptr %invariant.gep484, align 4, !tbaa !56
  %i.ua = fadd reassoc nsz arcp contract afn <4 x float> %i.tz, %i.ty
  store <4 x float> %i.ua, ptr %invariant.gep484, align 4, !tbaa !56
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %gep491, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ub, i32 0, i32 3, i32 1)
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.uc = icmp slt i64 %indvars.iv.next543, %i.qo
  br i1 %i.uc, label %bb.v, label %.loopexit467

.lr.ph483:                                        ; preds = %.preheader468, %.lr.ph483
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.lr.ph483 ], [ %i.qn, %.preheader468 ] ; 4 uses
  %.2481 = phi float [ %i.uk, %.lr.ph483 ], [ %.0404.lcssa, %.preheader468 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv537
  %i.ud = load float, ptr %gep, align 4, !tbaa !56
  %i.ue = trunc nuw nsw i64 %indvars.iv537 to i32
  %i.uf = add i32 %i.ue, %i.fw
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ug
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !56
  %i.uj = fsub reassoc nsz arcp contract afn float %i.ud, %i.ui
  %i.uk = fadd reassoc nsz arcp contract afn float %i.uj, %.2481 ; 2 uses
  %i.ul = shl nuw nsw i64 %indvars.iv537, 2       ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.ul ; 4 uses
  %i.un = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.qi ; 4 uses
  %i.uo = load float, ptr %i.um, align 4, !tbaa !56
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uq = load float, ptr %i.up, align 4, !tbaa !56
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !56
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !56 ; 2 uses
  %i.uw = fsub reassoc nsz arcp contract afn float %i.ut, %i.uv ; 2 uses
  %i.ux = fmul reassoc nsz arcp contract afn float %i.uw, %i.uw
  %i.uy = load float, ptr %i.i, align 8, !tbaa !39
  %i.uz = fadd reassoc nsz arcp contract afn float %i.uy, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.ul ; 2 uses
  %i.va = load <2 x float>, ptr %i.un, align 4, !tbaa !56 ; 2 uses
  %i.vb = load float, ptr %i.ur, align 4, !tbaa !56
  %i.vc = extractelement <2 x float> %i.va, i64 0
  %i.vd = fsub reassoc nsz arcp contract afn float %i.uo, %i.vc ; 2 uses
  %i.ve = fmul reassoc nsz arcp contract afn float %i.vd, %i.vd
  %i.vf = fsub reassoc nsz arcp contract afn float %i.uq, %i.vb ; 2 uses
  %i.vg = fmul reassoc nsz arcp contract afn float %i.vf, %i.vf
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vg, %i.ve
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vh, %i.ux
  %i.vj = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.vi
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, %i.uk
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, %i.st
  %i.vm = fdiv reassoc nsz arcp contract afn float %i.vl, %i.uz
  %i.vn = fadd reassoc nsz arcp contract afn float %i.vm, -2.000000e+00
  %i.vo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vn, float 0.000000e+00)
  %i.vp = fmul reassoc nnan nsz arcp contract afn float %i.vo, f0xCB000000
  %i.vq = fptosi float %i.vp to i32               ; 2 uses
  %i.vr = add nsw i32 %i.vq, 1065353216
  %i.vs = icmp sgt i32 %i.vq, -1056964609
  %i.vt = bitcast i32 %i.vr to float
  %i.vu = select i1 %i.vs, float %i.vt, float 0.000000e+00
  %i.vv = insertelement <4 x float> poison, float %i.vu, i64 0
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vx = shufflevector <2 x float> %i.va, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vy = insertelement <4 x float> %i.vx, float 1.000000e+00, i64 3
  %i.vz = insertelement <4 x float> %i.vy, float %i.uv, i64 2
  %i.wa = fmul reassoc nsz arcp contract afn <4 x float> %i.vw, %i.vz
  %i.wb = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !56
  %i.wc = fadd reassoc nsz arcp contract afn <4 x float> %i.wb, %i.wa
  store <4 x float> %i.wc, ptr %invariant.gep, align 4, !tbaa !56
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.wd, i32 0, i32 3, i32 1)
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.we = icmp slt i64 %indvars.iv.next538, %i.qo
  br i1 %i.we, label %.lr.ph483, label %.loopexit467

.loopexit467:                                     ; preds = %.lr.ph483, %bb.v, %.preheader468, %.preheader466
  %i.wf = icmp slt i64 %indvars.iv565, %i.qx
  br i1 %i.wf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit467
  %i.wg = trunc nsw i64 %indvars.iv565 to i32
  %i.wh = add i32 %i.fy, %i.wg
  %i.wi = sext i32 %i.wh to i64
  %i.wj = mul nsw i64 %i.wi, %i.s
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wj
  br i1 %i.mz, label %.lr.ph500, label %.loopexit

.lr.ph500:                                        ; preds = %bb.w, %.lr.ph500
  %indvars.iv559 = phi i64 [ %indvars.iv.next560, %.lr.ph500 ], [ %i.qr, %bb.w ] ; 3 uses
  %.idx632 = shl nuw nsw i64 %indvars.iv559, 4
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx632 ; 4 uses
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wl, i64 %i.qi ; 3 uses
  %i.wn = load float, ptr %i.wl, align 4, !tbaa !56
  %i.wo = load float, ptr %i.wm, align 4, !tbaa !56
  %i.wp = fsub reassoc nsz arcp contract afn float %i.wn, %i.wo ; 2 uses
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wp, %i.wp
  %i.wr = load float, ptr %i.it, align 4, !tbaa !56
  %i.ws = fmul reassoc nsz arcp contract afn float %i.wq, %i.wr
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wv = load float, ptr %i.iz, align 4, !tbaa !56
  %i.ww = load <2 x float>, ptr %i.wt, align 4, !tbaa !56
  %i.wx = load <2 x float>, ptr %i.wu, align 4, !tbaa !56
  %i.wy = fsub reassoc nsz arcp contract afn <2 x float> %i.ww, %i.wx ; 2 uses
  %i.wz = fmul reassoc nsz arcp contract afn <2 x float> %i.wy, %i.wy ; 2 uses
  %i.xa = extractelement <2 x float> %i.wz, i64 0
  %i.xb = fmul reassoc nsz arcp contract afn float %i.xa, %i.wv
  %i.xc = load float, ptr %i.ja, align 4, !tbaa !56
  %i.xd = extractelement <2 x float> %i.wz, i64 1
  %i.xe = fmul reassoc nsz arcp contract afn float %i.xd, %i.xc
  %i.xf = fadd reassoc nsz arcp contract afn float %i.xb, %i.ws
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, %i.xe
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.xh, i32 0, i32 3, i32 1)
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv559 ; 2 uses
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !56
  %i.xk = fadd reassoc nsz arcp contract afn float %i.xg, %i.xj
  store float %i.xk, ptr %i.xi, align 4, !tbaa !56
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.xl, i32 0, i32 3, i32 1)
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.xm = icmp slt i64 %indvars.iv.next560, %i.qs
  br i1 %i.xm, label %.lr.ph500, label %.loopexit

bb.x:                                             ; preds = %.loopexit467
  %i.xn = icmp slt i64 %indvars.iv565, %i.qw
  br i1 %i.xn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.xo = sub nsw i64 %indvars.iv565, %i.fs
  %i.xp = mul nsw i64 %i.xo, %i.s
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xp
  %i.xr = trunc nsw i64 %indvars.iv565 to i32
  %i.xs = add i32 %i.fy, %i.xr
  %i.xt = sext i32 %i.xs to i64
  %i.xu = mul nsw i64 %i.xt, %i.s
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xu
  br i1 %i.mz, label %.lr.ph497, label %.loopexit

.lr.ph497:                                        ; preds = %bb.y, %.lr.ph497
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %.lr.ph497 ], [ %i.qr, %bb.y ] ; 3 uses
  %i.xw = shl nuw nsw i64 %indvars.iv554, 2       ; 2 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.xw ; 3 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.xw ; 4 uses
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %i.qi ; 3 uses
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.xx, i64 %i.qi ; 2 uses
  %i.yb = load float, ptr %i.xy, align 4, !tbaa !56
  %i.yc = load float, ptr %i.xz, align 4, !tbaa !56
  %i.yd = fsub reassoc nsz arcp contract afn float %i.yb, %i.yc ; 2 uses
  %i.ye = load float, ptr %i.xx, align 4, !tbaa !56
  %i.yf = load float, ptr %i.ya, align 4, !tbaa !56
  %i.yg = fsub reassoc nsz arcp contract afn float %i.ye, %i.yf ; 2 uses
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yd, %i.yd
  %i.yi = fmul reassoc nsz arcp contract afn float %i.yg, %i.yg
  %i.yj = fsub reassoc nsz arcp contract afn float %i.yh, %i.yi
  %i.yk = load float, ptr %i.it, align 4, !tbaa !56
  %i.yl = fmul reassoc nsz arcp contract afn float %i.yj, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ya, i64 4
  %i.yq = load float, ptr %i.iz, align 4, !tbaa !56
  %i.yr = load <2 x float>, ptr %i.ym, align 4, !tbaa !56
  %i.ys = load <2 x float>, ptr %i.yn, align 4, !tbaa !56
  %i.yt = fsub reassoc nsz arcp contract afn <2 x float> %i.yr, %i.ys ; 2 uses
  %i.yu = load <2 x float>, ptr %i.yo, align 4, !tbaa !56
  %i.yv = load <2 x float>, ptr %i.yp, align 4, !tbaa !56
  %i.yw = fsub reassoc nsz arcp contract afn <2 x float> %i.yu, %i.yv ; 2 uses
  %i.yx = fmul reassoc nsz arcp contract afn <2 x float> %i.yt, %i.yt
  %i.yy = fmul reassoc nsz arcp contract afn <2 x float> %i.yw, %i.yw
  %i.yz = fsub reassoc nsz arcp contract afn <2 x float> %i.yx, %i.yy ; 2 uses
  %i.za = extractelement <2 x float> %i.yz, i64 0
  %i.zb = fmul reassoc nsz arcp contract afn float %i.za, %i.yq
  %i.zc = load float, ptr %i.ja, align 4, !tbaa !56
  %i.zd = extractelement <2 x float> %i.yz, i64 1
  %i.ze = fmul reassoc nsz arcp contract afn float %i.zd, %i.zc
  %i.zf = fadd reassoc nsz arcp contract afn float %i.zb, %i.yl
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.zg, i32 0, i32 3, i32 1)
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv554 ; 2 uses
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !56
  %i.zj = fadd reassoc nsz arcp contract afn float %i.zf, %i.zi
  %i.zk = fadd reassoc nsz arcp contract afn float %i.zj, %i.ze
  store float %i.zk, ptr %i.zh, align 4, !tbaa !56
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.zl, i32 0, i32 3, i32 1)
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %i.zm = icmp slt i64 %indvars.iv.next555, %i.qs
  br i1 %i.zm, label %.lr.ph497, label %.loopexit

bb.z:                                             ; preds = %bb.x
  %.not = icmp sge i64 %indvars.iv565, %i.qv
  %i.zn = icmp slt i64 %indvars.iv565, %invariant.op
  %or.cond = select i1 %.not, i1 %i.zn, i1 false
  br i1 %or.cond, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.zo = sub nsw i64 %indvars.iv565, %i.fs
  %i.zp = mul nsw i64 %i.zo, %i.s
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zp ; 2 uses
  br i1 %i.mz, label %.lr.ph494.preheader, label %.loopexit

.lr.ph494.preheader:                              ; preds = %bb.aa
  %brmerge = select i1 %min.iters.check725, i1 true, i1 %conflict.rdx723
  br i1 %brmerge, label %.lr.ph494.preheader866, label %vector.ph726

vector.ph726:                                     ; preds = %.lr.ph494.preheader
  %i.zr = load float, ptr %i.it, align 4, !tbaa !56, !alias.scope !62
  %broadcast.splatinsert738 = insertelement <8 x float> poison, float %i.zr, i64 0
  %broadcast.splat739 = shufflevector <8 x float> %broadcast.splatinsert738, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zs = load float, ptr %i.iz, align 4, !tbaa !56, !alias.scope !62
  %broadcast.splatinsert740 = insertelement <8 x float> poison, float %i.zs, i64 0
  %broadcast.splat741 = shufflevector <8 x float> %broadcast.splatinsert740, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zt = load float, ptr %i.ja, align 4, !tbaa !56, !alias.scope !62
  %broadcast.splatinsert742 = insertelement <8 x float> poison, float %i.zt, i64 0
  %broadcast.splat743 = shufflevector <8 x float> %broadcast.splatinsert742, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph726
  %index729 = phi i64 [ 0, %vector.ph726 ], [ %index.next744, %vector.body728 ] ; 2 uses
  %i.zu = add nuw i64 %i.qr, %index729            ; 2 uses
  %i.zv = shl nuw nsw i64 %i.zu, 4
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %i.qi
  %wide.vec730 = load <32 x float>, ptr %i.zw, align 4, !tbaa !56, !alias.scope !63 ; 3 uses
  %strided.vec731 = shufflevector <32 x float> %wide.vec730, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec732 = shufflevector <32 x float> %wide.vec730, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec733 = shufflevector <32 x float> %wide.vec730, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.vec734 = load <32 x float>, ptr %i.zx, align 4, !tbaa !56, !alias.scope !64 ; 3 uses
  %strided.vec735 = shufflevector <32 x float> %wide.vec734, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec736 = shufflevector <32 x float> %wide.vec734, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec737 = shufflevector <32 x float> %wide.vec734, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.zy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec731, %strided.vec735 ; 2 uses
  %i.zz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec732, %strided.vec736 ; 2 uses
  %i.aaa = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec733, %strided.vec737 ; 2 uses
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.zu ; 2 uses
  %wide.load = load <8 x float>, ptr %i.aab, align 4, !tbaa !56, !alias.scope !65, !noalias !66
  %i.aac = fmul reassoc nsz arcp contract afn <8 x float> %i.zy, %i.zy
  %i.aad = fmul reassoc nsz arcp contract afn <8 x float> %i.aac, %broadcast.splat739
  %i.aae = fmul reassoc nsz arcp contract afn <8 x float> %i.zz, %i.zz
  %i.aaf = fmul reassoc nsz arcp contract afn <8 x float> %i.aae, %broadcast.splat741
  %i.aag = fmul reassoc nsz arcp contract afn <8 x float> %i.aaa, %i.aaa
  %i.aah = fmul reassoc nsz arcp contract afn <8 x float> %i.aag, %broadcast.splat743
  %i.aai = fadd reassoc nsz arcp contract afn <8 x float> %i.aaf, %i.aad
  %i.aaj = fadd reassoc nsz arcp contract afn <8 x float> %i.aai, %i.aah
  %i.aak = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.aaj
  store <8 x float> %i.aak, ptr %i.aab, align 4, !tbaa !56, !alias.scope !65, !noalias !66
  %index.next744 = add nuw i64 %index729, 8       ; 2 uses
  %i.aal = icmp eq i64 %index.next744, %n.vec727
  br i1 %i.aal, label %.lr.ph494.preheader866, label %vector.body728, !llvm.loop !24

.lr.ph494.preheader866:                           ; preds = %vector.body728, %.lr.ph494.preheader
  %indvars.iv549.ph = phi i64 [ %i.qr, %.lr.ph494.preheader ], [ %i.sb, %vector.body728 ]
  br label %.lr.ph494

.lr.ph494:                                        ; preds = %.lr.ph494.preheader866, %.lr.ph494
  %indvars.iv549 = phi i64 [ %indvars.iv.next550, %.lr.ph494 ], [ %indvars.iv549.ph, %.lr.ph494.preheader866 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv549, 4
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zq, i64 %.idx ; 3 uses
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.aam, i64 %i.qi ; 2 uses
  %i.aao = load float, ptr %i.aam, align 4, !tbaa !56
  %i.aap = load float, ptr %i.aan, align 4, !tbaa !56
  %i.aaq = fsub reassoc nsz arcp contract afn float %i.aao, %i.aap ; 2 uses
  %i.aar = load float, ptr %i.it, align 4, !tbaa !56
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aam, i64 4
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aan, i64 4
end_hunk_0
