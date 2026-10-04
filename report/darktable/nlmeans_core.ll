Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
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
  %.0.i = phi i64 [ 72, %bb.p ], [ 72, %compute_slice_height.exit ], [ %i.fp, %bb.q ] ; 6 uses
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
  %broadcast.splatinsert791 = insertelement <8 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat792 = shufflevector <8 x i64> %broadcast.splatinsert791, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert840 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat841 = shufflevector <4 x i64> %broadcast.splatinsert840, <4 x i64> poison, <4 x i32> zeroinitializer
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
  %i.he = phi i32 [ %i.gn, %.preheader475 ], [ %i.ir, %.loopexit471 ] ; 2 uses
  %i.hf = phi i32 [ %i.go, %.preheader475 ], [ %i.is, %.loopexit471 ]
  %i.hg = phi i32 [ %i.gp, %.preheader475 ], [ %i.is, %.loopexit471 ]
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, %i.ga ; 2 uses
  %indvars = trunc i64 %indvars.iv.next563 to i32
  %i.hh = icmp sgt i32 %i.he, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next657 = add i32 %indvar656, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hh, label %.preheader475, label %._crit_edge525, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph521, %.loopexit471
  %indvar = phi i64 [ 0, %.lr.ph521 ], [ %indvar.next, %.loopexit471 ] ; 5 uses
  %i.hi = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.ir, %.loopexit471 ]
  %i.hj = phi i32 [ %i.go, %.lr.ph521 ], [ %i.is, %.loopexit471 ]
  %i.hk = phi i32 [ %i.gn, %.lr.ph521 ], [ %i.iu, %.loopexit471 ] ; 3 uses
  %indvars.iv545 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next546, %.loopexit471 ] ; 21 uses
  %i.hl = phi i32 [ %i.gp, %.lr.ph521 ], [ %i.is, %.loopexit471 ] ; 5 uses
  %i.hm = add nuw i64 %.0.i, %indvars.iv545
  %sext = shl i64 %i.hm, 32
  %i.hn = ashr exact i64 %sext, 32
  %i.ho = or disjoint i64 %indvars.iv545, 1
  %i.hp = or disjoint i64 %indvars.iv545, 1
  %i.hq = mul i64 %.0.i, %indvar
  %i.hr = or disjoint i64 %indvars.iv545, 1
  %i.hs = mul i64 %i.gb, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.hs
  %i.ht = getelementptr i8, ptr %1, i64 %i.hs
  %scevgep661 = getelementptr i8, ptr %i.ht, i64 16
  %i.hu = or disjoint i64 %indvars.iv545, 1
  %i.hv = mul i64 %.0.i, %indvar
  %i.hw = xor i64 %i.hv, -1
  %scevgep666 = getelementptr i8, ptr %i.hb, i64 %i.hs
  %scevgep667 = getelementptr i8, ptr %i.hd, i64 %i.hs
  %i.hx = mul i64 %.0.i, %indvar
  %i.hy = or disjoint i64 %indvars.iv545, 1
  %indvars585 = trunc i64 %indvars.iv545 to i32   ; 13 uses
  %i.hz = sub nsw i64 0, %indvars.iv545
  %i.ia = getelementptr [4 x i8], ptr %i.fu, i64 %i.hz ; 17 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.hk) ; 6 uses
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, %.0.i ; 3 uses
  %i.ib = trunc i64 %indvars.iv.next546 to i32
  %i.ic = tail call i32 @llvm.smin.i32(i32 %i.ib, i32 %i.hl) ; 8 uses
  %i.id = icmp sgt i32 %., %indvars586            ; 3 uses
  br i1 %i.id, label %.lr.ph, label %.preheader474

.lr.ph:                                           ; preds = %bb.r
  %i.ie = sext i32 %i.ic to i64
  %i.if = sub nsw i64 %i.ie, %indvars.iv545
  %i.ig = shl nsw i64 %i.if, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hk, i32 %indvars.iv)
  %i.ih = add i32 %., %i.gr
  %i.ii = add i32 %i.gt, %.
  %xtraiter = and i32 %i.ih, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407476.prol = phi i32 [ %i.ip, %.prol.preheader ], [ %indvars586, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ij = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ik = mul nsw i32 %i.ij, %.0407476.prol
  %i.il = add nsw i32 %i.ik, %indvars585
  %i.im = shl nsw i32 %i.il, 2
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %1, i64 %i.in
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.io, i8 0, i64 %i.ig, i1 false)
  %i.ip = add nsw i32 %.0407476.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407476.unr = phi i32 [ %indvars586, %.lr.ph ], [ %i.ip, %.prol.preheader ]
  %i.iq = icmp ult i32 %i.ii, 3
  br i1 %i.iq, label %.preheader474.loopexit, label %.lr.ph.new

