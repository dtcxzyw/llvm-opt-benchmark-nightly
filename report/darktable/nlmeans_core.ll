Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
  %i.dn = srem i32 %i.cs, 67                      ; 3 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %compute_slice_height.exit, label %bb.l

bb.l:                                             ; preds = %.preheader.6.i
  %i.dp = srem i32 %i.cs, 53                      ; 3 uses
  %.not.6.i = icmp eq i32 %i.dp, 0
  br i1 %.not.6.i, label %compute_slice_height.exit, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.l
  %spec.select.6.i = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 %spec.select44.5.i) ; 2 uses
  %spec.select44.6.i = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 %spec.select.6.i) ; 2 uses
  %i.dq = srem i32 %i.cs, 68                      ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %compute_slice_height.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.7.i
  %i.ds = srem i32 %i.cs, 52                      ; 3 uses
  %.not.7.i = icmp eq i32 %i.ds, 0
  br i1 %.not.7.i, label %compute_slice_height.exit, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %bb.m
  %spec.select.7.i = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 %spec.select44.6.i) ; 2 uses
  %spec.select44.7.i = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 %spec.select.7.i) ; 2 uses
  %i.dt = srem i32 %i.cs, 69                      ; 3 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %compute_slice_height.exit, label %bb.n

bb.n:                                             ; preds = %.preheader.8.i
  %i.dv = srem i32 %i.cs, 51                      ; 2 uses
  %.not.8.i = icmp eq i32 %i.dv, 0
  br i1 %.not.8.i, label %compute_slice_height.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = icmp sgt i32 %i.dt, %spec.select44.7.i
  %i.dx = icmp sgt i32 %i.ds, %spec.select.7.i
  %i.dy = icmp sgt i32 %i.dq, %spec.select44.6.i
  %i.dz = icmp sgt i32 %i.dp, %spec.select.6.i
  %i.ea = icmp sgt i32 %i.dn, %spec.select44.5.i
  %i.eb = icmp sgt i32 %i.dm, %spec.select.5.i
  %i.ec = icmp sgt i32 %i.dk, %spec.select44.4.i
  %i.ed = icmp sgt i32 %i.dj, %spec.select.4.i
  %i.ee = icmp sgt i32 %i.dh, %spec.select44.3.i
  %i.ef = icmp sgt i32 %i.dg, %spec.select.3.i
  %i.eg = icmp sgt i32 %i.de, %spec.select44.2.i
  %i.eh = icmp sgt i32 %i.dd, %spec.select.2.i
  %i.ei = icmp sgt i32 %i.db, %spec.select44.1.i
  %i.ej = icmp sgt i32 %i.da, %spec.select.1.i
  %i.ek = icmp sgt i32 %i.cy, %spec.select44.i
  %i.el = icmp sgt i32 %i.cx, %spec.select.i442
  %i.em = icmp sgt i32 %i.cv, %i.ct
  %spec.select.8.i = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 %spec.select44.7.i)
  %i.en = icmp sgt i32 %i.dv, %spec.select.8.i
  %i.eo = select i1 %i.em, i32 61, i32 60
  %i.ep = select i1 %i.el, i32 59, i32 %i.eo
  %i.eq = select i1 %i.ek, i32 62, i32 %i.ep
  %i.er = select i1 %i.ej, i32 58, i32 %i.eq
  %i.es = select i1 %i.ei, i32 63, i32 %i.er
  %i.et = select i1 %i.eh, i32 57, i32 %i.es
  %i.eu = select i1 %i.eg, i32 64, i32 %i.et
  %i.ev = select i1 %i.ef, i32 56, i32 %i.eu
  %i.ew = select i1 %i.ee, i32 65, i32 %i.ev
  %i.ex = select i1 %i.ed, i32 55, i32 %i.ew
  %i.ey = select i1 %i.ec, i32 66, i32 %i.ex
  %i.ez = select i1 %i.eb, i32 54, i32 %i.ey
  %i.fa = select i1 %i.ea, i32 67, i32 %i.ez
  %i.fb = select i1 %i.dz, i32 53, i32 %i.fa
  %i.fc = select i1 %i.dy, i32 68, i32 %i.fb
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
  %5 = or disjoint i64 %indvars.iv545, 1
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407476 = phi i32 [ %i.kb, %.lr.ph.new ], [ %.0407476.unr, %.prol.loopexit ] ; 5 uses
  %i.ja = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jb = mul nsw i32 %i.ja, %.0407476
  %i.jc = add nsw i32 %i.jb, %indvars585
  %i.jd = shl nsw i32 %i.jc, 2
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.je
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jf, i8 0, i64 %i.hz, i1 false)
  %i.jg = add nsw i32 %.0407476, 1
  %i.jh = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.ji = mul nsw i32 %i.jh, %i.jg
  %i.jj = add nsw i32 %i.ji, %indvars585
  %i.jk = shl nsw i32 %i.jj, 2
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jl
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jm, i8 0, i64 %i.hz, i1 false)
  %i.jn = add nsw i32 %.0407476, 2
  %i.jo = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jp = mul nsw i32 %i.jo, %i.jn
  %i.jq = add nsw i32 %i.jp, %indvars585
  %i.jr = shl nsw i32 %i.jq, 2
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.js
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jt, i8 0, i64 %i.hz, i1 false)
  %i.ju = add nsw i32 %.0407476, 3
  %i.jv = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jw = mul nsw i32 %i.jv, %i.ju
  %i.jx = add nsw i32 %i.jw, %indvars585
  %i.jy = shl nsw i32 %i.jx, 2
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jz
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ka, i8 0, i64 %i.hz, i1 false)
  %i.kb = add nsw i32 %.0407476, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kb, %smin
  br i1 %exitcond.not.3, label %.preheader474.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge504
  br i1 %spec.select448, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %bb.s
  br i1 %i.hw, label %.lr.ph510, label %.loopexit471

