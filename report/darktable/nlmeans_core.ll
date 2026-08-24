Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a

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
  %scevgep706.a = getelementptr i8, ptr %0, i64 -4
  %scevgep710.a = getelementptr i8, ptr %0, i64 -4
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
  %broadcast.splat676.a = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert677 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat678.a = shufflevector <4 x float> %broadcast.splatinsert677, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
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
  %i.hg = phi i32 [ %i.gp, %.preheader474 ], [ %i.ip, %.loopexit470 ] ; 2 uses
  %i.hh = phi i32 [ %i.gq, %.preheader474 ], [ %i.iq, %.loopexit470 ]
  %i.hi = phi i32 [ %i.gr, %.preheader474 ], [ %i.iq, %.loopexit470 ]
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, %i.gc ; 2 uses
  %indvars = trunc i64 %indvars.iv.next562 to i32
  %i.hj = icmp sgt i32 %i.hg, %indvars
  %indvars.iv.next = add i32 %indvars.iv, %.539.i
  %indvar.next656 = add i32 %indvar655, 1
  %indvar.next665 = add i64 %indvar664, 1
  br i1 %i.hj, label %.preheader474, label %._crit_edge524, !llvm.loop !31

bb.r:                                             ; preds = %.lr.ph520, %.loopexit470
  %indvar = phi i64 [ 0, %.lr.ph520 ], [ %indvar.next, %.loopexit470 ] ; 5 uses
  %i.hk = phi i32 [ %i.gp, %.lr.ph520 ], [ %i.ip, %.loopexit470 ]
  %i.hl = phi i32 [ %i.gq, %.lr.ph520 ], [ %i.iq, %.loopexit470 ]
  %i.hm = phi i32 [ %i.gp, %.lr.ph520 ], [ %i.is, %.loopexit470 ] ; 3 uses
  %indvars.iv544 = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next545, %.loopexit470 ] ; 21 uses
  %i.hn = phi i32 [ %i.gr, %.lr.ph520 ], [ %i.iq, %.loopexit470 ] ; 5 uses
  %i.ho = add nuw i64 %.0.i, %indvars.iv544
  %sext = shl i64 %i.ho, 32
  %i.hp = ashr exact i64 %sext, 32
  %i.hq = or disjoint i64 %indvars.iv544, 1
  %i.hr = or disjoint i64 %indvars.iv544, 1
  %5 = mul i64 %.0.i, %indvar
  %6 = or disjoint i64 %indvars.iv544, 1
  %i.hs = mul i64 %i.gd, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.hs
  %i.ht = getelementptr i8, ptr %1, i64 %i.hs
  %scevgep660 = getelementptr i8, ptr %i.ht, i64 16
  %i.hu = or disjoint i64 %indvars.iv544, 1
  %i.hv = mul i64 %.0.i, %indvar
  %i.hw = xor i64 %i.hv, -1
  %scevgep666.a = getelementptr i8, ptr %i.hd, i64 %i.hs
  %scevgep667 = getelementptr i8, ptr %i.hf, i64 %i.hs
  %7 = mul i64 %.0.i, %indvar
  %8 = or disjoint i64 %indvars.iv544, 1
  %indvars584 = trunc i64 %indvars.iv544 to i32   ; 13 uses
  %i.hx = sub nsw i64 0, %indvars.iv544
  %i.hy = getelementptr [4 x i8], ptr %i.fw, i64 %i.hx ; 17 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 %i.hm) ; 6 uses
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, %.0.i ; 3 uses
  %i.hz = trunc i64 %indvars.iv.next545 to i32
  %i.ia = tail call i32 @llvm.smin.i32(i32 %i.hz, i32 %i.hn) ; 8 uses
  %i.ib = icmp sgt i32 %., %indvars585            ; 3 uses
  br i1 %i.ib, label %.lr.ph, label %.preheader473

.lr.ph:                                           ; preds = %bb.r
  %i.ic = sext i32 %i.ia to i64
  %i.id = sub nsw i64 %i.ic, %indvars.iv544
  %i.ie = shl nsw i64 %i.id, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %indvars.iv)
  %i.if = add i32 %., %i.gt
  %i.ig = add i32 %i.gv, %.
  %xtraiter = and i32 %i.if, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407475.prol = phi i32 [ %i.in, %.prol.preheader ], [ %indvars585, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ih = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.ii = mul nsw i32 %i.ih, %.0407475.prol
  %i.ij = add nsw i32 %i.ii, %indvars584
  %i.ik = shl nsw i32 %i.ij, 2
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %1, i64 %i.il
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.im, i8 0, i64 %i.ie, i1 false)
  %i.in = add nsw i32 %.0407475.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407475.unr = phi i32 [ %indvars585, %.lr.ph ], [ %i.in, %.prol.preheader ]
  %i.io = icmp ult i32 %i.ig, 3
  br i1 %i.io, label %.preheader473.loopexit, label %.lr.ph.new