.preheader474.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !52 ; 2 uses
  %.pre599 = load i32, ptr %i.fg, align 4, !tbaa !42 ; 2 uses
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.loopexit, %bb.r
  %i.ir = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hi, %bb.r ] ; 2 uses
  %i.is = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hj, %bb.r ] ; 5 uses
  %i.it = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hl, %bb.r ] ; 7 uses
  %i.iu = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hk, %bb.r ] ; 5 uses
  %i.iv = load ptr, ptr %i.fv, align 8, !tbaa !55 ; 9 uses
  %i.iw = add i32 %indvars585, %i.fw              ; 2 uses
  %i.ix = add i32 %i.ic, %i.cj                    ; 3 uses
  %i.iy = sext i32 %i.iw to i64
  %i.iz = shl nsw i64 %i.iy, 2
  %scevgep.i = getelementptr i8, ptr %i.ia, i64 %i.iz
  %i.ja = sub i32 %i.cj, %indvars585
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 5 uses
  %i.jd = xor i32 %indvars585, -1
  %i.je = add i32 %i.ic, %i.jd
  %i.jf = sext i32 %i.it to i64
  %i.jg = shl nsw i64 %i.jf, 2
  %smin547 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %indvars585)
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.ia, i64 %i.fs
  %invariant.gep643 = getelementptr [4 x i8], ptr %i.ia, i64 %i.fs
  %scevgep711 = getelementptr i8, ptr %i.iv, i64 12
  %i.jh = sext i32 %i.hl to i64
  %smin747 = tail call i64 @llvm.smin.i64(i64 %i.jh, i64 %i.hn)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407476 = phi i32 [ %i.kj, %.lr.ph.new ], [ %.0407476.unr, %.prol.loopexit ] ; 5 uses
  %i.ji = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jj = mul nsw i32 %i.ji, %.0407476
  %i.jk = add nsw i32 %i.jj, %indvars585
  %i.jl = shl nsw i32 %i.jk, 2
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jm
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jn, i8 0, i64 %i.ig, i1 false)
  %i.jo = add nsw i32 %.0407476, 1
  %i.jp = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jq = mul nsw i32 %i.jp, %i.jo
  %i.jr = add nsw i32 %i.jq, %indvars585
  %i.js = shl nsw i32 %i.jr, 2
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jt
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ju, i8 0, i64 %i.ig, i1 false)
  %i.jv = add nsw i32 %.0407476, 2
  %i.jw = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jx = mul nsw i32 %i.jw, %i.jv
  %i.jy = add nsw i32 %i.jx, %indvars585
  %i.jz = shl nsw i32 %i.jy, 2
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ka
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kb, i8 0, i64 %i.ig, i1 false)
  %i.kc = add nsw i32 %.0407476, 3
  %i.kd = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ke = mul nsw i32 %i.kd, %i.kc
  %i.kf = add nsw i32 %i.ke, %indvars585
  %i.kg = shl nsw i32 %i.kf, 2
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kh
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ki, i8 0, i64 %i.ig, i1 false)
  %i.kj = add nsw i32 %.0407476, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kj, %smin
  br i1 %exitcond.not.3, label %.preheader474.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge504
  br i1 %spec.select448, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %bb.s
  br i1 %i.id, label %.lr.ph510, label %.loopexit471

.lr.ph510:                                        ; preds = %.preheader472
  %factor.op.mul = shl i32 %i.it, 2
  %i.kk = sext i32 %i.hl to i64
  %i.kl = icmp slt i64 %indvars.iv545, %i.kk
  br i1 %i.kl, label %.preheader463.lr.ph.preheader, label %.loopexit471

.preheader463.lr.ph.preheader:                    ; preds = %.lr.ph510
  %i.km = sext i32 %i.ic to i64                   ; 3 uses
  %i.kn = sext i32 %. to i64                      ; 2 uses
  %i.ko = mul i32 %i.gu, %i.it
  %i.kp = shl i32 %i.it, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.km, i64 %i.hu)
  %i.kq = add i64 %smax, %i.hw
  %i.kr = shl nsw i64 %i.kq, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.kr
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kn, i64 %i.gy)
  %i.ks = add i64 %smax668, %i.gx
  %i.kt = mul i64 %i.gf, %i.ks
  %i.ku = getelementptr i8, ptr %scevgep667, i64 %i.kt
  %scevgep669 = getelementptr i8, ptr %i.ku, i64 %i.kr
  %i.kv = tail call i64 @llvm.smax.i64(i64 %i.km, i64 %i.hr) ; 2 uses
  %i.kw = sub i64 %i.kv, %i.hq                    ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.kw, 5
  %i.kx = and i64 %i.kv, 3                        ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  %i.kz = select i1 %i.ky, i64 4, i64 %i.kx
  %n.vec673 = sub i64 %i.kw, %i.kz                ; 2 uses
  %i.la = add i64 %indvars.iv545, %n.vec673
  br label %.preheader463.lr.ph

