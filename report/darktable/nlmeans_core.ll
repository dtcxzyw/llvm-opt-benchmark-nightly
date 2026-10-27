Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
  %i.fd = select i1 %i.dx, i32 52, i32 %i.fc
  %i.fe = select i1 %i.dw, i32 69, i32 %i.fd
  %i.ff = select i1 %i.en, i32 51, i32 %i.fe
  br label %compute_slice_height.exit

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
  %broadcast.splatinsert785 = insertelement <8 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat786 = shufflevector <8 x i64> %broadcast.splatinsert785, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert834 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat835 = shufflevector <4 x i64> %broadcast.splatinsert834, <4 x i64> poison, <4 x i32> zeroinitializer
  %stride.check715 = icmp slt i32 %i.r, 0
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
  %i.he = phi i32 [ %i.gn, %.preheader475 ], [ %i.ik, %.loopexit471 ] ; 2 uses
  %i.hf = phi i32 [ %i.go, %.preheader475 ], [ %i.il, %.loopexit471 ]
  %i.hg = phi i32 [ %i.gp, %.preheader475 ], [ %i.il, %.loopexit471 ]
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, %i.ga ; 2 uses
  %indvars = trunc i64 %indvars.iv.next563 to i32
  %i.hh = icmp sgt i32 %i.he, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next657 = add i32 %indvar656, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hh, label %.preheader475, label %._crit_edge525, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph521, %.loopexit471
  %indvar = phi i64 [ 0, %.lr.ph521 ], [ %indvar.next, %.loopexit471 ] ; 5 uses
  %i.hi = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.ik, %.loopexit471 ]
  %i.hj = phi i32 [ %i.go, %.lr.ph521 ], [ %i.il, %.loopexit471 ]
  %i.hk = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.in, %.loopexit471 ] ; 3 uses
  %indvars.iv545 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next546, %.loopexit471 ] ; 20 uses
  %i.hl = phi i32 [ %i.gp, %.lr.ph521 ], [ %i.il, %.loopexit471 ] ; 4 uses
  %i.hm = or disjoint i64 %indvars.iv545, 1
  %i.hn = mul i64 %i.gb, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.hn
  %i.ho = getelementptr i8, ptr %1, i64 %i.hn
  %scevgep661 = getelementptr i8, ptr %i.ho, i64 16
  %i.hp = or disjoint i64 %indvars.iv545, 1
  %i.hq = mul i64 %.0.i, %indvar
  %i.hr = xor i64 %i.hq, -1
  %scevgep666 = getelementptr i8, ptr %i.hb, i64 %i.hn
  %scevgep667 = getelementptr i8, ptr %i.hd, i64 %i.hn
  %indvars585 = trunc i64 %indvars.iv545 to i32   ; 13 uses
  %i.hs = sub nsw i64 0, %indvars.iv545
  %i.ht = getelementptr [4 x i8], ptr %i.fu, i64 %i.hs ; 17 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.hk) ; 6 uses
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, %.0.i ; 3 uses
  %i.hu = trunc i64 %indvars.iv.next546 to i32
  %i.hv = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.hl) ; 8 uses
  %i.hw = icmp sgt i32 %., %indvars586            ; 3 uses
  br i1 %i.hw, label %.lr.ph, label %.preheader474

.lr.ph:                                           ; preds = %bb.r
  %i.hx = sext i32 %i.hv to i64
  %i.hy = sub nsw i64 %i.hx, %indvars.iv545
  %i.hz = shl nsw i64 %i.hy, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hk, i32 %indvars.iv)
  %i.ia = add i32 %., %i.gr
  %i.ib = add i32 %i.gt, %.
  %xtraiter = and i32 %i.ia, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407476.prol = phi i32 [ %i.ii, %.prol.preheader ], [ %indvars586, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ic = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.id = mul nsw i32 %i.ic, %.0407476.prol
  %i.ie = add nsw i32 %i.id, %indvars585
  %i.if = shl nsw i32 %i.ie, 2
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ig
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ih, i8 0, i64 %i.hz, i1 false)
  %i.ii = add nsw i32 %.0407476.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407476.unr = phi i32 [ %indvars586, %.lr.ph ], [ %i.ii, %.prol.preheader ]
  %i.ij = icmp ult i32 %i.ib, 3
  br i1 %i.ij, label %.preheader474.loopexit, label %.lr.ph.new

