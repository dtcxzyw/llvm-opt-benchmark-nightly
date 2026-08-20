inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
  br i1 %i.dq, label %compute_slice_height.exit, label %bb.l

bb.l:                                             ; preds = %.preheader.6.i
  %i.dr = srem i32 %i.cu, 53                      ; 3 uses
  %.not.6.i = icmp eq i32 %i.dr, 0
  br i1 %.not.6.i, label %compute_slice_height.exit, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.l
  %spec.select.6.i = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 %spec.select44.5.i) ; 2 uses
  %spec.select44.6.i = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 %spec.select.6.i) ; 2 uses
  %i.ds = srem i32 %i.cu, 68                      ; 3 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %compute_slice_height.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.7.i
  %i.du = srem i32 %i.cu, 52                      ; 3 uses
  %.not.7.i = icmp eq i32 %i.du, 0
  br i1 %.not.7.i, label %compute_slice_height.exit, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %bb.m
  %spec.select.7.i = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 %spec.select44.6.i) ; 2 uses
  %spec.select44.7.i = tail call i32 @llvm.smax.i32(i32 %i.du, i32 %spec.select.7.i) ; 2 uses
  %i.dv = srem i32 %i.cu, 69                      ; 3 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %compute_slice_height.exit, label %bb.n

bb.n:                                             ; preds = %.preheader.8.i
  %i.dx = srem i32 %i.cu, 51                      ; 2 uses
  %.not.8.i = icmp eq i32 %i.dx, 0
  br i1 %.not.8.i, label %compute_slice_height.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = icmp sgt i32 %i.dv, %spec.select44.7.i
  %i.dz = icmp sgt i32 %i.du, %spec.select.7.i
  %i.ea = icmp sgt i32 %i.ds, %spec.select44.6.i
  %i.eb = icmp sgt i32 %i.dr, %spec.select.6.i
  %i.ec = icmp sgt i32 %i.dp, %spec.select44.5.i
  %i.ed = icmp sgt i32 %i.do, %spec.select.5.i
  %i.ee = icmp sgt i32 %i.dm, %spec.select44.4.i
  %i.ef = icmp sgt i32 %i.dl, %spec.select.4.i
  %i.eg = icmp sgt i32 %i.dj, %spec.select44.3.i
  %i.eh = icmp sgt i32 %i.di, %spec.select.3.i
  %i.ei = icmp sgt i32 %i.dg, %spec.select44.2.i
  %i.ej = icmp sgt i32 %i.df, %spec.select.2.i
  %i.ek = icmp sgt i32 %i.dd, %spec.select44.1.i
  %i.el = icmp sgt i32 %i.dc, %spec.select.1.i
  %i.em = icmp sgt i32 %i.da, %spec.select44.i
  %i.en = icmp sgt i32 %i.cz, %spec.select.i442
  %i.eo = icmp sgt i32 %i.cx, %i.cv
  %spec.select.8.i = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 %spec.select44.7.i)
  %i.ep = icmp sgt i32 %i.dx, %spec.select.8.i
  %i.eq = select i1 %i.eo, i32 61, i32 60
  %i.er = select i1 %i.en, i32 59, i32 %i.eq
  %i.es = select i1 %i.em, i32 62, i32 %i.er
  %i.et = select i1 %i.el, i32 58, i32 %i.es
  %i.eu = select i1 %i.ek, i32 63, i32 %i.et
  %i.ev = select i1 %i.ej, i32 57, i32 %i.eu
  %i.ew = select i1 %i.ei, i32 64, i32 %i.ev
  %i.ex = select i1 %i.eh, i32 56, i32 %i.ew
  %i.ey = select i1 %i.eg, i32 65, i32 %i.ex
  %i.ez = select i1 %i.ef, i32 55, i32 %i.ey
  %i.fa = select i1 %i.ee, i32 66, i32 %i.ez
  %i.fb = select i1 %i.ed, i32 54, i32 %i.fa
  %i.fc = select i1 %i.ec, i32 67, i32 %i.fb
  %i.fd = select i1 %i.eb, i32 53, i32 %i.fc
  %i.fe = select i1 %i.ea, i32 68, i32 %i.fd
  %i.ff = select i1 %i.dz, i32 52, i32 %i.fe
  %i.fg = select i1 %i.dy, i32 69, i32 %i.ff
  %i.fh = select i1 %i.ep, i32 51, i32 %i.fg
  br label %compute_slice_height.exit

compute_slice_height.exit:                        ; preds = %define_patches.exit, %.preheader.preheader.i, %bb.f, %.preheader.1.i, %bb.g, %.preheader.2.i, %bb.h, %.preheader.3.i, %bb.i, %.preheader.4.i, %bb.j, %.preheader.5.i, %bb.k, %.preheader.6.i, %bb.l, %.preheader.7.i, %bb.m, %.preheader.8.i, %bb.n, %bb.o
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
  %.0.i = phi i64 [ 72, %bb.p ], [ 72, %compute_slice_height.exit ], [ %i.fr, %bb.q ] ; 8 uses
  %i.fs = icmp sgt i32 %i.cu, 0
  br i1 %i.fs, label %.preheader474.lr.ph, label %._crit_edge524

.preheader474.lr.ph:                              ; preds = %compute_slice_width.exit
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
  br i1 %i.gb, label %.preheader474.preheader, label %.preheader474.us

.preheader474.preheader:                          ; preds = %.preheader474.lr.ph
  %i.gc = zext i32 %.539.i to i64                 ; 3 uses
  %i.gd = shl nuw nsw i64 %.0.i, 4
  %i.ge = shl i32 %.539.i, 2
  %i.gf = mul nsw i64 %i.u, %i.gc
  %i.gg = shl i64 %i.gf, 2
  %i.gh = shl nsw i64 %i.u, 2
  %i.gi = shl nsw i64 %i.fu, 2
  %i.gj = mul nsw i64 %.0.i, -4
  %i.gk = shl nsw i64 %i.u, 2
  %scevgep707.a = getelementptr i8, ptr %0, i64 -4
  %scevgep711.a = getelementptr i8, ptr %0, i64 -4
  %i.gl = sub i32 0, %.539.i
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr i8, ptr %i.cs, i64 %i.gi
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %broadcast.splatinsert794 = insertelement <8 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat795 = shufflevector <8 x i64> %broadcast.splatinsert794, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert843 = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat844 = shufflevector <4 x i64> %broadcast.splatinsert843, <4 x i64> poison, <4 x i32> zeroinitializer
  %stride.check721 = icmp slt i32 %i.t, 0
  %i.gp = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %stride.check = icmp slt i32 %i.t, 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat676 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert677 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat678 = shufflevector <4 x float> %broadcast.splatinsert677, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat680 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gq = insertelement <4 x float> %i.gp, float 1.000000e+00, i64 3
  br label %.preheader474