.preheader470:                                    ; preds = %bb.s
  br i1 %i.id, label %.lr.ph517, label %.loopexit471

.lr.ph517:                                        ; preds = %.preheader470
  %factor.op.mul518 = shl i32 %i.it, 2
  %i.lb = sext i32 %i.hl to i64
  %i.lc = icmp slt i64 %indvars.iv545, %i.lb
  br i1 %i.lc, label %.preheader.lr.ph.preheader, label %.loopexit471

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph517
  %i.ld = sext i32 %i.ic to i64                   ; 2 uses
  %i.le = sext i32 %. to i64
  %i.lf = tail call i64 @llvm.smax.i64(i64 %i.ld, i64 %i.hy) ; 2 uses
  %i.lg = sub i64 %i.lf, %i.hx                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.lg, 4
  %i.lh = and i64 %i.lf, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.lg, %i.lh               ; 2 uses
  %i.li = add i64 %indvars.iv545, %n.vec
  %cmp.n = icmp eq i64 %i.lh, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader474, %._crit_edge504
  %indvars.iv567 = phi i64 [ 0, %.preheader474 ], [ %indvars.iv.next568, %._crit_edge504 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv567 ; 4 uses
  %i.lk = load i16, ptr %i.lj, align 8, !tbaa !49 ; 5 uses
  %i.ll = icmp sgt i16 %i.lk, 0
  %i.lm = sext i16 %i.lk to i32                   ; 2 uses
  %i.ln = sub nsw i32 0, %i.lm
  %i.lo = select i1 %i.ll, i32 0, i32 %i.ln       ; 2 uses
  %i.lp = tail call i32 @llvm.smax.i32(i32 %i.lo, i32 %indvars586) ; 7 uses
  %i.lq = icmp slt i16 %i.lk, 0
  %spec.select453 = tail call i16 @llvm.smax.i16(i16 %i.lk, i16 0)
  %spec.select = zext nneg i16 %spec.select453 to i32 ; 2 uses
  %i.lr = sub i32 %i.iu, %spec.select
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lr) ; 3 uses
  %i.ls = tail call i16 @llvm.smin.i16(i16 %i.lk, i16 0)
  %i.lt = sext i16 %i.ls to i32
  %i.lu = sub nsw i32 %i.cj, %i.lt
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lp, i32 %i.lu) ; 2 uses
  %i.lw = add nsw i32 %i.cj, %spec.select
  %i.lx = xor i32 %i.lw, -1
  %i.ly = add i32 %i.iu, %i.lx
  %spec.select452 = tail call i32 @llvm.smin.i32(i32 %spec.select450, i32 %i.ly) ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !50 ; 2 uses
  %i.mb = sext i16 %i.ma to i32                   ; 3 uses
  %i.mc = sub nsw i32 0, %i.mb
  %i.md = tail call i32 @llvm.smax.i32(i32 %indvars585, i32 %i.mc) ; 5 uses
  %i.me = sub i32 %i.it, %i.mb                    ; 2 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %i.me) ; 3 uses
  %i.mf = add nsw i32 %indvars585, %i.mb          ; 2 uses
  %i.mg = tail call i32 @llvm.smin.i32(i32 %indvars585, i32 %i.mf)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mg) ; 2 uses
  %i.mh = sub nsw i32 %indvars585, %..i           ; 5 uses
  %i.mi = tail call i16 @llvm.smax.i16(i16 %i.ma, i16 0)
  %i.mj = zext nneg i16 %i.mi to i32
  %i.mk = add i32 %i.ic, %i.mj
  %i.ml = sub i32 %i.it, %i.mk
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.ml) ; 2 uses
  %i.mn = add i32 %i.mm, %i.ic                    ; 5 uses
  %i.mo = add i32 %i.lp, %i.lm                    ; 2 uses
  %i.mp = tail call i32 @llvm.smin.i32(i32 %i.lp, i32 %i.mo)
  %i.mq = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mp) ; 2 uses
  %i.mr = sub i32 %i.lp, %i.mq                    ; 2 uses
  %.v138.i = select i1 %i.lq, i32 %i.lp, i32 %i.mo ; 2 uses
  %i.ms = xor i32 %.v138.i, -1
  %i.mt = add i32 %i.iu, %i.ms
  %i.mu = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mt)
  %i.mv = add i32 %i.mu, %i.lp                    ; 2 uses
  %i.mw = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 %i.ix) ; 2 uses
  %i.mx = icmp slt i32 %i.iw, %i.mw
  br i1 %i.mx, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.my = add i32 %i.ja, %i.mw
  %i.mz = zext i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 2
  %i.nb = add nuw nsw i64 %i.na, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.nb, i1 false), !tbaa !56
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.nc = icmp slt i32 %i.mh, %i.mn               ; 4 uses
  br i1 %i.nc, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mr, %i.mv
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.nd = sext i32 %i.mh to i64
  %i.ne = shl nuw nsw i64 %i.nd, 2
  %scevgep158.i = getelementptr i8, ptr %i.ia, i64 %i.ne
  %i.nf = add i32 %i.je, %..i
  %i.ng = add i32 %i.nf, %i.mm
  %i.nh = zext i32 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, 2
  %i.nj = add nuw nsw i64 %i.ni, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.nj, i1 false), !tbaa !56
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !51
  %i.nm = sext i32 %i.nl to i64                   ; 4 uses
  %i.nn = sext i32 %i.mr to i64                   ; 5 uses
  %i.no = add i32 %i.mv, 1
  %i.np = sext i32 %i.mh to i64
  %i.nq = sext i32 %i.mn to i64
  %i.nr = xor i32 %.v138.i, -1
  %i.ns = add i32 %i.iu, %i.nr
  %smin778 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.ns)
  %i.nt = add i32 %i.mq, %smin778                 ; 3 uses
  %i.nu = zext i32 %i.nt to i64
  %i.nv = add nuw nsw i64 %i.nu, 1                ; 5 uses
  %min.iters.check780 = icmp ult i32 %i.nt, 3
  %min.iters.check782 = icmp ult i32 %i.nt, 15
  %i.nw = and i64 %i.nv, 12
  %n.vec784 = and i64 %i.nv, 8589934576           ; 4 uses
  %i.nx = add nsw i64 %n.vec784, %i.nn            ; 2 uses
  %broadcast.splatinsert793 = insertelement <8 x i64> poison, i64 %i.nn, i64 0
  %broadcast.splat794 = shufflevector <8 x i64> %broadcast.splatinsert793, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat794, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n824 = icmp eq i64 %i.nv, %n.vec784
  %min.epilog.iters.check831 = icmp eq i64 %i.nw, 0
  %n.vec833 = and i64 %i.nv, 8589934588           ; 3 uses
  %i.ny = add nsw i64 %n.vec833, %i.nn
  %cmp.n864 = icmp eq i64 %i.nv, %n.vec833
  br label %iter.check828