.preheader474.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !52 ; 2 uses
  %.pre599 = load i32, ptr %i.fg, align 4, !tbaa !42 ; 2 uses
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.loopexit, %bb.r
  %i.ik = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hi, %bb.r ] ; 2 uses
  %i.il = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hj, %bb.r ] ; 5 uses
  %i.im = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hl, %bb.r ] ; 7 uses
  %i.in = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hk, %bb.r ] ; 4 uses
  %i.io = load ptr, ptr %i.fv, align 8, !tbaa !55 ; 9 uses
  %i.ip = add i32 %indvars585, %i.fw              ; 2 uses
  %i.iq = add i32 %i.hv, %i.cj                    ; 3 uses
  %i.ir = sext i32 %i.ip to i64
  %i.is = shl nsw i64 %i.ir, 2
  %scevgep.i = getelementptr i8, ptr %i.ht, i64 %i.is
  %i.it = sub i32 %i.cj, %indvars585
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 5 uses
  %i.iw = xor i32 %indvars585, -1
  %i.ix = add i32 %i.hv, %i.iw
  %i.iy = sext i32 %i.im to i64
  %i.iz = shl nsw i64 %i.iy, 2
  %smin547 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %indvars585)
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.ht, i64 %i.fs
  %invariant.gep643 = getelementptr [4 x i8], ptr %i.ht, i64 %i.fs
  %scevgep711 = getelementptr i8, ptr %i.io, i64 12
  %i.ja = or disjoint i64 %indvars.iv545, 1
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407476 = phi i32 [ %i.kc, %.lr.ph.new ], [ %.0407476.unr, %.prol.loopexit ] ; 5 uses
  %i.jb = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jc = mul nsw i32 %i.jb, %.0407476
  %i.jd = add nsw i32 %i.jc, %indvars585
  %i.je = shl nsw i32 %i.jd, 2
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jf
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jg, i8 0, i64 %i.hz, i1 false)
  %i.jh = add nsw i32 %.0407476, 1
  %i.ji = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jj = mul nsw i32 %i.ji, %i.jh
  %i.jk = add nsw i32 %i.jj, %indvars585
  %i.jl = shl nsw i32 %i.jk, 2
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jm
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jn, i8 0, i64 %i.hz, i1 false)
  %i.jo = add nsw i32 %.0407476, 2
  %i.jp = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jq = mul nsw i32 %i.jp, %i.jo
  %i.jr = add nsw i32 %i.jq, %indvars585
  %i.js = shl nsw i32 %i.jr, 2
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jt
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ju, i8 0, i64 %i.hz, i1 false)
  %i.jv = add nsw i32 %.0407476, 3
  %i.jw = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jx = mul nsw i32 %i.jw, %i.jv
  %i.jy = add nsw i32 %i.jx, %indvars585
  %i.jz = shl nsw i32 %i.jy, 2
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ka
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kb, i8 0, i64 %i.hz, i1 false)
  %i.kc = add nsw i32 %.0407476, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kc, %smin
  br i1 %exitcond.not.3, label %.preheader474.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge504
  br i1 %spec.select448, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %bb.s
  br i1 %i.hw, label %.lr.ph510, label %.loopexit471

.lr.ph510:                                        ; preds = %.preheader472
  %factor.op.mul = shl i32 %i.im, 2
  %i.kd = sext i32 %i.hl to i64
  %i.ke = icmp slt i64 %indvars.iv545, %i.kd
  br i1 %i.ke, label %.preheader463.lr.ph.preheader, label %.loopexit471

.preheader463.lr.ph.preheader:                    ; preds = %.lr.ph510
  %i.kf = sext i32 %i.hv to i64                   ; 3 uses
  %i.kg = sext i32 %. to i64                      ; 2 uses
  %i.kh = mul i32 %i.gu, %i.im
  %i.ki = shl i32 %i.im, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.kf, i64 %i.hp)
  %i.kj = add i64 %smax, %i.hr
  %i.kk = shl nsw i64 %i.kj, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.kk
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kg, i64 %i.gy)
  %i.kl = add i64 %smax668, %i.gx
  %i.km = mul i64 %i.gf, %i.kl
  %i.kn = getelementptr i8, ptr %scevgep667, i64 %i.km
  %scevgep669 = getelementptr i8, ptr %i.kn, i64 %i.kk
  %i.ko = or disjoint i64 %indvars.iv545, 1
  %i.kp = tail call i64 @llvm.smax.i64(i64 %i.kf, i64 %i.ko) ; 2 uses
  %i.kq = mul i64 %.0.i, %indvar
  %i.kr = sub i64 %i.kp, %i.kq                    ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.kr, 5
  %i.ks = and i64 %i.kp, 3                        ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  %i.ku = select i1 %i.kt, i64 4, i64 %i.ks
  %n.vec673 = sub i64 %i.kr, %i.ku                ; 2 uses
  %i.kv = add i64 %indvars.iv545, %n.vec673
  br label %.preheader463.lr.ph