.preheader474.us:                                 ; preds = %.preheader474.lr.ph, %.preheader474.us
  %.0409523.us = phi i32 [ %i.gr, %.preheader474.us ], [ 0, %.preheader474.lr.ph ]
  %i.gr = add nsw i32 %.0409523.us, %.539.i       ; 2 uses
  %i.gs = icmp slt i32 %i.gr, %i.cu
  br i1 %i.gs, label %.preheader474.us, label %._crit_edge524

.preheader474:                                    ; preds = %.preheader474.preheader, %._crit_edge521
  %indvar664 = phi i64 [ 0, %.preheader474.preheader ], [ %indvar.next665, %._crit_edge521 ] ; 4 uses
  %indvar655 = phi i32 [ 0, %.preheader474.preheader ], [ %indvar.next656, %._crit_edge521 ] ; 2 uses
  %i.gt = phi i32 [ %i.cu, %.preheader474.preheader ], [ %i.hk, %._crit_edge521 ] ; 3 uses
  %i.gu = phi i32 [ %i.fj, %.preheader474.preheader ], [ %i.hl, %._crit_edge521 ] ; 2 uses
  %i.gv = phi i32 [ %i.fj, %.preheader474.preheader ], [ %i.hm, %._crit_edge521 ] ; 3 uses
  %indvars.iv561 = phi i64 [ 0, %.preheader474.preheader ], [ %indvars.iv.next562, %._crit_edge521 ] ; 6 uses
  %indvars.iv = phi i32 [ %.539.i, %.preheader474.preheader ], [ %indvars.iv.next, %._crit_edge521 ] ; 2 uses
  %i.gw = mul i64 %indvar664, %i.gm               ; 2 uses
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = trunc i64 %i.gw to i32
  %i.gz = add i32 %i.gy, -1
  %i.ha = mul i32 %i.ge, %indvar655
  %i.hb = mul i64 %i.gg, %indvar664               ; 2 uses
  %i.hc = mul i64 %indvar664, %i.gc
  %i.hd = xor i64 %i.hc, -1
  %i.he = add nuw i64 %indvars.iv561, 1
  %indvars585.a = trunc i64 %indvars.iv561 to i32 ; 5 uses
  %i.hf = icmp sgt i32 %i.gv, 0
  br i1 %i.hf, label %.lr.ph520, label %._crit_edge521

.lr.ph520:                                        ; preds = %.preheader474
  %i.hg = add nsw i32 %.539.i, %indvars585.a
  %i.hh = getelementptr i8, ptr %0, i64 %i.hb
  %i.hi = getelementptr i8, ptr %0, i64 %i.hb
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  br label %bb.r

._crit_edge524:                                   ; preds = %.preheader474.us, %._crit_edge521, %compute_slice_width.exit
  tail call void @free(ptr noundef %i.aj) #9
  tail call void @free(ptr noundef %i.cs) #9
  ret void

._crit_edge521:                                   ; preds = %.loopexit470, %.preheader474
  %i.hk = phi i32 [ %i.gt, %.preheader474 ], [ %i.iz, %.loopexit470 ] ; 2 uses
  %i.hl = phi i32 [ %i.gu, %.preheader474 ], [ %i.ja, %.loopexit470 ]
  %i.hm = phi i32 [ %i.gv, %.preheader474 ], [ %i.ja, %.loopexit470 ]
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, %i.gc ; 2 uses
  %indvars = trunc i64 %indvars.iv.next562 to i32
  %i.hn = icmp sgt i32 %i.hk, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next656 = add i32 %indvar655, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hn, label %.preheader474, label %._crit_edge524, !llvm.loop !31

bb.r:                                             ; preds = %.lr.ph520, %.loopexit470
  %indvar = phi i64 [ 0, %.lr.ph520 ], [ %indvar.next, %.loopexit470 ] ; 7 uses
  %i.ho = phi i32 [ %i.gt, %.lr.ph520 ], [ %i.iz, %.loopexit470 ]
  %i.hp = phi i32 [ %i.gu, %.lr.ph520 ], [ %i.ja, %.loopexit470 ]
  %i.hq = phi i32 [ %i.gt, %.lr.ph520 ], [ %i.jc, %.loopexit470 ] ; 3 uses
  %indvars.iv544 = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next545, %.loopexit470 ] ; 20 uses
  %i.hr = phi i32 [ %i.gv, %.lr.ph520 ], [ %i.ja, %.loopexit470 ] ; 5 uses
  %i.hs = add nuw i64 %.0.i, %indvars.iv544
  %sext = shl i64 %i.hs, 32
  %i.ht = ashr exact i64 %sext, 32
  %i.hu = mul i64 %.0.i, %indvar
  %i.hv = or disjoint i64 %indvars.iv544, 1
  %i.hw = mul i64 %i.gj, %indvar
  %scevgep702 = getelementptr i8, ptr %i.go, i64 %i.hw ; 2 uses
  %i.hx = or disjoint i64 %indvars.iv544, 1
  %i.hy = or disjoint i64 %indvars.iv544, 1
  %i.hz = mul i64 %.0.i, %indvar
  %i.ia = mul i64 %i.gd, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.ia
  %i.ib = getelementptr i8, ptr %1, i64 %i.ia
  %scevgep660.a = getelementptr i8, ptr %i.ib, i64 16
  %i.ic = or disjoint i64 %indvars.iv544, 1
  %i.id = mul i64 %.0.i, %indvar
  %i.ie = xor i64 %i.id, -1
  %scevgep666 = getelementptr i8, ptr %i.hh, i64 %i.ia
  %scevgep667 = getelementptr i8, ptr %i.hj, i64 %i.ia
  %i.if = or disjoint i64 %indvars.iv544, 1
  %i.ig = mul i64 %.0.i, %indvar
  %indvars584 = trunc i64 %indvars.iv544 to i32   ; 13 uses
  %i.ih = sub nsw i64 0, %indvars.iv544
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.ih ; 15 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.hg, i32 %i.hq) ; 6 uses
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, %.0.i ; 3 uses
  %i.ij = trunc i64 %indvars.iv.next545 to i32
  %i.ik = tail call i32 @llvm.smin.i32(i32 %i.ij, i32 %i.hr) ; 8 uses
  %i.il = icmp sgt i32 %., %indvars585.a          ; 3 uses
  br i1 %i.il, label %.lr.ph, label %.preheader473