.preheader473.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.ct, align 4, !tbaa !30 ; 2 uses
  %.pre598 = load i32, ptr %i.fi, align 4, !tbaa !19 ; 2 uses
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.loopexit, %bb.r
  %i.ip = phi i32 [ %.pre, %.preheader473.loopexit ], [ %i.hk, %bb.r ] ; 2 uses
  %i.iq = phi i32 [ %.pre598, %.preheader473.loopexit ], [ %i.hl, %bb.r ] ; 5 uses
  %i.ir = phi i32 [ %.pre598, %.preheader473.loopexit ], [ %i.hn, %bb.r ] ; 7 uses
  %i.is = phi i32 [ %.pre, %.preheader473.loopexit ], [ %i.hm, %bb.r ] ; 5 uses
  %i.it = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 9 uses
  %i.iu = add i32 %indvars584, %i.fy              ; 2 uses
  %i.iv = add i32 %i.ia, %i.cl                    ; 3 uses
  %i.iw = sext i32 %i.iu to i64
  %i.ix = shl nsw i64 %i.iw, 2
  %scevgep.i = getelementptr i8, ptr %i.hy, i64 %i.ix
  %i.iy = sub i32 %i.cl, %indvars584
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.jb = xor i32 %indvars584, -1
  %i.jc = add i32 %i.ia, %i.jb
  %i.jd = sext i32 %i.ir to i64
  %i.je = shl nsw i64 %i.jd, 2
  %smin546 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %indvars584)
  %invariant.gep641 = getelementptr [4 x i8], ptr %i.hy, i64 %i.fu
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.hy, i64 %i.fu
  %scevgep712 = getelementptr i8, ptr %i.it, i64 12
  %i.jf = sext i32 %i.hn to i64
  %smin749 = tail call i64 @llvm.smin.i64(i64 %i.jf, i64 %i.hp)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407475 = phi i32 [ %i.kh, %.lr.ph.new ], [ %.0407475.unr, %.prol.loopexit ] ; 5 uses
  %i.jg = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jh = mul nsw i32 %i.jg, %.0407475
  %i.ji = add nsw i32 %i.jh, %indvars584
  %i.jj = shl nsw i32 %i.ji, 2
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jk
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jl, i8 0, i64 %i.ie, i1 false)
  %i.jm = add nsw i32 %.0407475, 1
  %i.jn = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jo = mul nsw i32 %i.jn, %i.jm
  %i.jp = add nsw i32 %i.jo, %indvars584
  %i.jq = shl nsw i32 %i.jp, 2
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jr
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.js, i8 0, i64 %i.ie, i1 false)
  %i.jt = add nsw i32 %.0407475, 2
  %i.ju = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.jv = mul nsw i32 %i.ju, %i.jt
  %i.jw = add nsw i32 %i.jv, %indvars584
  %i.jx = shl nsw i32 %i.jw, 2
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jz, i8 0, i64 %i.ie, i1 false)
  %i.ka = add nsw i32 %.0407475, 3
  %i.kb = load i32, ptr %i.fi, align 4, !tbaa !19
  %i.kc = mul nsw i32 %i.kb, %i.ka
  %i.kd = add nsw i32 %i.kc, %indvars584
  %i.ke = shl nsw i32 %i.kd, 2
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kf
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kg, i8 0, i64 %i.ie, i1 false)
  %i.kh = add nsw i32 %.0407475, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kh, %smin
  br i1 %exitcond.not.3, label %.preheader473.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge503
  br i1 %i.j, label %.preheader469, label %.preheader471

.preheader471:                                    ; preds = %bb.s
  br i1 %i.ib, label %.lr.ph509, label %.loopexit470

.lr.ph509:                                        ; preds = %.preheader471
  %factor.op.mul = shl i32 %i.ir, 2
  %i.ki = sext i32 %i.hn to i64
  %i.kj = icmp slt i64 %indvars.iv544, %i.ki
  br i1 %i.kj, label %.preheader462.lr.ph.preheader, label %.loopexit470

.preheader462.lr.ph.preheader:                    ; preds = %.lr.ph509
  %i.kk = sext i32 %i.ia to i64                   ; 3 uses
  %i.kl = sext i32 %. to i64                      ; 2 uses
  %i.km = mul i32 %i.gw, %i.ir
  %i.kn = shl i32 %i.ir, 2
  %smax661 = tail call i64 @llvm.smax.i64(i64 %i.kk, i64 %i.hu)
  %i.ko = add i64 %smax661, %i.hw
  %i.kp = shl nsw i64 %i.ko, 4                    ; 2 uses
  %scevgep662.a = getelementptr i8, ptr %scevgep660, i64 %i.kp
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.kl, i64 %i.ha)
  %i.kq = add i64 %smax668, %i.gz
  %i.kr = mul i64 %i.gh, %i.kq
  %i.ks = getelementptr i8, ptr %scevgep667, i64 %i.kr
  %scevgep669 = getelementptr i8, ptr %i.ks, i64 %i.kp
  %smax670 = tail call i64 @llvm.smax.i64(i64 %i.kk, i64 %6) ; 2 uses
  %i.kt = sub i64 %smax670, %5                    ; 2 uses
  %min.iters.check672 = icmp ult i64 %i.kt, 5
  %i.ku = and i64 %smax670, 3                     ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  %i.kw = select i1 %i.kv, i64 4, i64 %i.ku
  %n.vec674 = sub i64 %i.kt, %i.kw                ; 2 uses
  %i.kx = add i64 %indvars.iv544, %n.vec674
  br label %.preheader462.lr.ph

.preheader469:                                    ; preds = %bb.s
  br i1 %i.ib, label %.lr.ph516, label %.loopexit470