.lr.ph510:                                        ; preds = %.preheader472
  %factor.op.mul = shl i32 %i.im, 2
  %i.kc = sext i32 %i.hl to i64
  %i.kd = icmp slt i64 %indvars.iv545, %i.kc
  br i1 %i.kd, label %.preheader463.lr.ph.preheader, label %.loopexit471

.preheader463.lr.ph.preheader:                    ; preds = %.lr.ph510
  %i.ke = sext i32 %i.hv to i64                   ; 3 uses
  %i.kf = sext i32 %. to i64                      ; 2 uses
  %i.kg = mul i32 %i.gu, %i.im
  %i.kh = shl i32 %i.im, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ke, i64 %i.hp)
  %i.ki = add i64 %smax, %i.hr
  %i.kj = shl nsw i64 %i.ki, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.kj
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kf, i64 %i.gy)
  %i.kk = add i64 %smax668, %i.gx
  %i.kl = mul i64 %i.gf, %i.kk
  %i.km = getelementptr i8, ptr %scevgep667, i64 %i.kl
  %scevgep669 = getelementptr i8, ptr %i.km, i64 %i.kj
  %6 = or disjoint i64 %indvars.iv545, 1
  %i.kn = tail call i64 @llvm.smax.i64(i64 %i.ke, i64 %6) ; 2 uses
  %7 = mul i64 %.0.i, %indvar
  %i.ko = sub i64 %i.kn, %7                       ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.ko, 5
  %i.kp = and i64 %i.kn, 3                        ; 2 uses
  %i.kq = icmp eq i64 %i.kp, 0
  %i.kr = select i1 %i.kq, i64 4, i64 %i.kp
  %n.vec673 = sub i64 %i.ko, %i.kr                ; 2 uses
  %i.ks = add i64 %indvars.iv545, %n.vec673
  br label %.preheader463.lr.ph

.preheader470:                                    ; preds = %bb.s
  br i1 %i.hw, label %.lr.ph517, label %.loopexit471