.lr.ph:                                           ; preds = %bb.r
  %i.im = sext i32 %i.ik to i64
  %i.in = sub nsw i64 %i.im, %indvars.iv544
  %i.io = shl nsw i64 %i.in, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hq, i32 %indvars.iv)
  %i.ip = add i32 %., %i.gx
  %i.iq = add i32 %i.gz, %.
  %xtraiter = and i32 %i.ip, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407475.prol = phi i32 [ %i.ix, %.prol.preheader ], [ %indvars585.a, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ir = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.is = mul nsw i32 %i.ir, %.0407475.prol
  %i.it = add nsw i32 %i.is, %indvars584
  %i.iu = shl nsw i32 %i.it, 2
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iw, i8 0, i64 %i.io, i1 false)
  %i.ix = add nsw i32 %.0407475.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407475.unr = phi i32 [ %indvars585.a, %.lr.ph ], [ %i.ix, %.prol.preheader ]
  %i.iy = icmp ult i32 %i.iq, 3
  br i1 %i.iy, label %.preheader473.loopexit, label %.lr.ph.new

.preheader473.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.ct, align 4, !tbaa !30 ; 2 uses
  %.pre598 = load i32, ptr %i.fi, align 4, !tbaa !19 ; 2 uses
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.loopexit, %bb.r
  %i.iz = phi i32 [ %.pre, %.preheader473.loopexit ], [ %i.ho, %bb.r ] ; 2 uses
  %i.ja = phi i32 [ %.pre598, %.preheader473.loopexit ], [ %i.hp, %bb.r ] ; 5 uses
  %i.jb = phi i32 [ %.pre598, %.preheader473.loopexit ], [ %i.hr, %bb.r ] ; 7 uses
  %i.jc = phi i32 [ %.pre, %.preheader473.loopexit ], [ %i.hq, %bb.r ] ; 5 uses
  %i.jd = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 9 uses
  %i.je = add i32 %indvars584, %i.fy              ; 2 uses
  %i.jf = add i32 %i.ik, %i.cl                    ; 3 uses
  %i.jg = sext i32 %i.je to i64
  %i.jh = shl nsw i64 %i.jg, 2
  %scevgep.i = getelementptr i8, ptr %i.ii, i64 %i.jh
  %i.ji = sub i32 %i.cl, %indvars584
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jl = xor i32 %indvars584, -1
  %i.jm = add i32 %i.ik, %i.jl
  %i.jn = sext i32 %i.jb to i64
  %i.jo = shl nsw i64 %i.jn, 2
  %smin546 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %indvars584)
  %invariant.gep641 = getelementptr [4 x i8], ptr %i.ii, i64 %i.fu
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.ii, i64 %i.fu
  %scevgep713.a = getelementptr i8, ptr %i.jd, i64 12
  %i.jp = sext i32 %i.hr to i64
  %smin750 = tail call i64 @llvm.smin.i64(i64 %i.jp, i64 %i.ht)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407475 = phi i32 [ %i.kr, %.lr.ph.new ], [ %.0407475.unr, %.prol.loopexit ] ; 5 uses
  %i.jq = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jr = mul nsw i32 %i.jq, %.0407475
  %i.js = add nsw i32 %i.jr, %indvars584
  %i.jt = shl nsw i32 %i.js, 2
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ju
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jv, i8 0, i64 %i.io, i1 false)
  %i.jw = add nsw i32 %.0407475, 1
  %i.jx = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jy = mul nsw i32 %i.jx, %i.jw
  %i.jz = add nsw i32 %i.jy, %indvars584
  %i.ka = shl nsw i32 %i.jz, 2
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kb
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kc, i8 0, i64 %i.io, i1 false)
  %i.kd = add nsw i32 %.0407475, 2
  %i.ke = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.kf = mul nsw i32 %i.ke, %i.kd
  %i.kg = add nsw i32 %i.kf, %indvars584
  %i.kh = shl nsw i32 %i.kg, 2
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ki
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kj, i8 0, i64 %i.io, i1 false)
  %i.kk = add nsw i32 %.0407475, 3
  %i.kl = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.km = mul nsw i32 %i.kl, %i.kk
  %i.kn = add nsw i32 %i.km, %indvars584
  %i.ko = shl nsw i32 %i.kn, 2
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kp
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kq, i8 0, i64 %i.io, i1 false)
  %i.kr = add nsw i32 %.0407475, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kr, %smin
  br i1 %exitcond.not.3, label %.preheader473.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge503
  br i1 %i.j, label %.preheader469, label %.preheader471

.preheader471:                                    ; preds = %bb.s
  br i1 %i.il, label %.lr.ph509, label %.loopexit470

.lr.ph509:                                        ; preds = %.preheader471
  %factor.op.mul = shl i32 %i.jb, 2
  %i.ks = sext i32 %i.hr to i64
  %i.kt = icmp slt i64 %indvars.iv544, %i.ks
  br i1 %i.kt, label %.preheader462.lr.ph.preheader, label %.loopexit470

.preheader462.lr.ph.preheader:                    ; preds = %.lr.ph509
  %i.ku = sext i32 %i.ik to i64                   ; 3 uses
  %i.kv = sext i32 %. to i64                      ; 2 uses
  %i.kw = mul i32 %i.ha, %i.jb
  %i.kx = shl i32 %i.jb, 2
  %smax661 = tail call i64 @llvm.smax.i64(i64 %i.ku, i64 %i.ic)
  %i.ky = add i64 %smax661, %i.ie
  %i.kz = shl nsw i64 %i.ky, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep660.a, i64 %i.kz
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kv, i64 %i.he)
  %i.la = add i64 %smax668, %i.hd
  %i.lb = mul i64 %i.gh, %i.la
  %i.lc = getelementptr i8, ptr %scevgep667, i64 %i.lb
  %scevgep669 = getelementptr i8, ptr %i.lc, i64 %i.kz
  %smax670 = tail call i64 @llvm.smax.i64(i64 %i.ku, i64 %i.hy) ; 2 uses
  %i.ld = sub i64 %smax670, %i.hz                 ; 2 uses
  %min.iters.check672 = icmp ult i64 %i.ld, 5
  %i.le = and i64 %smax670, 3                     ; 2 uses
  %i.lf = icmp eq i64 %i.le, 0
  %i.lg = select i1 %i.lf, i64 4, i64 %i.le
  %n.vec674 = sub i64 %i.ld, %i.lg                ; 2 uses
  %i.lh = add i64 %indvars.iv544, %n.vec674
  br label %.preheader462.lr.ph