.lr.ph516:                                        ; preds = %.preheader469
  %factor.op.mul517 = shl i32 %i.ir, 2
  %i.ky = sext i32 %i.hn to i64
  %i.kz = icmp slt i64 %indvars.iv544, %i.ky
  br i1 %i.kz, label %.preheader.lr.ph.preheader, label %.loopexit470

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph516
  %i.la = sext i32 %i.ia to i64                   ; 2 uses
  %i.lb = sext i32 %. to i64
  %smax = tail call i64 @llvm.smax.i64(i64 %i.la, i64 %8) ; 2 uses
  %i.lc = sub i64 %smax, %7                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.lc, 4
  %i.ld = and i64 %smax, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.lc, %i.ld               ; 2 uses
  %i.le = add i64 %indvars.iv544, %n.vec
  %cmp.n = icmp eq i64 %i.ld, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader473, %._crit_edge503
  %indvars.iv566 = phi i64 [ 0, %.preheader473 ], [ %indvars.iv.next567, %._crit_edge503 ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv566 ; 4 uses
  %i.lg = load i16, ptr %i.lf, align 8, !tbaa !25 ; 5 uses
  %i.lh = icmp sgt i16 %i.lg, 0
  %i.li = sext i16 %i.lg to i32                   ; 2 uses
  %i.lj = sub nsw i32 0, %i.li
  %i.lk = select i1 %i.lh, i32 0, i32 %i.lj       ; 2 uses
  %i.ll = tail call i32 @llvm.smax.i32(i32 %i.lk, i32 %indvars585) ; 7 uses
  %i.lm = icmp slt i16 %i.lg, 0
  %spec.select452 = tail call i16 @llvm.smax.i16(i16 %i.lg, i16 0)
  %spec.select = zext nneg i16 %spec.select452 to i32 ; 2 uses
  %i.ln = sub i32 %i.is, %spec.select
  %spec.select449 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.ln) ; 3 uses
  %i.lo = tail call i16 @llvm.smin.i16(i16 %i.lg, i16 0)
  %i.lp = sext i16 %i.lo to i32
  %i.lq = sub nsw i32 %i.cl, %i.lp
  %i.lr = tail call i32 @llvm.smax.i32(i32 %i.ll, i32 %i.lq) ; 2 uses
  %i.ls = add nsw i32 %i.cl, %spec.select
  %i.lt = xor i32 %i.ls, -1
  %i.lu = add i32 %i.is, %i.lt
  %spec.select451 = tail call i32 @llvm.smin.i32(i32 %spec.select449, i32 %i.lu) ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !28 ; 2 uses
  %i.lx = sext i16 %i.lw to i32                   ; 3 uses
  %i.ly = sub nsw i32 0, %i.lx
  %i.lz = tail call i32 @llvm.smax.i32(i32 %indvars584, i32 %i.ly) ; 5 uses
  %i.ma = sub i32 %i.ir, %i.lx                    ; 2 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.ma) ; 3 uses
  %i.mb = add nsw i32 %indvars584, %i.lx          ; 2 uses
  %i.mc = tail call i32 @llvm.smin.i32(i32 %indvars584, i32 %i.mb)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mc) ; 2 uses
  %i.md = sub nsw i32 %indvars584, %..i           ; 5 uses
  %i.me = tail call i16 @llvm.smax.i16(i16 %i.lw, i16 0)
  %i.mf = zext nneg i16 %i.me to i32
  %i.mg = add i32 %i.ia, %i.mf
  %i.mh = sub i32 %i.ir, %i.mg
  %i.mi = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mh) ; 2 uses
  %i.mj = add i32 %i.mi, %i.ia                    ; 5 uses
  %i.mk = add i32 %i.ll, %i.li                    ; 2 uses
  %i.ml = tail call i32 @llvm.smin.i32(i32 %i.ll, i32 %i.mk)
  %i.mm = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.ml) ; 2 uses
  %i.mn = sub i32 %i.ll, %i.mm                    ; 2 uses
  %.v138.i = select i1 %i.lm, i32 %i.ll, i32 %i.mk ; 2 uses
  %i.mo = xor i32 %.v138.i, -1
  %i.mp = add i32 %i.is, %i.mo
  %i.mq = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.mp)
  %i.mr = add i32 %i.mq, %i.ll                    ; 2 uses
  %i.ms = tail call i32 @llvm.smin.i32(i32 %i.md, i32 %i.iv) ; 2 uses
  %i.mt = icmp slt i32 %i.iu, %i.ms
  br i1 %i.mt, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.mu = add i32 %i.iy, %i.ms
  %i.mv = zext i32 %i.mu to i64
  %i.mw = shl nuw nsw i64 %i.mv, 2
  %i.mx = add nuw nsw i64 %i.mw, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.mx, i1 false), !tbaa !11
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.my = icmp slt i32 %i.md, %i.mj               ; 4 uses
  br i1 %i.my, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.mn, %i.mr
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.mz = sext i32 %i.md to i64
  %i.na = shl nsw i64 %i.mz, 2
  %scevgep158.i = getelementptr i8, ptr %i.hy, i64 %i.na
  %i.nb = add i32 %i.jc, %..i
  %i.nc = add i32 %i.nb, %i.mi
  %i.nd = zext i32 %i.nc to i64
  %i.ne = shl nuw nsw i64 %i.nd, 2
  %i.nf = add nuw nsw i64 %i.ne, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.nf, i1 false), !tbaa !11
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !29
  %i.ni = sext i32 %i.nh to i64                   ; 4 uses
  %i.nj = sext i32 %i.mn to i64                   ; 5 uses
  %i.nk = add i32 %i.mr, 1
  %i.nl = sext i32 %i.md to i64
  %i.nm = sext i32 %i.mj to i64
  %i.nn = xor i32 %.v138.i, -1
  %i.no = add i32 %i.is, %i.nn
  %smin780 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.no)
  %i.np = add i32 %i.mm, %smin780                 ; 3 uses
  %i.nq = zext i32 %i.np to i64
  %i.nr = add nuw nsw i64 %i.nq, 1                ; 5 uses
  %min.iters.check782 = icmp ult i32 %i.np, 3
  %min.iters.check784 = icmp ult i32 %i.np, 15
  %i.ns = and i64 %i.nr, 12
  %n.vec786 = and i64 %i.nr, 8589934576           ; 4 uses
  %i.nt = add nsw i64 %n.vec786, %i.nj            ; 2 uses
  %broadcast.splatinsert795 = insertelement <8 x i64> poison, i64 %i.nj, i64 0
  %broadcast.splat796 = shufflevector <8 x i64> %broadcast.splatinsert795, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat796, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n826 = icmp eq i64 %i.nr, %n.vec786
  %min.epilog.iters.check833 = icmp eq i64 %i.ns, 0
  %n.vec835 = and i64 %i.nr, 8589934588           ; 3 uses
  %i.nu = add nsw i64 %n.vec835, %i.nj
  %cmp.n866 = icmp eq i64 %i.nr, %n.vec835
  br label %iter.check830

iter.check830:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nl, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.nv = load float, ptr %i.it, align 4, !tbaa !11 ; 3 uses
  %i.nw = load <2 x float>, ptr %i.iz, align 4, !tbaa !11 ; 5 uses
  br i1 %min.iters.check782, label %vec.epilog.scalar.ph831.preheader, label %vector.main.loop.iter.check783