.preheader470:                                    ; preds = %bb.s
  br i1 %i.hw, label %.lr.ph517, label %.loopexit471

.lr.ph517:                                        ; preds = %.preheader470
  %factor.op.mul518 = shl i32 %i.im, 2
  %i.kw = sext i32 %i.hl to i64
  %i.kx = icmp slt i64 %indvars.iv545, %i.kw
  br i1 %i.kx, label %.preheader.lr.ph.preheader, label %.loopexit471

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph517
  %i.ky = sext i32 %i.hv to i64                   ; 2 uses
  %i.kz = sext i32 %. to i64
  %i.la = or disjoint i64 %indvars.iv545, 1
  %i.lb = tail call i64 @llvm.smax.i64(i64 %i.ky, i64 %i.la) ; 2 uses
  %i.lc = mul i64 %.0.i, %indvar
  %i.ld = sub i64 %i.lb, %i.lc                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ld, 4
  %i.le = and i64 %i.lb, 3                        ; 2 uses
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
  %i.lo = sub i32 %i.in, %spec.select
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lo) ; 3 uses
  %i.lp = tail call i16 @llvm.smin.i16(i16 %i.lh, i16 0)
  %i.lq = sext i16 %i.lp to i32
  %i.lr = sub nsw i32 %i.cj, %i.lq
  %i.ls = tail call i32 @llvm.smax.i32(i32 %i.lm, i32 %i.lr) ; 2 uses
  %i.lt = add nsw i32 %i.cj, %spec.select
  %i.lu = xor i32 %i.lt, -1
  %i.lv = add i32 %i.in, %i.lu
  %spec.select452 = tail call i32 @llvm.smin.i32(i32 %spec.select450, i32 %i.lv) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !50 ; 2 uses
  %i.ly = sext i16 %i.lx to i32                   ; 3 uses
  %i.lz = sub nsw i32 0, %i.ly
  %i.ma = tail call i32 @llvm.smax.i32(i32 %indvars585, i32 %i.lz) ; 5 uses
  %i.mb = sub i32 %i.im, %i.ly
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.hv, i32 %i.mb) ; 3 uses
  %i.mc = add nsw i32 %indvars585, %i.ly          ; 2 uses
  %i.md = tail call i32 @llvm.smin.i32(i32 %indvars585, i32 %i.mc)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.md) ; 2 uses
  %i.me = sub nsw i32 %indvars585, %..i           ; 5 uses
  %i.mf = tail call i16 @llvm.smax.i16(i16 %i.lx, i16 0)
  %i.mg = zext nneg i16 %i.mf to i32
  %i.mh = add i32 %i.hv, %i.mg
  %i.mi = sub i32 %i.im, %i.mh
  %i.mj = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mi) ; 2 uses
  %i.mk = add i32 %i.mj, %i.hv                    ; 4 uses
  %i.ml = add i32 %i.lm, %i.lj                    ; 2 uses
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ml)
  %i.mn = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mm) ; 2 uses
  %i.mo = sub i32 %i.lm, %i.mn                    ; 2 uses
  %.v138.i = select i1 %i.ln, i32 %i.lm, i32 %i.ml
  %i.mp = xor i32 %.v138.i, -1
  %i.mq = add i32 %i.in, %i.mp
  %i.mr = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mq) ; 2 uses
  %i.ms = add i32 %i.mr, %i.lm                    ; 2 uses
  %i.mt = tail call i32 @llvm.smin.i32(i32 %i.me, i32 %i.iq) ; 2 uses
  %i.mu = icmp slt i32 %i.ip, %i.mt
  br i1 %i.mu, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.mv = add i32 %i.it, %i.mt
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
  %scevgep158.i = getelementptr i8, ptr %i.ht, i64 %i.nb
  %i.nc = add i32 %i.ix, %..i
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
  %min.iters.check774 = icmp ult i32 %i.no, 3
  %min.iters.check776 = icmp ult i32 %i.no, 15
  %i.nr = and i64 %i.nq, 12
  %n.vec778 = and i64 %i.nq, 8589934576           ; 4 uses
  %i.ns = add nsw i64 %n.vec778, %i.nk            ; 2 uses
  %broadcast.splatinsert787 = insertelement <8 x i64> poison, i64 %i.nk, i64 0
  %broadcast.splat788 = shufflevector <8 x i64> %broadcast.splatinsert787, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat788, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n818 = icmp eq i64 %i.nq, %n.vec778
  %min.epilog.iters.check822 = icmp eq i64 %i.nr, 0
  %n.vec827 = and i64 %i.nq, 8589934588           ; 3 uses
  %i.nt = add nsw i64 %n.vec827, %i.nk
  %cmp.n858 = icmp eq i64 %i.nq, %n.vec827
  br label %iter.check819