.preheader469:                                    ; preds = %bb.s
  br i1 %i.il, label %.lr.ph516, label %.loopexit470

.lr.ph516:                                        ; preds = %.preheader469
  %factor.op.mul517 = shl i32 %i.jb, 2
  %i.li = sext i32 %i.hr to i64
  %i.lj = icmp slt i64 %indvars.iv544, %i.li
  br i1 %i.lj, label %.preheader.lr.ph.preheader, label %.loopexit470

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph516
  %i.lk = sext i32 %i.ik to i64                   ; 2 uses
  %i.ll = sext i32 %. to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %i.lk, i64 %i.if) ; 2 uses
  %i.lm = sub i64 %smax, %i.ig                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.lm, 4
  %i.ln = and i64 %smax, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.lm, %i.ln               ; 2 uses
  %i.lo = add i64 %indvars.iv544, %n.vec
  %cmp.n = icmp eq i64 %i.ln, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader473, %._crit_edge503
  %indvars.iv566 = phi i64 [ 0, %.preheader473 ], [ %indvars.iv.next567, %._crit_edge503 ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv566 ; 4 uses
  %i.lq = load i16, ptr %i.lp, align 8, !tbaa !25 ; 5 uses
  %i.lr = icmp sgt i16 %i.lq, 0
  %i.ls = sext i16 %i.lq to i32                   ; 2 uses
  %i.lt = sub nsw i32 0, %i.ls
  %i.lu = select i1 %i.lr, i32 0, i32 %i.lt       ; 2 uses
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lu, i32 %indvars585.a) ; 7 uses
  %i.lw = icmp slt i16 %i.lq, 0
  %spec.select452 = tail call i16 @llvm.smax.i16(i16 %i.lq, i16 0)
  %spec.select = zext nneg i16 %spec.select452 to i32 ; 2 uses
  %i.lx = sub i32 %i.jc, %spec.select
  %spec.select449 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.lx) ; 3 uses
  %i.ly = tail call i16 @llvm.smin.i16(i16 %i.lq, i16 0)
  %i.lz = sext i16 %i.ly to i32
  %i.ma = sub nsw i32 %i.cl, %i.lz
  %i.mb = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %i.ma) ; 2 uses
  %i.mc = add nsw i32 %i.cl, %spec.select
  %i.md = xor i32 %i.mc, -1
  %i.me = add i32 %i.jc, %i.md
  %spec.select451 = tail call i32 @llvm.smin.i32(i32 %spec.select449, i32 %i.me) ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !28 ; 2 uses
  %i.mh = sext i16 %i.mg to i32                   ; 3 uses
  %i.mi = sub nsw i32 0, %i.mh
  %i.mj = tail call i32 @llvm.smax.i32(i32 %indvars584, i32 %i.mi) ; 5 uses
  %i.mk = sub i32 %i.jb, %i.mh                    ; 2 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.ik, i32 %i.mk) ; 3 uses
  %i.ml = add nsw i32 %indvars584, %i.mh          ; 2 uses
  %i.mm = tail call i32 @llvm.smin.i32(i32 %indvars584, i32 %i.ml)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mm) ; 2 uses
  %i.mn = sub nsw i32 %indvars584, %..i           ; 5 uses
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
  br i1 %i.ni, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mx, %i.nb
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
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

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !29
  %i.ns = sext i32 %i.nr to i64                   ; 4 uses
  %i.nt = sext i32 %i.mx to i64                   ; 5 uses
  %i.nu = add i32 %i.nb, 1
  %i.nv = sext i32 %i.mn to i64
  %i.nw = sext i32 %i.mt to i64
  %i.nx = xor i32 %.v138.i, -1
  %i.ny = add i32 %i.jc, %i.nx
  %smin781 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.ny)
  %i.nz = add i32 %i.mw, %smin781                 ; 3 uses
  %i.oa = zext i32 %i.nz to i64
  %i.ob = add nuw nsw i64 %i.oa, 1                ; 5 uses
  %min.iters.check783 = icmp ult i32 %i.nz, 3
  %min.iters.check785 = icmp ult i32 %i.nz, 15
  %i.oc = and i64 %i.ob, 12
  %n.vec787 = and i64 %i.ob, 8589934576           ; 4 uses
  %i.od = add nsw i64 %n.vec787, %i.nt            ; 2 uses
  %broadcast.splatinsert796 = insertelement <8 x i64> poison, i64 %i.nt, i64 0
  %broadcast.splat797 = shufflevector <8 x i64> %broadcast.splatinsert796, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat797, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n827 = icmp eq i64 %i.ob, %n.vec787
  %min.epilog.iters.check834 = icmp eq i64 %i.oc, 0
  %n.vec836 = and i64 %i.ob, 8589934588           ; 3 uses
  %i.oe = add nsw i64 %n.vec836, %i.nt
  %cmp.n867 = icmp eq i64 %i.ob, %n.vec836
  br label %iter.check831

iter.check831:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nv, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.of = load float, ptr %i.jd, align 4, !tbaa !11 ; 3 uses
  %i.og = load <2 x float>, ptr %i.jj, align 4, !tbaa !11 ; 5 uses
  br i1 %min.iters.check783, label %vec.epilog.scalar.ph832.preheader, label %vector.main.loop.iter.check784

vector.main.loop.iter.check784:                   ; preds = %iter.check831
  br i1 %min.iters.check785, label %vec.epilog.ph835, label %vector.ph786

vector.ph786:                                     ; preds = %vector.main.loop.iter.check784
  %broadcast.splatinsert788 = insertelement <8 x float> poison, float %i.of, i64 0
  %broadcast.splat789 = shufflevector <8 x float> %broadcast.splatinsert788, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat791 = shufflevector <2 x float> %i.og, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat793 = shufflevector <2 x float> %i.og, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body798