vector.main.loop.iter.check783:                   ; preds = %iter.check830
  br i1 %min.iters.check784, label %vec.epilog.ph834, label %vector.ph785

vector.ph785:                                     ; preds = %vector.main.loop.iter.check783
  %broadcast.splatinsert787 = insertelement <8 x float> poison, float %i.nv, i64 0
  %broadcast.splat788 = shufflevector <8 x float> %broadcast.splatinsert787, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat790 = shufflevector <2 x float> %i.nw, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat792 = shufflevector <2 x float> %i.nw, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph785
  %index798 = phi i64 [ 0, %vector.ph785 ], [ %index.next823, %vector.body797 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph785 ], [ %vec.ind.next, %vector.body797 ] ; 3 uses
  %vec.phi799 = phi <8 x float> [ zeroinitializer, %vector.ph785 ], [ %i.ov, %vector.body797 ]
  %vec.phi800 = phi <8 x float> [ zeroinitializer, %vector.ph785 ], [ %i.ow, %vector.body797 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.nx = mul nsw <8 x i64> %vec.ind, %broadcast.splat794
  %i.ny = mul nsw <8 x i64> %step.add, %broadcast.splat794
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.nx ; 4 uses
  %wide.gep801 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.ny ; 4 uses
  %wide.gep802 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.ni ; 3 uses
  %wide.gep803 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep801, i64 %i.ni ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather804 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather805 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep802, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather806.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep803, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.nz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather805 ; 2 uses
  %i.oa = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather804, %wide.masked.gather806.a ; 2 uses
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %i.nz
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %i.oa, %i.oa
  %i.od = fmul reassoc nsz arcp contract afn <8 x float> %i.ob, %broadcast.splat788
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.oc, %broadcast.splat788
  %wide.gep807 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep808.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 4
  %wide.masked.gather809 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep807, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather810.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep808.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep811 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 4
  %wide.gep812.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 4
  %wide.masked.gather813 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep811, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather814.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep812.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.of = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather809, %wide.masked.gather813 ; 2 uses
  %i.og = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather810.a, %wide.masked.gather814.a ; 2 uses
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %i.of
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %i.og
  %i.oj = fmul reassoc nsz arcp contract afn <8 x float> %i.oh, %broadcast.splat790
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %i.oi, %broadcast.splat790
  %wide.gep815 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep816.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 8
  %wide.masked.gather817 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep815, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather818.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep816.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.gep819 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep802, i64 8
  %wide.gep820 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep803, i64 8
  %wide.masked.gather821 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep819, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather822 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep820, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.ol = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather817, %wide.masked.gather821 ; 2 uses
  %i.om = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather818.a, %wide.masked.gather822 ; 2 uses
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %i.ol
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %i.om
  %i.op = fmul reassoc nsz arcp contract afn <8 x float> %i.on, %broadcast.splat792
  %i.oq = fmul reassoc nsz arcp contract afn <8 x float> %i.oo, %broadcast.splat792
  %i.or = fadd reassoc nsz arcp contract afn <8 x float> %i.od, %i.oj
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.oe, %i.ok
  %i.ot = fadd reassoc nsz arcp contract afn <8 x float> %i.or, %i.op
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %i.os, %i.oq
  %i.ov = fadd reassoc nsz arcp contract afn <8 x float> %i.ot, %vec.phi799 ; 2 uses
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.ou, %vec.phi800 ; 2 uses
  %index.next823 = add nuw i64 %index798, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ox = icmp eq i64 %index.next823, %n.vec786
  br i1 %i.ox, label %middle.block824, label %vector.body797, !llvm.loop !36

middle.block824:                                  ; preds = %vector.body797
  %bin.rdx825 = fadd reassoc nsz arcp contract afn <8 x float> %i.ow, %i.ov
  %i.oy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx825) ; 3 uses
  br i1 %cmp.n826, label %._crit_edge.i447, label %vec.epilog.iter.check832

vec.epilog.iter.check832:                         ; preds = %middle.block824
  br i1 %min.epilog.iters.check833, label %vec.epilog.scalar.ph831.preheader, label %vec.epilog.ph834, !prof !39

vec.epilog.ph834:                                 ; preds = %vector.main.loop.iter.check783, %vec.epilog.iter.check832
  %vec.epilog.resume.val827 = phi i64 [ %n.vec786, %vec.epilog.iter.check832 ], [ 0, %vector.main.loop.iter.check783 ]
  %bc.resume.val828 = phi i64 [ %i.nt, %vec.epilog.iter.check832 ], [ %i.nj, %vector.main.loop.iter.check783 ]
  %bc.merge.rdx829 = phi float [ %i.oy, %vec.epilog.iter.check832 ], [ 0.000000e+00, %vector.main.loop.iter.check783 ]
  %i.oz = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx829, i64 0
  %broadcast.splatinsert836 = insertelement <4 x float> poison, float %i.nv, i64 0
  %broadcast.splat837 = shufflevector <4 x float> %broadcast.splatinsert836, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat839 = shufflevector <2 x float> %i.nw, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat841 = shufflevector <2 x float> %i.nw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert844 = insertelement <4 x i64> poison, i64 %bc.resume.val828, i64 0
  %broadcast.splat845 = shufflevector <4 x i64> %broadcast.splatinsert844, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction846 = add nsw <4 x i64> %broadcast.splat845, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body847