iter.check819:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nm, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %5 = load <2 x float>, ptr %i.io, align 4, !tbaa !56 ; 5 uses
  %i.nu = load float, ptr %i.iv, align 4, !tbaa !56 ; 3 uses
  br i1 %min.iters.check774, label %vec.epilog.scalar.ph821.preheader, label %vector.main.loop.iter.check775

vector.main.loop.iter.check775:                   ; preds = %iter.check819
  br i1 %min.iters.check776, label %vec.epilog.ph823, label %vector.ph777

vector.ph777:                                     ; preds = %vector.main.loop.iter.check775
  %broadcast.splat780 = shufflevector <2 x float> %5, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat782 = shufflevector <2 x float> %5, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert783 = insertelement <8 x float> poison, float %i.nu, i64 0
  %broadcast.splat784 = shufflevector <8 x float> %broadcast.splatinsert783, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body789

vector.body789:                                   ; preds = %vector.ph777, %vector.body789
  %index790 = phi i64 [ 0, %vector.ph777 ], [ %index.next815, %vector.body789 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph777 ], [ %vec.ind.next, %vector.body789 ] ; 3 uses
  %vec.phi791 = phi <8 x float> [ zeroinitializer, %vector.ph777 ], [ %i.ot, %vector.body789 ]
  %vec.phi792 = phi <8 x float> [ zeroinitializer, %vector.ph777 ], [ %i.ou, %vector.body789 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.nv = mul nsw <8 x i64> %vec.ind, %broadcast.splat786
  %i.nw = mul nsw <8 x i64> %step.add, %broadcast.splat786
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nv ; 4 uses
  %wide.gep793 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nw ; 4 uses
  %wide.gep794 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.nj ; 3 uses
  %wide.gep795 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep793, i64 %i.nj ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather796 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep793, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather797 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep794, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather798 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep795, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.nx = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather797 ; 2 uses
  %i.ny = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather796, %wide.masked.gather798 ; 2 uses
  %i.nz = fmul reassoc nsz arcp contract afn <8 x float> %i.nx, %i.nx
  %i.oa = fmul reassoc nsz arcp contract afn <8 x float> %i.ny, %i.ny
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %broadcast.splat780
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %i.oa, %broadcast.splat780
  %wide.gep799 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep800 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep793, i64 4
  %wide.masked.gather801 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep799, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather802 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep800, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep803 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep794, i64 4
  %wide.gep804 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep795, i64 4
  %wide.masked.gather805 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep803, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather806 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep804, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.od = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather801, %wide.masked.gather805 ; 2 uses
  %i.oe = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather802, %wide.masked.gather806 ; 2 uses
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %i.od
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.oe, %i.oe
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %broadcast.splat782
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %broadcast.splat782
  %wide.gep807 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep808 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep793, i64 8
  %wide.masked.gather809 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep807, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather810 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep808, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep811 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep794, i64 8
  %wide.gep812 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep795, i64 8
  %wide.masked.gather813 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep811, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather814 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep812, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather809, %wide.masked.gather813 ; 2 uses
  %i.ok = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather810, %wide.masked.gather814 ; 2 uses
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %i.oj
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %i.ok
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %broadcast.splat784
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat784
  %i.op = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi791, %i.ob
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi792, %i.oc
  %i.or = fadd reassoc nsz arcp contract afn <8 x float> %i.oh, %i.op
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.oi, %i.oq
  %i.ot = fadd reassoc nsz arcp contract afn <8 x float> %i.or, %i.on ; 2 uses
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %i.os, %i.oo ; 2 uses
  %index.next815 = add nuw i64 %index790, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ov = icmp eq i64 %index.next815, %n.vec778
  br i1 %i.ov, label %middle.block816, label %vector.body789, !llvm.loop !13

middle.block816:                                  ; preds = %vector.body789
  %bin.rdx817 = fadd reassoc nsz arcp contract afn <8 x float> %i.ou, %i.ot
  %i.ow = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx817) ; 3 uses
  br i1 %cmp.n818, label %._crit_edge.i447, label %vec.epilog.iter.check820