.lr.ph517:                                        ; preds = %.preheader470
  %factor.op.mul518 = shl i32 %i.im, 2
  %i.kt = sext i32 %i.hl to i64
  %i.ku = icmp slt i64 %indvars.iv545, %i.kt
  br i1 %i.ku, label %.preheader.lr.ph.preheader, label %.loopexit471

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph517
  %i.kv = sext i32 %i.hv to i64                   ; 2 uses
  %i.kw = sext i32 %. to i64
  %8 = or disjoint i64 %indvars.iv545, 1
  %i.kx = tail call i64 @llvm.smax.i64(i64 %i.kv, i64 %8) ; 2 uses
  %9 = mul i64 %.0.i, %indvar
  %i.ky = sub i64 %i.kx, %9                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.ky, 4
  %i.kz = and i64 %i.kx, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.ky, %i.kz               ; 2 uses
  %i.la = add i64 %indvars.iv545, %n.vec
  %cmp.n = icmp eq i64 %i.kz, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader474, %._crit_edge504
  %indvars.iv567 = phi i64 [ 0, %.preheader474 ], [ %indvars.iv.next568, %._crit_edge504 ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv567 ; 4 uses
  %i.lc = load i16, ptr %i.lb, align 8, !tbaa !49 ; 5 uses
  %i.ld = icmp sgt i16 %i.lc, 0
  %i.le = sext i16 %i.lc to i32                   ; 2 uses
  %i.lf = sub nsw i32 0, %i.le
  %i.lg = select i1 %i.ld, i32 0, i32 %i.lf       ; 2 uses
  %i.lh = tail call i32 @llvm.smax.i32(i32 %i.lg, i32 %indvars586) ; 7 uses
  %i.li = icmp slt i16 %i.lc, 0
  %spec.select453 = tail call i16 @llvm.smax.i16(i16 %i.lc, i16 0)
  %spec.select = zext nneg i16 %spec.select453 to i32 ; 2 uses
  %i.lj = sub i32 %i.in, %spec.select
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lj) ; 3 uses
  %i.lk = tail call i16 @llvm.smin.i16(i16 %i.lc, i16 0)
  %i.ll = sext i16 %i.lk to i32
  %i.lm = sub nsw i32 %i.cj, %i.ll
  %i.ln = tail call i32 @llvm.smax.i32(i32 %i.lh, i32 %i.lm) ; 2 uses
  %i.lo = add nsw i32 %i.cj, %spec.select
  %i.lp = xor i32 %i.lo, -1
  %i.lq = add i32 %i.in, %i.lp
  %spec.select452 = tail call i32 @llvm.smin.i32(i32 %spec.select450, i32 %i.lq) ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !50 ; 2 uses
  %i.lt = sext i16 %i.ls to i32                   ; 3 uses
  %i.lu = sub nsw i32 0, %i.lt
  %i.lv = tail call i32 @llvm.smax.i32(i32 %indvars585, i32 %i.lu) ; 5 uses
  %i.lw = sub i32 %i.im, %i.lt
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.hv, i32 %i.lw) ; 3 uses
  %i.lx = add nsw i32 %indvars585, %i.lt          ; 2 uses
  %i.ly = tail call i32 @llvm.smin.i32(i32 %indvars585, i32 %i.lx)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.ly) ; 2 uses
  %i.lz = sub nsw i32 %indvars585, %..i           ; 5 uses
  %i.ma = tail call i16 @llvm.smax.i16(i16 %i.ls, i16 0)
  %i.mb = zext nneg i16 %i.ma to i32
  %i.mc = add i32 %i.hv, %i.mb
  %i.md = sub i32 %i.im, %i.mc
  %i.me = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.md) ; 2 uses
  %i.mf = add i32 %i.me, %i.hv                    ; 4 uses
  %i.mg = add i32 %i.lh, %i.le                    ; 2 uses
  %i.mh = tail call i32 @llvm.smin.i32(i32 %i.lh, i32 %i.mg)
  %i.mi = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mh) ; 2 uses
  %i.mj = sub i32 %i.lh, %i.mi                    ; 2 uses
  %.v138.i = select i1 %i.li, i32 %i.lh, i32 %i.mg
  %i.mk = xor i32 %.v138.i, -1
  %i.ml = add i32 %i.in, %i.mk
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.ml) ; 2 uses
  %i.mn = add i32 %i.mm, %i.lh                    ; 2 uses
  %i.mo = tail call i32 @llvm.smin.i32(i32 %i.lz, i32 %i.iq) ; 2 uses
  %i.mp = icmp slt i32 %i.ip, %i.mo
  br i1 %i.mp, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.mq = add i32 %i.it, %i.mo
  %i.mr = zext i32 %i.mq to i64
  %i.ms = shl nuw nsw i64 %i.mr, 2
  %i.mt = add nuw nsw i64 %i.ms, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.mt, i1 false), !tbaa !56
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.mu = icmp slt i32 %i.lz, %i.mf               ; 4 uses
  br i1 %i.mu, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mj, %i.mn
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.mv = sext i32 %i.lz to i64
  %i.mw = shl nuw nsw i64 %i.mv, 2
  %scevgep158.i = getelementptr i8, ptr %i.ht, i64 %i.mw
  %i.mx = add i32 %i.ix, %..i
  %i.my = add i32 %i.mx, %i.me
  %i.mz = zext i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 2
  %i.nb = add nuw nsw i64 %i.na, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.nb, i1 false), !tbaa !56
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !51
  %i.ne = sext i32 %i.nd to i64                   ; 4 uses
  %i.nf = sext i32 %i.mj to i64                   ; 5 uses
  %i.ng = add i32 %i.mn, 1
  %i.nh = sext i32 %i.lz to i64
  %i.ni = sext i32 %i.mf to i64
  %i.nj = add i32 %i.mi, %i.mm                    ; 3 uses
  %i.nk = zext i32 %i.nj to i64
  %i.nl = add nuw nsw i64 %i.nk, 1                ; 5 uses
  %min.iters.check776 = icmp ult i32 %i.nj, 3
  %min.iters.check778 = icmp ult i32 %i.nj, 15
  %i.nm = and i64 %i.nl, 12
  %n.vec780 = and i64 %i.nl, 8589934576           ; 4 uses
  %i.nn = add nsw i64 %n.vec780, %i.nf            ; 2 uses
  %broadcast.splatinsert789 = insertelement <8 x i64> poison, i64 %i.nf, i64 0
  %broadcast.splat790 = shufflevector <8 x i64> %broadcast.splatinsert789, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat790, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n820 = icmp eq i64 %i.nl, %n.vec780
  %min.epilog.iters.check827 = icmp eq i64 %i.nm, 0
  %n.vec829 = and i64 %i.nl, 8589934588           ; 3 uses
  %i.no = add nsw i64 %n.vec829, %i.nf
  %cmp.n860 = icmp eq i64 %i.nl, %n.vec829
  br label %iter.check824