vec.epilog.vector.body847:                        ; preds = %vec.epilog.vector.body847, %vec.epilog.ph834
  %index848 = phi i64 [ %vec.epilog.resume.val827, %vec.epilog.ph834 ], [ %index.next863, %vec.epilog.vector.body847 ]
  %vec.ind849 = phi <4 x i64> [ %induction846, %vec.epilog.ph834 ], [ %vec.ind.next864, %vec.epilog.vector.body847 ] ; 2 uses
  %vec.phi850 = phi <4 x float> [ %i.oz, %vec.epilog.ph834 ], [ %i.pm, %vec.epilog.vector.body847 ]
  %i.pa = mul nsw <4 x i64> %vec.ind849, %broadcast.splat843
  %wide.gep851 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pa ; 4 uses
  %wide.gep852.a = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep851, i64 %i.ni ; 3 uses
  %wide.masked.gather853.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep851, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep852.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pb = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather853.a, %wide.masked.gather854 ; 2 uses
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %i.pb
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %broadcast.splat837
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep851, i64 4
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep857 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852.a, i64 4
  %wide.masked.gather858 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.pe = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather856, %wide.masked.gather858 ; 2 uses
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %i.pe
  %i.pg = fmul reassoc nsz arcp contract afn <4 x float> %i.pf, %broadcast.splat839
  %wide.gep859 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep851, i64 8
  %wide.masked.gather860 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %wide.gep861 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep852.a, i64 8
  %wide.masked.gather862 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep861, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !11
  %i.ph = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather860, %wide.masked.gather862 ; 2 uses
  %i.pi = fmul reassoc nsz arcp contract afn <4 x float> %i.ph, %i.ph
  %i.pj = fmul reassoc nsz arcp contract afn <4 x float> %i.pi, %broadcast.splat841
  %i.pk = fadd reassoc nsz arcp contract afn <4 x float> %i.pd, %i.pg
  %i.pl = fadd reassoc nsz arcp contract afn <4 x float> %i.pk, %i.pj
  %i.pm = fadd reassoc nsz arcp contract afn <4 x float> %i.pl, %vec.phi850 ; 2 uses
  %index.next863 = add nuw i64 %index848, 4       ; 2 uses
  %vec.ind.next864 = add nsw <4 x i64> %vec.ind849, splat (i64 4)
  %i.pn = icmp eq i64 %index.next863, %n.vec835
  br i1 %i.pn, label %vec.epilog.middle.block865, label %vec.epilog.vector.body847, !llvm.loop !40

vec.epilog.middle.block865:                       ; preds = %vec.epilog.vector.body847
  %i.po = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pm) ; 2 uses
  br i1 %cmp.n866, label %._crit_edge.i447, label %vec.epilog.scalar.ph831.preheader

vec.epilog.scalar.ph831.preheader:                ; preds = %iter.check830, %vec.epilog.iter.check832, %vec.epilog.middle.block865
  %indvars.iv.i.ph = phi i64 [ %i.nj, %iter.check830 ], [ %i.nt, %vec.epilog.iter.check832 ], [ %i.nu, %vec.epilog.middle.block865 ]
  %.0121143.i.ph = phi float [ 0.000000e+00, %iter.check830 ], [ %i.oy, %vec.epilog.iter.check832 ], [ %i.po, %vec.epilog.middle.block865 ]
  br label %vec.epilog.scalar.ph831

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pp = tail call i32 @llvm.smax.i32(i32 %i.md, i32 %i.mj) ; 3 uses
  %i.pq = icmp slt i32 %i.pp, %i.iv
  br i1 %i.pq, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pp to i64
  %i.pr = shl nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.hy, i64 %i.pr
  %i.ps = xor i32 %i.pp, -1
  %i.pt = add i32 %i.iv, %i.ps
  %i.pu = zext i32 %i.pt to i64
  %i.pv = shl nuw nsw i64 %i.pu, 2
  %i.pw = add nuw nsw i64 %i.pv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.pw, i1 false), !tbaa !11
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph831, %vec.epilog.middle.block865, %middle.block824
  %.lcssa = phi float [ %i.po, %vec.epilog.middle.block865 ], [ %i.oy, %middle.block824 ], [ %i.qr, %vec.epilog.scalar.ph831 ]
  %i.px = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv156.i
  store float %.lcssa, ptr %i.px, align 4, !tbaa !11
  %indvars.iv.next157.i = add nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.py = icmp slt i64 %indvars.iv.next157.i, %i.nm
  br i1 %i.py, label %iter.check830, label %._crit_edge148.i

vec.epilog.scalar.ph831:                          ; preds = %vec.epilog.scalar.ph831.preheader, %vec.epilog.scalar.ph831
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph831 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph831.preheader ] ; 2 uses
  %.0121143.i = phi float [ %i.qr, %vec.epilog.scalar.ph831 ], [ %.0121143.i.ph, %vec.epilog.scalar.ph831.preheader ]
  %i.pz = mul nsw i64 %indvars.iv.i, %i.u
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.pz ; 3 uses
  %i.qa = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.ni ; 2 uses
  %i.qb = load float, ptr %gep.i, align 4, !tbaa !11
  %i.qc = load float, ptr %i.qa, align 4, !tbaa !11
  %i.qd = fsub reassoc nsz arcp contract afn float %i.qb, %i.qc ; 2 uses
  %i.qe = fmul reassoc nsz arcp contract afn float %i.qd, %i.qd
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qe, %i.nv
  %i.qg = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  %i.qi = load <2 x float>, ptr %i.qg, align 4, !tbaa !11
  %i.qj = load <2 x float>, ptr %i.qh, align 4, !tbaa !11
  %i.qk = fsub reassoc nsz arcp contract afn <2 x float> %i.qi, %i.qj ; 2 uses
  %i.ql = fmul reassoc nsz arcp contract afn <2 x float> %i.qk, %i.qk
  %i.qm = fmul reassoc nsz arcp contract afn <2 x float> %i.ql, %i.nw ; 2 uses
  %i.qn = extractelement <2 x float> %i.qm, i64 0
  %i.qo = fadd reassoc nsz arcp contract afn float %i.qf, %i.qn
  %i.qp = extractelement <2 x float> %i.qm, i64 1
  %i.qq = fadd reassoc nsz arcp contract afn float %i.qo, %i.qp
  %i.qr = fadd reassoc nsz arcp contract afn float %i.qq, %.0121143.i ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.nk, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph831, !llvm.loop !41

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qs = icmp slt i32 %i.ll, %spec.select449
  br i1 %i.qs, label %.lr.ph502, label %._crit_edge503