vec.epilog.iter.check820:                         ; preds = %middle.block816
  %slprdx.init861 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ow, i64 0
  br i1 %min.epilog.iters.check822, label %vec.epilog.scalar.ph821.preheader, label %vec.epilog.ph823, !prof !59

vec.epilog.ph823:                                 ; preds = %vector.main.loop.iter.check775, %vec.epilog.iter.check820
  %vec.epilog.resume.val824 = phi i64 [ %n.vec778, %vec.epilog.iter.check820 ], [ 0, %vector.main.loop.iter.check775 ]
  %bc.resume.val825 = phi i64 [ %i.ns, %vec.epilog.iter.check820 ], [ %i.nk, %vector.main.loop.iter.check775 ]
  %bc.merge.rdx826 = phi float [ %i.ow, %vec.epilog.iter.check820 ], [ 0.000000e+00, %vector.main.loop.iter.check775 ]
  %broadcast.splatinsert828 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx826, i64 0
  %broadcast.splat829 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat831 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert832 = insertelement <4 x float> poison, float %i.nu, i64 0
  %broadcast.splat833 = shufflevector <4 x float> %broadcast.splatinsert832, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert836 = insertelement <4 x i64> poison, i64 %bc.resume.val825, i64 0
  %broadcast.splat837 = shufflevector <4 x i64> %broadcast.splatinsert836, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction838 = add nsw <4 x i64> %broadcast.splat837, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body839

vec.epilog.vector.body839:                        ; preds = %vec.epilog.vector.body839, %vec.epilog.ph823
  %index840 = phi i64 [ %vec.epilog.resume.val824, %vec.epilog.ph823 ], [ %index.next855, %vec.epilog.vector.body839 ]
  %vec.ind841 = phi <4 x i64> [ %induction838, %vec.epilog.ph823 ], [ %vec.ind.next856, %vec.epilog.vector.body839 ] ; 2 uses
  %vec.phi842 = phi <4 x float> [ %broadcast.splatinsert828, %vec.epilog.ph823 ], [ %i.pj, %vec.epilog.vector.body839 ]
  %i.ox = mul nsw <4 x i64> %vec.ind841, %broadcast.splat835
  %wide.gep843 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.ox ; 4 uses
  %wide.gep844 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep843, i64 %i.nj ; 3 uses
  %wide.masked.gather845 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep843, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather846 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep844, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.oy = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather845, %wide.masked.gather846 ; 2 uses
  %i.oz = fmul reassoc nsz arcp contract afn <4 x float> %i.oy, %i.oy
  %i.pa = fmul reassoc nsz arcp contract afn <4 x float> %i.oz, %broadcast.splat829
  %wide.gep847 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep843, i64 4
  %wide.masked.gather848 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep847, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep849 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep844, i64 4
  %wide.masked.gather850 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pb = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather848, %wide.masked.gather850 ; 2 uses
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %i.pb
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %broadcast.splat831
  %wide.gep851 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep843, i64 8
  %wide.masked.gather852 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep851, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep853 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep844, i64 8
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pe = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather852, %wide.masked.gather854 ; 2 uses
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %i.pe
  %i.pg = fmul reassoc nsz arcp contract afn <4 x float> %i.pf, %broadcast.splat833
  %i.ph = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi842, %i.pa
  %i.pi = fadd reassoc nsz arcp contract afn <4 x float> %i.pd, %i.ph
  %i.pj = fadd reassoc nsz arcp contract afn <4 x float> %i.pi, %i.pg ; 2 uses
  %index.next855 = add nuw i64 %index840, 4       ; 2 uses
  %vec.ind.next856 = add nsw <4 x i64> %vec.ind841, splat (i64 4)
  %i.pk = icmp eq i64 %index.next855, %n.vec827
  br i1 %i.pk, label %vec.epilog.middle.block857, label %vec.epilog.vector.body839, !llvm.loop !14