iter.check824:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nh, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.np = load <2 x float>, ptr %i.io, align 4, !tbaa !56 ; 5 uses
  %i.nq = load float, ptr %i.iv, align 4, !tbaa !56 ; 3 uses
  br i1 %min.iters.check776, label %vec.epilog.scalar.ph825.preheader, label %vector.main.loop.iter.check777

vector.main.loop.iter.check777:                   ; preds = %iter.check824
  br i1 %min.iters.check778, label %vec.epilog.ph828, label %vector.ph779

vector.ph779:                                     ; preds = %vector.main.loop.iter.check777
  %broadcast.splat782 = shufflevector <2 x float> %i.np, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat784 = shufflevector <2 x float> %i.np, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert785 = insertelement <8 x float> poison, float %i.nq, i64 0
  %broadcast.splat786 = shufflevector <8 x float> %broadcast.splatinsert785, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body791

vector.body791:                                   ; preds = %vector.ph779, %vector.body791
  %index792 = phi i64 [ 0, %vector.ph779 ], [ %index.next817, %vector.body791 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph779 ], [ %vec.ind.next, %vector.body791 ] ; 3 uses
  %vec.phi793 = phi <8 x float> [ zeroinitializer, %vector.ph779 ], [ %i.op, %vector.body791 ]
  %vec.phi794 = phi <8 x float> [ zeroinitializer, %vector.ph779 ], [ %i.oq, %vector.body791 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.nr = mul nsw <8 x i64> %vec.ind, %broadcast.splat788
  %i.ns = mul nsw <8 x i64> %step.add, %broadcast.splat788
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nr ; 4 uses
  %wide.gep795 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.ns ; 4 uses
  %wide.gep796 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.ne ; 3 uses
  %wide.gep797 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep795, i64 %i.ne ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather798 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep795, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather799 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep796, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather800 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep797, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.nt = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather799 ; 2 uses
  %i.nu = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather798, %wide.masked.gather800 ; 2 uses
  %i.nv = fmul reassoc nsz arcp contract afn <8 x float> %i.nt, %i.nt
  %i.nw = fmul reassoc nsz arcp contract afn <8 x float> %i.nu, %i.nu
  %i.nx = fmul reassoc nsz arcp contract afn <8 x float> %i.nv, %broadcast.splat782
  %i.ny = fmul reassoc nsz arcp contract afn <8 x float> %i.nw, %broadcast.splat782
  %wide.gep801 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep802 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep795, i64 4
  %wide.masked.gather803 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather804 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep802, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep805 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep796, i64 4
  %wide.gep806 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep797, i64 4
  %wide.masked.gather807 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep805, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather808 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep806, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.nz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather803, %wide.masked.gather807 ; 2 uses
  %i.oa = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather804, %wide.masked.gather808 ; 2 uses
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %i.nz
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %i.oa, %i.oa
  %i.od = fmul reassoc nsz arcp contract afn <8 x float> %i.ob, %broadcast.splat784
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.oc, %broadcast.splat784
  %wide.gep809 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep810 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep795, i64 8
  %wide.masked.gather811 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep809, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather812 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep810, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep813 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep796, i64 8
  %wide.gep814 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep797, i64 8
  %wide.masked.gather815 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep813, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather816 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep814, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.of = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather811, %wide.masked.gather815 ; 2 uses
  %i.og = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather812, %wide.masked.gather816 ; 2 uses
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %i.of
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %i.og
  %i.oj = fmul reassoc nsz arcp contract afn <8 x float> %i.oh, %broadcast.splat786
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %i.oi, %broadcast.splat786
  %i.ol = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi793, %i.nx
  %i.om = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi794, %i.ny
  %i.on = fadd reassoc nsz arcp contract afn <8 x float> %i.od, %i.ol
  %i.oo = fadd reassoc nsz arcp contract afn <8 x float> %i.oe, %i.om
  %i.op = fadd reassoc nsz arcp contract afn <8 x float> %i.on, %i.oj ; 2 uses
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %i.oo, %i.ok ; 2 uses
  %index.next817 = add nuw i64 %index792, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.or = icmp eq i64 %index.next817, %n.vec780
  br i1 %i.or, label %middle.block818, label %vector.body791, !llvm.loop !13

middle.block818:                                  ; preds = %vector.body791
  %bin.rdx819 = fadd reassoc nsz arcp contract afn <8 x float> %i.oq, %i.op
  %i.os = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx819) ; 3 uses
  br i1 %cmp.n820, label %._crit_edge.i447, label %vec.epilog.iter.check826