.lr.ph502:                                        ; preds = %init_column_sums.exit
  %i.qt = sub nsw i32 %i.lz, %i.cl
  %i.qu = add i32 %i.lz, %i.cl                    ; 2 uses
  %i.qv = tail call i32 @llvm.smin.i32(i32 %i.qu, i32 %.437) ; 2 uses
  %i.qw = icmp slt i32 %i.qt, %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !29
  %i.qz = icmp slt i32 %i.lz, %.437               ; 2 uses
  %i.ra = sext i32 %i.qy to i64                   ; 8 uses
  %i.rb = tail call i32 @llvm.smin.i32(i32 %i.lr, i32 %spec.select451)
  %i.rc = sub i32 %i.lz, %i.cl
  %i.rd = sext i32 %i.rc to i64                   ; 6 uses
  %i.re = sext i32 %i.qv to i64
  %i.rf = zext nneg i32 %i.lz to i64              ; 2 uses
  %i.rg = sext i32 %.437 to i64                   ; 2 uses
  %smin547 = tail call i32 @llvm.smin.i32(i32 %smin546, i32 %i.mb)
  %i.rh = sub i32 0, %smin547
  %i.ri = sext i32 %i.rh to i64                   ; 4 uses
  %i.rj = add i64 %indvars.iv544, %i.ri           ; 7 uses
  %i.rk = sext i32 %i.mj to i64                   ; 4 uses
  %i.rl = sext i32 %i.lk to i64
  %smax563 = tail call i64 @llvm.smax.i64(i64 %indvars.iv561, i64 %i.rl) ; 3 uses
  %i.rm = sext i32 %spec.select449 to i64         ; 3 uses
  %i.rn = sext i32 %i.lr to i64
  %i.ro = sext i32 %spec.select451 to i64
  %i.rp = sext i32 %i.rb to i64
  %invariant.op = add nsw i64 %i.rm, -1
  %i.rq = shl nsw i64 %i.rj, 2
  %scevgep702.a = getelementptr i8, ptr %i.hy, i64 %i.rq ; 3 uses
  %i.rr = add i64 %i.hr, %i.ri
  %i.rs = sext i32 %i.mj to i64
  %smax703 = tail call i64 @llvm.smax.i64(i64 %i.rr, i64 %i.rs) ; 2 uses
  %i.rt = shl nsw i64 %smax703, 2
  %scevgep704 = getelementptr i8, ptr %i.hy, i64 %i.rt ; 3 uses
  %i.ru = sub i64 %smax563, %i.fu
  %i.rv = mul i64 %i.gi, %i.ru                    ; 2 uses
  %i.rw = shl nsw i64 %i.rj, 4                    ; 2 uses
  %i.rx = shl nsw i64 %i.ra, 2                    ; 2 uses
  %i.ry = getelementptr i8, ptr %0, i64 %i.rv
  %i.rz = getelementptr i8, ptr %i.ry, i64 %i.rw
  %scevgep705 = getelementptr i8, ptr %i.rz, i64 %i.rx
  %i.sa = add nuw i64 %smax563, 1
  %smax707 = tail call i64 @llvm.smax.i64(i64 %i.rm, i64 %i.sa)
  %i.sb = sub i64 %smax707, %i.fu
  %reass.sub = shl i64 %i.sb, 2
  %i.sc = add i64 %reass.sub, -4
  %i.sd = mul i64 %i.sc, %i.u
  %i.se = shl nsw i64 %smax703, 4
  %i.sf = add i64 %i.sd, %i.se                    ; 2 uses
  %i.sg = getelementptr i8, ptr %scevgep706.a, i64 %i.sf
  %scevgep708 = getelementptr i8, ptr %i.sg, i64 %i.rx
  %i.sh = getelementptr i8, ptr %0, i64 %i.rv
  %scevgep709.a = getelementptr i8, ptr %i.sh, i64 %i.rw
  %scevgep711 = getelementptr i8, ptr %scevgep710.a, i64 %i.sf
  %i.si = sext i32 %i.qu to i64
  %smin750 = tail call i64 @llvm.smin.i64(i64 %smin749, i64 %i.si)
  %i.sj = sext i32 %i.ma to i64
  %smin751 = tail call i64 @llvm.smin.i64(i64 %smin750, i64 %i.sj)
  %i.sk = sub i64 %smin751, %i.rd                 ; 7 uses
  %min.iters.check753 = icmp ult i64 %i.sk, 8
  %min.iters.check754 = icmp ult i64 %i.sk, 32
  %i.sl = and i64 %i.sk, 24
  %n.vec756 = and i64 %i.sk, -32                  ; 4 uses
  %i.sm = add i64 %n.vec756, %i.rd
  %invariant.gep900 = getelementptr [4 x i8], ptr %i.hy, i64 %i.rd
  %cmp.n770 = icmp eq i64 %i.sk, %n.vec756
  %min.epilog.iters.check = icmp eq i64 %i.sl, 0
  %n.vec772 = and i64 %i.sk, -8                   ; 3 uses
  %i.sn = add i64 %n.vec772, %i.rd
  %invariant.gep902 = getelementptr [4 x i8], ptr %i.hy, i64 %i.rd
  %cmp.n777 = icmp eq i64 %i.sk, %n.vec772
  %9 = add i64 %i.hq, %i.ri
  %10 = tail call i64 @llvm.smax.i64(i64 %9, i64 %i.rk)
  %11 = add i64 %indvars.iv544, %i.ri
  %12 = sub i64 %10, %11                          ; 3 uses
  %min.iters.check727 = icmp ult i64 %12, 9
  %bound0713 = icmp ult ptr %scevgep702.a, %scevgep708
  %bound1714 = icmp ult ptr %scevgep705, %scevgep704
  %found.conflict715 = and i1 %bound0713, %bound1714
  %bound0717 = icmp ult ptr %scevgep702.a, %scevgep711
  %bound1718 = icmp ult ptr %scevgep709.a, %scevgep704
  %found.conflict719 = and i1 %bound0717, %bound1718
  %i.so = or i1 %found.conflict719, %stride.check720
  %conflict.rdx = or i1 %found.conflict715, %i.so
  %bound0721 = icmp ult ptr %scevgep702.a, %scevgep712
  %bound1722 = icmp ult ptr %i.it, %scevgep704
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx724 = or i1 %conflict.rdx, %found.conflict723
  %i.sp = and i64 %12, 7                          ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 0
  %i.sr = select i1 %i.sq, i64 8, i64 %i.sp
  %n.vec729 = sub i64 %12, %i.sr                  ; 2 uses
  %i.ss = add i64 %i.rj, %n.vec729
  br label %bb.u