vector.body798:                                   ; preds = %vector.body798, %vector.ph786
  %index799 = phi i64 [ 0, %vector.ph786 ], [ %index.next824, %vector.body798 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph786 ], [ %vec.ind.next, %vector.body798 ] ; 3 uses
  %vec.phi800 = phi <8 x float> [ zeroinitializer, %vector.ph786 ], [ %i.pf, %vector.body798 ]
  %vec.phi801 = phi <8 x float> [ zeroinitializer, %vector.ph786 ], [ %i.pg, %vector.body798 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.oh = mul nsw <8 x i64> %vec.ind, %broadcast.splat795
  %i.oi = mul nsw <8 x i64> %step.add, %broadcast.splat795
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.oh ; 4 uses
  %wide.gep802 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.oi ; 4 uses
  %wide.gep803 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.ns ; 3 uses
  %wide.gep804 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep802, i64 %i.ns ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather805 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep802, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather806 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep803, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather807 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep804, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.oj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather806 ; 2 uses
  %i.ok = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather805, %wide.masked.gather807 ; 2 uses
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %i.oj
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %i.ok
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %broadcast.splat789
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat789
  %wide.gep808 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep809 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 4
  %wide.masked.gather810 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep808, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather811 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep809, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep812 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 4
  %wide.gep813 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep804, i64 4
  %wide.masked.gather814 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep812, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather815 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep813, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.op = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather810, %wide.masked.gather814 ; 2 uses
  %i.oq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather811, %wide.masked.gather815 ; 2 uses
  %i.or = fmul reassoc nsz arcp contract afn <8 x float> %i.op, %i.op
  %i.os = fmul reassoc nsz arcp contract afn <8 x float> %i.oq, %i.oq
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %i.or, %broadcast.splat791
  %i.ou = fmul reassoc nsz arcp contract afn <8 x float> %i.os, %broadcast.splat791
  %wide.gep816 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep817 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 8
  %wide.masked.gather818 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep816, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather819 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep817, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep820 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 8
  %wide.gep821 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep804, i64 8
  %wide.masked.gather822 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep820, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather823 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep821, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.ov = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather818, %wide.masked.gather822 ; 2 uses
  %i.ow = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather819, %wide.masked.gather823 ; 2 uses
  %i.ox = fmul reassoc nsz arcp contract afn <8 x float> %i.ov, %i.ov
  %i.oy = fmul reassoc nsz arcp contract afn <8 x float> %i.ow, %i.ow
  %i.oz = fmul reassoc nsz arcp contract afn <8 x float> %i.ox, %broadcast.splat793
  %i.pa = fmul reassoc nsz arcp contract afn <8 x float> %i.oy, %broadcast.splat793
  %i.pb = fadd reassoc nsz arcp contract afn <8 x float> %i.on, %vec.phi800
  %i.pc = fadd reassoc nsz arcp contract afn <8 x float> %i.oo, %vec.phi801
  %i.pd = fadd reassoc nsz arcp contract afn <8 x float> %i.pb, %i.ot
  %i.pe = fadd reassoc nsz arcp contract afn <8 x float> %i.pc, %i.ou
  %i.pf = fadd reassoc nsz arcp contract afn <8 x float> %i.pd, %i.oz ; 2 uses
  %i.pg = fadd reassoc nsz arcp contract afn <8 x float> %i.pe, %i.pa ; 2 uses
  %index.next824 = add nuw i64 %index799, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ph = icmp eq i64 %index.next824, %n.vec787
  br i1 %i.ph, label %middle.block825, label %vector.body798, !llvm.loop !36

middle.block825:                                  ; preds = %vector.body798
  %bin.rdx826 = fadd reassoc nsz arcp contract afn <8 x float> %i.pg, %i.pf
  %i.pi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx826) ; 3 uses
  br i1 %cmp.n827, label %._crit_edge.i447, label %vec.epilog.iter.check833

vec.epilog.iter.check833:                         ; preds = %middle.block825
  br i1 %min.epilog.iters.check834, label %vec.epilog.scalar.ph832.preheader, label %vec.epilog.ph835, !prof !39

vec.epilog.ph835:                                 ; preds = %vector.main.loop.iter.check784, %vec.epilog.iter.check833
  %vec.epilog.resume.val828 = phi i64 [ %n.vec787, %vec.epilog.iter.check833 ], [ 0, %vector.main.loop.iter.check784 ]
  %bc.resume.val829 = phi i64 [ %i.od, %vec.epilog.iter.check833 ], [ %i.nt, %vector.main.loop.iter.check784 ]
  %bc.merge.rdx830 = phi float [ %i.pi, %vec.epilog.iter.check833 ], [ 0.000000e+00, %vector.main.loop.iter.check784 ]
  %i.pj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx830, i64 0
  %broadcast.splatinsert837 = insertelement <4 x float> poison, float %i.of, i64 0
  %broadcast.splat838 = shufflevector <4 x float> %broadcast.splatinsert837, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat840 = shufflevector <2 x float> %i.og, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat842 = shufflevector <2 x float> %i.og, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert845 = insertelement <4 x i64> poison, i64 %bc.resume.val829, i64 0
  %broadcast.splat846 = shufflevector <4 x i64> %broadcast.splatinsert845, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction847 = add nsw <4 x i64> %broadcast.splat846, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body848