vec.epilog.middle.block857:                       ; preds = %vec.epilog.vector.body839
  %i.pl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pj) ; 2 uses
  %slprdx.init = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pl, i64 0
  br i1 %cmp.n858, label %._crit_edge.i447, label %vec.epilog.scalar.ph821.preheader

vec.epilog.scalar.ph821.preheader:                ; preds = %iter.check819, %vec.epilog.iter.check820, %vec.epilog.middle.block857
  %indvars.iv.i.ph = phi i64 [ %i.nk, %iter.check819 ], [ %i.ns, %vec.epilog.iter.check820 ], [ %i.nt, %vec.epilog.middle.block857 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %iter.check819 ], [ %slprdx.init861, %vec.epilog.iter.check820 ], [ %slprdx.init, %vec.epilog.middle.block857 ]
  %6 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.nu, i64 2
  %7 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %7, <4 x float> %6, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %vec.epilog.scalar.ph821

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pm = tail call i32 @llvm.smax.i32(i32 %i.me, i32 %i.mk) ; 3 uses
  %i.pn = icmp slt i32 %i.pm, %i.iq
  br i1 %i.pn, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pm to i64
  %i.po = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.ht, i64 %i.po
  %i.pp = xor i32 %i.pm, -1
  %i.pq = add i32 %i.iq, %i.pp
  %i.pr = zext i32 %i.pq to i64
  %i.ps = shl nuw nsw i64 %i.pr, 2
  %i.pt = add nuw nsw i64 %i.ps, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.pt, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph821, %vec.epilog.middle.block857, %middle.block816
  %slprdx.exit = phi <4 x float> [ poison, %vec.epilog.middle.block857 ], [ poison, %middle.block816 ], [ %slprdx.acc862, %vec.epilog.scalar.ph821 ]
  %slprdx.fromloop = phi i1 [ false, %vec.epilog.middle.block857 ], [ false, %middle.block816 ], [ true, %vec.epilog.scalar.ph821 ]
  %.lcssa = phi float [ %i.pl, %vec.epilog.middle.block857 ], [ %i.ow, %middle.block816 ], [ poison, %vec.epilog.scalar.ph821 ]
  %9 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %slprdx.fromloop, float %9, float %.lcssa
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %indvars.iv156.i
  store float %slprdx.sel, ptr %i.pu, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.pv = icmp slt i64 %indvars.iv.next157.i, %i.nn
  br i1 %i.pv, label %iter.check819, label %._crit_edge148.i