._crit_edge503:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %i.ah
  br i1 %exitcond569.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph502, %.loopexit
  %indvars.iv564 = phi i64 [ %smax563, %.lr.ph502 ], [ %indvars.iv.next565, %.loopexit ] ; 11 uses
  br i1 %i.qw, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check753, label %.lr.ph478.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check754, label %vec.epilog.ph, label %vector.body757

vector.body757:                                   ; preds = %vector.main.loop.iter.check, %vector.body757
  %index758 = phi i64 [ %index.next766, %vector.body757 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.sw, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi759 = phi <8 x float> [ %i.sx, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi760 = phi <8 x float> [ %i.sy, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi761 = phi <8 x float> [ %i.sz, %vector.body757 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %index758 ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %gep901, i64 32
  %i.su = getelementptr inbounds nuw i8, ptr %gep901, i64 64
  %i.sv = getelementptr inbounds nuw i8, ptr %gep901, i64 96
  %wide.load762.a = load <8 x float>, ptr %gep901, align 4, !tbaa !11
  %wide.load763 = load <8 x float>, ptr %i.st, align 4, !tbaa !11
  %wide.load764 = load <8 x float>, ptr %i.su, align 4, !tbaa !11
  %wide.load765 = load <8 x float>, ptr %i.sv, align 4, !tbaa !11
  %i.sw = fadd reassoc nsz arcp contract afn <8 x float> %wide.load762.a, %vec.phi ; 2 uses
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi759 ; 2 uses
  %i.sy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load764, %vec.phi760 ; 2 uses
  %i.sz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load765, %vec.phi761 ; 2 uses
  %index.next766 = add nuw i64 %index758, 32      ; 2 uses
  %i.ta = icmp eq i64 %index.next766, %n.vec756
  br i1 %i.ta, label %middle.block767, label %vector.body757, !llvm.loop !42

middle.block767:                                  ; preds = %vector.body757
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.sx, %i.sw
  %bin.rdx768 = fadd reassoc nsz arcp contract afn <8 x float> %i.sy, %bin.rdx
  %bin.rdx769 = fadd reassoc nsz arcp contract afn <8 x float> %i.sz, %bin.rdx768
  %i.tb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx769) ; 3 uses
  br i1 %cmp.n770, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block767
  br i1 %min.epilog.iters.check, label %.lr.ph478.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec756, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.tb, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.tc = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index773 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next776, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi774 = phi <8 x float> [ %i.tc, %vec.epilog.ph ], [ %i.td, %vec.epilog.vector.body ]
  %gep903 = getelementptr [4 x i8], ptr %invariant.gep902, i64 %index773
  %wide.load775 = load <8 x float>, ptr %gep903, align 4, !tbaa !11
  %i.td = fadd reassoc nsz arcp contract afn <8 x float> %wide.load775, %vec.phi774 ; 2 uses
  %index.next776 = add nuw i64 %index773, 8       ; 2 uses
  %i.te = icmp eq i64 %index.next776, %n.vec772
  br i1 %i.te, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.tf = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.td) ; 2 uses
  br i1 %cmp.n777, label %._crit_edge, label %.lr.ph478.preheader

.lr.ph478.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv531.ph = phi i64 [ %i.rd, %iter.check ], [ %i.sm, %vec.epilog.iter.check ], [ %i.sn, %vec.epilog.middle.block ]
  %.0404476.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.tb, %vec.epilog.iter.check ], [ %i.tf, %vec.epilog.middle.block ]
  br label %.lr.ph478

._crit_edge:                                      ; preds = %.lr.ph478, %middle.block767, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.tf, %vec.epilog.middle.block ], [ %i.tb, %middle.block767 ], [ %i.tq, %.lr.ph478 ] ; 2 uses
  %i.tg = mul nsw i64 %indvars.iv564, %i.u
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tg ; 2 uses
  %i.ti = mul i64 %i.je, %indvars.iv564
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ti ; 2 uses
  %i.tk = load float, ptr %i.fz, align 4, !tbaa !45 ; 2 uses
  %i.tl = load float, ptr %i.k, align 8, !tbaa !17
  %i.tm = fcmp reassoc nsz arcp contract afn olt float %i.tl, 0.000000e+00
  br i1 %i.tm, label %.preheader465, label %.preheader467

.preheader467:                                    ; preds = %._crit_edge
  br i1 %i.qz, label %.lr.ph482, label %.loopexit466

.preheader465:                                    ; preds = %._crit_edge
  br i1 %i.qz, label %.lr.ph488, label %.loopexit466

.lr.ph488:                                        ; preds = %.preheader465
  %i.tn = fmul reassoc nsz arcp contract afn float %i.tk, f0xCB000000
  %invariant.gep489 = getelementptr [4 x i8], ptr %i.th, i64 %i.ra
  br label %bb.v

.lr.ph478:                                        ; preds = %.lr.ph478.preheader, %.lr.ph478
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.lr.ph478 ], [ %indvars.iv531.ph, %.lr.ph478.preheader ] ; 2 uses
  %.0404476 = phi float [ %i.tq, %.lr.ph478 ], [ %.0404476.ph, %.lr.ph478.preheader ]
  %i.to = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv531
  %i.tp = load float, ptr %i.to, align 4, !tbaa !11
  %i.tq = fadd reassoc nsz arcp contract afn float %i.tp, %.0404476 ; 2 uses
  %indvars.iv.next532 = add nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.tr = icmp slt i64 %indvars.iv.next532, %i.re
  br i1 %i.tr, label %.lr.ph478, label %._crit_edge, !llvm.loop !46