iter.check828:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.np, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %5 = load float, ptr %i.iv, align 4, !tbaa !56  ; 3 uses
  %6 = load float, ptr %i.jb, align 4, !tbaa !56  ; 3 uses
  %i.nz = load float, ptr %i.jc, align 4, !tbaa !56 ; 3 uses
  br i1 %min.iters.check780, label %vec.epilog.scalar.ph829.preheader, label %vector.main.loop.iter.check781

vector.main.loop.iter.check781:                   ; preds = %iter.check828
  br i1 %min.iters.check782, label %vec.epilog.ph832, label %vector.ph783

vector.ph783:                                     ; preds = %vector.main.loop.iter.check781
  %broadcast.splatinsert785 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat786 = shufflevector <8 x float> %broadcast.splatinsert785, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert787 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat788 = shufflevector <8 x float> %broadcast.splatinsert787, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert789 = insertelement <8 x float> poison, float %i.nz, i64 0
  %broadcast.splat790 = shufflevector <8 x float> %broadcast.splatinsert789, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.ph783, %vector.body795
  %index796 = phi i64 [ 0, %vector.ph783 ], [ %index.next821, %vector.body795 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph783 ], [ %vec.ind.next, %vector.body795 ] ; 3 uses
  %vec.phi797 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.oy, %vector.body795 ]
  %vec.phi798 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.oz, %vector.body795 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.oa = mul nsw <8 x i64> %vec.ind, %broadcast.splat792
  %i.ob = mul nsw <8 x i64> %step.add, %broadcast.splat792
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.oa ; 4 uses
  %wide.gep799 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.ob ; 4 uses
  %wide.gep800 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.nm ; 3 uses
  %wide.gep801 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep799, i64 %i.nm ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather802 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep799, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather803 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep800, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather804 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather803 ; 2 uses
  %i.od = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather802, %wide.masked.gather804 ; 2 uses
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.oc, %i.oc
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %i.od
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.oe, %broadcast.splat786
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %broadcast.splat786
  %wide.gep805 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep806 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 4
  %wide.masked.gather807 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep805, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather808 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep806, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep809 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 4
  %wide.gep810 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 4
  %wide.masked.gather811 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep809, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather812 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep810, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oi = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather807, %wide.masked.gather811 ; 2 uses
  %i.oj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather808, %wide.masked.gather812 ; 2 uses
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %i.oi, %i.oi
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %i.oj
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %broadcast.splat788
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %broadcast.splat788
  %wide.gep813 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep814 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 8
  %wide.masked.gather815 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep813, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather816 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep814, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep817 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 8
  %wide.gep818 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 8
  %wide.masked.gather819 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep817, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather820 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep818, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oo = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather815, %wide.masked.gather819 ; 2 uses
  %i.op = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather816, %wide.masked.gather820 ; 2 uses
  %i.oq = fmul reassoc nsz arcp contract afn <8 x float> %i.oo, %i.oo
  %i.or = fmul reassoc nsz arcp contract afn <8 x float> %i.op, %i.op
  %i.os = fmul reassoc nsz arcp contract afn <8 x float> %i.oq, %broadcast.splat790
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %i.or, %broadcast.splat790
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi797, %i.og
  %i.ov = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi798, %i.oh
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.om, %i.ou
  %i.ox = fadd reassoc nsz arcp contract afn <8 x float> %i.on, %i.ov
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.ow, %i.os ; 2 uses
  %i.oz = fadd reassoc nsz arcp contract afn <8 x float> %i.ox, %i.ot ; 2 uses
  %index.next821 = add nuw i64 %index796, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.pa = icmp eq i64 %index.next821, %n.vec784
  br i1 %i.pa, label %middle.block822, label %vector.body795, !llvm.loop !13