vec.epilog.scalar.ph821:                          ; preds = %vec.epilog.scalar.ph821.preheader, %vec.epilog.scalar.ph821
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph821 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph821.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x float> [ %slprdx.acc862, %vec.epilog.scalar.ph821 ], [ %slprdx.acc.ph, %vec.epilog.scalar.ph821.preheader ]
  %i.pw = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.pw ; 3 uses
  %i.px = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.nj ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.py = load float, ptr %10, align 4, !tbaa !56
  %11 = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %12 = load float, ptr %11, align 4, !tbaa !56
  %13 = load <2 x float>, ptr %gep.i, align 4, !tbaa !56
  %14 = load <2 x float>, ptr %i.px, align 4, !tbaa !56
  %15 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.py, i64 2
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %16, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %18 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %12, i64 2
  %19 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %19, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %21 = fsub reassoc nsz arcp contract afn <4 x float> %17, %20 ; 2 uses
  %22 = insertelement <4 x float> %21, float 1.000000e+00, i64 3
  %23 = fmul reassoc nsz arcp contract afn <4 x float> %21, %22
  %24 = fmul reassoc nsz arcp contract afn <4 x float> %23, %8
  %slprdx.acc862 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %24 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.nl, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph821, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.pz = icmp slt i32 %i.lm, %spec.select450
  br i1 %i.pz, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qa = sub nsw i32 %i.ma, %i.cj
  %i.qb = add i32 %i.ma, %i.cj
  %i.qc = tail call i32 @llvm.smin.i32(i32 %i.qb, i32 %.437) ; 2 uses
  %i.qd = icmp slt i32 %i.qa, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !51
  %i.qg = icmp slt i32 %i.ma, %.437               ; 2 uses
  %i.qh = sext i32 %i.qf to i64                   ; 8 uses
  %i.qi = tail call i32 @llvm.smin.i32(i32 %i.ls, i32 %spec.select452)
  %i.qj = sub i32 %i.ma, %i.cj
  %i.qk = sext i32 %i.qj to i64                   ; 6 uses
  %i.ql = sext i32 %i.qc to i64                   ; 2 uses
  %i.qm = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.qn = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.mc)
  %i.qo = sub i32 0, %smin548
  %i.qp = sext i32 %i.qo to i64                   ; 4 uses
  %i.qq = add i64 %indvars.iv545, %i.qp           ; 7 uses
  %i.qr = sext i32 %i.mk to i64                   ; 5 uses
  %i.qs = sext i32 %i.ll to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.qs) ; 3 uses
  %i.qt = sext i32 %spec.select450 to i64         ; 3 uses
  %i.qu = sext i32 %i.ls to i64
  %i.qv = sext i32 %spec.select452 to i64
  %i.qw = sext i32 %i.qi to i64
  %invariant.op = add nsw i64 %i.qt, -1
  %i.qx = shl nsw i64 %i.qq, 2
  %scevgep701 = getelementptr i8, ptr %i.ht, i64 %i.qx ; 3 uses
  %i.qy = add i64 %i.hm, %i.qp
  %smax702 = tail call i64 @llvm.smax.i64(i64 %i.qy, i64 %i.qr) ; 2 uses
  %i.qz = shl nsw i64 %smax702, 2
  %scevgep703 = getelementptr i8, ptr %i.ht, i64 %i.qz ; 3 uses
  %i.ra = sub i64 %smax564, %i.fs
  %i.rb = mul i64 %i.gg, %i.ra                    ; 2 uses
  %i.rc = shl nsw i64 %i.qq, 4                    ; 2 uses
  %i.rd = shl nsw i64 %i.qh, 2                    ; 2 uses
  %i.re = getelementptr i8, ptr %0, i64 %i.rb
  %i.rf = getelementptr i8, ptr %i.re, i64 %i.rc
  %scevgep704 = getelementptr i8, ptr %i.rf, i64 %i.rd
  %i.rg = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.qt, i64 %i.rg)
  %i.rh = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.rh, 2
  %i.ri = add i64 %reass.sub, -4
  %i.rj = mul i64 %i.ri, %i.s
  %i.rk = shl nsw i64 %smax702, 4
  %i.rl = add i64 %i.rj, %i.rk                    ; 2 uses
  %i.rm = getelementptr i8, ptr %scevgep705, i64 %i.rl
  %scevgep707 = getelementptr i8, ptr %i.rm, i64 %i.rd
  %i.rn = getelementptr i8, ptr %0, i64 %i.rb
  %scevgep708 = getelementptr i8, ptr %i.rn, i64 %i.rc
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.rl
  %i.ro = sub nsw i64 %i.ql, %i.qk                ; 7 uses
  %min.iters.check747 = icmp ult i64 %i.ro, 8
  %min.iters.check748 = icmp ult i64 %i.ro, 32
  %i.rp = and i64 %i.ro, 24
  %n.vec750 = and i64 %i.ro, -32                  ; 4 uses
  %i.rq = add nsw i64 %n.vec750, %i.qk
  %invariant.gep892 = getelementptr [4 x i8], ptr %i.ht, i64 %i.qk
  %cmp.n764 = icmp eq i64 %i.ro, %n.vec750
  %min.epilog.iters.check = icmp eq i64 %i.rp, 0
  %n.vec765 = and i64 %i.ro, -8                   ; 3 uses
  %i.rr = add nsw i64 %n.vec765, %i.qk
  %invariant.gep894 = getelementptr [4 x i8], ptr %i.ht, i64 %i.qk
  %cmp.n770 = icmp eq i64 %i.ro, %n.vec765
  %i.rs = add i64 %i.ja, %i.qp
  %i.rt = tail call i64 @llvm.smax.i64(i64 %i.rs, i64 %i.qr)
  %i.ru = add i64 %indvars.iv545, %i.qp
  %i.rv = sub i64 %i.rt, %i.ru                    ; 3 uses
  %min.iters.check724 = icmp ult i64 %i.rv, 9
  %bound0712 = icmp ult ptr %scevgep701, %scevgep707
  %bound1713 = icmp ult ptr %scevgep704, %scevgep703
  %found.conflict714 = and i1 %bound0712, %bound1713
  %i.rw = or i1 %found.conflict714, %stride.check715
  %bound0716 = icmp ult ptr %scevgep701, %scevgep710
  %bound1717 = icmp ult ptr %scevgep708, %scevgep703
  %found.conflict718 = and i1 %bound0716, %bound1717
  %conflict.rdx = or i1 %i.rw, %found.conflict718
  %bound0719 = icmp ult ptr %scevgep701, %scevgep711
  %bound1720 = icmp ult ptr %i.io, %scevgep703
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %conflict.rdx, %found.conflict721
  %i.rx = and i64 %i.rv, 7                        ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 0
  %i.rz = select i1 %i.ry, i64 8, i64 %i.rx
  %n.vec726 = sub i64 %i.rv, %i.rz                ; 2 uses
  %i.sa = add i64 %i.qq, %n.vec726
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qd, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check747, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check748, label %vec.epilog.ph, label %vector.body751