vec.epilog.vector.body848:                        ; preds = %vec.epilog.vector.body848, %vec.epilog.ph835
  %index849 = phi i64 [ %vec.epilog.resume.val828, %vec.epilog.ph835 ], [ %index.next864, %vec.epilog.vector.body848 ]
  %vec.ind850 = phi <4 x i64> [ %induction847, %vec.epilog.ph835 ], [ %vec.ind.next865, %vec.epilog.vector.body848 ] ; 2 uses
  %vec.phi851 = phi <4 x float> [ %i.pj, %vec.epilog.ph835 ], [ %i.pw, %vec.epilog.vector.body848 ]
  %i.pk = mul nsw <4 x i64> %vec.ind850, %broadcast.splat844
  %wide.gep852 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pk ; 4 uses
  %wide.gep853 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep852, i64 %i.ns ; 3 uses
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep852, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.masked.gather855 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pl = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854, %wide.masked.gather855 ; 2 uses
  %i.pm = fmul reassoc nsz arcp contract afn <4 x float> %i.pl, %i.pl
  %i.pn = fmul reassoc nsz arcp contract afn <4 x float> %i.pm, %broadcast.splat838
  %wide.gep856 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852, i64 4
  %wide.masked.gather857 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep856, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep858 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep853, i64 4
  %wide.masked.gather859 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep858, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.po = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather857, %wide.masked.gather859 ; 2 uses
  %i.pp = fmul reassoc nsz arcp contract afn <4 x float> %i.po, %i.po
  %i.pq = fmul reassoc nsz arcp contract afn <4 x float> %i.pp, %broadcast.splat840
  %wide.gep860 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852, i64 8
  %wide.masked.gather861 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep860, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep862 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep853, i64 8
  %wide.masked.gather863 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep862, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pr = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather861, %wide.masked.gather863 ; 2 uses
  %i.ps = fmul reassoc nsz arcp contract afn <4 x float> %i.pr, %i.pr
  %i.pt = fmul reassoc nsz arcp contract afn <4 x float> %i.ps, %broadcast.splat842
  %i.pu = fadd reassoc nsz arcp contract afn <4 x float> %i.pn, %vec.phi851
  %i.pv = fadd reassoc nsz arcp contract afn <4 x float> %i.pu, %i.pq
  %i.pw = fadd reassoc nsz arcp contract afn <4 x float> %i.pv, %i.pt ; 2 uses
  %index.next864 = add nuw i64 %index849, 4       ; 2 uses
  %vec.ind.next865 = add nsw <4 x i64> %vec.ind850, splat (i64 4)
  %i.px = icmp eq i64 %index.next864, %n.vec836
  br i1 %i.px, label %vec.epilog.middle.block866, label %vec.epilog.vector.body848, !llvm.loop !40

vec.epilog.middle.block866:                       ; preds = %vec.epilog.vector.body848
  %i.py = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pw) ; 2 uses
  br i1 %cmp.n867, label %._crit_edge.i447, label %vec.epilog.scalar.ph832.preheader

vec.epilog.scalar.ph832.preheader:                ; preds = %iter.check831, %vec.epilog.iter.check833, %vec.epilog.middle.block866
  %indvars.iv.i.ph = phi i64 [ %i.nt, %iter.check831 ], [ %i.od, %vec.epilog.iter.check833 ], [ %i.oe, %vec.epilog.middle.block866 ]
  %.0121143.i.ph = phi float [ 0.000000e+00, %iter.check831 ], [ %i.pi, %vec.epilog.iter.check833 ], [ %i.py, %vec.epilog.middle.block866 ]
  br label %vec.epilog.scalar.ph832

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
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

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph832, %vec.epilog.middle.block866, %middle.block825
  %.lcssa = phi float [ %i.py, %vec.epilog.middle.block866 ], [ %i.pi, %middle.block825 ], [ %i.rb, %vec.epilog.scalar.ph832 ]
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv156.i
  store float %.lcssa, ptr %i.qh, align 4, !tbaa !11
  %indvars.iv.next157.i = add nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.qi = icmp slt i64 %indvars.iv.next157.i, %i.nw
  br i1 %i.qi, label %iter.check831, label %._crit_edge148.i

vec.epilog.scalar.ph832:                          ; preds = %vec.epilog.scalar.ph832.preheader, %vec.epilog.scalar.ph832
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph832 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph832.preheader ] ; 2 uses
  %.0121143.i = phi float [ %i.rb, %vec.epilog.scalar.ph832 ], [ %.0121143.i.ph, %vec.epilog.scalar.ph832.preheader ]
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
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qp, %.0121143.i
  %i.qy = extractelement <2 x float> %i.qw, i64 0
  %i.qz = fadd reassoc nsz arcp contract afn float %i.qx, %i.qy
  %i.ra = extractelement <2 x float> %i.qw, i64 1
  %i.rb = fadd reassoc nsz arcp contract afn float %i.qz, %i.ra ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.nu, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph832, !llvm.loop !41

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.rc = icmp slt i32 %i.lv, %spec.select449
  br i1 %i.rc, label %.lr.ph502, label %._crit_edge503