middle.block822:                                  ; preds = %vector.body795
  %bin.rdx823 = fadd reassoc nsz arcp contract afn <8 x float> %i.oz, %i.oy
  %i.pb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx823) ; 3 uses
  br i1 %cmp.n824, label %._crit_edge.i447, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block822
  br i1 %min.epilog.iters.check831, label %vec.epilog.scalar.ph829.preheader, label %vec.epilog.ph832, !prof !59

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check781, %vec.epilog.iter.check830
  %vec.epilog.resume.val825 = phi i64 [ %n.vec784, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check781 ]
  %bc.resume.val826 = phi i64 [ %i.nx, %vec.epilog.iter.check830 ], [ %i.nn, %vector.main.loop.iter.check781 ]
  %bc.merge.rdx827 = phi float [ %i.pb, %vec.epilog.iter.check830 ], [ 0.000000e+00, %vector.main.loop.iter.check781 ]
  %7 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx827, i64 0
  %broadcast.splatinsert834 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat835 = shufflevector <4 x float> %broadcast.splatinsert834, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert836 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat837 = shufflevector <4 x float> %broadcast.splatinsert836, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert838 = insertelement <4 x float> poison, float %i.nz, i64 0
  %broadcast.splat839 = shufflevector <4 x float> %broadcast.splatinsert838, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert842 = insertelement <4 x i64> poison, i64 %bc.resume.val826, i64 0
  %broadcast.splat843 = shufflevector <4 x i64> %broadcast.splatinsert842, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction844 = add nsw <4 x i64> %broadcast.splat843, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body845

vec.epilog.vector.body845:                        ; preds = %vec.epilog.vector.body845, %vec.epilog.ph832
  %index846 = phi i64 [ %vec.epilog.resume.val825, %vec.epilog.ph832 ], [ %index.next861, %vec.epilog.vector.body845 ]
  %vec.ind847 = phi <4 x i64> [ %induction844, %vec.epilog.ph832 ], [ %vec.ind.next862, %vec.epilog.vector.body845 ] ; 2 uses
  %vec.phi848 = phi <4 x float> [ %7, %vec.epilog.ph832 ], [ %i.po, %vec.epilog.vector.body845 ]
  %i.pc = mul nsw <4 x i64> %vec.ind847, %broadcast.splat841
  %wide.gep849 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pc ; 4 uses
  %wide.gep850 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep849, i64 %i.nm ; 3 uses
  %wide.masked.gather851 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather852 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep850, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pd = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather851, %wide.masked.gather852 ; 2 uses
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pd, %i.pd
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %broadcast.splat835
  %wide.gep853 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849, i64 4
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 4
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pg = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854, %wide.masked.gather856 ; 2 uses
  %i.ph = fmul reassoc nsz arcp contract afn <4 x float> %i.pg, %i.pg
  %i.pi = fmul reassoc nsz arcp contract afn <4 x float> %i.ph, %broadcast.splat837
  %wide.gep857 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849, i64 8
  %wide.masked.gather858 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep859 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 8
  %wide.masked.gather860 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pj = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather858, %wide.masked.gather860 ; 2 uses
  %i.pk = fmul reassoc nsz arcp contract afn <4 x float> %i.pj, %i.pj
  %i.pl = fmul reassoc nsz arcp contract afn <4 x float> %i.pk, %broadcast.splat839
  %i.pm = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi848, %i.pf
  %i.pn = fadd reassoc nsz arcp contract afn <4 x float> %i.pi, %i.pm
  %i.po = fadd reassoc nsz arcp contract afn <4 x float> %i.pn, %i.pl ; 2 uses
  %index.next861 = add nuw i64 %index846, 4       ; 2 uses
  %vec.ind.next862 = add nsw <4 x i64> %vec.ind847, splat (i64 4)
  %i.pp = icmp eq i64 %index.next861, %n.vec833
  br i1 %i.pp, label %vec.epilog.middle.block863, label %vec.epilog.vector.body845, !llvm.loop !14