vector.body751:                                   ; preds = %vector.main.loop.iter.check, %vector.body751
  %index752 = phi i64 [ %index.next760, %vector.body751 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.se, %vector.body751 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi753 = phi <8 x float> [ %i.sf, %vector.body751 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi754 = phi <8 x float> [ %i.sg, %vector.body751 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi755 = phi <8 x float> [ %i.sh, %vector.body751 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep893 = getelementptr [4 x i8], ptr %invariant.gep892, i64 %index752 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %gep893, i64 32
  %i.sc = getelementptr inbounds nuw i8, ptr %gep893, i64 64
  %i.sd = getelementptr inbounds nuw i8, ptr %gep893, i64 96
  %wide.load756 = load <8 x float>, ptr %gep893, align 4, !tbaa !56
  %wide.load757 = load <8 x float>, ptr %i.sb, align 4, !tbaa !56
  %wide.load758 = load <8 x float>, ptr %i.sc, align 4, !tbaa !56
  %wide.load759 = load <8 x float>, ptr %i.sd, align 4, !tbaa !56
  %i.se = fadd reassoc nsz arcp contract afn <8 x float> %wide.load756, %vec.phi ; 2 uses
  %i.sf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load757, %vec.phi753 ; 2 uses
  %i.sg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load758, %vec.phi754 ; 2 uses
  %i.sh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load759, %vec.phi755 ; 2 uses
  %index.next760 = add nuw i64 %index752, 32      ; 2 uses
  %i.si = icmp eq i64 %index.next760, %n.vec750
  br i1 %i.si, label %middle.block761, label %vector.body751, !llvm.loop !16

middle.block761:                                  ; preds = %vector.body751
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.sf, %i.se
  %bin.rdx762 = fadd reassoc nsz arcp contract afn <8 x float> %i.sg, %bin.rdx
  %bin.rdx763 = fadd reassoc nsz arcp contract afn <8 x float> %i.sh, %bin.rdx762
  %i.sj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx763) ; 3 uses
  br i1 %cmp.n764, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block761
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec750, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.sj, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.sk = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index766 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next769, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi767 = phi <8 x float> [ %i.sk, %vec.epilog.ph ], [ %i.sl, %vec.epilog.vector.body ]
  %gep895 = getelementptr [4 x i8], ptr %invariant.gep894, i64 %index766
  %wide.load768 = load <8 x float>, ptr %gep895, align 4, !tbaa !56
  %i.sl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load768, %vec.phi767 ; 2 uses
  %index.next769 = add nuw i64 %index766, 8       ; 2 uses
  %i.sm = icmp eq i64 %index.next769, %n.vec765
  br i1 %i.sm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.sn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.sl) ; 2 uses
  br i1 %cmp.n770, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.qk, %iter.check ], [ %i.rq, %vec.epilog.iter.check ], [ %i.rr, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.sj, %vec.epilog.iter.check ], [ %i.sn, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block761, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.sn, %vec.epilog.middle.block ], [ %i.sj, %middle.block761 ], [ %i.sy, %.lr.ph479 ] ; 2 uses
  %i.so = mul nsw i64 %indvars.iv565, %i.s
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.so ; 2 uses
  %i.sq = mul i64 %i.iz, %indvars.iv565
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sq ; 2 uses
  %i.ss = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.st = load float, ptr %i.i, align 8, !tbaa !39
  %i.su = fcmp reassoc nsz arcp contract afn olt float %i.st, 0.000000e+00
  br i1 %i.su, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.qg, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.qg, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.sv = fmul reassoc nsz arcp contract afn float %i.ss, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.sp, i64 %i.qh
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.sy, %.lr.ph479 ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %indvars.iv532
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !56
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sx, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
end_hunk_0