.lr.ph502:                                        ; preds = %init_column_sums.exit
  %i.rd = sub nsw i32 %i.mj, %i.cl
  %i.re = add i32 %i.mj, %i.cl                    ; 2 uses
  %i.rf = tail call i32 @llvm.smin.i32(i32 %i.re, i32 %.437) ; 2 uses
  %i.rg = icmp slt i32 %i.rd, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !29
  %i.rj = icmp slt i32 %i.mj, %.437               ; 2 uses
  %i.rk = sext i32 %i.ri to i64                   ; 8 uses
  %i.rl = tail call i32 @llvm.smin.i32(i32 %i.mb, i32 %spec.select451)
  %i.rm = sub i32 %i.mj, %i.cl
  %i.rn = sext i32 %i.rm to i64                   ; 6 uses
  %i.ro = sext i32 %i.rf to i64
  %i.rp = zext nneg i32 %i.mj to i64              ; 2 uses
  %i.rq = sext i32 %.437 to i64                   ; 2 uses
  %smin547 = tail call i32 @llvm.smin.i32(i32 %smin546, i32 %i.ml)
  %i.rr = sub i32 0, %smin547
  %i.rs = sext i32 %i.rr to i64                   ; 4 uses
  %i.rt = add i64 %indvars.iv544, %i.rs           ; 7 uses
  %i.ru = sext i32 %i.mt to i64                   ; 4 uses
  %i.rv = sext i32 %i.lu to i64
  %smax563.a = tail call i64 @llvm.smax.i64(i64 %indvars.iv561, i64 %i.rv) ; 3 uses
  %i.rw = sext i32 %spec.select449 to i64         ; 3 uses
  %i.rx = sext i32 %i.mb to i64
  %i.ry = sext i32 %spec.select451 to i64
  %i.rz = sext i32 %i.rl to i64
  %invariant.op = add nsw i64 %i.rw, -1
  %i.sa = shl nsw i64 %i.rt, 2
  %scevgep703 = getelementptr i8, ptr %scevgep702, i64 %i.sa ; 3 uses
  %i.sb = add i64 %i.hx, %i.rs
  %i.sc = sext i32 %i.mt to i64
  %smax704 = tail call i64 @llvm.smax.i64(i64 %i.sb, i64 %i.sc) ; 2 uses
  %i.sd = shl nsw i64 %smax704, 2
  %scevgep705 = getelementptr i8, ptr %scevgep702, i64 %i.sd ; 3 uses
  %i.se = sub i64 %smax563.a, %i.fu
  %i.sf = mul i64 %i.gk, %i.se                    ; 2 uses
  %i.sg = shl nsw i64 %i.rt, 4                    ; 2 uses
  %i.sh = shl nsw i64 %i.rk, 2                    ; 2 uses
  %i.si = getelementptr i8, ptr %0, i64 %i.sf
  %i.sj = getelementptr i8, ptr %i.si, i64 %i.sg
  %scevgep706 = getelementptr i8, ptr %i.sj, i64 %i.sh
  %i.sk = add nuw i64 %smax563.a, 1
  %smax708 = tail call i64 @llvm.smax.i64(i64 %i.rw, i64 %i.sk)
  %i.sl = sub i64 %smax708, %i.fu
  %reass.sub = shl i64 %i.sl, 2
  %i.sm = add i64 %reass.sub, -4
  %i.sn = mul i64 %i.sm, %i.u
  %i.so = shl nsw i64 %smax704, 4
  %i.sp = add i64 %i.sn, %i.so                    ; 2 uses
  %i.sq = getelementptr i8, ptr %scevgep707.a, i64 %i.sp
  %scevgep709 = getelementptr i8, ptr %i.sq, i64 %i.sh
  %i.sr = getelementptr i8, ptr %0, i64 %i.sf
  %scevgep710 = getelementptr i8, ptr %i.sr, i64 %i.sg
  %scevgep712 = getelementptr i8, ptr %scevgep711.a, i64 %i.sp
  %i.ss = add i64 %i.hv, %i.rs
  %smax726 = tail call i64 @llvm.smax.i64(i64 %i.ss, i64 %i.ru)
  %i.st = add i64 %i.hu, %i.rs
  %i.su = sub i64 %smax726, %i.st                 ; 3 uses
  %i.sv = sext i32 %i.re to i64
  %smin751 = tail call i64 @llvm.smin.i64(i64 %smin750, i64 %i.sv)
  %i.sw = sext i32 %i.mk to i64
  %smin752 = tail call i64 @llvm.smin.i64(i64 %smin751, i64 %i.sw)
  %i.sx = sub i64 %smin752, %i.rn                 ; 7 uses
  %min.iters.check754 = icmp ult i64 %i.sx, 8
  %min.iters.check755 = icmp ult i64 %i.sx, 32
  %i.sy = and i64 %i.sx, 24
  %n.vec757 = and i64 %i.sx, -32                  ; 4 uses
  %i.sz = add i64 %n.vec757, %i.rn
  %invariant.gep901 = getelementptr [4 x i8], ptr %i.ii, i64 %i.rn
  %cmp.n771 = icmp eq i64 %i.sx, %n.vec757
  %min.epilog.iters.check = icmp eq i64 %i.sy, 0
  %n.vec773 = and i64 %i.sx, -8                   ; 3 uses
  %i.ta = add i64 %n.vec773, %i.rn
  %invariant.gep903 = getelementptr [4 x i8], ptr %i.ii, i64 %i.rn
  %cmp.n778 = icmp eq i64 %i.sx, %n.vec773
  %min.iters.check728 = icmp ult i64 %i.su, 9
  %bound0714 = icmp ult ptr %scevgep703, %scevgep709
  %bound1715 = icmp ult ptr %scevgep706, %scevgep705
  %found.conflict716 = and i1 %bound0714, %bound1715
  %bound0718 = icmp ult ptr %scevgep703, %scevgep712
  %bound1719 = icmp ult ptr %scevgep710, %scevgep705
  %found.conflict720 = and i1 %bound0718, %bound1719
  %i.tb = or i1 %found.conflict720, %stride.check721
  %conflict.rdx = or i1 %found.conflict716, %i.tb
  %bound0722 = icmp ult ptr %scevgep703, %scevgep713.a
  %bound1723 = icmp ult ptr %i.jd, %scevgep705
  %found.conflict724 = and i1 %bound0722, %bound1723
  %conflict.rdx725 = or i1 %conflict.rdx, %found.conflict724
  %i.tc = and i64 %i.su, 7                        ; 2 uses
  %i.td = icmp eq i64 %i.tc, 0
  %i.te = select i1 %i.td, i64 8, i64 %i.tc
  %n.vec730 = sub i64 %i.su, %i.te                ; 2 uses
  %i.tf = add i64 %i.rt, %n.vec730
  br label %bb.u

._crit_edge503:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %i.ah
  br i1 %exitcond569.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph502, %.loopexit
  %indvars.iv564 = phi i64 [ %smax563.a, %.lr.ph502 ], [ %indvars.iv.next565, %.loopexit ] ; 11 uses
  br i1 %i.rg, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check754, label %.lr.ph478.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check755, label %vec.epilog.ph, label %vector.body758

vector.body758:                                   ; preds = %vector.main.loop.iter.check, %vector.body758
  %index759 = phi i64 [ %index.next767, %vector.body758 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.tj, %vector.body758 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi760 = phi <8 x float> [ %i.tk, %vector.body758 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi761 = phi <8 x float> [ %i.tl, %vector.body758 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi762 = phi <8 x float> [ %i.tm, %vector.body758 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep902 = getelementptr [4 x i8], ptr %invariant.gep901, i64 %index759 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %gep902, i64 32
  %i.th = getelementptr inbounds nuw i8, ptr %gep902, i64 64
  %i.ti = getelementptr inbounds nuw i8, ptr %gep902, i64 96
  %wide.load763 = load <8 x float>, ptr %gep902, align 4, !tbaa !11
  %wide.load764 = load <8 x float>, ptr %i.tg, align 4, !tbaa !11
  %wide.load765 = load <8 x float>, ptr %i.th, align 4, !tbaa !11
  %wide.load766 = load <8 x float>, ptr %i.ti, align 4, !tbaa !11
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi ; 2 uses
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load764, %vec.phi760 ; 2 uses
  %i.tl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load765, %vec.phi761 ; 2 uses
  %i.tm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load766, %vec.phi762 ; 2 uses
  %index.next767 = add nuw i64 %index759, 32      ; 2 uses
  %i.tn = icmp eq i64 %index.next767, %n.vec757
  br i1 %i.tn, label %middle.block768, label %vector.body758, !llvm.loop !42

middle.block768:                                  ; preds = %vector.body758
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.tk, %i.tj
  %bin.rdx769 = fadd reassoc nsz arcp contract afn <8 x float> %i.tl, %bin.rdx
  %bin.rdx770 = fadd reassoc nsz arcp contract afn <8 x float> %i.tm, %bin.rdx769
  %i.to = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx770) ; 3 uses
  br i1 %cmp.n771, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block768
  br i1 %min.epilog.iters.check, label %.lr.ph478.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec757, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.to, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.tp = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index774 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next777, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi775 = phi <8 x float> [ %i.tp, %vec.epilog.ph ], [ %i.tq, %vec.epilog.vector.body ]
  %gep904 = getelementptr [4 x i8], ptr %invariant.gep903, i64 %index774
  %wide.load776 = load <8 x float>, ptr %gep904, align 4, !tbaa !11
  %i.tq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load776, %vec.phi775 ; 2 uses
  %index.next777 = add nuw i64 %index774, 8       ; 2 uses
  %i.tr = icmp eq i64 %index.next777, %n.vec773
  br i1 %i.tr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ts = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tq) ; 2 uses
  br i1 %cmp.n778, label %._crit_edge, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv531.ph = phi i64 [ %i.rn, %iter.check ], [ %i.sz, %vec.epilog.iter.check ], [ %i.ta, %vec.epilog.middle.block ]
  %.0404476.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.to, %vec.epilog.iter.check ], [ %i.ts, %vec.epilog.middle.block ]
  br label %.lr.ph478

._crit_edge:                                      ; preds = %.lr.ph478, %middle.block768, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.ts, %vec.epilog.middle.block ], [ %i.to, %middle.block768 ], [ %i.ud, %.lr.ph478 ] ; 2 uses
  %i.tt = mul nsw i64 %indvars.iv564, %i.u
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tt ; 2 uses
  %i.tv = mul i64 %i.jo, %indvars.iv564
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tv ; 2 uses
  %i.tx = load float, ptr %i.fz, align 4, !tbaa !45 ; 2 uses
  %i.ty = load float, ptr %i.k, align 8, !tbaa !17
  %i.tz = fcmp reassoc nsz arcp contract afn olt float %i.ty, 0.000000e+00
  br i1 %i.tz, label %.preheader465, label %.preheader467