bb.v:                                             ; preds = %.lr.ph488, %bb.v
  %indvars.iv541 = phi i64 [ %i.rf, %.lr.ph488 ], [ %indvars.iv.next542, %bb.v ] ; 4 uses
  %.1486 = phi float [ %.0404.lcssa, %.lr.ph488 ], [ %i.tz, %bb.v ]
  %gep643 = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv541
  %i.ts = load float, ptr %gep643, align 4, !tbaa !11
  %i.tt = trunc nuw nsw i64 %indvars.iv541 to i32
  %i.tu = add i32 %i.tt, %i.fy
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.tv
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !11
  %i.ty = fsub reassoc nsz arcp contract afn float %i.ts, %i.tx
  %i.tz = fadd reassoc nsz arcp contract afn float %i.ty, %.1486 ; 2 uses
  %i.ua = fmul reassoc nsz arcp contract afn float %i.tn, %i.tz
  %i.ub = fptosi float %i.ua to i32               ; 2 uses
  %i.uc = add nsw i32 %i.ub, 1065353216
  %i.ud = icmp sgt i32 %i.ub, -1056964609
  %i.ue = bitcast i32 %i.uc to float
  %i.uf = shl nuw nsw i64 %indvars.iv541, 2       ; 2 uses
  %gep490 = getelementptr [4 x i8], ptr %invariant.gep489, i64 %i.uf ; 3 uses
  %i.ug = getelementptr i8, ptr %gep490, i64 8
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !11
  %invariant.gep483 = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.uf ; 2 uses
  %i.ui = select i1 %i.ud, float %i.ue, float 0.000000e+00
  %i.uj = load <2 x float>, ptr %gep490, align 4, !tbaa !11
  %i.uk = insertelement <4 x float> poison, float %i.ui, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.um = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.uh, i64 2
  %i.un = shufflevector <2 x float> %i.uj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> %i.um, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.up = fmul reassoc nsz arcp contract afn <4 x float> %i.ul, %i.uo
  %i.uq = load <4 x float>, ptr %invariant.gep483, align 4, !tbaa !11
  %i.ur = fadd reassoc nsz arcp contract afn <4 x float> %i.uq, %i.up
  store <4 x float> %i.ur, ptr %invariant.gep483, align 4, !tbaa !11
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %gep490, i64 %i.u
  tail call void @llvm.prefetch.p0(ptr nonnull %i.us, i32 0, i32 3, i32 1)
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.ut = icmp slt i64 %indvars.iv.next542, %i.rg
  br i1 %i.ut, label %bb.v, label %.loopexit466

.lr.ph482:                                        ; preds = %.preheader467, %.lr.ph482
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %.lr.ph482 ], [ %i.rf, %.preheader467 ] ; 4 uses
  %.2480 = phi float [ %i.vb, %.lr.ph482 ], [ %.0404.lcssa, %.preheader467 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep641, i64 %indvars.iv536
  %i.uu = load float, ptr %gep, align 4, !tbaa !11
  %i.uv = trunc nuw nsw i64 %indvars.iv536 to i32
  %i.uw = add i32 %i.uv, %i.fy
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ux
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !11
  %i.va = fsub reassoc nsz arcp contract afn float %i.uu, %i.uz
  %i.vb = fadd reassoc nsz arcp contract afn float %i.va, %.2480 ; 2 uses
  %i.vc = shl nuw nsw i64 %indvars.iv536, 2       ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.vc ; 3 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.ra ; 3 uses
  %i.vf = load float, ptr %i.vd, align 4, !tbaa !11
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vi = load float, ptr %i.k, align 8, !tbaa !17
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vi, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.vc ; 2 uses
  %i.vk = load <2 x float>, ptr %i.ve, align 4, !tbaa !11 ; 2 uses
  %i.vl = extractelement <2 x float> %i.vk, i64 0
  %i.vm = fsub reassoc nsz arcp contract afn float %i.vf, %i.vl ; 2 uses
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, %i.vm
  %i.vo = load <2 x float>, ptr %i.vg, align 4, !tbaa !11
  %i.vp = load <2 x float>, ptr %i.vh, align 4, !tbaa !11 ; 2 uses
  %i.vq = fsub reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vp ; 2 uses
  %i.vr = fmul reassoc nsz arcp contract afn <2 x float> %i.vq, %i.vq ; 2 uses
  %i.vs = extractelement <2 x float> %i.vr, i64 0
  %i.vt = fadd reassoc nsz arcp contract afn float %i.vs, %i.vn
  %i.vu = extractelement <2 x float> %i.vr, i64 1
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vt, %i.vu
  %i.vw = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.vv
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vw, %i.vb
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vx, %i.tk
  %i.vz = fdiv reassoc nsz arcp contract afn float %i.vy, %i.vj
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vz, -2.000000e+00
  %i.wb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wa, float 0.000000e+00)
  %i.wc = fmul reassoc nnan nsz arcp contract afn float %i.wb, f0xCB000000
  %i.wd = fptosi float %i.wc to i32               ; 2 uses
  %i.we = add nsw i32 %i.wd, 1065353216
  %i.wf = icmp sgt i32 %i.wd, -1056964609
  %i.wg = bitcast i32 %i.we to float
  %i.wh = select i1 %i.wf, float %i.wg, float 0.000000e+00
  %i.wi = insertelement <4 x float> poison, float %i.wh, i64 0
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wk = shufflevector <2 x float> %i.vk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wl = insertelement <4 x float> %i.wk, float 1.000000e+00, i64 3
  %i.wm = shufflevector <2 x float> %i.vp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.wn = shufflevector <4 x float> %i.wl, <4 x float> %i.wm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.wo = fmul reassoc nsz arcp contract afn <4 x float> %i.wj, %i.wn
  %i.wp = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !11
  %i.wq = fadd reassoc nsz arcp contract afn <4 x float> %i.wp, %i.wo
end_hunk_0