vec.epilog.middle.block863:                       ; preds = %vec.epilog.vector.body845
  %i.pq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.po) ; 2 uses
  br i1 %cmp.n864, label %._crit_edge.i447, label %vec.epilog.scalar.ph829.preheader

vec.epilog.scalar.ph829.preheader:                ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block863
  %indvars.iv.i.ph = phi i64 [ %i.nn, %iter.check828 ], [ %i.nx, %vec.epilog.iter.check830 ], [ %i.ny, %vec.epilog.middle.block863 ]
  %.0121143.i.ph = phi float [ 0.000000e+00, %iter.check828 ], [ %i.pb, %vec.epilog.iter.check830 ], [ %i.pq, %vec.epilog.middle.block863 ]
  br label %vec.epilog.scalar.ph829

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pr = tail call i32 @llvm.smax.i32(i32 %i.mh, i32 %i.mn) ; 3 uses
  %i.ps = icmp slt i32 %i.pr, %i.ix
  br i1 %i.ps, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pr to i64
  %i.pt = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.ia, i64 %i.pt
  %i.pu = xor i32 %i.pr, -1
  %i.pv = add i32 %i.ix, %i.pu
  %i.pw = zext i32 %i.pv to i64
  %i.px = shl nuw nsw i64 %i.pw, 2
  %i.py = add nuw nsw i64 %i.px, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.py, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph829, %vec.epilog.middle.block863, %middle.block822
  %.lcssa = phi float [ %i.pq, %vec.epilog.middle.block863 ], [ %i.pb, %middle.block822 ], [ %24, %vec.epilog.scalar.ph829 ]
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %indvars.iv156.i
  store float %.lcssa, ptr %i.pz, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.qa = icmp slt i64 %indvars.iv.next157.i, %i.nq
  br i1 %i.qa, label %iter.check828, label %._crit_edge148.i