.preheader467:                                    ; preds = %._crit_edge
  br i1 %i.rj, label %.lr.ph482, label %.loopexit466

.preheader465:                                    ; preds = %._crit_edge
  br i1 %i.rj, label %.lr.ph488, label %.loopexit466

.lr.ph488:                                        ; preds = %.preheader465
  %i.ua = fmul reassoc nsz arcp contract afn float %i.tx, f0xCB000000
  %invariant.gep489 = getelementptr [4 x i8], ptr %i.tu, i64 %i.rk
  br label %bb.v

.lr.ph478:                                        ; preds = %.lr.ph478.preheader, %.lr.ph478
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.lr.ph478 ], [ %indvars.iv531.ph, %.lr.ph478.preheader ] ; 2 uses
  %.0404476 = phi float [ %i.ud, %.lr.ph478 ], [ %.0404476.ph, %.lr.ph478.preheader ]
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv531
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !11
  %i.ud = fadd reassoc nsz arcp contract afn float %i.uc, %.0404476 ; 2 uses
  %indvars.iv.next532 = add nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.ue = icmp slt i64 %indvars.iv.next532, %i.ro
  br i1 %i.ue, label %.lr.ph478, label %._crit_edge, !llvm.loop !46

bb.v:                                             ; preds = %.lr.ph488, %bb.v
  %indvars.iv541 = phi i64 [ %i.rp, %.lr.ph488 ], [ %indvars.iv.next542, %bb.v ] ; 4 uses
  %.1486 = phi float [ %.0404.lcssa, %.lr.ph488 ], [ %i.um, %bb.v ]
  %gep643 = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv541
  %i.uf = load float, ptr %gep643, align 4, !tbaa !11
  %i.ug = trunc nuw nsw i64 %indvars.iv541 to i32
  %i.uh = add i32 %i.ug, %i.fy
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.ui
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !11
  %i.ul = fsub reassoc nsz arcp contract afn float %i.uf, %i.uk
  %i.um = fadd reassoc nsz arcp contract afn float %i.ul, %.1486 ; 2 uses
  %i.un = fmul reassoc nsz arcp contract afn float %i.ua, %i.um
  %i.uo = fptosi float %i.un to i32               ; 2 uses
  %i.up = add nsw i32 %i.uo, 1065353216
  %i.uq = icmp sgt i32 %i.uo, -1056964609
  %i.ur = bitcast i32 %i.up to float
  %i.us = shl nuw nsw i64 %indvars.iv541, 2       ; 2 uses
  %gep490 = getelementptr [4 x i8], ptr %invariant.gep489, i64 %i.us ; 3 uses
  %i.ut = getelementptr i8, ptr %gep490, i64 8
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !11
  %invariant.gep483 = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.us ; 2 uses
  %i.uv = select i1 %i.uq, float %i.ur, float 0.000000e+00
  %i.uw = load <2 x float>, ptr %gep490, align 4, !tbaa !11
  %i.ux = insertelement <4 x float> poison, float %i.uv, i64 0
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uz = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.uu, i64 2
  %i.va = shufflevector <2 x float> %i.uw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> %i.uz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vc = fmul reassoc nsz arcp contract afn <4 x float> %i.uy, %i.vb
  %i.vd = load <4 x float>, ptr %invariant.gep483, align 4, !tbaa !11
  %i.ve = fadd reassoc nsz arcp contract afn <4 x float> %i.vd, %i.vc
  store <4 x float> %i.ve, ptr %invariant.gep483, align 4, !tbaa !11
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %gep490, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.vf, i32 0, i32 3, i32 1)
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.vg = icmp slt i64 %indvars.iv.next542, %i.rq
  br i1 %i.vg, label %bb.v, label %.loopexit466

.lr.ph482:                                        ; preds = %.preheader467, %.lr.ph482
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %.lr.ph482 ], [ %i.rp, %.preheader467 ] ; 4 uses
  %.2480 = phi float [ %i.vo, %.lr.ph482 ], [ %.0404.lcssa, %.preheader467 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep641, i64 %indvars.iv536
  %i.vh = load float, ptr %gep, align 4, !tbaa !11
  %i.vi = trunc nuw nsw i64 %indvars.iv536 to i32
  %i.vj = add i32 %i.vi, %i.fy
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.vk
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !11
  %i.vn = fsub reassoc nsz arcp contract afn float %i.vh, %i.vm
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vn, %.2480 ; 2 uses
  %i.vp = shl nuw nsw i64 %indvars.iv536, 2       ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.vp ; 3 uses
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.rk ; 3 uses
  %i.vs = load float, ptr %i.vq, align 4, !tbaa !11
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
end_hunk_0