vec.epilog.iter.check826:                         ; preds = %middle.block818
  %slprdx.init863 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.os, i64 0
  br i1 %min.epilog.iters.check827, label %vec.epilog.scalar.ph825.preheader, label %vec.epilog.ph828, !prof !59

vec.epilog.ph828:                                 ; preds = %vector.main.loop.iter.check777, %vec.epilog.iter.check826
  %vec.epilog.resume.val821 = phi i64 [ %n.vec780, %vec.epilog.iter.check826 ], [ 0, %vector.main.loop.iter.check777 ]
  %bc.resume.val822 = phi i64 [ %i.nn, %vec.epilog.iter.check826 ], [ %i.nf, %vector.main.loop.iter.check777 ]
  %bc.merge.rdx823 = phi float [ %i.os, %vec.epilog.iter.check826 ], [ 0.000000e+00, %vector.main.loop.iter.check777 ]
  %i.ot = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx823, i64 0
  %broadcast.splat831 = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat833 = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert834 = insertelement <4 x float> poison, float %i.nq, i64 0
  %broadcast.splat835 = shufflevector <4 x float> %broadcast.splatinsert834, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert838 = insertelement <4 x i64> poison, i64 %bc.resume.val822, i64 0
  %broadcast.splat839 = shufflevector <4 x i64> %broadcast.splatinsert838, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction840 = add nsw <4 x i64> %broadcast.splat839, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body841

vec.epilog.vector.body841:                        ; preds = %vec.epilog.vector.body841, %vec.epilog.ph828
  %index842 = phi i64 [ %vec.epilog.resume.val821, %vec.epilog.ph828 ], [ %index.next857, %vec.epilog.vector.body841 ]
  %vec.ind843 = phi <4 x i64> [ %induction840, %vec.epilog.ph828 ], [ %vec.ind.next858, %vec.epilog.vector.body841 ] ; 2 uses
  %vec.phi844 = phi <4 x float> [ %i.ot, %vec.epilog.ph828 ], [ %i.pg, %vec.epilog.vector.body841 ]
  %i.ou = mul nsw <4 x i64> %vec.ind843, %broadcast.splat837
  %wide.gep845 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.ou ; 4 uses
  %wide.gep846 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep845, i64 %i.ne ; 3 uses
  %wide.masked.gather847 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep845, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather848 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep846, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.ov = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather847, %wide.masked.gather848 ; 2 uses
  %i.ow = fmul reassoc nsz arcp contract afn <4 x float> %i.ov, %i.ov
  %i.ox = fmul reassoc nsz arcp contract afn <4 x float> %i.ow, %broadcast.splat831
  %wide.gep849 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep845, i64 4
  %wide.masked.gather850 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep851 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep846, i64 4
  %wide.masked.gather852 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep851, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.oy = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather850, %wide.masked.gather852 ; 2 uses
  %i.oz = fmul reassoc nsz arcp contract afn <4 x float> %i.oy, %i.oy
  %i.pa = fmul reassoc nsz arcp contract afn <4 x float> %i.oz, %broadcast.splat833
  %wide.gep853 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep845, i64 8
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep846, i64 8
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pb = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854, %wide.masked.gather856 ; 2 uses
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %i.pb
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %broadcast.splat835
  %i.pe = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi844, %i.ox
  %i.pf = fadd reassoc nsz arcp contract afn <4 x float> %i.pa, %i.pe
  %i.pg = fadd reassoc nsz arcp contract afn <4 x float> %i.pf, %i.pd ; 2 uses
  %index.next857 = add nuw i64 %index842, 4       ; 2 uses
  %vec.ind.next858 = add nsw <4 x i64> %vec.ind843, splat (i64 4)
  %i.ph = icmp eq i64 %index.next857, %n.vec829
  br i1 %i.ph, label %vec.epilog.middle.block859, label %vec.epilog.vector.body841, !llvm.loop !14

vec.epilog.middle.block859:                       ; preds = %vec.epilog.vector.body841
  %i.pi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pg) ; 2 uses
  %slprdx.init = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pi, i64 0
  br i1 %cmp.n860, label %._crit_edge.i447, label %vec.epilog.scalar.ph825.preheader