vec.epilog.scalar.ph829:                          ; preds = %vec.epilog.scalar.ph829.preheader, %vec.epilog.scalar.ph829
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph829 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph829.preheader ] ; 2 uses
  %.0121143.i = phi float [ %24, %vec.epilog.scalar.ph829 ], [ %.0121143.i.ph, %vec.epilog.scalar.ph829.preheader ]
  %i.qb = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qb ; 3 uses
  %i.qc = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.nm ; 2 uses
  %8 = load float, ptr %gep.i, align 4, !tbaa !56
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !56
  %9 = fsub reassoc nsz arcp contract afn float %8, %i.qd ; 2 uses
  %10 = fmul reassoc nsz arcp contract afn float %9, %9
  %11 = fmul reassoc nsz arcp contract afn float %10, %5
  %12 = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %13 = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %14 = load <2 x float>, ptr %12, align 4, !tbaa !56
  %15 = load <2 x float>, ptr %13, align 4, !tbaa !56
  %16 = fsub reassoc nsz arcp contract afn <2 x float> %14, %15 ; 2 uses
  %17 = fmul reassoc nsz arcp contract afn <2 x float> %16, %16 ; 2 uses
  %18 = extractelement <2 x float> %17, i64 0
  %19 = fmul reassoc nsz arcp contract afn float %18, %6
  %20 = extractelement <2 x float> %17, i64 1
  %21 = fmul reassoc nsz arcp contract afn float %20, %i.nz
  %22 = fadd reassoc nsz arcp contract afn float %.0121143.i, %11
  %23 = fadd reassoc nsz arcp contract afn float %19, %22
  %24 = fadd reassoc nsz arcp contract afn float %23, %21 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.no, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph829, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qe = icmp slt i32 %i.lp, %spec.select450
  br i1 %i.qe, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qf = sub nsw i32 %i.md, %i.cj
  %i.qg = add i32 %i.md, %i.cj                    ; 2 uses
  %i.qh = tail call i32 @llvm.smin.i32(i32 %i.qg, i32 %.437) ; 2 uses
  %i.qi = icmp slt i32 %i.qf, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !51
  %i.ql = icmp slt i32 %i.md, %.437               ; 2 uses
  %i.qm = sext i32 %i.qk to i64                   ; 8 uses
  %i.qn = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %spec.select452)
  %i.qo = sub i32 %i.md, %i.cj
  %i.qp = sext i32 %i.qo to i64                   ; 6 uses
  %i.qq = sext i32 %i.qh to i64
  %i.qr = zext nneg i32 %i.md to i64              ; 2 uses
  %i.qs = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.mf)
  %i.qt = sub i32 0, %smin548
  %i.qu = sext i32 %i.qt to i64                   ; 4 uses
  %i.qv = add i64 %indvars.iv545, %i.qu           ; 7 uses
  %i.qw = sext i32 %i.mn to i64                   ; 4 uses
  %i.qx = sext i32 %i.lo to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.qx) ; 3 uses
  %i.qy = sext i32 %spec.select450 to i64         ; 3 uses
  %i.qz = sext i32 %i.lv to i64
  %i.ra = sext i32 %spec.select452 to i64
  %i.rb = sext i32 %i.qn to i64
  %invariant.op = add nsw i64 %i.qy, -1
  %i.rc = shl nsw i64 %i.qv, 2
  %scevgep701 = getelementptr i8, ptr %i.ia, i64 %i.rc ; 3 uses
  %i.rd = add i64 %i.hp, %i.qu
  %i.re = sext i32 %i.mn to i64
  %smax702 = tail call i64 @llvm.smax.i64(i64 %i.rd, i64 %i.re) ; 2 uses
  %i.rf = shl nsw i64 %smax702, 2
  %scevgep703 = getelementptr i8, ptr %i.ia, i64 %i.rf ; 3 uses
  %i.rg = sub i64 %smax564, %i.fs
  %i.rh = mul i64 %i.gg, %i.rg                    ; 2 uses
  %i.ri = shl nsw i64 %i.qv, 4                    ; 2 uses
  %i.rj = shl nsw i64 %i.qm, 2                    ; 2 uses
  %i.rk = getelementptr i8, ptr %0, i64 %i.rh
  %i.rl = getelementptr i8, ptr %i.rk, i64 %i.ri
  %scevgep704 = getelementptr i8, ptr %i.rl, i64 %i.rj
  %i.rm = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.qy, i64 %i.rm)
  %i.rn = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.rn, 2
  %i.ro = add i64 %reass.sub, -4
  %i.rp = mul i64 %i.ro, %i.s
  %i.rq = shl nsw i64 %smax702, 4
  %i.rr = add i64 %i.rp, %i.rq                    ; 2 uses
  %i.rs = getelementptr i8, ptr %scevgep705, i64 %i.rr
  %scevgep707 = getelementptr i8, ptr %i.rs, i64 %i.rj
  %i.rt = getelementptr i8, ptr %0, i64 %i.rh
  %scevgep708 = getelementptr i8, ptr %i.rt, i64 %i.ri
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.rr
  %i.ru = sext i32 %i.qg to i64
  %smin748 = tail call i64 @llvm.smin.i64(i64 %smin747, i64 %i.ru)
  %i.rv = sext i32 %i.me to i64
  %smin749 = tail call i64 @llvm.smin.i64(i64 %smin748, i64 %i.rv)
  %i.rw = sub i64 %smin749, %i.qp                 ; 7 uses
  %min.iters.check751 = icmp ult i64 %i.rw, 8
  %min.iters.check752 = icmp ult i64 %i.rw, 32
  %i.rx = and i64 %i.rw, 24
  %n.vec754 = and i64 %i.rw, -32                  ; 4 uses
  %i.ry = add i64 %n.vec754, %i.qp
  %invariant.gep898 = getelementptr [4 x i8], ptr %i.ia, i64 %i.qp
  %cmp.n768 = icmp eq i64 %i.rw, %n.vec754
  %min.epilog.iters.check = icmp eq i64 %i.rx, 0
  %n.vec770 = and i64 %i.rw, -8                   ; 3 uses
  %i.rz = add i64 %n.vec770, %i.qp
  %invariant.gep900 = getelementptr [4 x i8], ptr %i.ia, i64 %i.qp
  %cmp.n775 = icmp eq i64 %i.rw, %n.vec770
  %i.sa = add i64 %i.ho, %i.qu
  %i.sb = tail call i64 @llvm.smax.i64(i64 %i.sa, i64 %i.qw)
  %i.sc = add i64 %indvars.iv545, %i.qu
  %i.sd = sub i64 %i.sb, %i.sc                    ; 3 uses
  %min.iters.check725 = icmp ult i64 %i.sd, 9
  %bound0712 = icmp ult ptr %scevgep701, %scevgep707
  %bound1713 = icmp ult ptr %scevgep704, %scevgep703
  %found.conflict714 = and i1 %bound0712, %bound1713
  %bound0716 = icmp ult ptr %scevgep701, %scevgep710
  %bound1717 = icmp ult ptr %scevgep708, %scevgep703
  %found.conflict718 = and i1 %bound0716, %bound1717
  %i.se = or i1 %found.conflict718, %stride.check719
  %conflict.rdx = or i1 %found.conflict714, %i.se
  %bound0720 = icmp ult ptr %scevgep701, %scevgep711
  %bound1721 = icmp ult ptr %i.iv, %scevgep703
  %found.conflict722 = and i1 %bound0720, %bound1721
  %conflict.rdx723 = or i1 %conflict.rdx, %found.conflict722
  %i.sf = and i64 %i.sd, 7                        ; 2 uses
  %i.sg = icmp eq i64 %i.sf, 0
  %i.sh = select i1 %i.sg, i64 8, i64 %i.sf
  %n.vec727 = sub i64 %i.sd, %i.sh                ; 2 uses
  %i.si = add i64 %i.qv, %n.vec727
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qi, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check751, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check752, label %vec.epilog.ph, label %vector.body755

vector.body755:                                   ; preds = %vector.main.loop.iter.check, %vector.body755
  %index756 = phi i64 [ %index.next764, %vector.body755 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.sm, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi757 = phi <8 x float> [ %i.sn, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi758 = phi <8 x float> [ %i.so, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi759 = phi <8 x float> [ %i.sp, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep899 = getelementptr [4 x i8], ptr %invariant.gep898, i64 %index756 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %gep899, i64 32
  %i.sk = getelementptr inbounds nuw i8, ptr %gep899, i64 64
  %i.sl = getelementptr inbounds nuw i8, ptr %gep899, i64 96
  %wide.load760 = load <8 x float>, ptr %gep899, align 4, !tbaa !56
  %wide.load761 = load <8 x float>, ptr %i.sj, align 4, !tbaa !56
  %wide.load762 = load <8 x float>, ptr %i.sk, align 4, !tbaa !56
  %wide.load763 = load <8 x float>, ptr %i.sl, align 4, !tbaa !56
  %i.sm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load760, %vec.phi ; 2 uses
  %i.sn = fadd reassoc nsz arcp contract afn <8 x float> %wide.load761, %vec.phi757 ; 2 uses
  %i.so = fadd reassoc nsz arcp contract afn <8 x float> %wide.load762, %vec.phi758 ; 2 uses
  %i.sp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi759 ; 2 uses
  %index.next764 = add nuw i64 %index756, 32      ; 2 uses
  %i.sq = icmp eq i64 %index.next764, %n.vec754
  br i1 %i.sq, label %middle.block765, label %vector.body755, !llvm.loop !16

middle.block765:                                  ; preds = %vector.body755
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.sn, %i.sm
  %bin.rdx766 = fadd reassoc nsz arcp contract afn <8 x float> %i.so, %bin.rdx
  %bin.rdx767 = fadd reassoc nsz arcp contract afn <8 x float> %i.sp, %bin.rdx766
  %i.sr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx767) ; 3 uses
  br i1 %cmp.n768, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block765
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec754, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.sr, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.ss = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index771 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next774, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi772 = phi <8 x float> [ %i.ss, %vec.epilog.ph ], [ %i.st, %vec.epilog.vector.body ]
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %index771
  %wide.load773 = load <8 x float>, ptr %gep901, align 4, !tbaa !56
  %i.st = fadd reassoc nsz arcp contract afn <8 x float> %wide.load773, %vec.phi772 ; 2 uses
  %index.next774 = add nuw i64 %index771, 8       ; 2 uses
  %i.su = icmp eq i64 %index.next774, %n.vec770
  br i1 %i.su, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.sv = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.st) ; 2 uses
  br i1 %cmp.n775, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.qp, %iter.check ], [ %i.ry, %vec.epilog.iter.check ], [ %i.rz, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.sr, %vec.epilog.iter.check ], [ %i.sv, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block765, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.sv, %vec.epilog.middle.block ], [ %i.sr, %middle.block765 ], [ %i.tg, %.lr.ph479 ] ; 2 uses
  %i.sw = mul nsw i64 %indvars.iv565, %i.s
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sw ; 2 uses
  %i.sy = mul i64 %i.jg, %indvars.iv565
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.sy ; 2 uses
  %i.ta = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.tb = load float, ptr %i.i, align 8, !tbaa !39
  %i.tc = fcmp reassoc nsz arcp contract afn olt float %i.tb, 0.000000e+00
  br i1 %i.tc, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.ql, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.ql, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.td = fmul reassoc nsz arcp contract afn float %i.ta, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.sx, i64 %i.qm
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
end_hunk_0