vec.epilog.scalar.ph825.preheader:                ; preds = %iter.check824, %vec.epilog.iter.check826, %vec.epilog.middle.block859
  %indvars.iv.i.ph = phi i64 [ %i.nf, %iter.check824 ], [ %i.nn, %vec.epilog.iter.check826 ], [ %i.no, %vec.epilog.middle.block859 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %iter.check824 ], [ %slprdx.init863, %vec.epilog.iter.check826 ], [ %slprdx.init, %vec.epilog.middle.block859 ]
  %i.pj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.nq, i64 2
  %i.pk = shufflevector <2 x float> %i.np, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> %i.pj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %vec.epilog.scalar.ph825

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pm = tail call i32 @llvm.smax.i32(i32 %i.lz, i32 %i.mf) ; 3 uses
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

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph825, %vec.epilog.middle.block859, %middle.block818
  %slprdx.exit = phi <4 x float> [ poison, %vec.epilog.middle.block859 ], [ poison, %middle.block818 ], [ %slprdx.acc864, %vec.epilog.scalar.ph825 ]
  %slprdx.fromloop = phi i1 [ false, %vec.epilog.middle.block859 ], [ false, %middle.block818 ], [ true, %vec.epilog.scalar.ph825 ]
  %.lcssa = phi float [ %i.pi, %vec.epilog.middle.block859 ], [ %i.os, %middle.block818 ], [ poison, %vec.epilog.scalar.ph825 ]
  %i.pu = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %slprdx.fromloop, float %i.pu, float %.lcssa
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %indvars.iv156.i
  store float %slprdx.sel, ptr %i.pv, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.pw = icmp slt i64 %indvars.iv.next157.i, %i.ni
  br i1 %i.pw, label %iter.check824, label %._crit_edge148.i

vec.epilog.scalar.ph825:                          ; preds = %vec.epilog.scalar.ph825.preheader, %vec.epilog.scalar.ph825
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph825 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph825.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x float> [ %slprdx.acc864, %vec.epilog.scalar.ph825 ], [ %slprdx.acc.ph, %vec.epilog.scalar.ph825.preheader ]
  %i.px = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.px ; 3 uses
  %i.py = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.ne ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !56
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !56
  %i.qd = load <2 x float>, ptr %gep.i, align 4, !tbaa !56
  %i.qe = load <2 x float>, ptr %i.py, align 4, !tbaa !56
  %i.qf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qa, i64 2
  %i.qg = shufflevector <2 x float> %i.qd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qh = shufflevector <4 x float> %i.qg, <4 x float> %i.qf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qc, i64 2
  %i.qj = shufflevector <2 x float> %i.qe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> %i.qi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ql = fsub reassoc nsz arcp contract afn <4 x float> %i.qh, %i.qk ; 2 uses
  %i.qm = insertelement <4 x float> %i.ql, float 1.000000e+00, i64 3
  %i.qn = fmul reassoc nsz arcp contract afn <4 x float> %i.ql, %i.qm
  %i.qo = fmul reassoc nsz arcp contract afn <4 x float> %i.qn, %i.pl
  %slprdx.acc864 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %i.qo ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.ng, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph825, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qp = icmp slt i32 %i.lh, %spec.select450
  br i1 %i.qp, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qq = sub nsw i32 %i.lv, %i.cj
  %i.qr = add i32 %i.lv, %i.cj
  %i.qs = tail call i32 @llvm.smin.i32(i32 %i.qr, i32 %.437) ; 2 uses
  %i.qt = icmp slt i32 %i.qq, %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !51
  %i.qw = icmp slt i32 %i.lv, %.437               ; 2 uses
  %i.qx = sext i32 %i.qv to i64                   ; 8 uses
  %i.qy = tail call i32 @llvm.smin.i32(i32 %i.ln, i32 %spec.select452)
  %i.qz = sub i32 %i.lv, %i.cj
  %i.ra = sext i32 %i.qz to i64                   ; 6 uses
  %i.rb = sext i32 %i.qs to i64                   ; 2 uses
  %i.rc = zext nneg i32 %i.lv to i64              ; 2 uses
  %i.rd = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.lx)
  %i.re = sub i32 0, %smin548
  %i.rf = sext i32 %i.re to i64                   ; 4 uses
  %i.rg = add i64 %indvars.iv545, %i.rf           ; 7 uses
  %i.rh = sext i32 %i.mf to i64                   ; 5 uses
  %i.ri = sext i32 %i.lg to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.ri) ; 3 uses
  %i.rj = sext i32 %spec.select450 to i64         ; 3 uses
  %i.rk = sext i32 %i.ln to i64
  %i.rl = sext i32 %spec.select452 to i64
  %i.rm = sext i32 %i.qy to i64
  %invariant.op = add nsw i64 %i.rj, -1
  %i.rn = shl nsw i64 %i.rg, 2
  %scevgep701 = getelementptr i8, ptr %i.ht, i64 %i.rn ; 3 uses
  %i.ro = add i64 %i.hm, %i.rf
  %smax702 = tail call i64 @llvm.smax.i64(i64 %i.ro, i64 %i.rh) ; 2 uses
  %i.rp = shl nsw i64 %smax702, 2
  %scevgep703 = getelementptr i8, ptr %i.ht, i64 %i.rp ; 3 uses
  %i.rq = sub i64 %smax564, %i.fs
  %i.rr = mul i64 %i.gg, %i.rq                    ; 2 uses
  %i.rs = shl nsw i64 %i.rg, 4                    ; 2 uses
  %i.rt = shl nsw i64 %i.qx, 2                    ; 2 uses
  %i.ru = getelementptr i8, ptr %0, i64 %i.rr
  %i.rv = getelementptr i8, ptr %i.ru, i64 %i.rs
  %scevgep704 = getelementptr i8, ptr %i.rv, i64 %i.rt
  %i.rw = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.rj, i64 %i.rw)
  %i.rx = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.rx, 2
  %i.ry = add i64 %reass.sub, -4
  %i.rz = mul i64 %i.ry, %i.s
  %i.sa = shl nsw i64 %smax702, 4
  %i.sb = add i64 %i.rz, %i.sa                    ; 2 uses
  %i.sc = getelementptr i8, ptr %scevgep705, i64 %i.sb
  %scevgep707 = getelementptr i8, ptr %i.sc, i64 %i.rt
  %i.sd = getelementptr i8, ptr %0, i64 %i.rr
  %scevgep708 = getelementptr i8, ptr %i.sd, i64 %i.rs
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.sb
  %i.se = sub nsw i64 %i.rb, %i.ra                ; 7 uses
  %min.iters.check748 = icmp ult i64 %i.se, 8
  %min.iters.check749 = icmp ult i64 %i.se, 32
  %i.sf = and i64 %i.se, 24
  %n.vec751 = and i64 %i.se, -32                  ; 4 uses
  %i.sg = add nsw i64 %n.vec751, %i.ra
  %invariant.gep894 = getelementptr [4 x i8], ptr %i.ht, i64 %i.ra
  %cmp.n765 = icmp eq i64 %i.se, %n.vec751
  %min.epilog.iters.check = icmp eq i64 %i.sf, 0
  %n.vec767 = and i64 %i.se, -8                   ; 3 uses
  %i.sh = add nsw i64 %n.vec767, %i.ra
  %invariant.gep896 = getelementptr [4 x i8], ptr %i.ht, i64 %i.ra
  %cmp.n772 = icmp eq i64 %i.se, %n.vec767
  %i.si = add i64 %5, %i.rf
  %i.sj = tail call i64 @llvm.smax.i64(i64 %i.si, i64 %i.rh)
  %i.sk = add i64 %indvars.iv545, %i.rf
  %i.sl = sub i64 %i.sj, %i.sk                    ; 3 uses
  %min.iters.check725 = icmp ult i64 %i.sl, 9
  %bound0712 = icmp ult ptr %scevgep701, %scevgep707
  %bound1713 = icmp ult ptr %scevgep704, %scevgep703
  %found.conflict714 = and i1 %bound0712, %bound1713
  %bound0716 = icmp ult ptr %scevgep701, %scevgep710
  %bound1717 = icmp ult ptr %scevgep708, %scevgep703
  %found.conflict718 = and i1 %bound0716, %bound1717
  %i.sm = or i1 %found.conflict718, %stride.check719
  %conflict.rdx = or i1 %found.conflict714, %i.sm
  %bound0720 = icmp ult ptr %scevgep701, %scevgep711
  %bound1721 = icmp ult ptr %i.io, %scevgep703
  %found.conflict722 = and i1 %bound0720, %bound1721
  %conflict.rdx723 = or i1 %conflict.rdx, %found.conflict722
  %i.sn = and i64 %i.sl, 7                        ; 2 uses
  %i.so = icmp eq i64 %i.sn, 0
  %i.sp = select i1 %i.so, i64 8, i64 %i.sn
  %n.vec727 = sub i64 %i.sl, %i.sp                ; 2 uses
  %i.sq = add i64 %i.rg, %n.vec727
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qt, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check748, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check749, label %vec.epilog.ph, label %vector.body752

vector.body752:                                   ; preds = %vector.main.loop.iter.check, %vector.body752
  %index753 = phi i64 [ %index.next761, %vector.body752 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.su, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi754 = phi <8 x float> [ %i.sv, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi755 = phi <8 x float> [ %i.sw, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi756 = phi <8 x float> [ %i.sx, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep895 = getelementptr [4 x i8], ptr %invariant.gep894, i64 %index753 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %gep895, i64 32
  %i.ss = getelementptr inbounds nuw i8, ptr %gep895, i64 64
  %i.st = getelementptr inbounds nuw i8, ptr %gep895, i64 96
  %wide.load757 = load <8 x float>, ptr %gep895, align 4, !tbaa !56
  %wide.load758 = load <8 x float>, ptr %i.sr, align 4, !tbaa !56
  %wide.load759 = load <8 x float>, ptr %i.ss, align 4, !tbaa !56
  %wide.load760 = load <8 x float>, ptr %i.st, align 4, !tbaa !56
  %i.su = fadd reassoc nsz arcp contract afn <8 x float> %wide.load757, %vec.phi ; 2 uses
  %i.sv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load758, %vec.phi754 ; 2 uses
  %i.sw = fadd reassoc nsz arcp contract afn <8 x float> %wide.load759, %vec.phi755 ; 2 uses
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load760, %vec.phi756 ; 2 uses
  %index.next761 = add nuw i64 %index753, 32      ; 2 uses
  %i.sy = icmp eq i64 %index.next761, %n.vec751
  br i1 %i.sy, label %middle.block762, label %vector.body752, !llvm.loop !16

middle.block762:                                  ; preds = %vector.body752
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.sv, %i.su
  %bin.rdx763 = fadd reassoc nsz arcp contract afn <8 x float> %i.sw, %bin.rdx
  %bin.rdx764 = fadd reassoc nsz arcp contract afn <8 x float> %i.sx, %bin.rdx763
  %i.sz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx764) ; 3 uses
  br i1 %cmp.n765, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block762
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec751, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.sz, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.ta = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index768 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next771, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi769 = phi <8 x float> [ %i.ta, %vec.epilog.ph ], [ %i.tb, %vec.epilog.vector.body ]
  %gep897 = getelementptr [4 x i8], ptr %invariant.gep896, i64 %index768
  %wide.load770 = load <8 x float>, ptr %gep897, align 4, !tbaa !56
  %i.tb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load770, %vec.phi769 ; 2 uses
  %index.next771 = add nuw i64 %index768, 8       ; 2 uses
  %i.tc = icmp eq i64 %index.next771, %n.vec767
  br i1 %i.tc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.td = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tb) ; 2 uses
  br i1 %cmp.n772, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.ra, %iter.check ], [ %i.sg, %vec.epilog.iter.check ], [ %i.sh, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.sz, %vec.epilog.iter.check ], [ %i.td, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block762, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.td, %vec.epilog.middle.block ], [ %i.sz, %middle.block762 ], [ %i.to, %.lr.ph479 ] ; 2 uses
  %i.te = mul nsw i64 %indvars.iv565, %i.s
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.te ; 2 uses
  %i.tg = mul i64 %i.iz, %indvars.iv565
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tg ; 2 uses
  %i.ti = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.tj = load float, ptr %i.i, align 8, !tbaa !39
  %i.tk = fcmp reassoc nsz arcp contract afn olt float %i.tj, 0.000000e+00
  br i1 %i.tk, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.qw, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.qw, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.tl = fmul reassoc nsz arcp contract afn float %i.ti, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.tf, i64 %i.qx
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.to, %.lr.ph479 ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %indvars.iv532
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !56
  %i.to = fadd reassoc nsz arcp contract afn float %i.tn, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.tp = icmp slt i64 %indvars.iv.next533, %i.rb
  br i1 %i.tp, label %.lr.ph479, label %._crit_edge, !llvm.loop !18

bb.v:                                             ; preds = %.lr.ph489, %bb.v
  %indvars.iv542 = phi i64 [ %i.rc, %.lr.ph489 ], [ %indvars.iv.next543, %bb.v ] ; 4 uses
  %.1487 = phi float [ %.0404.lcssa, %.lr.ph489 ], [ %i.tx, %bb.v ]
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %indvars.iv542
  %i.tq = load float, ptr %gep644, align 4, !tbaa !56
  %i.tr = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.ts = add i32 %i.tr, %i.fw
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.tt
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !56
  %i.tw = fsub reassoc nsz arcp contract afn float %i.tq, %i.tv
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tw, %.1487 ; 2 uses
  %i.ty = fmul reassoc nsz arcp contract afn float %i.tl, %i.tx
  %i.tz = fptosi float %i.ty to i32               ; 2 uses
  %i.ua = add nsw i32 %i.tz, 1065353216
  %i.ub = icmp sgt i32 %i.tz, -1056964609
  %i.uc = bitcast i32 %i.ua to float
  %i.ud = shl nuw nsw i64 %indvars.iv542, 2       ; 2 uses
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %i.ud ; 3 uses
  %i.ue = getelementptr i8, ptr %gep491, i64 8
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !56
  %invariant.gep484 = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ud ; 2 uses
  %i.ug = select i1 %i.ub, float %i.uc, float 0.000000e+00
  %i.uh = load <2 x float>, ptr %gep491, align 4, !tbaa !56
  %i.ui = insertelement <4 x float> poison, float %i.ug, i64 0
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uk = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.uf, i64 2
  %i.ul = shufflevector <2 x float> %i.uh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> %i.uk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.un = fmul reassoc nsz arcp contract afn <4 x float> %i.uj, %i.um
  %i.uo = load <4 x float>, ptr %invariant.gep484, align 4, !tbaa !56
  %i.up = fadd reassoc nsz arcp contract afn <4 x float> %i.uo, %i.un
  store <4 x float> %i.up, ptr %invariant.gep484, align 4, !tbaa !56
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %gep491, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.uq, i32 0, i32 3, i32 1)
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
end_hunk_0
