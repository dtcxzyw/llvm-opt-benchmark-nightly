Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_morton?download=true
inline.NumInlined: 2981
inline.NumDeleted: 348
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN6embree4sse216CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEclERKNS_5rangeIjEERKNS_13FastAllocator15CachedAllocatorE:bb.a
  %i.cz = add i64 %i.cy, %i.cs
  store i64 %i.cz, ptr %i.cx, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = sub i64 %i.cu, %i.cl
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

bb.r:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  store i64 %i.cq, ptr %i.cp, align 16
  %i.de = shl i64 %i.cl, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 32           ; 2 uses
  %i.dh = icmp ugt i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.di = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.dg, ptr %i.b, align 8
  %i.dj = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = load i64, ptr %i.cv, align 8
  %i.dm = load i64, ptr %i.cp, align 16
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 6 uses
  %i.dp = load i64, ptr %i.do, align 16
  %i.dq = add i64 %i.dp, %i.dn                    ; 2 uses
  store i64 %i.dq, ptr %i.do, align 16
  %i.dr = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dr, ptr %i.cv, align 8
  store i64 %i.cl, ptr %i.cp, align 16
  %.not23.i = icmp ugt i64 %i.cl, %i.dr
  br i1 %.not23.i, label %bb.v, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  store i64 %i.dq, ptr %i.do, align 16
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  store i64 0, ptr %i.cp, align 16
  %i.ds = load i64, ptr %i.df, align 32
  store i64 %i.ds, ptr %i.b, align 8
  %i.dt = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.dt, ptr %i.dk, align 8
  %i.du = load i64, ptr %i.cv, align 8
  %i.dv = load i64, ptr %i.cp, align 16
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = load i64, ptr %i.do, align 16
  %i.dy = add i64 %i.dx, %i.dw                    ; 2 uses
  store i64 %i.dy, ptr %i.do, align 16
  %i.dz = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dz, ptr %i.cv, align 8
  store i64 %i.cl, ptr %i.cp, align 16
  %.not24.i = icmp ugt i64 %i.cl, %i.dz
  br i1 %.not24.i, label %bb.x, label %bb.w, !prof !31

bb.w:                                             ; preds = %bb.v
  store i64 %i.dy, ptr %i.do, align 16
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i64 0, ptr %i.cp, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.0.i = phi ptr [ %i.dj, %bb.u ], [ %i.dt, %bb.w ], [ null, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit: ; preds = %bb.q, %bb.s, %bb.y
  %.1.i = phi ptr [ %i.dd, %bb.q ], [ %i.di, %bb.s ], [ %.0.i, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not639 = icmp eq i32 %i.d, %i.e
  br i1 %.not639, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit
  %i.ea = load ptr, ptr %1, align 8               ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 144 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 160 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.z

._crit_edge:                                      ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ], [ %i.vs, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %.sroa.068.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ], [ %i.vr, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %i.ej = ptrtoint ptr %.1.i to i64
  %i.ek = call noundef i64 @llvm.umin.i64(i64 %i.g, i64 7)
  %i.el = or i64 %i.ek, %i.ej
  %i.em = or i64 %i.el, 8
  %i.en = load i32, ptr %i.c, align 4
  %i.eo = load i32, ptr %2, align 4
  %i.ep = sub i32 %i.en, %i.eo
  %i.eq = bitcast i32 %i.ep to float
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.068.0.lcssa, float %i.eq, i64 3
  store i64 %i.em, ptr %0, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0.12.vec.insert, ptr %i.er, align 16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.es, align 16
  ret void

bb.z:                                             ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEm.exit
  %.0637 = phi i64 [ 0, %.lr.ph ], [ %i.vw, %_ZNK6embree13InstanceArray6boundsEm.exit ] ; 3 uses
  %.sroa.068.0636 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.vr, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %.sroa.6.0635 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.vs, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %i.et = load ptr, ptr %i.eb, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0637
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.h
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = zext i32 %i.ex to i64                   ; 10 uses
  %i.ez = load ptr, ptr %i.ec, align 8, !noalias !1677 ; 3 uses
  %.not.i19 = icmp eq ptr %i.ez, null             ; 3 uses
  br i1 %.not.i19, label %_ZNK6embree13InstanceArray5validEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit:          ; preds = %bb.z
  %i.fa = load ptr, ptr %i.ed, align 8, !noalias !1677
  %i.fb = load i64, ptr %i.ee, align 8, !noalias !1677
  %i.fc = mul i64 %i.fb, %i.ey
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !noalias !1677
  %.not = icmp eq i32 %i.fe, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray6boundsEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit.thread:   ; preds = %bb.z, %_ZNK6embree13InstanceArray5validEm.exit
  %i.ff = load i32, ptr %i.ef, align 4, !noalias !1677
  %i.fg = and i32 %i.ff, 65280
  %i.fh = icmp eq i32 %i.fg, 256
  %i.fi = load ptr, ptr %i.eg, align 8, !noalias !1677 ; 17 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load i32, ptr %i.fj, align 8, !noalias !1677 ; 2 uses
  br i1 %i.fh, label %bb.aa, label %bb.af, !prof !31

bb.aa:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.fk, label %_ZNK6embree13InstanceArray3l2wEmm.exit [
    i32 37444, label %bb.ab
    i32 45057, label %bb.ac
    i32 37428, label %bb.ad
    i32 37172, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fl = load ptr, ptr %i.fi, align 8, !noalias !1678
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !1678
  %i.fo = mul i64 %i.fn, %i.ey
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fo ; 4 uses
  %i.fq = load <4 x float>, ptr %i.fp, align 16, !noalias !1677
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fs = load <4 x float>, ptr %i.fr, align 16, !noalias !1677
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fu = load <4 x float>, ptr %i.ft, align 16, !noalias !1677
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fw = load <4 x float>, ptr %i.fv, align 16, !noalias !1677
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fx = load ptr, ptr %i.fi, align 8, !noalias !1677
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !1677
  %i.ga = mul i64 %i.fz, %i.ey
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ga ; 12 uses
  %i.gc = load float, ptr %i.gb, align 16, !noalias !1677
  %.sroa.0186.0.vec.insert = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.ge = load float, ptr %i.gd, align 4, !noalias !1677
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gg = load float, ptr %i.gf, align 8, !noalias !1677
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gi = load float, ptr %i.gh, align 4, !noalias !1677
  %i.gj = insertelement <4 x float> poison, float %i.gi, i64 0
  %.sroa.11189.16.vec.insert = insertelement <4 x float> %i.gj, float %i.ge, i64 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gl = load <2 x float>, ptr %i.gk, align 16, !noalias !1677
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20192.36.vec.insert = insertelement <4 x float> %i.gm, float %i.gg, i64 2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 52
  %i.go = load <2 x float>, ptr %i.gn, align 4, !noalias !1677
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0186.8.vec.insert740 = shufflevector <4 x float> %.sroa.0186.0.vec.insert, <4 x float> %i.gp, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 60
  %i.gr = load float, ptr %i.gq, align 4, !noalias !1677
  %.sroa.11189.24.vec.insert = insertelement <4 x float> %.sroa.11189.16.vec.insert, float %i.gr, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gb, i64 44
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gx = load float, ptr %i.gw, align 16, !noalias !1677 ; 3 uses
  %i.gy = load float, ptr %i.gt, align 4, !noalias !1677 ; 2 uses
  %i.gz = load <4 x float>, ptr %i.gs, align 8, !noalias !1677 ; 2 uses
  %i.ha = load float, ptr %i.gu, align 8, !noalias !1677 ; 3 uses
  %i.hb = load float, ptr %i.gv, align 4, !noalias !1677 ; 3 uses
  %i.hc = fmul float %i.ha, %i.ha
  %i.hd = call float @llvm.fmuladd.f32(float %i.gy, float %i.gy, float %i.hc)
  %i.he = call float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.hd)
  %i.hf = call float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.he) ; 2 uses
  %i.hg = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hh = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.hg) ; 3 uses
  %i.hi = extractelement <4 x float> %i.hh, i64 0 ; 2 uses
  %i.hj = fmul float %i.hi, 1.500000e+00
  %i.hk = fmul float %i.hf, 5.000000e-01
  %i.hl = fmul float %i.hi, %i.hk
  %foldExtExtBinop = fmul <4 x float> %i.hh, %i.hh
  %i.hm = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.hn = fmul float %i.hm, %i.hl
  %i.ho = fsub float %i.hj, %i.hn                 ; 4 uses
  %i.hp = insertelement <4 x float> poison, float %i.ho, i64 3
  %i.hq = fmul <4 x float> %i.gz, %i.hp
  %6 = shufflevector <4 x float> %i.gz, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hr = fmul float %i.ha, %i.ho
  %i.hs = fmul float %i.hb, %i.ho
  %i.ht = fmul float %i.gx, %i.ho
  %.sroa.0186.12.vec.insert = insertelement <4 x float> %.sroa.0186.8.vec.insert740, float %i.hr, i64 3
  %.sroa.11189.28.vec.insert = insertelement <4 x float> %.sroa.11189.24.vec.insert, float %i.hs, i64 3
  %.sroa.20192.44.vec.insert = insertelement <4 x float> %.sroa.20192.36.vec.insert, float %i.ht, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.ad:                                            ; preds = %bb.aa
  %i.hu = load ptr, ptr %i.fi, align 8, !noalias !1678
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !noalias !1678
  %i.hx = mul i64 %i.hw, %i.ey
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hx ; 8 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load <2 x float>, ptr %i.hz, align 4, !noalias !1677
  %i.ib = load float, ptr %i.hy, align 4, !noalias !1677
  %i.ic = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ib, i64 0
  %i.id = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ie = shufflevector <4 x float> %i.ic, <4 x float> %i.id, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !noalias !1677
  %i.ii = load float, ptr %i.if, align 4, !noalias !1677
  %i.ij = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ii, i64 0
  %i.ik = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.il = shufflevector <4 x float> %i.ij, <4 x float> %i.ik, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.io = load <2 x float>, ptr %i.in, align 4, !noalias !1677
  %i.ip = load float, ptr %i.im, align 4, !noalias !1677
  %i.iq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ip, i64 0
  %i.ir = shufflevector <2 x float> %i.io, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.is = shufflevector <4 x float> %i.iq, <4 x float> %i.ir, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.it = getelementptr inbounds nuw i8, ptr %i.hy, i64 36
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.iv = load <2 x float>, ptr %i.iu, align 4, !noalias !1677
  %i.iw = load float, ptr %i.it, align 4, !noalias !1677
  %i.ix = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iw, i64 0
  %i.iy = shufflevector <2 x float> %i.iv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> %i.iy, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.ae:                                            ; preds = %bb.aa
  %i.ja = load ptr, ptr %i.fi, align 8, !noalias !1678
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !1678
  %i.jd = mul i64 %i.jc, %i.ey
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jd ; 12 uses
  %i.jf = load float, ptr %i.je, align 4, !noalias !1678
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jh = load float, ptr %i.jg, align 4, !noalias !1678
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jj = load float, ptr %i.ji, align 4, !noalias !1678
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  %i.jl = load float, ptr %i.jk, align 4, !noalias !1678
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jn = load float, ptr %i.jm, align 4, !noalias !1678
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.jp = load float, ptr %i.jo, align 4, !noalias !1678
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jr = load float, ptr %i.jq, align 4, !noalias !1678
  %i.js = getelementptr inbounds nuw i8, ptr %i.je, i64 28
  %i.jt = load float, ptr %i.js, align 4, !noalias !1678
  %i.ju = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jv = load float, ptr %i.ju, align 4, !noalias !1678
  %i.jw = getelementptr inbounds nuw i8, ptr %i.je, i64 36
  %i.jx = load float, ptr %i.jw, align 4, !noalias !1678
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jz = load float, ptr %i.jy, align 4, !noalias !1678
  %i.ka = getelementptr inbounds nuw i8, ptr %i.je, i64 44
  %i.kb = load float, ptr %i.ka, align 4, !noalias !1678
  %i.kc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jf, i64 0
  %i.kd = insertelement <4 x float> %i.kc, float %i.jn, i64 1
  %i.ke = insertelement <4 x float> %i.kd, float %i.jv, i64 2
  %i.kf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jh, i64 0
  %i.kg = insertelement <4 x float> %i.kf, float %i.jp, i64 1
  %i.kh = insertelement <4 x float> %i.kg, float %i.jx, i64 2
  %i.ki = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jj, i64 0
  %i.kj = insertelement <4 x float> %i.ki, float %i.jr, i64 1
  %i.kk = insertelement <4 x float> %i.kj, float %i.jz, i64 2
  %i.kl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jl, i64 0
  %i.km = insertelement <4 x float> %i.kl, float %i.jt, i64 1
  %i.kn = insertelement <4 x float> %i.km, float %i.kb, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

_ZNK6embree13InstanceArray3l2wEmm.exit:           ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.sroa.20192.0 = phi <4 x float> [ %i.fu, %bb.ab ], [ %.sroa.20192.44.vec.insert, %bb.ac ], [ %i.is, %bb.ad ], [ %i.kk, %bb.ae ], [ undef, %bb.aa ] ; 5 uses
  %.sroa.11189.0 = phi <4 x float> [ %i.fs, %bb.ab ], [ %.sroa.11189.28.vec.insert, %bb.ac ], [ %i.il, %bb.ad ], [ %i.kh, %bb.ae ], [ undef, %bb.aa ] ; 6 uses
  %.sroa.0186.0 = phi <4 x float> [ %i.fq, %bb.ab ], [ %.sroa.0186.12.vec.insert, %bb.ac ], [ %i.ie, %bb.ad ], [ %i.ke, %bb.ae ], [ undef, %bb.aa ] ; 5 uses
  %.sroa.29195.0 = phi <4 x float> [ %i.fw, %bb.ab ], [ %6, %bb.ac ], [ %i.iz, %bb.ad ], [ %i.kn, %bb.ae ], [ undef, %bb.aa ] ; 5 uses
  %.sroa.29195.60.vec.extract = extractelement <4 x float> %.sroa.29195.0, i64 3 ; 7 uses
  %.sroa.0186.12.vec.extract = extractelement <4 x float> %.sroa.0186.0, i64 3 ; 7 uses
  %.sroa.11189.28.vec.extract = extractelement <4 x float> %.sroa.11189.0, i64 3 ; 7 uses
  %.sroa.20192.44.vec.extract = extractelement <4 x float> %.sroa.20192.0, i64 3 ; 6 uses
  %.sroa.17337.52.vec.insert = shufflevector <4 x float> %.sroa.0186.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17337.56.vec.insert = shufflevector <4 x float> %.sroa.17337.52.vec.insert, <4 x float> %.sroa.11189.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ko = fmul float %.sroa.0186.12.vec.extract, %.sroa.0186.12.vec.extract
  %i.kp = call float @llvm.fmuladd.f32(float %.sroa.29195.60.vec.extract, float %.sroa.29195.60.vec.extract, float %i.ko)
  %i.kq = fneg float %.sroa.11189.28.vec.extract  ; 3 uses
  %i.kr = call float @llvm.fmuladd.f32(float %i.kq, float %.sroa.11189.28.vec.extract, float %i.kp)
  %i.ks = fneg float %.sroa.20192.44.vec.extract  ; 3 uses
  %i.kt = call float @llvm.fmuladd.f32(float %i.ks, float %.sroa.20192.44.vec.extract, float %i.kr)
  %i.ku = fmul float %.sroa.20192.44.vec.extract, %.sroa.29195.60.vec.extract
  %i.kv = call float @llvm.fmuladd.f32(float %.sroa.0186.12.vec.extract, float %.sroa.11189.28.vec.extract, float %i.ku)
  %i.kw = fmul float %i.kv, 2.000000e+00
  %i.kx = fmul float %.sroa.29195.60.vec.extract, %i.kq
  %i.ky = call float @llvm.fmuladd.f32(float %.sroa.0186.12.vec.extract, float %.sroa.20192.44.vec.extract, float %i.kx)
  %i.kz = fmul float %i.ky, 2.000000e+00
  %i.la = fmul float %.sroa.29195.60.vec.extract, %i.ks
  %i.lb = call float @llvm.fmuladd.f32(float %.sroa.0186.12.vec.extract, float %.sroa.11189.28.vec.extract, float %i.la)
  %i.lc = fmul float %i.lb, 2.000000e+00
  %i.ld = fneg float %.sroa.0186.12.vec.extract   ; 2 uses
  %i.le = fmul float %.sroa.0186.12.vec.extract, %i.ld
  %i.lf = call float @llvm.fmuladd.f32(float %.sroa.29195.60.vec.extract, float %.sroa.29195.60.vec.extract, float %i.le) ; 2 uses
  %i.lg = call float @llvm.fmuladd.f32(float %.sroa.11189.28.vec.extract, float %.sroa.11189.28.vec.extract, float %i.lf)
  %i.lh = shufflevector <4 x float> %.sroa.29195.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.li = shufflevector <4 x float> %.sroa.0186.0, <4 x float> %.sroa.11189.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.lj = insertelement <4 x float> %i.li, float %i.lg, i64 0
  %i.lk = insertelement <4 x float> %i.lj, float %i.ld, i64 3
  %i.ll = fmul <4 x float> %i.lh, %i.lk
  %i.lm = shufflevector <4 x float> %.sroa.11189.0, <4 x float> %.sroa.0186.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.ln = insertelement <4 x float> %i.lm, float %i.ks, i64 0
  %i.lo = shufflevector <4 x float> %.sroa.20192.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ln, <4 x float> %i.lo, <4 x float> %i.ll) ; 3 uses
  %i.lq = extractelement <4 x float> %i.lp, i64 1
  %i.lr = fmul float %i.lq, 2.000000e+00
  %i.ls = shufflevector <4 x float> %i.lp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.lt = fmul <2 x float> %i.ls, splat (float 2.000000e+00) ; 2 uses
  %i.lu = call float @llvm.fmuladd.f32(float %i.kq, float %.sroa.11189.28.vec.extract, float %i.lf)
  %i.lv = call float @llvm.fmuladd.f32(float %.sroa.20192.44.vec.extract, float %.sroa.20192.44.vec.extract, float %i.lu)
  %i.lw = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = insertelement <4 x float> poison, float %i.kz, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = fmul <4 x float> %i.mb, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.md = fmul <4 x float> %i.lz, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.me = fadd <4 x float> %i.md, %i.mc
  %i.mf = fmul <4 x float> %i.lx, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mg = fadd <4 x float> %i.mf, %i.me           ; 4 uses
  %i.mh = insertelement <4 x float> poison, float %i.lc, i64 0
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mj = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mk = insertelement <4 x float> poison, float %i.lr, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = fmul <4 x float> %i.ml, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.mn = fmul <4 x float> %i.mj, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mo = fadd <4 x float> %i.mn, %i.mm
  %i.mp = fmul <4 x float> %i.mi, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mq = fadd <4 x float> %i.mp, %i.mo           ; 4 uses
  %i.mr = shufflevector <2 x float> %i.lt, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ms = shufflevector <2 x float> %i.lt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mt = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mv = fmul <4 x float> %i.mu, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.mw = fmul <4 x float> %i.ms, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mx = fadd <4 x float> %i.mw, %i.mv
  %i.my = fmul <4 x float> %i.mr, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mz = fadd <4 x float> %i.my, %i.mx           ; 3 uses
  %i.na = fadd <4 x float> %.sroa.17337.56.vec.insert, zeroinitializer
  %i.nb = shufflevector <4 x float> %.sroa.0186.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nc = fmul <4 x float> %i.mz, zeroinitializer ; 2 uses
  %i.nd = fmul <4 x float> %i.mq, zeroinitializer
  %i.ne = fadd <4 x float> %i.nd, %i.nc
  %i.nf = fmul <4 x float> %i.nb, %i.mg
  %i.ng = fadd <4 x float> %i.nf, %i.ne           ; 2 uses
  %i.nh = shufflevector <4 x float> %.sroa.11189.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ni = shufflevector <4 x float> %.sroa.11189.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nj = fmul <4 x float> %i.ni, %i.mq
  %i.nk = fadd <4 x float> %i.nj, %i.nc
  %i.nl = fmul <4 x float> %i.nh, %i.mg
  %i.nm = fadd <4 x float> %i.nl, %i.nk           ; 2 uses
  %i.nn = shufflevector <4 x float> %.sroa.20192.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = shufflevector <4 x float> %.sroa.20192.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.np = shufflevector <4 x float> %.sroa.20192.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.nq = fmul <4 x float> %i.np, %i.mz
  %i.nr = fmul <4 x float> %i.no, %i.mq
  %i.ns = fadd <4 x float> %i.nr, %i.nq
  %i.nt = fmul <4 x float> %i.nn, %i.mg
  %i.nu = fadd <4 x float> %i.nt, %i.ns           ; 2 uses
  %i.nv = shufflevector <4 x float> %.sroa.29195.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nw = shufflevector <4 x float> %.sroa.29195.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nx = shufflevector <4 x float> %.sroa.29195.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ny = fmul <4 x float> %i.nx, %i.mz
  %i.nz = fmul <4 x float> %i.nw, %i.mq
  %i.oa = fadd <4 x float> %i.nz, %i.ny
  %i.ob = fmul <4 x float> %i.nv, %i.mg
  %i.oc = fadd <4 x float> %i.ob, %i.oa
  %i.od = fadd <4 x float> %i.na, %i.oc           ; 2 uses
  br i1 %.not.i19, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

bb.af:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.fk, label %_ZNK6embree13InstanceArray3l2wEmm.exit21 [
    i32 37444, label %bb.ag
    i32 45057, label %bb.ah
    i32 37428, label %bb.ai
    i32 37172, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.oe = load ptr, ptr %i.fi, align 8, !noalias !1679
  %i.of = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.og = load i64, ptr %i.of, align 8, !noalias !1679
  %i.oh = mul i64 %i.og, %i.ey
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oh ; 4 uses
  %i.oj = load <4 x float>, ptr %i.oi, align 16, !noalias !1677
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ol = load <4 x float>, ptr %i.ok, align 16, !noalias !1677
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  %i.on = load <4 x float>, ptr %i.om, align 16, !noalias !1677
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  %i.op = load <4 x float>, ptr %i.oo, align 16, !noalias !1677
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit21

bb.ah:                                            ; preds = %bb.af
  %i.oq = load ptr, ptr %i.fi, align 8, !noalias !1677
  %i.or = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.os = load i64, ptr %i.or, align 8, !noalias !1677
  %i.ot = mul i64 %i.os, %i.ey
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ot ; 12 uses
  %i.ov = load float, ptr %i.ou, align 16, !noalias !1677
  %.sroa.0114.0.vec.insert = insertelement <4 x float> poison, float %i.ov, i64 0
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.ox = load float, ptr %i.ow, align 4, !noalias !1677
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.oz = load float, ptr %i.oy, align 8, !noalias !1677
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 12
  %i.pb = load float, ptr %i.pa, align 4, !noalias !1677
  %i.pc = insertelement <4 x float> poison, float %i.pb, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.pc, float %i.ox, i64 1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.pe = load <2 x float>, ptr %i.pd, align 16, !noalias !1677
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.pf, float %i.oz, i64 2
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ou, i64 52
  %i.ph = load <2 x float>, ptr %i.pg, align 4, !noalias !1677
  %i.pi = shufflevector <2 x float> %i.ph, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0114.8.vec.insert741 = shufflevector <4 x float> %.sroa.0114.0.vec.insert, <4 x float> %i.pi, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ou, i64 60
  %i.pk = load float, ptr %i.pj, align 4, !noalias !1677
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.pk, i64 2
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ou, i64 36
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.po = getelementptr inbounds nuw i8, ptr %i.ou, i64 44
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.pq = load float, ptr %i.pp, align 16, !noalias !1677 ; 3 uses
  %i.pr = load float, ptr %i.pm, align 4, !noalias !1677 ; 2 uses
  %i.ps = load <4 x float>, ptr %i.pl, align 8, !noalias !1677 ; 2 uses
  %i.pt = load float, ptr %i.pn, align 8, !noalias !1677 ; 3 uses
  %i.pu = load float, ptr %i.po, align 4, !noalias !1677 ; 3 uses
  %i.pv = fmul float %i.pt, %i.pt
  %i.pw = call float @llvm.fmuladd.f32(float %i.pr, float %i.pr, float %i.pv)
  %i.px = call float @llvm.fmuladd.f32(float %i.pu, float %i.pu, float %i.pw)
  %i.py = call float @llvm.fmuladd.f32(float %i.pq, float %i.pq, float %i.px) ; 2 uses
  %i.pz = insertelement <4 x float> poison, float %i.py, i64 0
  %i.qa = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.pz) ; 3 uses
  %i.qb = extractelement <4 x float> %i.qa, i64 0 ; 2 uses
  %i.qc = fmul float %i.qb, 1.500000e+00
  %i.qd = fmul float %i.py, 5.000000e-01
  %i.qe = fmul float %i.qb, %i.qd
  %foldExtExtBinop743 = fmul <4 x float> %i.qa, %i.qa
  %i.qf = extractelement <4 x float> %foldExtExtBinop743, i64 0
  %i.qg = fmul float %i.qf, %i.qe
  %i.qh = fsub float %i.qc, %i.qg                 ; 4 uses
  %i.qi = insertelement <4 x float> poison, float %i.qh, i64 3
  %i.qj = fmul <4 x float> %i.ps, %i.qi
  %7 = shufflevector <4 x float> %i.ps, <4 x float> %i.qj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qk = fmul float %i.pt, %i.qh
  %i.ql = fmul float %i.pu, %i.qh
  %i.qm = fmul float %i.pq, %i.qh
  %.sroa.0114.12.vec.insert = insertelement <4 x float> %.sroa.0114.8.vec.insert741, float %i.qk, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.ql, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.qm, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit21

bb.ai:                                            ; preds = %bb.af
  %i.qn = load ptr, ptr %i.fi, align 8, !noalias !1679
  %i.qo = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.qp = load i64, ptr %i.qo, align 8, !noalias !1679
  %i.qq = mul i64 %i.qp, %i.ey
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qq ; 8 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qt = load <2 x float>, ptr %i.qs, align 4, !noalias !1677
  %i.qu = load float, ptr %i.qr, align 4, !noalias !1677
  %i.qv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qu, i64 0
  %i.qw = shufflevector <2 x float> %i.qt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qx = shufflevector <4 x float> %i.qv, <4 x float> %i.qw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 12
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.ra = load <2 x float>, ptr %i.qz, align 4, !noalias !1677
  %i.rb = load float, ptr %i.qy, align 4, !noalias !1677
  %i.rc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rb, i64 0
  %i.rd = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.re = shufflevector <4 x float> %i.rc, <4 x float> %i.rd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qr, i64 28
  %i.rh = load <2 x float>, ptr %i.rg, align 4, !noalias !1677
  %i.ri = load float, ptr %i.rf, align 4, !noalias !1677
  %i.rj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ri, i64 0
  %i.rk = shufflevector <2 x float> %i.rh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rl = shufflevector <4 x float> %i.rj, <4 x float> %i.rk, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qr, i64 36
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  %i.ro = load <2 x float>, ptr %i.rn, align 4, !noalias !1677
  %i.rp = load float, ptr %i.rm, align 4, !noalias !1677
  %i.rq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rp, i64 0
  %i.rr = shufflevector <2 x float> %i.ro, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rs = shufflevector <4 x float> %i.rq, <4 x float> %i.rr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit21

bb.aj:                                            ; preds = %bb.af
  %i.rt = load ptr, ptr %i.fi, align 8, !noalias !1679
  %i.ru = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.rv = load i64, ptr %i.ru, align 8, !noalias !1679
  %i.rw = mul i64 %i.rv, %i.ey
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rw ; 12 uses
  %i.ry = load float, ptr %i.rx, align 4, !noalias !1679
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.sa = load float, ptr %i.rz, align 4, !noalias !1679
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sc = load float, ptr %i.sb, align 4, !noalias !1679
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rx, i64 12
  %i.se = load float, ptr %i.sd, align 4, !noalias !1679
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.sg = load float, ptr %i.sf, align 4, !noalias !1679
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rx, i64 20
  %i.si = load float, ptr %i.sh, align 4, !noalias !1679
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.sk = load float, ptr %i.sj, align 4, !noalias !1679
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rx, i64 28
  %i.sm = load float, ptr %i.sl, align 4, !noalias !1679
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %i.so = load float, ptr %i.sn, align 4, !noalias !1679
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rx, i64 36
  %i.sq = load float, ptr %i.sp, align 4, !noalias !1679
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  %i.ss = load float, ptr %i.sr, align 4, !noalias !1679
  %i.st = getelementptr inbounds nuw i8, ptr %i.rx, i64 44
  %i.su = load float, ptr %i.st, align 4, !noalias !1679
  %i.sv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ry, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.sg, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.so, i64 2
  %i.sy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.sa, i64 0
  %i.sz = insertelement <4 x float> %i.sy, float %i.si, i64 1
  %i.ta = insertelement <4 x float> %i.sz, float %i.sq, i64 2
  %i.tb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.sc, i64 0
  %i.tc = insertelement <4 x float> %i.tb, float %i.sk, i64 1
  %i.td = insertelement <4 x float> %i.tc, float %i.ss, i64 2
  %i.te = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.se, i64 0
  %i.tf = insertelement <4 x float> %i.te, float %i.sm, i64 1
  %i.tg = insertelement <4 x float> %i.tf, float %i.su, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit21

_ZNK6embree13InstanceArray3l2wEmm.exit21:         ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.sroa.26.0 = phi <4 x float> [ %i.op, %bb.ag ], [ %7, %bb.ah ], [ %i.rs, %bb.ai ], [ %i.tg, %bb.aj ], [ undef, %bb.af ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.on, %bb.ag ], [ %.sroa.18.44.vec.insert, %bb.ah ], [ %i.rl, %bb.ai ], [ %i.td, %bb.aj ], [ undef, %bb.af ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.ol, %bb.ag ], [ %.sroa.10.28.vec.insert, %bb.ah ], [ %i.re, %bb.ai ], [ %i.ta, %bb.aj ], [ undef, %bb.af ] ; 2 uses
  %.sroa.0114.0 = phi <4 x float> [ %i.oj, %bb.ag ], [ %.sroa.0114.12.vec.insert, %bb.ah ], [ %i.qx, %bb.ai ], [ %i.sx, %bb.aj ], [ undef, %bb.af ] ; 2 uses
  br i1 %.not.i19, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit21, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.sink718.ph = phi <4 x float> [ %i.nu, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ]
  %.sink716.ph = phi <4 x float> [ %i.od, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ]
  %.sink714.ph = phi <4 x float> [ %i.nm, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ]
  %.sink710.ph = phi <4 x float> [ %i.ng, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.0114.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ]
  %i.th = load ptr, ptr %i.ed, align 8, !noalias !1677
  %i.ti = load i64, ptr %i.ee, align 8, !noalias !1677
  %i.tj = mul i64 %i.ti, %i.ey
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !noalias !1677 ; 2 uses
  %i.tm = icmp ne i32 %i.tl, -1
  call void @llvm.assume(i1 %i.tm)
  %i.tn = load ptr, ptr %i.eh, align 16, !noalias !1677
  %i.to = zext i32 %i.tl to i64
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !noalias !1677
  br label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit21, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.0.i31.sink731 = phi ptr [ %i.ez, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %i.ez, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ], [ %i.tq, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 4 uses
  %.sink718 = phi <4 x float> [ %i.nu, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ], [ %.sink718.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink716 = phi <4 x float> [ %i.od, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ], [ %.sink716.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink714 = phi <4 x float> [ %i.nm, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ], [ %.sink714.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink710 = phi <4 x float> [ %i.ng, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.0114.0, %_ZNK6embree13InstanceArray3l2wEmm.exit21 ], [ %.sink710.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i31.sink731, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %.0.i31.sink731, i64 48
  %i.tt = load <4 x float>, ptr %i.tr, align 16, !noalias !1677
  %i.tu = load <4 x float>, ptr %i.ts, align 16, !noalias !1677
  %i.tv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tt, <4 x float> %i.tu) ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.0.i31.sink731, i64 32
  %i.tx = getelementptr inbounds nuw i8, ptr %.0.i31.sink731, i64 64
  %i.ty = load <4 x float>, ptr %i.tw, align 16, !noalias !1677
  %i.tz = load <4 x float>, ptr %i.tx, align 16, !noalias !1677
  %i.ua = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ty, <4 x float> %i.tz) ; 3 uses
  %i.ub = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uc = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ud = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ue = fmul <4 x float> %.sink718, %i.ud
  %i.uf = fadd <4 x float> %.sink716, %i.ue       ; 2 uses
  %i.ug = fmul <4 x float> %.sink714, %i.uc       ; 2 uses
  %i.uh = fadd <4 x float> %i.ug, %i.uf           ; 2 uses
  %i.ui = fmul <4 x float> %.sink710, %i.ub       ; 4 uses
  %i.uj = fadd <4 x float> %i.ui, %i.uh           ; 2 uses
  %i.uk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.uj)
  %i.ul = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.uj)
  %i.um = shufflevector <4 x float> %i.ua, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.un = fmul <4 x float> %.sink718, %i.um
  %i.uo = fadd <4 x float> %.sink716, %i.un       ; 2 uses
  %i.up = fadd <4 x float> %i.ug, %i.uo           ; 2 uses
  %i.uq = fadd <4 x float> %i.ui, %i.up           ; 2 uses
  %i.ur = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.uk, <4 x float> %i.uq)
  %i.us = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ul, <4 x float> %i.uq)
  %i.ut = shufflevector <4 x float> %i.ua, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uu = fmul <4 x float> %.sink714, %i.ut       ; 2 uses
  %i.uv = fadd <4 x float> %i.uf, %i.uu           ; 2 uses
  %i.uw = fadd <4 x float> %i.ui, %i.uv           ; 2 uses
  %i.ux = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ur, <4 x float> %i.uw)
  %i.uy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.us, <4 x float> %i.uw)
  %i.uz = fadd <4 x float> %i.uu, %i.uo           ; 2 uses
  %i.va = fadd <4 x float> %i.ui, %i.uz           ; 2 uses
  %i.vb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ux, <4 x float> %i.va)
  %i.vc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uy, <4 x float> %i.va)
  %i.vd = shufflevector <4 x float> %i.ua, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ve = fmul <4 x float> %.sink710, %i.vd       ; 4 uses
  %i.vf = fadd <4 x float> %i.uh, %i.ve           ; 2 uses
  %i.vg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vb, <4 x float> %i.vf)
  %i.vh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vc, <4 x float> %i.vf)
  %i.vi = fadd <4 x float> %i.ve, %i.up           ; 2 uses
  %i.vj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vg, <4 x float> %i.vi)
  %i.vk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vh, <4 x float> %i.vi)
  %i.vl = fadd <4 x float> %i.ve, %i.uv           ; 2 uses
  %i.vm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vj, <4 x float> %i.vl)
  %i.vn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vk, <4 x float> %i.vl)
  %i.vo = fadd <4 x float> %i.ve, %i.uz           ; 2 uses
  %i.vp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vm, <4 x float> %i.vo)
  %i.vq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vn, <4 x float> %i.vo)
  br label %_ZNK6embree13InstanceArray6boundsEm.exit

_ZNK6embree13InstanceArray6boundsEm.exit:         ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit
  %.sroa.37.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.vq, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split ]
  %.sroa.035.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.vp, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split ]
  %i.vr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.068.0636, <4 x float> %.sroa.035.0) ; 2 uses
  %i.vs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0635, <4 x float> %.sroa.37.0) ; 2 uses
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.0637 ; 2 uses
  %i.vu = load i32, ptr %i.ei, align 8
  store i32 %i.ex, ptr %i.vt, align 4
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  store i32 %i.vu, ptr %i.vv, align 4
  %i.vw = add nuw nsw i64 %.0637, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.vw, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.z, !llvm.loop !1676
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %4 = alloca %"struct.embree::range", align 4    ; 5 uses
  %5 = alloca %class.anon.215, align 8            ; 5 uses
  %6 = alloca %"struct.embree::BBox", align 16    ; 6 uses
  %7 = alloca %"struct.embree::BBox", align 16    ; 5 uses
  %8 = alloca %"struct.embree::sse2::BVHBuilderMorton::MortonCodeMapping", align 16 ; 5 uses
  %9 = alloca %class.anon.216, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4              ; 6 uses
  %i.c = load i32, ptr %1, align 4                ; 6 uses
  %i.d = sub i32 %i.b, %i.c                       ; 2 uses
  %i.e = icmp ult i32 %i.d, 1024
  br i1 %i.e, label %bb.b, label %bb.z, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = zext i32 %i.b to i64                     ; 2 uses
  %i.h = icmp ult i32 %i.c, %i.b
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !25, !align !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8, !noalias !1704 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1705 ; 3 uses
  %.not.i22 = icmp eq ptr %i.o, null              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 160 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit
  %.pre1318 = load i32, ptr %i.a, align 4         ; 2 uses
  %.pre1319 = zext i32 %.pre1318 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre1319, %._crit_edge.loopexit ], [ %i.g, %bb.b ]
  %i.u = phi i32 [ %.pre1318, %._crit_edge.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.rf, %._crit_edge.loopexit ], [ splat (float -inf), %bb.b ]
  %.sroa.0115.0.lcssa = phi <4 x float> [ %i.re, %._crit_edge.loopexit ], [ splat (float +inf), %bb.b ] ; 2 uses
  %i.v = fsub <4 x float> %.sroa.7.0.lcssa, %.sroa.0115.0.lcssa ; 3 uses
  %i.w = fcmp ugt <4 x float> %i.v, splat (float f0x1FEC1E4A)
  %i.x = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.v) ; 3 uses
  %i.y = fmul <4 x float> %i.v, %i.x
  %i.z = fsub <4 x float> splat (float 1.000000e+00), %i.y
  %i.aa = fmul <4 x float> %i.x, %i.z
  %i.ab = fadd <4 x float> %i.x, %i.aa
  %i.ac = fmul <4 x float> %i.ab, splat (float 1.013760e+03)
  %i.ad = select <4 x i1> %i.w, <4 x float> %i.ac, <4 x float> zeroinitializer
  %i.ae = icmp ult i32 %i.c, %i.u
  br i1 %i.ae, label %.lr.ph1308, label %._crit_edge1309

.lr.ph1308:                                       ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.o

bb.c:                                             ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEm.exit
  %.0201304 = phi i64 [ %i.f, %.lr.ph ], [ %i.rg, %_ZNK6embree13InstanceArray6boundsEm.exit ] ; 2 uses
  %.sroa.0115.01303 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.re, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %.sroa.7.01302 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.rf, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0201304
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !1704
  %i.ak = zext i32 %i.aj to i64                   ; 10 uses
  br i1 %.not.i22, label %_ZNK6embree13InstanceArray5validEm.exit24, label %_ZNK6embree13InstanceArray5validEm.exit24.thread

_ZNK6embree13InstanceArray5validEm.exit24:        ; preds = %bb.c
  %i.al = load ptr, ptr %i.p, align 8, !noalias !1705
  %i.am = load i64, ptr %i.q, align 8, !noalias !1705
  %i.an = mul i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !1705
  %.not1300 = icmp eq i32 %i.ap, -1
  br i1 %.not1300, label %_ZNK6embree13InstanceArray6boundsEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit24.thread

_ZNK6embree13InstanceArray5validEm.exit24.thread: ; preds = %bb.c, %_ZNK6embree13InstanceArray5validEm.exit24
  %i.aq = load i32, ptr %i.r, align 4, !noalias !1705
  %i.ar = and i32 %i.aq, 65280
  %i.as = icmp eq i32 %i.ar, 256
  %i.at = load ptr, ptr %i.s, align 8, !noalias !1705 ; 17 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !noalias !1705 ; 2 uses
  br i1 %i.as, label %bb.d, label %bb.i, !prof !31

bb.d:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit24.thread
  switch i32 %i.av, label %_ZNK6embree13InstanceArray3l2wEmm.exit26 [
    i32 37444, label %bb.e
    i32 45057, label %bb.f
    i32 37428, label %bb.g
    i32 37172, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !1706
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !1706
  %i.az = mul i64 %i.ay, %i.ak
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 4 uses
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !noalias !1705
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !noalias !1705
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !noalias !1705
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !noalias !1705
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit26

bb.f:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.at, align 8, !noalias !1705
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !1705
  %i.bl = mul i64 %i.bk, %i.ak
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl ; 12 uses
  %i.bn = load float, ptr %i.bm, align 16, !noalias !1705
  %.sroa.0277.0.vec.insert = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !noalias !1705
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load float, ptr %i.bq, align 8, !noalias !1705
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bt = load float, ptr %i.bs, align 4, !noalias !1705
  %i.bu = insertelement <4 x float> poison, float %i.bt, i64 0
  %.sroa.11280.16.vec.insert = insertelement <4 x float> %i.bu, float %i.bp, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bw = load <2 x float>, ptr %i.bv, align 16, !noalias !1705
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20283.36.vec.insert = insertelement <4 x float> %i.bx, float %i.br, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.bz = load <2 x float>, ptr %i.by, align 4, !noalias !1705
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0277.8.vec.insert1520 = shufflevector <4 x float> %.sroa.0277.0.vec.insert, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 60
  %i.cc = load float, ptr %i.cb, align 4, !noalias !1705
  %.sroa.11280.24.vec.insert = insertelement <4 x float> %.sroa.11280.16.vec.insert, float %i.cc, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.ci = load float, ptr %i.ch, align 16, !noalias !1705 ; 3 uses
  %i.cj = load float, ptr %i.ce, align 4, !noalias !1705 ; 2 uses
  %i.ck = load <4 x float>, ptr %i.cd, align 8, !noalias !1705 ; 2 uses
  %i.cl = load float, ptr %i.cf, align 8, !noalias !1705 ; 3 uses
  %i.cm = load float, ptr %i.cg, align 4, !noalias !1705 ; 3 uses
  %i.cn = fmul float %i.cl, %i.cl
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.co)
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cp) ; 2 uses
  %i.cr = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cs = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.cr) ; 3 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 0 ; 2 uses
  %i.cu = fmul float %i.ct, 1.500000e+00
  %i.cv = fmul float %i.cq, 5.000000e-01
  %i.cw = fmul float %i.ct, %i.cv
  %foldExtExtBinop = fmul <4 x float> %i.cs, %i.cs
  %i.cx = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cy = fmul float %i.cx, %i.cw
  %i.cz = fsub float %i.cu, %i.cy                 ; 4 uses
  %i.da = insertelement <4 x float> poison, float %i.cz, i64 3
  %i.db = fmul <4 x float> %i.ck, %i.da
  %10 = shufflevector <4 x float> %i.ck, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dc = fmul float %i.cl, %i.cz
  %i.dd = fmul float %i.cm, %i.cz
  %i.de = fmul float %i.ci, %i.cz
  %.sroa.0277.12.vec.insert = insertelement <4 x float> %.sroa.0277.8.vec.insert1520, float %i.dc, i64 3
  %.sroa.11280.28.vec.insert = insertelement <4 x float> %.sroa.11280.24.vec.insert, float %i.dd, i64 3
  %.sroa.20283.44.vec.insert = insertelement <4 x float> %.sroa.20283.36.vec.insert, float %i.de, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit26

bb.g:                                             ; preds = %bb.d
  %i.df = load ptr, ptr %i.at, align 8, !noalias !1706
  %i.dg = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !1706
  %i.di = mul i64 %i.dh, %i.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.di ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load <2 x float>, ptr %i.dk, align 4, !noalias !1705
  %i.dm = load float, ptr %i.dj, align 4, !noalias !1705
  %i.dn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dm, i64 0
  %i.do = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !noalias !1705
  %i.dt = load float, ptr %i.dq, align 4, !noalias !1705
  %i.du = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dz = load <2 x float>, ptr %i.dy, align 4, !noalias !1705
  %i.ea = load float, ptr %i.dx, align 4, !noalias !1705
  %i.eb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ea, i64 0
  %i.ec = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 36
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.eg = load <2 x float>, ptr %i.ef, align 4, !noalias !1705
  %i.eh = load float, ptr %i.ee, align 4, !noalias !1705
  %i.ei = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.eh, i64 0
  %i.ej = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x float> %i.ei, <4 x float> %i.ej, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit26

bb.h:                                             ; preds = %bb.d
  %i.el = load ptr, ptr %i.at, align 8, !noalias !1706
  %i.em = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.en = load i64, ptr %i.em, align 8, !noalias !1706
  %i.eo = mul i64 %i.en, %i.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo ; 12 uses
  %i.eq = load float, ptr %i.ep, align 4, !noalias !1706
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.es = load float, ptr %i.er, align 4, !noalias !1706
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.eu = load float, ptr %i.et, align 4, !noalias !1706
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.ew = load float, ptr %i.ev, align 4, !noalias !1706
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.ey = load float, ptr %i.ex, align 4, !noalias !1706
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !noalias !1706
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.fc = load float, ptr %i.fb, align 4, !noalias !1706
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.fe = load float, ptr %i.fd, align 4, !noalias !1706
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.fg = load float, ptr %i.ff, align 4, !noalias !1706
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  %i.fi = load float, ptr %i.fh, align 4, !noalias !1706
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.fk = load float, ptr %i.fj, align 4, !noalias !1706
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  %i.fm = load float, ptr %i.fl, align 4, !noalias !1706
  %i.fn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.eq, i64 0
  %i.fo = insertelement <4 x float> %i.fn, float %i.ey, i64 1
  %i.fp = insertelement <4 x float> %i.fo, float %i.fg, i64 2
  %i.fq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.es, i64 0
  %i.fr = insertelement <4 x float> %i.fq, float %i.fa, i64 1
  %i.fs = insertelement <4 x float> %i.fr, float %i.fi, i64 2
  %i.ft = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.eu, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.fc, i64 1
  %i.fv = insertelement <4 x float> %i.fu, float %i.fk, i64 2
  %i.fw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ew, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.fe, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fm, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit26

_ZNK6embree13InstanceArray3l2wEmm.exit26:         ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0277.0 = phi <4 x float> [ %i.bb, %bb.e ], [ %.sroa.0277.12.vec.insert, %bb.f ], [ %i.dp, %bb.g ], [ %i.fp, %bb.h ], [ undef, %bb.d ] ; 5 uses
  %.sroa.11280.0 = phi <4 x float> [ %i.bd, %bb.e ], [ %.sroa.11280.28.vec.insert, %bb.f ], [ %i.dw, %bb.g ], [ %i.fs, %bb.h ], [ undef, %bb.d ] ; 6 uses
  %.sroa.20283.0 = phi <4 x float> [ %i.bf, %bb.e ], [ %.sroa.20283.44.vec.insert, %bb.f ], [ %i.ed, %bb.g ], [ %i.fv, %bb.h ], [ undef, %bb.d ] ; 5 uses
  %.sroa.29286.0 = phi <4 x float> [ %i.bh, %bb.e ], [ %10, %bb.f ], [ %i.ek, %bb.g ], [ %i.fy, %bb.h ], [ undef, %bb.d ] ; 5 uses
  %.sroa.29286.60.vec.extract = extractelement <4 x float> %.sroa.29286.0, i64 3 ; 7 uses
  %.sroa.0277.12.vec.extract = extractelement <4 x float> %.sroa.0277.0, i64 3 ; 7 uses
  %.sroa.11280.28.vec.extract = extractelement <4 x float> %.sroa.11280.0, i64 3 ; 7 uses
  %.sroa.20283.44.vec.extract = extractelement <4 x float> %.sroa.20283.0, i64 3 ; 6 uses
  %.sroa.17429.52.vec.insert = shufflevector <4 x float> %.sroa.0277.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17429.56.vec.insert = shufflevector <4 x float> %.sroa.17429.52.vec.insert, <4 x float> %.sroa.11280.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.fz = fmul float %.sroa.0277.12.vec.extract, %.sroa.0277.12.vec.extract
  %i.ga = tail call float @llvm.fmuladd.f32(float %.sroa.29286.60.vec.extract, float %.sroa.29286.60.vec.extract, float %i.fz)
  %i.gb = fneg float %.sroa.11280.28.vec.extract  ; 3 uses
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %.sroa.11280.28.vec.extract, float %i.ga)
  %i.gd = fneg float %.sroa.20283.44.vec.extract  ; 3 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gd, float %.sroa.20283.44.vec.extract, float %i.gc)
  %i.gf = fmul float %.sroa.20283.44.vec.extract, %.sroa.29286.60.vec.extract
  %i.gg = tail call float @llvm.fmuladd.f32(float %.sroa.0277.12.vec.extract, float %.sroa.11280.28.vec.extract, float %i.gf)
  %i.gh = fmul float %i.gg, 2.000000e+00
  %i.gi = fmul float %.sroa.29286.60.vec.extract, %i.gb
  %i.gj = tail call float @llvm.fmuladd.f32(float %.sroa.0277.12.vec.extract, float %.sroa.20283.44.vec.extract, float %i.gi)
  %i.gk = fmul float %i.gj, 2.000000e+00
  %i.gl = fmul float %.sroa.29286.60.vec.extract, %i.gd
  %i.gm = tail call float @llvm.fmuladd.f32(float %.sroa.0277.12.vec.extract, float %.sroa.11280.28.vec.extract, float %i.gl)
  %i.gn = fmul float %i.gm, 2.000000e+00
  %i.go = fneg float %.sroa.0277.12.vec.extract   ; 2 uses
  %i.gp = fmul float %.sroa.0277.12.vec.extract, %i.go
  %i.gq = tail call float @llvm.fmuladd.f32(float %.sroa.29286.60.vec.extract, float %.sroa.29286.60.vec.extract, float %i.gp) ; 2 uses
  %i.gr = tail call float @llvm.fmuladd.f32(float %.sroa.11280.28.vec.extract, float %.sroa.11280.28.vec.extract, float %i.gq)
  %i.gs = shufflevector <4 x float> %.sroa.29286.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.gt = shufflevector <4 x float> %.sroa.0277.0, <4 x float> %.sroa.11280.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float %i.gr, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %i.go, i64 3
  %i.gw = fmul <4 x float> %i.gs, %i.gv
  %i.gx = shufflevector <4 x float> %.sroa.11280.0, <4 x float> %.sroa.0277.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.gy = insertelement <4 x float> %i.gx, float %i.gd, i64 0
  %i.gz = shufflevector <4 x float> %.sroa.20283.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ha = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %i.gz, <4 x float> %i.gw) ; 3 uses
  %i.hb = extractelement <4 x float> %i.ha, i64 1
  %i.hc = fmul float %i.hb, 2.000000e+00
  %i.hd = shufflevector <4 x float> %i.ha, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.he = fmul <2 x float> %i.hd, splat (float 2.000000e+00) ; 2 uses
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.gb, float %.sroa.11280.28.vec.extract, float %i.gq)
  %i.hg = tail call float @llvm.fmuladd.f32(float %.sroa.20283.44.vec.extract, float %.sroa.20283.44.vec.extract, float %i.hf)
  %i.hh = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hl = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = fmul <4 x float> %i.hm, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ho = fmul <4 x float> %i.hk, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hp = fadd <4 x float> %i.ho, %i.hn
  %i.hq = fmul <4 x float> %i.hi, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hr = fadd <4 x float> %i.hq, %i.hp           ; 4 uses
  %i.hs = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = fmul <4 x float> %i.hw, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hy = fmul <4 x float> %i.hu, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hz = fadd <4 x float> %i.hy, %i.hx
  %i.ia = fmul <4 x float> %i.ht, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ib = fadd <4 x float> %i.ia, %i.hz           ; 4 uses
  %i.ic = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> zeroinitializer
  %i.id = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ie = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = fmul <4 x float> %i.if, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ih = fmul <4 x float> %i.id, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ii = fadd <4 x float> %i.ih, %i.ig
  %i.ij = fmul <4 x float> %i.ic, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ik = fadd <4 x float> %i.ij, %i.ii           ; 3 uses
  %i.il = fadd <4 x float> %.sroa.17429.56.vec.insert, zeroinitializer
  %i.im = shufflevector <4 x float> %.sroa.0277.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = fmul <4 x float> %i.ik, zeroinitializer ; 2 uses
  %i.io = fmul <4 x float> %i.ib, zeroinitializer
  %i.ip = fadd <4 x float> %i.io, %i.in
  %i.iq = fmul <4 x float> %i.im, %i.hr
  %i.ir = fadd <4 x float> %i.iq, %i.ip           ; 2 uses
  %i.is = shufflevector <4 x float> %.sroa.11280.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = shufflevector <4 x float> %.sroa.11280.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iu = fmul <4 x float> %i.it, %i.ib
  %i.iv = fadd <4 x float> %i.iu, %i.in
  %i.iw = fmul <4 x float> %i.is, %i.hr
  %i.ix = fadd <4 x float> %i.iw, %i.iv           ; 2 uses
  %i.iy = shufflevector <4 x float> %.sroa.20283.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = shufflevector <4 x float> %.sroa.20283.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ja = shufflevector <4 x float> %.sroa.20283.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jb = fmul <4 x float> %i.ja, %i.ik
  %i.jc = fmul <4 x float> %i.iz, %i.ib
  %i.jd = fadd <4 x float> %i.jc, %i.jb
  %i.je = fmul <4 x float> %i.iy, %i.hr
  %i.jf = fadd <4 x float> %i.je, %i.jd           ; 2 uses
  %i.jg = shufflevector <4 x float> %.sroa.29286.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = shufflevector <4 x float> %.sroa.29286.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ji = shufflevector <4 x float> %.sroa.29286.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jj = fmul <4 x float> %i.ji, %i.ik
  %i.jk = fmul <4 x float> %i.jh, %i.ib
  %i.jl = fadd <4 x float> %i.jk, %i.jj
  %i.jm = fmul <4 x float> %i.jg, %i.hr
  %i.jn = fadd <4 x float> %i.jm, %i.jl
  %i.jo = fadd <4 x float> %i.il, %i.jn           ; 2 uses
  br i1 %.not.i22, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

bb.i:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit24.thread
  switch i32 %i.av, label %_ZNK6embree13InstanceArray3l2wEmm.exit27 [
    i32 37444, label %bb.j
    i32 45057, label %bb.k
    i32 37428, label %bb.l
    i32 37172, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.jp = load ptr, ptr %i.at, align 8, !noalias !1707
  %i.jq = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !1707
  %i.js = mul i64 %i.jr, %i.ak
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.js ; 4 uses
  %i.ju = load <4 x float>, ptr %i.jt, align 16, !noalias !1705
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jw = load <4 x float>, ptr %i.jv, align 16, !noalias !1705
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jy = load <4 x float>, ptr %i.jx, align 16, !noalias !1705
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.ka = load <4 x float>, ptr %i.jz, align 16, !noalias !1705
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit27

bb.k:                                             ; preds = %bb.i
  %i.kb = load ptr, ptr %i.at, align 8, !noalias !1705
  %i.kc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !noalias !1705
  %i.ke = mul i64 %i.kd, %i.ak
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ke ; 12 uses
  %i.kg = load float, ptr %i.kf, align 16, !noalias !1705
  %.sroa.0205.0.vec.insert = insertelement <4 x float> poison, float %i.kg, i64 0
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ki = load float, ptr %i.kh, align 4, !noalias !1705
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kk = load float, ptr %i.kj, align 8, !noalias !1705
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.km = load float, ptr %i.kl, align 4, !noalias !1705
  %i.kn = insertelement <4 x float> poison, float %i.km, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.kn, float %i.ki, i64 1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kp = load <2 x float>, ptr %i.ko, align 16, !noalias !1705
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.kq, float %i.kk, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 52
  %i.ks = load <2 x float>, ptr %i.kr, align 4, !noalias !1705
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0205.8.vec.insert1521 = shufflevector <4 x float> %.sroa.0205.0.vec.insert, <4 x float> %i.kt, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kf, i64 60
  %i.kv = load float, ptr %i.ku, align 4, !noalias !1705
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.kv, i64 2
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 36
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 44
  %i.la = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.lb = load float, ptr %i.la, align 16, !noalias !1705 ; 3 uses
  %i.lc = load float, ptr %i.kx, align 4, !noalias !1705 ; 2 uses
  %i.ld = load <4 x float>, ptr %i.kw, align 8, !noalias !1705 ; 2 uses
  %i.le = load float, ptr %i.ky, align 8, !noalias !1705 ; 3 uses
  %i.lf = load float, ptr %i.kz, align 4, !noalias !1705 ; 3 uses
  %i.lg = fmul float %i.le, %i.le
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.lc, float %i.lg)
  %i.li = tail call float @llvm.fmuladd.f32(float %i.lf, float %i.lf, float %i.lh)
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.lb, float %i.li) ; 2 uses
  %i.lk = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.ll = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.lk) ; 3 uses
  %i.lm = extractelement <4 x float> %i.ll, i64 0 ; 2 uses
  %i.ln = fmul float %i.lm, 1.500000e+00
  %i.lo = fmul float %i.lj, 5.000000e-01
  %i.lp = fmul float %i.lm, %i.lo
  %foldExtExtBinop1523 = fmul <4 x float> %i.ll, %i.ll
  %i.lq = extractelement <4 x float> %foldExtExtBinop1523, i64 0
  %i.lr = fmul float %i.lq, %i.lp
  %i.ls = fsub float %i.ln, %i.lr                 ; 4 uses
  %i.lt = insertelement <4 x float> poison, float %i.ls, i64 3
  %i.lu = fmul <4 x float> %i.ld, %i.lt
  %11 = shufflevector <4 x float> %i.ld, <4 x float> %i.lu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.lv = fmul float %i.le, %i.ls
  %i.lw = fmul float %i.lf, %i.ls
  %i.lx = fmul float %i.lb, %i.ls
  %.sroa.0205.12.vec.insert = insertelement <4 x float> %.sroa.0205.8.vec.insert1521, float %i.lv, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.lw, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.lx, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit27

bb.l:                                             ; preds = %bb.i
  %i.ly = load ptr, ptr %i.at, align 8, !noalias !1707
  %i.lz = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !1707
  %i.mb = mul i64 %i.ma, %i.ak
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mb ; 8 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.me = load <2 x float>, ptr %i.md, align 4, !noalias !1705
  %i.mf = load float, ptr %i.mc, align 4, !noalias !1705
  %i.mg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mf, i64 0
  %i.mh = shufflevector <2 x float> %i.me, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mg, <4 x float> %i.mh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.ml = load <2 x float>, ptr %i.mk, align 4, !noalias !1705
  %i.mm = load float, ptr %i.mj, align 4, !noalias !1705
  %i.mn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mm, i64 0
  %i.mo = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mp = shufflevector <4 x float> %i.mn, <4 x float> %i.mo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 28
  %i.ms = load <2 x float>, ptr %i.mr, align 4, !noalias !1705
  %i.mt = load float, ptr %i.mq, align 4, !noalias !1705
  %i.mu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mt, i64 0
  %i.mv = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mu, <4 x float> %i.mv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mc, i64 36
  %i.my = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.mz = load <2 x float>, ptr %i.my, align 4, !noalias !1705
  %i.na = load float, ptr %i.mx, align 4, !noalias !1705
  %i.nb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.na, i64 0
  %i.nc = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nd = shufflevector <4 x float> %i.nb, <4 x float> %i.nc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit27

bb.m:                                             ; preds = %bb.i
  %i.ne = load ptr, ptr %i.at, align 8, !noalias !1707
  %i.nf = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !noalias !1707
  %i.nh = mul i64 %i.ng, %i.ak
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nh ; 12 uses
  %i.nj = load float, ptr %i.ni, align 4, !noalias !1707
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nl = load float, ptr %i.nk, align 4, !noalias !1707
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nn = load float, ptr %i.nm, align 4, !noalias !1707
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 12
  %i.np = load float, ptr %i.no, align 4, !noalias !1707
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nr = load float, ptr %i.nq, align 4, !noalias !1707
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 20
  %i.nt = load float, ptr %i.ns, align 4, !noalias !1707
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nv = load float, ptr %i.nu, align 4, !noalias !1707
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ni, i64 28
  %i.nx = load float, ptr %i.nw, align 4, !noalias !1707
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.nz = load float, ptr %i.ny, align 4, !noalias !1707
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ni, i64 36
  %i.ob = load float, ptr %i.oa, align 4, !noalias !1707
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ni, i64 40
  %i.od = load float, ptr %i.oc, align 4, !noalias !1707
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ni, i64 44
  %i.of = load float, ptr %i.oe, align 4, !noalias !1707
  %i.og = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.nj, i64 0
  %i.oh = insertelement <4 x float> %i.og, float %i.nr, i64 1
  %i.oi = insertelement <4 x float> %i.oh, float %i.nz, i64 2
  %i.oj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.nl, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.nt, i64 1
  %i.ol = insertelement <4 x float> %i.ok, float %i.ob, i64 2
  %i.om = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.nn, i64 0
  %i.on = insertelement <4 x float> %i.om, float %i.nv, i64 1
  %i.oo = insertelement <4 x float> %i.on, float %i.od, i64 2
  %i.op = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.np, i64 0
  %i.oq = insertelement <4 x float> %i.op, float %i.nx, i64 1
  %i.or = insertelement <4 x float> %i.oq, float %i.of, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit27

_ZNK6embree13InstanceArray3l2wEmm.exit27:         ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.0205.0 = phi <4 x float> [ %i.ju, %bb.j ], [ %.sroa.0205.12.vec.insert, %bb.k ], [ %i.mi, %bb.l ], [ %i.oi, %bb.m ], [ undef, %bb.i ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.jw, %bb.j ], [ %.sroa.10.28.vec.insert, %bb.k ], [ %i.mp, %bb.l ], [ %i.ol, %bb.m ], [ undef, %bb.i ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.jy, %bb.j ], [ %.sroa.18.44.vec.insert, %bb.k ], [ %i.mw, %bb.l ], [ %i.oo, %bb.m ], [ undef, %bb.i ] ; 2 uses
  %.sroa.26.0 = phi <4 x float> [ %i.ka, %bb.j ], [ %11, %bb.k ], [ %i.nd, %bb.l ], [ %i.or, %bb.m ], [ undef, %bb.i ] ; 2 uses
  br i1 %.not.i22, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit27, %_ZNK6embree13InstanceArray3l2wEmm.exit26
  %.sink1402.ph = phi <4 x float> [ %i.jf, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ]
  %.sink1400.ph = phi <4 x float> [ %i.jo, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ]
  %.sink1398.ph = phi <4 x float> [ %i.ix, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ]
  %.sink1394.ph = phi <4 x float> [ %i.ir, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.0205.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ]
  %i.os = load ptr, ptr %i.p, align 8, !noalias !1705
  %i.ot = load i64, ptr %i.q, align 8, !noalias !1705
  %i.ou = mul i64 %i.ot, %i.ak
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !noalias !1705 ; 2 uses
  %i.ox = icmp ne i32 %i.ow, -1
  tail call void @llvm.assume(i1 %i.ox)
  %i.oy = load ptr, ptr %i.t, align 16, !noalias !1705
  %i.oz = zext i32 %i.ow to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !noalias !1705
  br label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit27, %_ZNK6embree13InstanceArray3l2wEmm.exit26
  %.0.i29.sink1415 = phi ptr [ %i.o, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %i.o, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ], [ %i.pb, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 4 uses
  %.sink1402 = phi <4 x float> [ %i.jf, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ], [ %.sink1402.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink1400 = phi <4 x float> [ %i.jo, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ], [ %.sink1400.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink1398 = phi <4 x float> [ %i.ix, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ], [ %.sink1398.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink1394 = phi <4 x float> [ %i.ir, %_ZNK6embree13InstanceArray3l2wEmm.exit26 ], [ %.sroa.0205.0, %_ZNK6embree13InstanceArray3l2wEmm.exit27 ], [ %.sink1394.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i29.sink1415, i64 16
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i29.sink1415, i64 48
  %i.pe = load <4 x float>, ptr %i.pc, align 16, !noalias !1705
  %i.pf = load <4 x float>, ptr %i.pd, align 16, !noalias !1705
  %i.pg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pe, <4 x float> %i.pf) ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.0.i29.sink1415, i64 32
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i29.sink1415, i64 64
  %i.pj = load <4 x float>, ptr %i.ph, align 16, !noalias !1705
  %i.pk = load <4 x float>, ptr %i.pi, align 16, !noalias !1705
  %i.pl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pj, <4 x float> %i.pk) ; 3 uses
  %i.pm = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pn = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.po = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pp = fmul <4 x float> %.sink1402, %i.po
  %i.pq = fadd <4 x float> %.sink1400, %i.pp      ; 2 uses
  %i.pr = fmul <4 x float> %.sink1398, %i.pn      ; 2 uses
  %i.ps = fadd <4 x float> %i.pr, %i.pq           ; 2 uses
  %i.pt = fmul <4 x float> %.sink1394, %i.pm      ; 4 uses
  %i.pu = fadd <4 x float> %i.pt, %i.ps           ; 2 uses
  %i.pv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.pu)
  %i.pw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.pu)
  %i.px = shufflevector <4 x float> %i.pl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.py = fmul <4 x float> %.sink1402, %i.px
  %i.pz = fadd <4 x float> %.sink1400, %i.py      ; 2 uses
  %i.qa = fadd <4 x float> %i.pr, %i.pz           ; 2 uses
  %i.qb = fadd <4 x float> %i.pt, %i.qa           ; 2 uses
  %i.qc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pv, <4 x float> %i.qb)
  %i.qd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pw, <4 x float> %i.qb)
  %i.qe = shufflevector <4 x float> %i.pl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.qf = fmul <4 x float> %.sink1398, %i.qe      ; 2 uses
  %i.qg = fadd <4 x float> %i.pq, %i.qf           ; 2 uses
  %i.qh = fadd <4 x float> %i.pt, %i.qg           ; 2 uses
  %i.qi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qc, <4 x float> %i.qh)
  %i.qj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qd, <4 x float> %i.qh)
  %i.qk = fadd <4 x float> %i.qf, %i.pz           ; 2 uses
  %i.ql = fadd <4 x float> %i.pt, %i.qk           ; 2 uses
  %i.qm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qi, <4 x float> %i.ql)
  %i.qn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qj, <4 x float> %i.ql)
  %i.qo = shufflevector <4 x float> %i.pl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qp = fmul <4 x float> %.sink1394, %i.qo      ; 4 uses
  %i.qq = fadd <4 x float> %i.ps, %i.qp           ; 2 uses
  %i.qr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qm, <4 x float> %i.qq)
  %i.qs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qn, <4 x float> %i.qq)
  %i.qt = fadd <4 x float> %i.qp, %i.qa           ; 2 uses
  %i.qu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qr, <4 x float> %i.qt)
  %i.qv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qs, <4 x float> %i.qt)
  %i.qw = fadd <4 x float> %i.qp, %i.qg           ; 2 uses
  %i.qx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qu, <4 x float> %i.qw)
  %i.qy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qv, <4 x float> %i.qw)
  %i.qz = fadd <4 x float> %i.qp, %i.qk           ; 2 uses
  %i.ra = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qx, <4 x float> %i.qz)
  %i.rb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qy, <4 x float> %i.qz)
  %i.rc = fadd <4 x float> %i.rb, %i.ra
  br label %_ZNK6embree13InstanceArray6boundsEm.exit

_ZNK6embree13InstanceArray6boundsEm.exit:         ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit24
  %i.rd = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit24 ], [ %i.rc, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split ] ; 2 uses
  %i.re = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0115.01303, <4 x float> %i.rd) ; 2 uses
  %i.rf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.01302, <4 x float> %i.rd) ; 2 uses
  %i.rg = add nuw nsw i64 %.0201304, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.rg, %i.g
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !1688

._crit_edge1309:                                  ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit21, %._crit_edge
  %.lcssa1301 = phi i32 [ %i.u, %._crit_edge ], [ %i.aki, %_ZNK6embree13InstanceArray6boundsEm.exit21 ]
  %.lcssa = phi i64 [ %.pre-phi, %._crit_edge ], [ %i.akj, %_ZNK6embree13InstanceArray6boundsEm.exit21 ]
  %i.rh = load i32, ptr %1, align 4               ; 2 uses
  %.not.i.i = icmp eq i32 %i.rh, %.lcssa1301
  br i1 %.not.i.i, label %_ZSt4sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEEvT_S5_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge1309
  %i.ri = zext i32 %i.rh to i64
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.rk = load ptr, ptr %i.rj, align 8            ; 2 uses
  %.idx = shl nuw nsw i64 %.lcssa, 3              ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx ; 2 uses
  %.idx1298 = shl nuw nsw i64 %i.ri, 3            ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx1298 ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx1298
  %i.rn = ashr exact i64 %gepdiff, 3
  %i.ro = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.rn, i1 true)
  %i.rp = shl nuw nsw i64 %i.ro, 1
  %i.rq = xor i64 %i.rp, 126
  tail call void @_ZSt16__introsort_loopIPN6embree4sse216BVHBuilderMorton9BuildPrimElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_T1_(ptr noundef %i.rm, ptr noundef %i.rl, i64 noundef %i.rq)
  tail call void @_ZSt22__final_insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_(ptr noundef %i.rm, ptr noundef %i.rl)
  br label %_ZSt4sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEEvT_S5_.exit

bb.o:                                             ; preds = %.lr.ph1308, %_ZNK6embree13InstanceArray6boundsEm.exit21
  %.01306 = phi i64 [ %i.f, %.lr.ph1308 ], [ %i.akh, %_ZNK6embree13InstanceArray6boundsEm.exit21 ] ; 2 uses
  %i.rr = load ptr, ptr %i.af, align 8, !nonnull !25, !align !27
  %i.rs = load ptr, ptr %i.ag, align 8
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %.01306 ; 2 uses
  %i.ru = load ptr, ptr %i.rr, align 8, !noalias !1708 ; 8 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  %i.rw = load i32, ptr %i.rv, align 4, !noalias !1708
  %i.rx = zext i32 %i.rw to i64                   ; 10 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 88
  %i.rz = load ptr, ptr %i.ry, align 8, !noalias !1709 ; 3 uses
  %.not.i = icmp eq ptr %i.rz, null               ; 3 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray5validEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit:          ; preds = %bb.o
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 144
  %i.sb = load ptr, ptr %i.sa, align 8, !noalias !1709
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 160
  %i.sd = load i64, ptr %i.sc, align 8, !noalias !1709
  %i.se = mul i64 %i.sd, %i.rx
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !noalias !1709
  %.not1299 = icmp eq i32 %i.sg, -1
  br i1 %.not1299, label %_ZNK6embree13InstanceArray6boundsEm.exit21, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit.thread:   ; preds = %bb.o, %_ZNK6embree13InstanceArray5validEm.exit
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 60
  %i.si = load i32, ptr %i.sh, align 4, !noalias !1709
  %i.sj = and i32 %i.si, 65280
  %i.sk = icmp eq i32 %i.sj, 256
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ru, i64 136
  %i.sm = load ptr, ptr %i.sl, align 8, !noalias !1709 ; 17 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %i.so = load i32, ptr %i.sn, align 8, !noalias !1709 ; 2 uses
  br i1 %i.sk, label %bb.p, label %bb.u, !prof !31

bb.p:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.so, label %_ZNK6embree13InstanceArray3l2wEmm.exit [
    i32 37444, label %bb.q
    i32 45057, label %bb.r
    i32 37428, label %bb.s
    i32 37172, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.sp = load ptr, ptr %i.sm, align 8, !noalias !1710
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !noalias !1710
  %i.ss = mul i64 %i.sr, %i.rx
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.ss ; 4 uses
  %i.su = load <4 x float>, ptr %i.st, align 16, !noalias !1709
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sw = load <4 x float>, ptr %i.sv, align 16, !noalias !1709
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 32
  %i.sy = load <4 x float>, ptr %i.sx, align 16, !noalias !1709
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 48
  %i.ta = load <4 x float>, ptr %i.sz, align 16, !noalias !1709
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.r:                                             ; preds = %bb.p
  %i.tb = load ptr, ptr %i.sm, align 8, !noalias !1709
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.td = load i64, ptr %i.tc, align 8, !noalias !1709
  %i.te = mul i64 %i.td, %i.rx
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.te ; 12 uses
  %i.tg = load float, ptr %i.tf, align 16, !noalias !1709
  %.sroa.0776.0.vec.insert = insertelement <4 x float> poison, float %i.tg, i64 0
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  %i.ti = load float, ptr %i.th, align 4, !noalias !1709
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tk = load float, ptr %i.tj, align 8, !noalias !1709
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tf, i64 12
  %i.tm = load float, ptr %i.tl, align 4, !noalias !1709
  %i.tn = insertelement <4 x float> poison, float %i.tm, i64 0
  %.sroa.11779.16.vec.insert = insertelement <4 x float> %i.tn, float %i.ti, i64 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.tp = load <2 x float>, ptr %i.to, align 16, !noalias !1709
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20782.36.vec.insert = insertelement <4 x float> %i.tq, float %i.tk, i64 2
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tf, i64 52
  %i.ts = load <2 x float>, ptr %i.tr, align 4, !noalias !1709
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0776.8.vec.insert1518 = shufflevector <4 x float> %.sroa.0776.0.vec.insert, <4 x float> %i.tt, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tf, i64 60
  %i.tv = load float, ptr %i.tu, align 4, !noalias !1709
  %.sroa.11779.24.vec.insert = insertelement <4 x float> %.sroa.11779.16.vec.insert, float %i.tv, i64 2
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tf, i64 36
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tf, i64 40
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tf, i64 44
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tf, i64 48
  %i.ub = load float, ptr %i.ua, align 16, !noalias !1709 ; 3 uses
  %i.uc = load float, ptr %i.tx, align 4, !noalias !1709 ; 2 uses
  %i.ud = load <4 x float>, ptr %i.tw, align 8, !noalias !1709 ; 2 uses
  %i.ue = load float, ptr %i.ty, align 8, !noalias !1709 ; 3 uses
  %i.uf = load float, ptr %i.tz, align 4, !noalias !1709 ; 3 uses
  %i.ug = fmul float %i.ue, %i.ue
  %i.uh = tail call float @llvm.fmuladd.f32(float %i.uc, float %i.uc, float %i.ug)
  %i.ui = tail call float @llvm.fmuladd.f32(float %i.uf, float %i.uf, float %i.uh)
  %i.uj = tail call float @llvm.fmuladd.f32(float %i.ub, float %i.ub, float %i.ui) ; 2 uses
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.uk) ; 3 uses
  %i.um = extractelement <4 x float> %i.ul, i64 0 ; 2 uses
  %i.un = fmul float %i.um, 1.500000e+00
  %i.uo = fmul float %i.uj, 5.000000e-01
  %i.up = fmul float %i.um, %i.uo
  %foldExtExtBinop1525 = fmul <4 x float> %i.ul, %i.ul
  %i.uq = extractelement <4 x float> %foldExtExtBinop1525, i64 0
  %i.ur = fmul float %i.uq, %i.up
  %i.us = fsub float %i.un, %i.ur                 ; 4 uses
  %i.ut = insertelement <4 x float> poison, float %i.us, i64 3
  %i.uu = fmul <4 x float> %i.ud, %i.ut
  %12 = shufflevector <4 x float> %i.ud, <4 x float> %i.uu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.uv = fmul float %i.ue, %i.us
  %i.uw = fmul float %i.uf, %i.us
  %i.ux = fmul float %i.ub, %i.us
  %.sroa.0776.12.vec.insert = insertelement <4 x float> %.sroa.0776.8.vec.insert1518, float %i.uv, i64 3
  %.sroa.11779.28.vec.insert = insertelement <4 x float> %.sroa.11779.24.vec.insert, float %i.uw, i64 3
  %.sroa.20782.44.vec.insert = insertelement <4 x float> %.sroa.20782.36.vec.insert, float %i.ux, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.s:                                             ; preds = %bb.p
  %i.uy = load ptr, ptr %i.sm, align 8, !noalias !1710
  %i.uz = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.va = load i64, ptr %i.uz, align 8, !noalias !1710
  %i.vb = mul i64 %i.va, %i.rx
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.vb ; 8 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %i.ve = load <2 x float>, ptr %i.vd, align 4, !noalias !1709
  %i.vf = load float, ptr %i.vc, align 4, !noalias !1709
  %i.vg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.vf, i64 0
  %i.vh = shufflevector <2 x float> %i.ve, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vi = shufflevector <4 x float> %i.vg, <4 x float> %i.vh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.vl = load <2 x float>, ptr %i.vk, align 4, !noalias !1709
  %i.vm = load float, ptr %i.vj, align 4, !noalias !1709
  %i.vn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.vm, i64 0
  %i.vo = shufflevector <2 x float> %i.vl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vp = shufflevector <4 x float> %i.vn, <4 x float> %i.vo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vc, i64 28
  %i.vs = load <2 x float>, ptr %i.vr, align 4, !noalias !1709
  %i.vt = load float, ptr %i.vq, align 4, !noalias !1709
  %i.vu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.vt, i64 0
  %i.vv = shufflevector <2 x float> %i.vs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vw = shufflevector <4 x float> %i.vu, <4 x float> %i.vv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vc, i64 36
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vc, i64 40
  %i.vz = load <2 x float>, ptr %i.vy, align 4, !noalias !1709
  %i.wa = load float, ptr %i.vx, align 4, !noalias !1709
  %i.wb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.wa, i64 0
  %i.wc = shufflevector <2 x float> %i.vz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wd = shufflevector <4 x float> %i.wb, <4 x float> %i.wc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.t:                                             ; preds = %bb.p
  %i.we = load ptr, ptr %i.sm, align 8, !noalias !1710
  %i.wf = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.wg = load i64, ptr %i.wf, align 8, !noalias !1710
  %i.wh = mul i64 %i.wg, %i.rx
  %i.wi = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wh ; 12 uses
  %i.wj = load float, ptr %i.wi, align 4, !noalias !1710
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wl = load float, ptr %i.wk, align 4, !noalias !1710
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wn = load float, ptr %i.wm, align 4, !noalias !1710
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  %i.wp = load float, ptr %i.wo, align 4, !noalias !1710
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wr = load float, ptr %i.wq, align 4, !noalias !1710
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  %i.wt = load float, ptr %i.ws, align 4, !noalias !1710
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wv = load float, ptr %i.wu, align 4, !noalias !1710
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 28
  %i.wx = load float, ptr %i.ww, align 4, !noalias !1710
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.wz = load float, ptr %i.wy, align 4, !noalias !1710
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wi, i64 36
  %i.xb = load float, ptr %i.xa, align 4, !noalias !1710
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wi, i64 40
  %i.xd = load float, ptr %i.xc, align 4, !noalias !1710
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wi, i64 44
  %i.xf = load float, ptr %i.xe, align 4, !noalias !1710
  %i.xg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.wj, i64 0
  %i.xh = insertelement <4 x float> %i.xg, float %i.wr, i64 1
  %i.xi = insertelement <4 x float> %i.xh, float %i.wz, i64 2
  %i.xj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.wl, i64 0
  %i.xk = insertelement <4 x float> %i.xj, float %i.wt, i64 1
  %i.xl = insertelement <4 x float> %i.xk, float %i.xb, i64 2
  %i.xm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.wn, i64 0
  %i.xn = insertelement <4 x float> %i.xm, float %i.wv, i64 1
  %i.xo = insertelement <4 x float> %i.xn, float %i.xd, i64 2
  %i.xp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.wp, i64 0
  %i.xq = insertelement <4 x float> %i.xp, float %i.wx, i64 1
  %i.xr = insertelement <4 x float> %i.xq, float %i.xf, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

_ZNK6embree13InstanceArray3l2wEmm.exit:           ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.sroa.0776.0 = phi <4 x float> [ %i.su, %bb.q ], [ %.sroa.0776.12.vec.insert, %bb.r ], [ %i.vi, %bb.s ], [ %i.xi, %bb.t ], [ undef, %bb.p ] ; 5 uses
  %.sroa.11779.0 = phi <4 x float> [ %i.sw, %bb.q ], [ %.sroa.11779.28.vec.insert, %bb.r ], [ %i.vp, %bb.s ], [ %i.xl, %bb.t ], [ undef, %bb.p ] ; 6 uses
  %.sroa.20782.0 = phi <4 x float> [ %i.sy, %bb.q ], [ %.sroa.20782.44.vec.insert, %bb.r ], [ %i.vw, %bb.s ], [ %i.xo, %bb.t ], [ undef, %bb.p ] ; 5 uses
  %.sroa.29785.0 = phi <4 x float> [ %i.ta, %bb.q ], [ %12, %bb.r ], [ %i.wd, %bb.s ], [ %i.xr, %bb.t ], [ undef, %bb.p ] ; 5 uses
  %.sroa.29785.60.vec.extract = extractelement <4 x float> %.sroa.29785.0, i64 3 ; 7 uses
  %.sroa.0776.12.vec.extract = extractelement <4 x float> %.sroa.0776.0, i64 3 ; 7 uses
  %.sroa.11779.28.vec.extract = extractelement <4 x float> %.sroa.11779.0, i64 3 ; 7 uses
  %.sroa.20782.44.vec.extract = extractelement <4 x float> %.sroa.20782.0, i64 3 ; 6 uses
  %.sroa.17932.52.vec.insert = shufflevector <4 x float> %.sroa.0776.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17932.56.vec.insert = shufflevector <4 x float> %.sroa.17932.52.vec.insert, <4 x float> %.sroa.11779.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.xs = fmul float %.sroa.0776.12.vec.extract, %.sroa.0776.12.vec.extract
  %i.xt = tail call float @llvm.fmuladd.f32(float %.sroa.29785.60.vec.extract, float %.sroa.29785.60.vec.extract, float %i.xs)
  %i.xu = fneg float %.sroa.11779.28.vec.extract  ; 3 uses
  %i.xv = tail call float @llvm.fmuladd.f32(float %i.xu, float %.sroa.11779.28.vec.extract, float %i.xt)
  %i.xw = fneg float %.sroa.20782.44.vec.extract  ; 3 uses
  %i.xx = tail call float @llvm.fmuladd.f32(float %i.xw, float %.sroa.20782.44.vec.extract, float %i.xv)
  %i.xy = fmul float %.sroa.20782.44.vec.extract, %.sroa.29785.60.vec.extract
  %i.xz = tail call float @llvm.fmuladd.f32(float %.sroa.0776.12.vec.extract, float %.sroa.11779.28.vec.extract, float %i.xy)
  %i.ya = fmul float %i.xz, 2.000000e+00
  %i.yb = fmul float %.sroa.29785.60.vec.extract, %i.xu
  %i.yc = tail call float @llvm.fmuladd.f32(float %.sroa.0776.12.vec.extract, float %.sroa.20782.44.vec.extract, float %i.yb)
  %i.yd = fmul float %i.yc, 2.000000e+00
  %i.ye = fmul float %.sroa.29785.60.vec.extract, %i.xw
  %i.yf = tail call float @llvm.fmuladd.f32(float %.sroa.0776.12.vec.extract, float %.sroa.11779.28.vec.extract, float %i.ye)
  %i.yg = fmul float %i.yf, 2.000000e+00
  %i.yh = fneg float %.sroa.0776.12.vec.extract   ; 2 uses
  %i.yi = fmul float %.sroa.0776.12.vec.extract, %i.yh
  %i.yj = tail call float @llvm.fmuladd.f32(float %.sroa.29785.60.vec.extract, float %.sroa.29785.60.vec.extract, float %i.yi) ; 2 uses
  %i.yk = tail call float @llvm.fmuladd.f32(float %.sroa.11779.28.vec.extract, float %.sroa.11779.28.vec.extract, float %i.yj)
  %i.yl = shufflevector <4 x float> %.sroa.29785.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.ym = shufflevector <4 x float> %.sroa.0776.0, <4 x float> %.sroa.11779.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.yn = insertelement <4 x float> %i.ym, float %i.yk, i64 0
  %i.yo = insertelement <4 x float> %i.yn, float %i.yh, i64 3
  %i.yp = fmul <4 x float> %i.yl, %i.yo
  %i.yq = shufflevector <4 x float> %.sroa.11779.0, <4 x float> %.sroa.0776.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.yr = insertelement <4 x float> %i.yq, float %i.xw, i64 0
  %i.ys = shufflevector <4 x float> %.sroa.20782.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.yt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yr, <4 x float> %i.ys, <4 x float> %i.yp) ; 3 uses
  %i.yu = extractelement <4 x float> %i.yt, i64 1
  %i.yv = fmul float %i.yu, 2.000000e+00
  %i.yw = shufflevector <4 x float> %i.yt, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.yx = fmul <2 x float> %i.yw, splat (float 2.000000e+00) ; 2 uses
  %i.yy = tail call float @llvm.fmuladd.f32(float %i.xu, float %.sroa.11779.28.vec.extract, float %i.yj)
  %i.yz = tail call float @llvm.fmuladd.f32(float %.sroa.20782.44.vec.extract, float %.sroa.20782.44.vec.extract, float %i.yy)
  %i.za = insertelement <4 x float> poison, float %i.xx, i64 0
  %i.zb = shufflevector <4 x float> %i.za, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zc = insertelement <4 x float> poison, float %i.ya, i64 0
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ze = insertelement <4 x float> poison, float %i.yd, i64 0
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zg = fmul <4 x float> %i.zf, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.zh = fmul <4 x float> %i.zd, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.zi = fadd <4 x float> %i.zh, %i.zg
  %i.zj = fmul <4 x float> %i.zb, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.zk = fadd <4 x float> %i.zj, %i.zi           ; 4 uses
  %i.zl = insertelement <4 x float> poison, float %i.yg, i64 0
  %i.zm = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zn = shufflevector <4 x float> %i.yt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zo = insertelement <4 x float> poison, float %i.yv, i64 0
  %i.zp = shufflevector <4 x float> %i.zo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zq = fmul <4 x float> %i.zp, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.zr = fmul <4 x float> %i.zn, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.zs = fadd <4 x float> %i.zr, %i.zq
  %i.zt = fmul <4 x float> %i.zm, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.zu = fadd <4 x float> %i.zt, %i.zs           ; 4 uses
  %i.zv = shufflevector <2 x float> %i.yx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.zw = shufflevector <2 x float> %i.yx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zx = insertelement <4 x float> poison, float %i.yz, i64 0
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zz = fmul <4 x float> %i.zy, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.aaa = fmul <4 x float> %i.zw, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aab = fadd <4 x float> %i.aaa, %i.zz
  %i.aac = fmul <4 x float> %i.zv, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aad = fadd <4 x float> %i.aac, %i.aab        ; 3 uses
  %i.aae = fadd <4 x float> %.sroa.17932.56.vec.insert, zeroinitializer
  %i.aaf = shufflevector <4 x float> %.sroa.0776.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aag = fmul <4 x float> %i.aad, zeroinitializer ; 2 uses
  %i.aah = fmul <4 x float> %i.zu, zeroinitializer
  %i.aai = fadd <4 x float> %i.aah, %i.aag
  %i.aaj = fmul <4 x float> %i.aaf, %i.zk
  %i.aak = fadd <4 x float> %i.aaj, %i.aai        ; 2 uses
  %i.aal = shufflevector <4 x float> %.sroa.11779.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aam = shufflevector <4 x float> %.sroa.11779.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aan = fmul <4 x float> %i.aam, %i.zu
  %i.aao = fadd <4 x float> %i.aan, %i.aag
  %i.aap = fmul <4 x float> %i.aal, %i.zk
  %i.aaq = fadd <4 x float> %i.aap, %i.aao        ; 2 uses
  %i.aar = shufflevector <4 x float> %.sroa.20782.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aas = shufflevector <4 x float> %.sroa.20782.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aat = shufflevector <4 x float> %.sroa.20782.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aau = fmul <4 x float> %i.aat, %i.aad
  %i.aav = fmul <4 x float> %i.aas, %i.zu
  %i.aaw = fadd <4 x float> %i.aav, %i.aau
  %i.aax = fmul <4 x float> %i.aar, %i.zk
  %i.aay = fadd <4 x float> %i.aax, %i.aaw        ; 2 uses
  %i.aaz = shufflevector <4 x float> %.sroa.29785.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aba = shufflevector <4 x float> %.sroa.29785.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abb = shufflevector <4 x float> %.sroa.29785.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.abc = fmul <4 x float> %i.abb, %i.aad
  %i.abd = fmul <4 x float> %i.aba, %i.zu
  %i.abe = fadd <4 x float> %i.abd, %i.abc
  %i.abf = fmul <4 x float> %i.aaz, %i.zk
  %i.abg = fadd <4 x float> %i.abf, %i.abe
  %i.abh = fadd <4 x float> %i.aae, %i.abg        ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split

bb.u:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.so, label %_ZNK6embree13InstanceArray3l2wEmm.exit25 [
    i32 37444, label %bb.v
    i32 45057, label %bb.w
    i32 37428, label %bb.x
    i32 37172, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.abi = load ptr, ptr %i.sm, align 8, !noalias !1711
  %i.abj = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !1711
  %i.abl = mul i64 %i.abk, %i.rx
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abl ; 4 uses
  %i.abn = load <4 x float>, ptr %i.abm, align 16, !noalias !1709
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abp = load <4 x float>, ptr %i.abo, align 16, !noalias !1709
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 32
  %i.abr = load <4 x float>, ptr %i.abq, align 16, !noalias !1709
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 48
  %i.abt = load <4 x float>, ptr %i.abs, align 16, !noalias !1709
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit25

bb.w:                                             ; preds = %bb.u
  %i.abu = load ptr, ptr %i.sm, align 8, !noalias !1709
  %i.abv = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.abw = load i64, ptr %i.abv, align 8, !noalias !1709
  %i.abx = mul i64 %i.abw, %i.rx
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.abx ; 12 uses
  %i.abz = load float, ptr %i.aby, align 16, !noalias !1709
  %.sroa.0698.0.vec.insert = insertelement <4 x float> poison, float %i.abz, i64 0
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %i.acb = load float, ptr %i.aca, align 4, !noalias !1709
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.acd = load float, ptr %i.acc, align 8, !noalias !1709
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aby, i64 12
  %i.acf = load float, ptr %i.ace, align 4, !noalias !1709
  %i.acg = insertelement <4 x float> poison, float %i.acf, i64 0
  %.sroa.10700.16.vec.insert = insertelement <4 x float> %i.acg, float %i.acb, i64 1
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.aci = load <2 x float>, ptr %i.ach, align 16, !noalias !1709
  %i.acj = shufflevector <2 x float> %i.aci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18702.36.vec.insert = insertelement <4 x float> %i.acj, float %i.acd, i64 2
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aby, i64 52
  %i.acl = load <2 x float>, ptr %i.ack, align 4, !noalias !1709
  %i.acm = shufflevector <2 x float> %i.acl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0698.8.vec.insert1519 = shufflevector <4 x float> %.sroa.0698.0.vec.insert, <4 x float> %i.acm, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aby, i64 60
  %i.aco = load float, ptr %i.acn, align 4, !noalias !1709
  %.sroa.10700.24.vec.insert = insertelement <4 x float> %.sroa.10700.16.vec.insert, float %i.aco, i64 2
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aby, i64 36
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aby, i64 40
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aby, i64 44
  %i.act = getelementptr inbounds nuw i8, ptr %i.aby, i64 48
  %i.acu = load float, ptr %i.act, align 16, !noalias !1709 ; 3 uses
  %i.acv = load float, ptr %i.acq, align 4, !noalias !1709 ; 2 uses
  %i.acw = load <4 x float>, ptr %i.acp, align 8, !noalias !1709 ; 2 uses
  %i.acx = load float, ptr %i.acr, align 8, !noalias !1709 ; 3 uses
  %i.acy = load float, ptr %i.acs, align 4, !noalias !1709 ; 3 uses
  %i.acz = fmul float %i.acx, %i.acx
  %i.ada = tail call float @llvm.fmuladd.f32(float %i.acv, float %i.acv, float %i.acz)
  %i.adb = tail call float @llvm.fmuladd.f32(float %i.acy, float %i.acy, float %i.ada)
  %i.adc = tail call float @llvm.fmuladd.f32(float %i.acu, float %i.acu, float %i.adb) ; 2 uses
  %i.add = insertelement <4 x float> poison, float %i.adc, i64 0
  %i.ade = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.add) ; 3 uses
  %i.adf = extractelement <4 x float> %i.ade, i64 0 ; 2 uses
  %i.adg = fmul float %i.adf, 1.500000e+00
  %i.adh = fmul float %i.adc, 5.000000e-01
  %i.adi = fmul float %i.adf, %i.adh
  %foldExtExtBinop1527 = fmul <4 x float> %i.ade, %i.ade
  %i.adj = extractelement <4 x float> %foldExtExtBinop1527, i64 0
  %i.adk = fmul float %i.adj, %i.adi
  %i.adl = fsub float %i.adg, %i.adk              ; 4 uses
  %i.adm = insertelement <4 x float> poison, float %i.adl, i64 3
  %i.adn = fmul <4 x float> %i.acw, %i.adm
  %13 = shufflevector <4 x float> %i.acw, <4 x float> %i.adn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ado = fmul float %i.acx, %i.adl
  %i.adp = fmul float %i.acy, %i.adl
  %i.adq = fmul float %i.acu, %i.adl
  %.sroa.0698.12.vec.insert = insertelement <4 x float> %.sroa.0698.8.vec.insert1519, float %i.ado, i64 3
  %.sroa.10700.28.vec.insert = insertelement <4 x float> %.sroa.10700.24.vec.insert, float %i.adp, i64 3
  %.sroa.18702.44.vec.insert = insertelement <4 x float> %.sroa.18702.36.vec.insert, float %i.adq, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit25

bb.x:                                             ; preds = %bb.u
  %i.adr = load ptr, ptr %i.sm, align 8, !noalias !1711
  %i.ads = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.adt = load i64, ptr %i.ads, align 8, !noalias !1711
  %i.adu = mul i64 %i.adt, %i.rx
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adu ; 8 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  %i.adx = load <2 x float>, ptr %i.adw, align 4, !noalias !1709
  %i.ady = load float, ptr %i.adv, align 4, !noalias !1709
  %i.adz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ady, i64 0
  %i.aea = shufflevector <2 x float> %i.adx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aeb = shufflevector <4 x float> %i.adz, <4 x float> %i.aea, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adv, i64 12
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.aee = load <2 x float>, ptr %i.aed, align 4, !noalias !1709
  %i.aef = load float, ptr %i.aec, align 4, !noalias !1709
  %i.aeg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aef, i64 0
  %i.aeh = shufflevector <2 x float> %i.aee, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aei = shufflevector <4 x float> %i.aeg, <4 x float> %i.aeh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adv, i64 24
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adv, i64 28
  %i.ael = load <2 x float>, ptr %i.aek, align 4, !noalias !1709
  %i.aem = load float, ptr %i.aej, align 4, !noalias !1709
  %i.aen = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aem, i64 0
  %i.aeo = shufflevector <2 x float> %i.ael, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aep = shufflevector <4 x float> %i.aen, <4 x float> %i.aeo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.adv, i64 36
  %i.aer = getelementptr inbounds nuw i8, ptr %i.adv, i64 40
  %i.aes = load <2 x float>, ptr %i.aer, align 4, !noalias !1709
  %i.aet = load float, ptr %i.aeq, align 4, !noalias !1709
  %i.aeu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aet, i64 0
  %i.aev = shufflevector <2 x float> %i.aes, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aew = shufflevector <4 x float> %i.aeu, <4 x float> %i.aev, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit25

bb.y:                                             ; preds = %bb.u
  %i.aex = load ptr, ptr %i.sm, align 8, !noalias !1711
  %i.aey = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.aez = load i64, ptr %i.aey, align 8, !noalias !1711
  %i.afa = mul i64 %i.aez, %i.rx
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.afa ; 12 uses
  %i.afc = load float, ptr %i.afb, align 4, !noalias !1711
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !noalias !1711
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afg = load float, ptr %i.aff, align 4, !noalias !1711
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afb, i64 12
  %i.afi = load float, ptr %i.afh, align 4, !noalias !1711
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afk = load float, ptr %i.afj, align 4, !noalias !1711
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afb, i64 20
  %i.afm = load float, ptr %i.afl, align 4, !noalias !1711
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afo = load float, ptr %i.afn, align 4, !noalias !1711
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afb, i64 28
  %i.afq = load float, ptr %i.afp, align 4, !noalias !1711
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afb, i64 32
  %i.afs = load float, ptr %i.afr, align 4, !noalias !1711
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afb, i64 36
  %i.afu = load float, ptr %i.aft, align 4, !noalias !1711
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afb, i64 40
  %i.afw = load float, ptr %i.afv, align 4, !noalias !1711
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afb, i64 44
  %i.afy = load float, ptr %i.afx, align 4, !noalias !1711
  %i.afz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.afc, i64 0
  %i.aga = insertelement <4 x float> %i.afz, float %i.afk, i64 1
  %i.agb = insertelement <4 x float> %i.aga, float %i.afs, i64 2
  %i.agc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.afe, i64 0
  %i.agd = insertelement <4 x float> %i.agc, float %i.afm, i64 1
  %i.age = insertelement <4 x float> %i.agd, float %i.afu, i64 2
  %i.agf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.afg, i64 0
  %i.agg = insertelement <4 x float> %i.agf, float %i.afo, i64 1
  %i.agh = insertelement <4 x float> %i.agg, float %i.afw, i64 2
  %i.agi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.afi, i64 0
  %i.agj = insertelement <4 x float> %i.agi, float %i.afq, i64 1
  %i.agk = insertelement <4 x float> %i.agj, float %i.afy, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit25

_ZNK6embree13InstanceArray3l2wEmm.exit25:         ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.sroa.0698.0 = phi <4 x float> [ %i.abn, %bb.v ], [ %.sroa.0698.12.vec.insert, %bb.w ], [ %i.aeb, %bb.x ], [ %i.agb, %bb.y ], [ undef, %bb.u ] ; 2 uses
  %.sroa.10700.0 = phi <4 x float> [ %i.abp, %bb.v ], [ %.sroa.10700.28.vec.insert, %bb.w ], [ %i.aei, %bb.x ], [ %i.age, %bb.y ], [ undef, %bb.u ] ; 2 uses
  %.sroa.18702.0 = phi <4 x float> [ %i.abr, %bb.v ], [ %.sroa.18702.44.vec.insert, %bb.w ], [ %i.aep, %bb.x ], [ %i.agh, %bb.y ], [ undef, %bb.u ] ; 2 uses
  %.sroa.26704.0 = phi <4 x float> [ %i.abt, %bb.v ], [ %13, %bb.w ], [ %i.aew, %bb.x ], [ %i.agk, %bb.y ], [ undef, %bb.u ] ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit25, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.sink1483.ph = phi <4 x float> [ %i.aay, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18702.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ]
  %.sink1481.ph = phi <4 x float> [ %i.abh, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26704.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ]
  %.sink1479.ph = phi <4 x float> [ %i.aaq, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10700.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ]
  %.sink1475.ph = phi <4 x float> [ %i.aak, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.0698.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ]
  %i.agl = getelementptr inbounds nuw i8, ptr %i.ru, i64 144
  %i.agm = load ptr, ptr %i.agl, align 8, !noalias !1709
  %i.agn = getelementptr inbounds nuw i8, ptr %i.ru, i64 160
  %i.ago = load i64, ptr %i.agn, align 8, !noalias !1709
  %i.agp = mul i64 %i.ago, %i.rx
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agp
  %i.agr = load i32, ptr %i.agq, align 4, !noalias !1709 ; 2 uses
  %i.ags = icmp ne i32 %i.agr, -1
  tail call void @llvm.assume(i1 %i.ags)
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ru, i64 96
  %i.agu = load ptr, ptr %i.agt, align 16, !noalias !1709
  %i.agv = zext i32 %i.agr to i64
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agu, i64 %i.agv
  %i.agx = load ptr, ptr %i.agw, align 8, !noalias !1709
  br label %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit25, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.0.i34.sink1496 = phi ptr [ %i.rz, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %i.rz, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ], [ %i.agx, %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split ] ; 4 uses
  %.sink1483 = phi <4 x float> [ %i.aay, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18702.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ], [ %.sink1483.ph, %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split ] ; 2 uses
  %.sink1481 = phi <4 x float> [ %i.abh, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26704.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ], [ %.sink1481.ph, %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split ] ; 2 uses
  %.sink1479 = phi <4 x float> [ %i.aaq, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10700.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ], [ %.sink1479.ph, %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split ] ; 2 uses
  %.sink1475 = phi <4 x float> [ %i.aak, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.0698.0, %_ZNK6embree13InstanceArray3l2wEmm.exit25 ], [ %.sink1475.ph, %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split.sink.split ] ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.0.i34.sink1496, i64 16
  %i.agz = getelementptr inbounds nuw i8, ptr %.0.i34.sink1496, i64 48
  %i.aha = load <4 x float>, ptr %i.agy, align 16, !noalias !1709
  %i.ahb = load <4 x float>, ptr %i.agz, align 16, !noalias !1709
  %i.ahc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aha, <4 x float> %i.ahb) ; 3 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0.i34.sink1496, i64 32
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0.i34.sink1496, i64 64
  %i.ahf = load <4 x float>, ptr %i.ahd, align 16, !noalias !1709
  %i.ahg = load <4 x float>, ptr %i.ahe, align 16, !noalias !1709
  %i.ahh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahf, <4 x float> %i.ahg) ; 3 uses
  %i.ahi = shufflevector <4 x float> %i.ahc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahj = shufflevector <4 x float> %i.ahc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ahk = shufflevector <4 x float> %i.ahc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ahl = fmul <4 x float> %.sink1483, %i.ahk
  %i.ahm = fadd <4 x float> %.sink1481, %i.ahl    ; 2 uses
  %i.ahn = fmul <4 x float> %.sink1479, %i.ahj    ; 2 uses
  %i.aho = fadd <4 x float> %i.ahn, %i.ahm        ; 2 uses
  %i.ahp = fmul <4 x float> %.sink1475, %i.ahi    ; 4 uses
  %i.ahq = fadd <4 x float> %i.ahp, %i.aho        ; 2 uses
  %i.ahr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ahq)
  %i.ahs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ahq)
  %i.aht = shufflevector <4 x float> %i.ahh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ahu = fmul <4 x float> %.sink1483, %i.aht
  %i.ahv = fadd <4 x float> %.sink1481, %i.ahu    ; 2 uses
  %i.ahw = fadd <4 x float> %i.ahn, %i.ahv        ; 2 uses
  %i.ahx = fadd <4 x float> %i.ahp, %i.ahw        ; 2 uses
  %i.ahy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahr, <4 x float> %i.ahx)
  %i.ahz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahs, <4 x float> %i.ahx)
  %i.aia = shufflevector <4 x float> %i.ahh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aib = fmul <4 x float> %.sink1479, %i.aia    ; 2 uses
  %i.aic = fadd <4 x float> %i.ahm, %i.aib        ; 2 uses
  %i.aid = fadd <4 x float> %i.ahp, %i.aic        ; 2 uses
  %i.aie = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahy, <4 x float> %i.aid)
  %i.aif = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahz, <4 x float> %i.aid)
  %i.aig = fadd <4 x float> %i.aib, %i.ahv        ; 2 uses
  %i.aih = fadd <4 x float> %i.ahp, %i.aig        ; 2 uses
  %i.aii = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aie, <4 x float> %i.aih)
  %i.aij = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aif, <4 x float> %i.aih)
  %i.aik = shufflevector <4 x float> %i.ahh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ail = fmul <4 x float> %.sink1475, %i.aik    ; 4 uses
  %i.aim = fadd <4 x float> %i.aho, %i.ail        ; 2 uses
  %i.ain = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aii, <4 x float> %i.aim)
  %i.aio = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aij, <4 x float> %i.aim)
  %i.aip = fadd <4 x float> %i.ail, %i.ahw        ; 2 uses
  %i.aiq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ain, <4 x float> %i.aip)
  %i.air = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aio, <4 x float> %i.aip)
  %i.ais = fadd <4 x float> %i.ail, %i.aic        ; 2 uses
  %i.ait = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aiq, <4 x float> %i.ais)
  %i.aiu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.air, <4 x float> %i.ais)
  %i.aiv = fadd <4 x float> %i.ail, %i.aig        ; 2 uses
  %i.aiw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ait, <4 x float> %i.aiv)
  %i.aix = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aiu, <4 x float> %i.aiv)
  %i.aiy = fadd <4 x float> %i.aix, %i.aiw
  br label %_ZNK6embree13InstanceArray6boundsEm.exit21

_ZNK6embree13InstanceArray6boundsEm.exit21:       ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split, %_ZNK6embree13InstanceArray5validEm.exit
  %i.aiz = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.aiy, %_ZNK6embree13InstanceArray6boundsEm.exit21.sink.split ]
  %i.aja = fsub <4 x float> %i.aiz, %.sroa.0115.0.lcssa
  %i.ajb = fmul <4 x float> %i.ad, %i.aja
  %i.ajc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ajb) ; 3 uses
  %i.ajd = extractelement <4 x i32> %i.ajc, i64 0 ; 2 uses
  %.sroa.0151.4.vec.extract = extractelement <4 x i32> %i.ajc, i64 1 ; 2 uses
  %.sroa.0151.8.vec.extract = extractelement <4 x i32> %i.ajc, i64 2 ; 2 uses
  %i.aje = shl i32 %i.ajd, 16
  %i.ajf = or i32 %i.aje, %i.ajd
  %i.ajg = and i32 %i.ajf, 50331903
  %i.ajh = mul i32 %i.ajg, 257
  %i.aji = and i32 %i.ajh, 50393103
  %i.ajj = mul nuw nsw i32 %i.aji, 17
  %i.ajk = and i32 %i.ajj, 51130563
  %i.ajl = mul nuw nsw i32 %i.ajk, 5
  %i.ajm = and i32 %i.ajl, 153391689
  %i.ajn = shl i32 %.sroa.0151.4.vec.extract, 16
  %i.ajo = or i32 %i.ajn, %.sroa.0151.4.vec.extract
  %i.ajp = and i32 %i.ajo, 50331903
  %i.ajq = mul i32 %i.ajp, 257
  %i.ajr = and i32 %i.ajq, 50393103
  %i.ajs = mul nuw nsw i32 %i.ajr, 17
  %i.ajt = and i32 %i.ajs, 51130563
  %i.aju = shl i32 %.sroa.0151.8.vec.extract, 16
  %i.ajv = or i32 %i.aju, %.sroa.0151.8.vec.extract
  %i.ajw = and i32 %i.ajv, 50331903
  %i.ajx = mul i32 %i.ajw, 257
  %i.ajy = and i32 %i.ajx, 50393103
  %i.ajz = mul nuw nsw i32 %i.ajy, 17
  %i.aka = and i32 %i.ajz, 51130563
  %i.akb = mul nuw nsw i32 %i.ajt, 10
  %i.akc = and i32 %i.akb, 306783378
  %i.akd = or disjoint i32 %i.ajm, %i.akc
  %i.ake = mul nuw nsw i32 %i.aka, 20
  %i.akf = and i32 %i.ake, 613566756
  %i.akg = or disjoint i32 %i.akd, %i.akf
  store i32 %i.akg, ptr %i.rt, align 8
  %i.akh = add nuw nsw i64 %.01306, 1             ; 2 uses
  %i.aki = load i32, ptr %i.a, align 4            ; 2 uses
  %i.akj = zext i32 %i.aki to i64                 ; 2 uses
  %i.akk = icmp samesign ult i64 %i.akh, %i.akj
  br i1 %i.akk, label %bb.o, label %._crit_edge1309, !llvm.loop !1697

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store <4 x float> splat (float +inf), ptr %7, align 16
  %i.akl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x float> splat (float -inf), ptr %i.akl, align 16
  %i.akm = add i32 %i.d, 1023
  %i.akn = lshr i32 %i.akm, 10                    ; 2 uses
  %i.ako = icmp eq i32 %i.akn, 1
  br i1 %i.ako, label %bb.aa, label %bb.ab, !prof !30

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !1712
  store i32 %i.c, ptr %4, align 4, !noalias !1712
  %i.akp = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.b, ptr %i.akp, align 4, !noalias !1712
  call void @_ZZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEENKUlST_E_clEST_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !1712
  br label %_ZN6embree15parallel_reduceIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS9_Li4EE6CreateENS4_13SetBVHNBoundsILi4EEENS4_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS4_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSX_E_FKS3_RSZ_S10_EEET0_T_S13_S13_RKS12_RKT1_RKT2_.exit

bb.ab:                                            ; preds = %bb.z
  call void @_ZN6embree24parallel_reduce_internalIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS9_Li4EE6CreateENS4_13SetBVHNBoundsILi4EEENS4_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS4_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSX_E_FKS3_RSZ_S10_EEET0_T_S13_S13_S13_RKS12_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %6, i32 noundef %i.akn, i32 noundef %i.c, i32 noundef %i.b, i32 noundef 1024, ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN6embree4BBoxINS_6Vec3faEE5mergeERKS2_S4_)
  br label %_ZN6embree15parallel_reduceIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS9_Li4EE6CreateENS4_13SetBVHNBoundsILi4EEENS4_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS4_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSX_E_FKS3_RSZ_S10_EEET0_T_S13_S13_RKS12_RKT1_RKT2_.exit

_ZN6embree15parallel_reduceIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS9_Li4EE6CreateENS4_13SetBVHNBoundsILi4EEENS4_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS4_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSX_E_FKS3_RSZ_S10_EEET0_T_S13_S13_RKS12_RKT1_RKT2_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.akq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.akr = load <4 x float>, ptr %6, align 16, !noalias !1713 ; 2 uses
  store <4 x float> %i.akr, ptr %8, align 16
  %i.aks = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.akt = load <4 x float>, ptr %i.aks, align 16, !noalias !1714
  %i.aku = fsub <4 x float> %i.akt, %i.akr        ; 3 uses
  %i.akv = fcmp ugt <4 x float> %i.aku, splat (float f0x1FEC1E4A)
  %i.akw = call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.aku) ; 3 uses
  %i.akx = fmul <4 x float> %i.aku, %i.akw
  %i.aky = fsub <4 x float> splat (float 1.000000e+00), %i.akx
  %i.akz = fmul <4 x float> %i.akw, %i.aky
  %i.ala = fadd <4 x float> %i.akw, %i.akz
  %i.alb = fmul <4 x float> %i.ala, splat (float 1.013760e+03)
  %i.alc = select <4 x i1> %i.akv, <4 x float> %i.alb, <4 x float> zeroinitializer
  store <4 x float> %i.alc, ptr %i.akq, align 16
  %i.ald = load i32, ptr %1, align 4
  %i.ale = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %0, ptr %9, align 8
  %i.alf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.alf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr null, ptr %2, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENS2_13SetBVHNBoundsILi4EEENS2_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS2_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSV_E0_EEvT_SX_SX_RKT0_PNS0_16TaskGroupContextE(i32 noundef %i.ald, i32 noundef %i.ale, i32 noundef 1024, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %2)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZN6embree15parallel_reduceIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS9_Li4EE6CreateENS4_13SetBVHNBoundsILi4EEENS4_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS4_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSX_E_FKS3_RSZ_S10_EEET0_T_S13_S13_RKS12_RKT1_RKT2_.exit
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.ae

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ac
  %i.alg = load ptr, ptr %2, align 8              ; 2 uses
  %.not = icmp eq ptr %i.alg, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit45, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.alg, ptr %3, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #29
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.ae:                                            ; preds = %bb.ac, %_ZN6embree15parallel_reduceIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS9_Li4EE6CreateENS4_13SetBVHNBoundsILi4EEENS4_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS4_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSX_E_FKS3_RSZ_S10_EEET0_T_S13_S13_RKS12_RKT1_RKT2_.exit
  %i.alh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42

bb.af:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ali = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alj = load ptr, ptr %3, align 8
  %.not.i41 = icmp eq ptr %i.alj, null
  br i1 %.not.i41, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42: ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.alh, %bb.ae ], [ %i.ali, %bb.af ], [ %i.ali, %bb.ag ]
  %i.alk = load ptr, ptr %2, align 8
  %.not.i.i43 = icmp eq ptr %i.alk, null
  br i1 %.not.i.i43, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn.i

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit45: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre1317 = load i32, ptr %i.a, align 4
  %.pre1316 = load i32, ptr %1, align 4           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.all = zext i32 %.pre1316 to i64
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.all
  %i.aln = sub i32 %.pre1317, %.pre1316
  %i.alo = zext i32 %i.aln to i64
  call fastcc void @_ZN6embreeL11radixsort32INS_4sse216BVHBuilderMorton9BuildPrimEEEvPT_mj(ptr noundef %i.alm, i64 noundef %i.alo, i32 noundef 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZSt4sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEEvT_S5_.exit

_ZSt4sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEEvT_S5_.exit: ; preds = %bb.n, %._crit_edge1309, %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEENKUlST_E_clEST_(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = icmp ult i32 %i.a, %i.c
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext i32 %i.a to i64
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !25, !align !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8, !noalias !1724 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1725 ; 3 uses
  %.not.i = icmp eq ptr %i.n, null                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit, %bb.a
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.qs, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %.sroa.045.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.qr, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  store <4 x float> %.sroa.045.0.lcssa, ptr %0, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.t, align 16
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEm.exit
  %.0608 = phi i64 [ %i.f, %.lr.ph ], [ %i.qt, %_ZNK6embree13InstanceArray6boundsEm.exit ] ; 2 uses
  %.sroa.045.0607 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %i.qr, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %.sroa.6.0606 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %i.qs, %_ZNK6embree13InstanceArray6boundsEm.exit ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0608
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noalias !1724
  %i.x = zext i32 %i.w to i64                     ; 10 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray5validEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit:          ; preds = %bb.b
  %i.y = load ptr, ptr %i.o, align 8, !noalias !1725
  %i.z = load i64, ptr %i.p, align 8, !noalias !1725
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !1725
  %.not = icmp eq i32 %i.ac, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray6boundsEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit.thread:   ; preds = %bb.b, %_ZNK6embree13InstanceArray5validEm.exit
  %i.ad = load i32, ptr %i.q, align 4, !noalias !1725
  %i.ae = and i32 %i.ad, 65280
  %i.af = icmp eq i32 %i.ae, 256
  %i.ag = load ptr, ptr %i.r, align 8, !noalias !1725 ; 17 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !noalias !1725 ; 2 uses
  br i1 %i.af, label %bb.c, label %bb.h, !prof !31

bb.c:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.ai, label %_ZNK6embree13InstanceArray3l2wEmm.exit [
    i32 37444, label %bb.d
    i32 45057, label %bb.e
    i32 37428, label %bb.f
    i32 37172, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ag, align 8, !noalias !1726
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !1726
  %i.am = mul i64 %i.al, %i.x
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am ; 4 uses
  %i.ao = load <4 x float>, ptr %i.an, align 16, !noalias !1725
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load <4 x float>, ptr %i.ap, align 16, !noalias !1725
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = load <4 x float>, ptr %i.ar, align 16, !noalias !1725
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.au = load <4 x float>, ptr %i.at, align 16, !noalias !1725
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %i.ag, align 8, !noalias !1725
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !1725
  %i.ay = mul i64 %i.ax, %i.x
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay ; 12 uses
  %i.ba = load float, ptr %i.az, align 16, !noalias !1725
  %.sroa.0159.0.vec.insert = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !noalias !1725
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load float, ptr %i.bd, align 8, !noalias !1725
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !noalias !1725
  %i.bh = insertelement <4 x float> poison, float %i.bg, i64 0
  %.sroa.11162.16.vec.insert = insertelement <4 x float> %i.bh, float %i.bc, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bj = load <2 x float>, ptr %i.bi, align 16, !noalias !1725
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20165.36.vec.insert = insertelement <4 x float> %i.bk, float %i.be, i64 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !noalias !1725
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0159.8.vec.insert703 = shufflevector <4 x float> %.sroa.0159.0.vec.insert, <4 x float> %i.bn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 60
  %i.bp = load float, ptr %i.bo, align 4, !noalias !1725
  %.sroa.11162.24.vec.insert = insertelement <4 x float> %.sroa.11162.16.vec.insert, float %i.bp, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bv = load float, ptr %i.bu, align 16, !noalias !1725 ; 3 uses
  %i.bw = load float, ptr %i.br, align 4, !noalias !1725 ; 2 uses
  %i.bx = load <4 x float>, ptr %i.bq, align 8, !noalias !1725 ; 2 uses
  %i.by = load float, ptr %i.bs, align 8, !noalias !1725 ; 3 uses
  %i.bz = load float, ptr %i.bt, align 4, !noalias !1725 ; 3 uses
  %i.ca = fmul float %i.by, %i.by
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.cb)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.cc) ; 2 uses
  %i.ce = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cf = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.ce) ; 3 uses
  %i.cg = extractelement <4 x float> %i.cf, i64 0 ; 2 uses
  %i.ch = fmul float %i.cg, 1.500000e+00
  %i.ci = fmul float %i.cd, 5.000000e-01
  %i.cj = fmul float %i.cg, %i.ci
  %foldExtExtBinop = fmul <4 x float> %i.cf, %i.cf
  %i.ck = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cl = fmul float %i.ck, %i.cj
  %i.cm = fsub float %i.ch, %i.cl                 ; 4 uses
  %i.cn = insertelement <4 x float> poison, float %i.cm, i64 3
  %i.co = fmul <4 x float> %i.bx, %i.cn
  %3 = shufflevector <4 x float> %i.bx, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cp = fmul float %i.by, %i.cm
  %i.cq = fmul float %i.bz, %i.cm
  %i.cr = fmul float %i.bv, %i.cm
  %.sroa.0159.12.vec.insert = insertelement <4 x float> %.sroa.0159.8.vec.insert703, float %i.cp, i64 3
  %.sroa.11162.28.vec.insert = insertelement <4 x float> %.sroa.11162.24.vec.insert, float %i.cq, i64 3
  %.sroa.20165.44.vec.insert = insertelement <4 x float> %.sroa.20165.36.vec.insert, float %i.cr, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.f:                                             ; preds = %bb.c
  %i.cs = load ptr, ptr %i.ag, align 8, !noalias !1726
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !1726
  %i.cv = mul i64 %i.cu, %i.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cv ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load <2 x float>, ptr %i.cx, align 4, !noalias !1725
  %i.cz = load float, ptr %i.cw, align 4, !noalias !1725
  %i.da = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cz, i64 0
  %i.db = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.df = load <2 x float>, ptr %i.de, align 4, !noalias !1725
  %i.dg = load float, ptr %i.dd, align 4, !noalias !1725
  %i.dh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %i.dm = load <2 x float>, ptr %i.dl, align 4, !noalias !1725
  %i.dn = load float, ptr %i.dk, align 4, !noalias !1725
  %i.do = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.dt = load <2 x float>, ptr %i.ds, align 4, !noalias !1725
  %i.du = load float, ptr %i.dr, align 4, !noalias !1725
  %i.dv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.du, i64 0
  %i.dw = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.g:                                             ; preds = %bb.c
  %i.dy = load ptr, ptr %i.ag, align 8, !noalias !1726
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !1726
  %i.eb = mul i64 %i.ea, %i.x
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.eb ; 12 uses
  %i.ed = load float, ptr %i.ec, align 4, !noalias !1726
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !noalias !1726
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !noalias !1726
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !noalias !1726
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.el = load float, ptr %i.ek, align 4, !noalias !1726
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.en = load float, ptr %i.em, align 4, !noalias !1726
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ep = load float, ptr %i.eo, align 4, !noalias !1726
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 28
  %i.er = load float, ptr %i.eq, align 4, !noalias !1726
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.et = load float, ptr %i.es, align 4, !noalias !1726
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %i.ev = load float, ptr %i.eu, align 4, !noalias !1726
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ex = load float, ptr %i.ew, align 4, !noalias !1726
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ec, i64 44
  %i.ez = load float, ptr %i.ey, align 4, !noalias !1726
  %i.fa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ed, i64 0
  %i.fb = insertelement <4 x float> %i.fa, float %i.el, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.et, i64 2
  %i.fd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ef, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.en, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.ev, i64 2
  %i.fg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.eh, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.ep, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.ex, i64 2
  %i.fj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ej, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %i.er, i64 1
  %i.fl = insertelement <4 x float> %i.fk, float %i.ez, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

_ZNK6embree13InstanceArray3l2wEmm.exit:           ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.29168.0 = phi <4 x float> [ %i.au, %bb.d ], [ %3, %bb.e ], [ %i.dx, %bb.f ], [ %i.fl, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.20165.0 = phi <4 x float> [ %i.as, %bb.d ], [ %.sroa.20165.44.vec.insert, %bb.e ], [ %i.dq, %bb.f ], [ %i.fi, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.11162.0 = phi <4 x float> [ %i.aq, %bb.d ], [ %.sroa.11162.28.vec.insert, %bb.e ], [ %i.dj, %bb.f ], [ %i.ff, %bb.g ], [ undef, %bb.c ] ; 6 uses
  %.sroa.0159.0 = phi <4 x float> [ %i.ao, %bb.d ], [ %.sroa.0159.12.vec.insert, %bb.e ], [ %i.dc, %bb.f ], [ %i.fc, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.29168.60.vec.extract = extractelement <4 x float> %.sroa.29168.0, i64 3 ; 7 uses
  %.sroa.0159.12.vec.extract = extractelement <4 x float> %.sroa.0159.0, i64 3 ; 7 uses
  %.sroa.11162.28.vec.extract = extractelement <4 x float> %.sroa.11162.0, i64 3 ; 7 uses
  %.sroa.20165.44.vec.extract = extractelement <4 x float> %.sroa.20165.0, i64 3 ; 6 uses
  %.sroa.17310.52.vec.insert = shufflevector <4 x float> %.sroa.0159.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17310.56.vec.insert = shufflevector <4 x float> %.sroa.17310.52.vec.insert, <4 x float> %.sroa.11162.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.fm = fmul float %.sroa.0159.12.vec.extract, %.sroa.0159.12.vec.extract
  %i.fn = tail call float @llvm.fmuladd.f32(float %.sroa.29168.60.vec.extract, float %.sroa.29168.60.vec.extract, float %i.fm)
  %i.fo = fneg float %.sroa.11162.28.vec.extract  ; 3 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float %.sroa.11162.28.vec.extract, float %i.fn)
  %i.fq = fneg float %.sroa.20165.44.vec.extract  ; 3 uses
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fq, float %.sroa.20165.44.vec.extract, float %i.fp)
  %i.fs = fmul float %.sroa.29168.60.vec.extract, %.sroa.20165.44.vec.extract
  %i.ft = tail call float @llvm.fmuladd.f32(float %.sroa.0159.12.vec.extract, float %.sroa.11162.28.vec.extract, float %i.fs)
  %i.fu = fmul float %i.ft, 2.000000e+00
  %i.fv = fmul float %.sroa.29168.60.vec.extract, %i.fo
  %i.fw = tail call float @llvm.fmuladd.f32(float %.sroa.0159.12.vec.extract, float %.sroa.20165.44.vec.extract, float %i.fv)
  %i.fx = fmul float %i.fw, 2.000000e+00
  %i.fy = fmul float %.sroa.29168.60.vec.extract, %i.fq
  %i.fz = tail call float @llvm.fmuladd.f32(float %.sroa.0159.12.vec.extract, float %.sroa.11162.28.vec.extract, float %i.fy)
  %i.ga = fmul float %i.fz, 2.000000e+00
  %i.gb = fneg float %.sroa.0159.12.vec.extract   ; 2 uses
  %i.gc = fmul float %.sroa.0159.12.vec.extract, %i.gb
  %i.gd = tail call float @llvm.fmuladd.f32(float %.sroa.29168.60.vec.extract, float %.sroa.29168.60.vec.extract, float %i.gc) ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %.sroa.11162.28.vec.extract, float %.sroa.11162.28.vec.extract, float %i.gd)
  %i.gf = shufflevector <4 x float> %.sroa.29168.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.gg = shufflevector <4 x float> %.sroa.0159.0, <4 x float> %.sroa.11162.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.gh = insertelement <4 x float> %i.gg, float %i.ge, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %i.gb, i64 3
  %i.gj = fmul <4 x float> %i.gf, %i.gi
  %i.gk = shufflevector <4 x float> %.sroa.11162.0, <4 x float> %.sroa.0159.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.gl = insertelement <4 x float> %i.gk, float %i.fq, i64 0
  %i.gm = shufflevector <4 x float> %.sroa.20165.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.gm, <4 x float> %i.gj) ; 3 uses
  %i.go = extractelement <4 x float> %i.gn, i64 1
  %i.gp = fmul float %i.go, 2.000000e+00
  %i.gq = shufflevector <4 x float> %i.gn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gr = fmul <2 x float> %i.gq, splat (float 2.000000e+00) ; 2 uses
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.fo, float %.sroa.11162.28.vec.extract, float %i.gd)
  %i.gt = tail call float @llvm.fmuladd.f32(float %.sroa.20165.44.vec.extract, float %.sroa.20165.44.vec.extract, float %i.gs)
  %i.gu = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gw = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = fmul <4 x float> %i.gz, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hb = fmul <4 x float> %i.gx, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hc = fadd <4 x float> %i.hb, %i.ha
  %i.hd = fmul <4 x float> %i.gv, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.he = fadd <4 x float> %i.hc, %i.hd           ; 4 uses
  %i.hf = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hi = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = fmul <4 x float> %i.hj, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hl = fmul <4 x float> %i.hh, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hm = fadd <4 x float> %i.hk, %i.hl
  %i.hn = fmul <4 x float> %i.hg, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ho = fadd <4 x float> %i.hn, %i.hm           ; 4 uses
  %i.hp = shufflevector <2 x float> %i.gr, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hq = shufflevector <2 x float> %i.gr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hr = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = fmul <4 x float> %i.hs, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hu = fmul <4 x float> %i.hq, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hv = fadd <4 x float> %i.hu, %i.ht
  %i.hw = fmul <4 x float> %i.hp, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hx = fadd <4 x float> %i.hw, %i.hv           ; 3 uses
  %i.hy = fadd <4 x float> %.sroa.17310.56.vec.insert, zeroinitializer
  %i.hz = shufflevector <4 x float> %.sroa.0159.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = fmul <4 x float> %i.hx, zeroinitializer ; 2 uses
  %i.ib = fmul <4 x float> %i.ho, zeroinitializer
  %i.ic = fadd <4 x float> %i.ib, %i.ia
  %i.id = fmul <4 x float> %i.hz, %i.he
  %i.ie = fadd <4 x float> %i.id, %i.ic           ; 2 uses
  %i.if = shufflevector <4 x float> %.sroa.11162.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = shufflevector <4 x float> %.sroa.11162.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ih = fmul <4 x float> %i.ig, %i.ho
  %i.ii = fadd <4 x float> %i.ih, %i.ia
  %i.ij = fmul <4 x float> %i.if, %i.he
  %i.ik = fadd <4 x float> %i.ij, %i.ii           ; 2 uses
  %i.il = shufflevector <4 x float> %.sroa.20165.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = shufflevector <4 x float> %.sroa.20165.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.in = shufflevector <4 x float> %.sroa.20165.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.io = fmul <4 x float> %i.in, %i.hx
  %i.ip = fmul <4 x float> %i.im, %i.ho
  %i.iq = fadd <4 x float> %i.ip, %i.io
  %i.ir = fmul <4 x float> %i.il, %i.he
  %i.is = fadd <4 x float> %i.ir, %i.iq           ; 2 uses
  %i.it = shufflevector <4 x float> %.sroa.29168.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iu = shufflevector <4 x float> %.sroa.29168.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iv = shufflevector <4 x float> %.sroa.29168.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iw = fmul <4 x float> %i.iv, %i.hx
  %i.ix = fmul <4 x float> %i.iu, %i.ho
  %i.iy = fadd <4 x float> %i.ix, %i.iw
  %i.iz = fmul <4 x float> %i.it, %i.he
  %i.ja = fadd <4 x float> %i.iz, %i.iy
  %i.jb = fadd <4 x float> %i.hy, %i.ja           ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

bb.h:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.ai, label %_ZNK6embree13InstanceArray3l2wEmm.exit5 [
    i32 37444, label %bb.i
    i32 45057, label %bb.j
    i32 37428, label %bb.k
    i32 37172, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.jc = load ptr, ptr %i.ag, align 8, !noalias !1727
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !noalias !1727
  %i.jf = mul i64 %i.je, %i.x
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jf ; 4 uses
  %i.jh = load <4 x float>, ptr %i.jg, align 16, !noalias !1725
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jj = load <4 x float>, ptr %i.ji, align 16, !noalias !1725
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.jl = load <4 x float>, ptr %i.jk, align 16, !noalias !1725
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.jn = load <4 x float>, ptr %i.jm, align 16, !noalias !1725
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit5

bb.j:                                             ; preds = %bb.h
  %i.jo = load ptr, ptr %i.ag, align 8, !noalias !1725
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !1725
  %i.jr = mul i64 %i.jq, %i.x
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr ; 12 uses
  %i.jt = load float, ptr %i.js, align 16, !noalias !1725
  %.sroa.087.0.vec.insert = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !noalias !1725
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jx = load float, ptr %i.jw, align 8, !noalias !1725
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  %i.jz = load float, ptr %i.jy, align 4, !noalias !1725
  %i.ka = insertelement <4 x float> poison, float %i.jz, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.ka, float %i.jv, i64 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.kc = load <2 x float>, ptr %i.kb, align 16, !noalias !1725
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.kd, float %i.jx, i64 2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 52
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !noalias !1725
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.087.8.vec.insert704 = shufflevector <4 x float> %.sroa.087.0.vec.insert, <4 x float> %i.kg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.kh = getelementptr inbounds nuw i8, ptr %i.js, i64 60
  %i.ki = load float, ptr %i.kh, align 4, !noalias !1725
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.ki, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.js, i64 36
  %i.kl = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.km = getelementptr inbounds nuw i8, ptr %i.js, i64 44
  %i.kn = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.ko = load float, ptr %i.kn, align 16, !noalias !1725 ; 3 uses
  %i.kp = load float, ptr %i.kk, align 4, !noalias !1725 ; 2 uses
  %i.kq = load <4 x float>, ptr %i.kj, align 8, !noalias !1725 ; 2 uses
  %i.kr = load float, ptr %i.kl, align 8, !noalias !1725 ; 3 uses
  %i.ks = load float, ptr %i.km, align 4, !noalias !1725 ; 3 uses
  %i.kt = fmul float %i.kr, %i.kr
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kp, float %i.kp, float %i.kt)
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.ks, float %i.ku)
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kv) ; 2 uses
  %i.kx = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.ky = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.kx) ; 3 uses
  %i.kz = extractelement <4 x float> %i.ky, i64 0 ; 2 uses
  %i.la = fmul float %i.kz, 1.500000e+00
  %i.lb = fmul float %i.kw, 5.000000e-01
  %i.lc = fmul float %i.kz, %i.lb
  %foldExtExtBinop706 = fmul <4 x float> %i.ky, %i.ky
  %i.ld = extractelement <4 x float> %foldExtExtBinop706, i64 0
  %i.le = fmul float %i.ld, %i.lc
  %i.lf = fsub float %i.la, %i.le                 ; 4 uses
  %i.lg = insertelement <4 x float> poison, float %i.lf, i64 3
  %i.lh = fmul <4 x float> %i.kq, %i.lg
  %4 = shufflevector <4 x float> %i.kq, <4 x float> %i.lh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.li = fmul float %i.kr, %i.lf
  %i.lj = fmul float %i.ks, %i.lf
  %i.lk = fmul float %i.ko, %i.lf
  %.sroa.087.12.vec.insert = insertelement <4 x float> %.sroa.087.8.vec.insert704, float %i.li, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.lj, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.lk, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit5

bb.k:                                             ; preds = %bb.h
  %i.ll = load ptr, ptr %i.ag, align 8, !noalias !1727
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !noalias !1727
  %i.lo = mul i64 %i.ln, %i.x
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lo ; 8 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load <2 x float>, ptr %i.lq, align 4, !noalias !1725
  %i.ls = load float, ptr %i.lp, align 4, !noalias !1725
  %i.lt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ls, i64 0
  %i.lu = shufflevector <2 x float> %i.lr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lv = shufflevector <4 x float> %i.lt, <4 x float> %i.lu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.ly = load <2 x float>, ptr %i.lx, align 4, !noalias !1725
  %i.lz = load float, ptr %i.lw, align 4, !noalias !1725
  %i.ma = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lz, i64 0
  %i.mb = shufflevector <2 x float> %i.ly, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mc = shufflevector <4 x float> %i.ma, <4 x float> %i.mb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.md = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.me = getelementptr inbounds nuw i8, ptr %i.lp, i64 28
  %i.mf = load <2 x float>, ptr %i.me, align 4, !noalias !1725
  %i.mg = load float, ptr %i.md, align 4, !noalias !1725
  %i.mh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mg, i64 0
  %i.mi = shufflevector <2 x float> %i.mf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mj = shufflevector <4 x float> %i.mh, <4 x float> %i.mi, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lp, i64 36
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.mm = load <2 x float>, ptr %i.ml, align 4, !noalias !1725
  %i.mn = load float, ptr %i.mk, align 4, !noalias !1725
  %i.mo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mn, i64 0
  %i.mp = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mq = shufflevector <4 x float> %i.mo, <4 x float> %i.mp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit5

bb.l:                                             ; preds = %bb.h
  %i.mr = load ptr, ptr %i.ag, align 8, !noalias !1727
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !1727
  %i.mu = mul i64 %i.mt, %i.x
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mu ; 12 uses
  %i.mw = load float, ptr %i.mv, align 4, !noalias !1727
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.my = load float, ptr %i.mx, align 4, !noalias !1727
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.na = load float, ptr %i.mz, align 4, !noalias !1727
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  %i.nc = load float, ptr %i.nb, align 4, !noalias !1727
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.ne = load float, ptr %i.nd, align 4, !noalias !1727
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 20
  %i.ng = load float, ptr %i.nf, align 4, !noalias !1727
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.ni = load float, ptr %i.nh, align 4, !noalias !1727
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mv, i64 28
  %i.nk = load float, ptr %i.nj, align 4, !noalias !1727
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.nm = load float, ptr %i.nl, align 4, !noalias !1727
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mv, i64 36
  %i.no = load float, ptr %i.nn, align 4, !noalias !1727
  %i.np = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  %i.nq = load float, ptr %i.np, align 4, !noalias !1727
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mv, i64 44
  %i.ns = load float, ptr %i.nr, align 4, !noalias !1727
  %i.nt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mw, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.ne, i64 1
  %i.nv = insertelement <4 x float> %i.nu, float %i.nm, i64 2
  %i.nw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.my, i64 0
  %i.nx = insertelement <4 x float> %i.nw, float %i.ng, i64 1
  %i.ny = insertelement <4 x float> %i.nx, float %i.no, i64 2
  %i.nz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.na, i64 0
  %i.oa = insertelement <4 x float> %i.nz, float %i.ni, i64 1
  %i.ob = insertelement <4 x float> %i.oa, float %i.nq, i64 2
  %i.oc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.nc, i64 0
  %i.od = insertelement <4 x float> %i.oc, float %i.nk, i64 1
  %i.oe = insertelement <4 x float> %i.od, float %i.ns, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit5

_ZNK6embree13InstanceArray3l2wEmm.exit5:          ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.26.0 = phi <4 x float> [ %i.jn, %bb.i ], [ %4, %bb.j ], [ %i.mq, %bb.k ], [ %i.oe, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.jl, %bb.i ], [ %.sroa.18.44.vec.insert, %bb.j ], [ %i.mj, %bb.k ], [ %i.ob, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.jj, %bb.i ], [ %.sroa.10.28.vec.insert, %bb.j ], [ %i.mc, %bb.k ], [ %i.ny, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.087.0 = phi <4 x float> [ %i.jh, %bb.i ], [ %.sroa.087.12.vec.insert, %bb.j ], [ %i.lv, %bb.k ], [ %i.nv, %bb.l ], [ undef, %bb.h ] ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit5, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.sink681.ph = phi <4 x float> [ %i.is, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ]
  %.sink679.ph = phi <4 x float> [ %i.jb, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ]
  %.sink677.ph = phi <4 x float> [ %i.ik, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ]
  %.sink673.ph = phi <4 x float> [ %i.ie, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.087.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ]
  %i.of = load ptr, ptr %i.o, align 8, !noalias !1725
  %i.og = load i64, ptr %i.p, align 8, !noalias !1725
  %i.oh = mul i64 %i.og, %i.x
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !noalias !1725 ; 2 uses
  %i.ok = icmp ne i32 %i.oj, -1
  tail call void @llvm.assume(i1 %i.ok)
  %i.ol = load ptr, ptr %i.s, align 16, !noalias !1725
  %i.om = zext i32 %i.oj to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.om
  %i.oo = load ptr, ptr %i.on, align 8, !noalias !1725
  br label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit5, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.0.i7.sink694 = phi ptr [ %i.n, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %i.n, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ], [ %i.oo, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 4 uses
  %.sink681 = phi <4 x float> [ %i.is, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ], [ %.sink681.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink679 = phi <4 x float> [ %i.jb, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ], [ %.sink679.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink677 = phi <4 x float> [ %i.ik, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ], [ %.sink677.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink673 = phi <4 x float> [ %i.ie, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.087.0, %_ZNK6embree13InstanceArray3l2wEmm.exit5 ], [ %.sink673.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i7.sink694, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i7.sink694, i64 48
  %i.or = load <4 x float>, ptr %i.op, align 16, !noalias !1725
  %i.os = load <4 x float>, ptr %i.oq, align 16, !noalias !1725
  %i.ot = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.or, <4 x float> %i.os) ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i7.sink694, i64 32
  %i.ov = getelementptr inbounds nuw i8, ptr %.0.i7.sink694, i64 64
  %i.ow = load <4 x float>, ptr %i.ou, align 16, !noalias !1725
  %i.ox = load <4 x float>, ptr %i.ov, align 16, !noalias !1725
  %i.oy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ow, <4 x float> %i.ox) ; 3 uses
  %i.oz = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pa = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pb = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pc = fmul <4 x float> %.sink681, %i.pb
  %i.pd = fadd <4 x float> %.sink679, %i.pc       ; 2 uses
  %i.pe = fmul <4 x float> %.sink677, %i.pa       ; 2 uses
  %i.pf = fadd <4 x float> %i.pe, %i.pd           ; 2 uses
  %i.pg = fmul <4 x float> %.sink673, %i.oz       ; 4 uses
  %i.ph = fadd <4 x float> %i.pg, %i.pf           ; 2 uses
  %i.pi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ph)
  %i.pj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ph)
  %i.pk = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pl = fmul <4 x float> %.sink681, %i.pk
  %i.pm = fadd <4 x float> %.sink679, %i.pl       ; 2 uses
  %i.pn = fadd <4 x float> %i.pe, %i.pm           ; 2 uses
  %i.po = fadd <4 x float> %i.pg, %i.pn           ; 2 uses
  %i.pp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pi, <4 x float> %i.po)
  %i.pq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pj, <4 x float> %i.po)
  %i.pr = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ps = fmul <4 x float> %.sink677, %i.pr       ; 2 uses
  %i.pt = fadd <4 x float> %i.pd, %i.ps           ; 2 uses
  %i.pu = fadd <4 x float> %i.pg, %i.pt           ; 2 uses
  %i.pv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pp, <4 x float> %i.pu)
  %i.pw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pq, <4 x float> %i.pu)
  %i.px = fadd <4 x float> %i.ps, %i.pm           ; 2 uses
  %i.py = fadd <4 x float> %i.pg, %i.px           ; 2 uses
  %i.pz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pv, <4 x float> %i.py)
  %i.qa = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pw, <4 x float> %i.py)
  %i.qb = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qc = fmul <4 x float> %.sink673, %i.qb       ; 4 uses
  %i.qd = fadd <4 x float> %i.pf, %i.qc           ; 2 uses
  %i.qe = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pz, <4 x float> %i.qd)
  %i.qf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qa, <4 x float> %i.qd)
  %i.qg = fadd <4 x float> %i.qc, %i.pn           ; 2 uses
  %i.qh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qe, <4 x float> %i.qg)
  %i.qi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qf, <4 x float> %i.qg)
  %i.qj = fadd <4 x float> %i.qc, %i.pt           ; 2 uses
  %i.qk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qh, <4 x float> %i.qj)
  %i.ql = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qi, <4 x float> %i.qj)
  %i.qm = fadd <4 x float> %i.qc, %i.px           ; 2 uses
  %i.qn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qk, <4 x float> %i.qm)
  %i.qo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ql, <4 x float> %i.qm)
  %i.qp = fadd <4 x float> %i.qo, %i.qn
  br label %_ZNK6embree13InstanceArray6boundsEm.exit

_ZNK6embree13InstanceArray6boundsEm.exit:         ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit
  %i.qq = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.qp, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split ] ; 2 uses
  %i.qr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.045.0607, <4 x float> %i.qq) ; 2 uses
  %i.qs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0606, <4 x float> %i.qq) ; 2 uses
  %i.qt = add nuw nsw i64 %.0608, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.qt, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1723
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS9_Li4EE6CreateENS4_13SetBVHNBoundsILi4EEENS4_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS4_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSX_E_FKS3_RSZ_S10_EEET0_T_S13_S13_S13_RKS12_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"struct.embree::BBox") align 16 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %7) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.223, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray", align 64 ; 9 uses
  %12 = alloca %class.anon.222, align 8           ; 10 uses
  %13 = alloca %"struct.embree::BBox", align 16   ; 6 uses
  store i32 %2, ptr %i.b, align 4
  store i32 %3, ptr %i.c, align 4
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call noundef i32 @llvm.umin.i32(i32 %1, i32 %i.e) ; 3 uses
  %i.g = tail call noundef i32 @llvm.umin.i32(i32 %i.f, i32 512) ; 3 uses
  store i32 %i.g, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8200
  store i64 %i.h, ptr %i.i, align 8
  %i.j = icmp ult i32 %i.f, 257
  br i1 %i.j, label %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl nuw nsw i64 %i.h, 5
  %i.l = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.k, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.l, %bb.b ], [ %11, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8192 ; 4 uses
  store ptr %storemerge.i, ptr %i.m, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr %i.b, ptr %12, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.r = load <4 x float>, ptr %5, align 16
  store <4 x float> %i.r, ptr %0, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.u, ptr %i.s, align 16
  br label %._crit_edge

bb.c:                                             ; preds = %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnIjZNS_12parallel_forIjZNS_24parallel_reduce_internalIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tISC_Li4EE6CreateENS7_13SetBVHNBoundsILi4EEENS7_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS7_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlS10_E_FKS6_RS12_S13_EEET0_T_S16_S16_S16_RKS15_RKT1_RKT2_EUljE_EEvS16_S18_EUlS10_E_EEvS16_S16_S16_S18_PNS0_16TaskGroupContextE(i32 noundef 0, i32 noundef %i.g, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d
  %i.v = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.k, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.v, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #29
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %10, align 8
  %.not.i15 = icmp eq ptr %i.z, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
end_hunk_0
begin_hunk_1_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS8_Li4EE6CreateENS3_13SetBVHNBoundsILi4EEENS3_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS3_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSW_E0_EEvT_SY_SY_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKSY_S13_mb:bb.a
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #27
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #27
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.ak, %bb.j ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS8_Li4EE6CreateENS3_13SetBVHNBoundsILi4EEENS3_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS3_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSW_E0_EEvT_SY_SY_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.embree::range", align 4    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = sub i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i32 %i.d, ptr %1, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.b, ptr %i.i, align 4
  call void @_ZZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEENKUlST_E0_clEST_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !1733
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %_ZZN6embree13TaskScheduler5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENS2_13SetBVHNBoundsILi4EEENS2_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS2_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSV_E0_EEvT_SX_SX_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i32 %i.d, %i.b
  %i.k = lshr i32 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENS2_13SetBVHNBoundsILi4EEENS2_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS2_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSV_E0_EEvT_SX_SX_RKT0_PNS0_16TaskGroupContextE(i32 noundef %i.d, i32 noundef %i.k, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef %i.n), !inline_history !1733
  %i.o = load i32, ptr %i.a, align 8
  %i.p = load i32, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENS2_13SetBVHNBoundsILi4EEENS2_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS2_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSV_E0_EEvT_SX_SX_RKT0_PNS0_16TaskGroupContextE(i32 noundef %i.k, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef %i.q), !inline_history !1733
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !1733
  br label %_ZZN6embree13TaskScheduler5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENS2_13SetBVHNBoundsILi4EEENS2_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS2_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSV_E0_EEvT_SX_SX_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnIjZNKS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENS2_13SetBVHNBoundsILi4EEENS2_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS2_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEEUlSV_E0_EEvT_SX_SX_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNK6embree4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS5_Li4EE6CreateENS0_13SetBVHNBoundsILi4EEENS0_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS0_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE19recreateMortonCodesERKNS_5rangeIjEEENKUlST_E0_clEST_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp ult i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext i32 %i.a to i64
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEm.exit
  %.0608 = phi i64 [ %i.e, %.lr.ph ], [ %i.sd, %_ZNK6embree13InstanceArray6boundsEm.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !25, !align !38 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !nonnull !25, !align !27
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0608 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !noalias !1749 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noalias !1749
  %i.q = zext i32 %i.p to i64                     ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1750 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null                ; 3 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray5validEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit:          ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1750
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.w = load i64, ptr %i.v, align 8, !noalias !1750
  %i.x = mul i64 %i.w, %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !noalias !1750
  %.not = icmp eq i32 %i.z, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray6boundsEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.thread

_ZNK6embree13InstanceArray5validEm.exit.thread:   ; preds = %bb.b, %_ZNK6embree13InstanceArray5validEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !1750
  %i.ac = and i32 %i.ab, 65280
  %i.ad = icmp eq i32 %i.ac, 256
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1750 ; 17 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !1750 ; 2 uses
  br i1 %i.ad, label %bb.c, label %bb.h, !prof !31

bb.c:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.ah, label %_ZNK6embree13InstanceArray3l2wEmm.exit [
    i32 37444, label %bb.d
    i32 45057, label %bb.e
    i32 37428, label %bb.f
    i32 37172, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.af, align 8, !noalias !1751
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1751
  %i.al = mul i64 %i.ak, %i.q
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 4 uses
  %i.an = load <4 x float>, ptr %i.am, align 16, !noalias !1750
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !noalias !1750
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !noalias !1750
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.at = load <4 x float>, ptr %i.as, align 16, !noalias !1750
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %i.af, align 8, !noalias !1750
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !1750
  %i.ax = mul i64 %i.aw, %i.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 12 uses
  %i.az = load float, ptr %i.ay, align 16, !noalias !1750
  %.sroa.0162.0.vec.insert = insertelement <4 x float> poison, float %i.az, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !noalias !1750
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load float, ptr %i.bc, align 8, !noalias !1750
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bf = load float, ptr %i.be, align 4, !noalias !1750
  %i.bg = insertelement <4 x float> poison, float %i.bf, i64 0
  %.sroa.11165.16.vec.insert = insertelement <4 x float> %i.bg, float %i.bb, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bi = load <2 x float>, ptr %i.bh, align 16, !noalias !1750
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20168.36.vec.insert = insertelement <4 x float> %i.bj, float %i.bd, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !noalias !1750
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0162.8.vec.insert702 = shufflevector <4 x float> %.sroa.0162.0.vec.insert, <4 x float> %i.bm, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  %i.bo = load float, ptr %i.bn, align 4, !noalias !1750
  %.sroa.11165.24.vec.insert = insertelement <4 x float> %.sroa.11165.16.vec.insert, float %i.bo, i64 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bu = load float, ptr %i.bt, align 16, !noalias !1750 ; 3 uses
  %i.bv = load float, ptr %i.bq, align 4, !noalias !1750 ; 2 uses
  %i.bw = load <4 x float>, ptr %i.bp, align 8, !noalias !1750 ; 2 uses
  %i.bx = load float, ptr %i.br, align 8, !noalias !1750 ; 3 uses
  %i.by = load float, ptr %i.bs, align 4, !noalias !1750 ; 3 uses
  %i.bz = fmul float %i.bx, %i.bx
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bz)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.cb) ; 2 uses
  %i.cd = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.cd) ; 3 uses
  %i.cf = extractelement <4 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = fmul float %i.cf, 1.500000e+00
  %i.ch = fmul float %i.cc, 5.000000e-01
  %i.ci = fmul float %i.cf, %i.ch
  %foldExtExtBinop = fmul <4 x float> %i.ce, %i.ce
  %i.cj = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ck = fmul float %i.cj, %i.ci
  %i.cl = fsub float %i.cg, %i.ck                 ; 4 uses
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 3
  %i.cn = fmul <4 x float> %i.bw, %i.cm
  %2 = shufflevector <4 x float> %i.bw, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.co = fmul float %i.bx, %i.cl
  %i.cp = fmul float %i.by, %i.cl
  %i.cq = fmul float %i.bu, %i.cl
  %.sroa.0162.12.vec.insert = insertelement <4 x float> %.sroa.0162.8.vec.insert702, float %i.co, i64 3
  %.sroa.11165.28.vec.insert = insertelement <4 x float> %.sroa.11165.24.vec.insert, float %i.cp, i64 3
  %.sroa.20168.44.vec.insert = insertelement <4 x float> %.sroa.20168.36.vec.insert, float %i.cq, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.f:                                             ; preds = %bb.c
  %i.cr = load ptr, ptr %i.af, align 8, !noalias !1751
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !1751
  %i.cu = mul i64 %i.ct, %i.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cu ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load <2 x float>, ptr %i.cw, align 4, !noalias !1750
  %i.cy = load float, ptr %i.cv, align 4, !noalias !1750
  %i.cz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cy, i64 0
  %i.da = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.de = load <2 x float>, ptr %i.dd, align 4, !noalias !1750
  %i.df = load float, ptr %i.dc, align 4, !noalias !1750
  %i.dg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.df, i64 0
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> %i.dh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.dl = load <2 x float>, ptr %i.dk, align 4, !noalias !1750
  %i.dm = load float, ptr %i.dj, align 4, !noalias !1750
  %i.dn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dm, i64 0
  %i.do = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !noalias !1750
  %i.dt = load float, ptr %i.dq, align 4, !noalias !1750
  %i.du = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.g:                                             ; preds = %bb.c
  %i.dx = load ptr, ptr %i.af, align 8, !noalias !1751
  %i.dy = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !1751
  %i.ea = mul i64 %i.dz, %i.q
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ea ; 12 uses
  %i.ec = load float, ptr %i.eb, align 4, !noalias !1751
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !noalias !1751
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = load float, ptr %i.ef, align 4, !noalias !1751
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ei = load float, ptr %i.eh, align 4, !noalias !1751
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ek = load float, ptr %i.ej, align 4, !noalias !1751
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.em = load float, ptr %i.el, align 4, !noalias !1751
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eo = load float, ptr %i.en, align 4, !noalias !1751
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.eq = load float, ptr %i.ep, align 4, !noalias !1751
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.es = load float, ptr %i.er, align 4, !noalias !1751
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 36
  %i.eu = load float, ptr %i.et, align 4, !noalias !1751
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ew = load float, ptr %i.ev, align 4, !noalias !1751
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  %i.ey = load float, ptr %i.ex, align 4, !noalias !1751
  %i.ez = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ec, i64 0
  %i.fa = insertelement <4 x float> %i.ez, float %i.ek, i64 1
  %i.fb = insertelement <4 x float> %i.fa, float %i.es, i64 2
  %i.fc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ee, i64 0
  %i.fd = insertelement <4 x float> %i.fc, float %i.em, i64 1
  %i.fe = insertelement <4 x float> %i.fd, float %i.eu, i64 2
  %i.ff = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.eg, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %i.eo, i64 1
  %i.fh = insertelement <4 x float> %i.fg, float %i.ew, i64 2
  %i.fi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ei, i64 0
  %i.fj = insertelement <4 x float> %i.fi, float %i.eq, i64 1
  %i.fk = insertelement <4 x float> %i.fj, float %i.ey, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

_ZNK6embree13InstanceArray3l2wEmm.exit:           ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0162.0 = phi <4 x float> [ %i.an, %bb.d ], [ %.sroa.0162.12.vec.insert, %bb.e ], [ %i.db, %bb.f ], [ %i.fb, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.11165.0 = phi <4 x float> [ %i.ap, %bb.d ], [ %.sroa.11165.28.vec.insert, %bb.e ], [ %i.di, %bb.f ], [ %i.fe, %bb.g ], [ undef, %bb.c ] ; 6 uses
  %.sroa.20168.0 = phi <4 x float> [ %i.ar, %bb.d ], [ %.sroa.20168.44.vec.insert, %bb.e ], [ %i.dp, %bb.f ], [ %i.fh, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.29171.0 = phi <4 x float> [ %i.at, %bb.d ], [ %2, %bb.e ], [ %i.dw, %bb.f ], [ %i.fk, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.29171.60.vec.extract = extractelement <4 x float> %.sroa.29171.0, i64 3 ; 7 uses
  %.sroa.0162.12.vec.extract = extractelement <4 x float> %.sroa.0162.0, i64 3 ; 7 uses
  %.sroa.11165.28.vec.extract = extractelement <4 x float> %.sroa.11165.0, i64 3 ; 7 uses
  %.sroa.20168.44.vec.extract = extractelement <4 x float> %.sroa.20168.0, i64 3 ; 6 uses
  %.sroa.17312.52.vec.insert = shufflevector <4 x float> %.sroa.0162.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17312.56.vec.insert = shufflevector <4 x float> %.sroa.17312.52.vec.insert, <4 x float> %.sroa.11165.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.fl = fmul float %.sroa.0162.12.vec.extract, %.sroa.0162.12.vec.extract
  %i.fm = tail call float @llvm.fmuladd.f32(float %.sroa.29171.60.vec.extract, float %.sroa.29171.60.vec.extract, float %i.fl)
  %i.fn = fneg float %.sroa.11165.28.vec.extract  ; 3 uses
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %.sroa.11165.28.vec.extract, float %i.fm)
  %i.fp = fneg float %.sroa.20168.44.vec.extract  ; 3 uses
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fp, float %.sroa.20168.44.vec.extract, float %i.fo)
  %i.fr = fmul float %.sroa.20168.44.vec.extract, %.sroa.29171.60.vec.extract
  %i.fs = tail call float @llvm.fmuladd.f32(float %.sroa.0162.12.vec.extract, float %.sroa.11165.28.vec.extract, float %i.fr)
  %i.ft = fmul float %i.fs, 2.000000e+00
  %i.fu = fmul float %.sroa.29171.60.vec.extract, %i.fn
  %i.fv = tail call float @llvm.fmuladd.f32(float %.sroa.0162.12.vec.extract, float %.sroa.20168.44.vec.extract, float %i.fu)
  %i.fw = fmul float %i.fv, 2.000000e+00
  %i.fx = fmul float %.sroa.29171.60.vec.extract, %i.fp
  %i.fy = tail call float @llvm.fmuladd.f32(float %.sroa.0162.12.vec.extract, float %.sroa.11165.28.vec.extract, float %i.fx)
  %i.fz = fmul float %i.fy, 2.000000e+00
  %i.ga = fneg float %.sroa.0162.12.vec.extract   ; 2 uses
  %i.gb = fmul float %.sroa.0162.12.vec.extract, %i.ga
  %i.gc = tail call float @llvm.fmuladd.f32(float %.sroa.29171.60.vec.extract, float %.sroa.29171.60.vec.extract, float %i.gb) ; 2 uses
  %i.gd = tail call float @llvm.fmuladd.f32(float %.sroa.11165.28.vec.extract, float %.sroa.11165.28.vec.extract, float %i.gc)
  %i.ge = shufflevector <4 x float> %.sroa.29171.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.gf = shufflevector <4 x float> %.sroa.0162.0, <4 x float> %.sroa.11165.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.gg = insertelement <4 x float> %i.gf, float %i.gd, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.ga, i64 3
  %i.gi = fmul <4 x float> %i.ge, %i.gh
  %i.gj = shufflevector <4 x float> %.sroa.11165.0, <4 x float> %.sroa.0162.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.gk = insertelement <4 x float> %i.gj, float %i.fp, i64 0
  %i.gl = shufflevector <4 x float> %.sroa.20168.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.gl, <4 x float> %i.gi) ; 3 uses
  %i.gn = extractelement <4 x float> %i.gm, i64 1
  %i.go = fmul float %i.gn, 2.000000e+00
  %i.gp = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gq = fmul <2 x float> %i.gp, splat (float 2.000000e+00) ; 2 uses
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.fn, float %.sroa.11165.28.vec.extract, float %i.gc)
  %i.gs = tail call float @llvm.fmuladd.f32(float %.sroa.20168.44.vec.extract, float %.sroa.20168.44.vec.extract, float %i.gr)
  %i.gt = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gv = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gx = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fmul <4 x float> %i.gy, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ha = fmul <4 x float> %i.gw, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hb = fadd <4 x float> %i.ha, %i.gz
  %i.hc = fmul <4 x float> %i.gu, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hd = fadd <4 x float> %i.hc, %i.hb           ; 4 uses
  %i.he = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hg = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = insertelement <4 x float> poison, float %i.go, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = fmul <4 x float> %i.hi, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hk = fmul <4 x float> %i.hg, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hl = fadd <4 x float> %i.hk, %i.hj
  %i.hm = fmul <4 x float> %i.hf, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hn = fadd <4 x float> %i.hm, %i.hl           ; 4 uses
  %i.ho = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hp = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hq = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hs = fmul <4 x float> %i.hr, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ht = fmul <4 x float> %i.hp, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hu = fadd <4 x float> %i.ht, %i.hs
  %i.hv = fmul <4 x float> %i.ho, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hw = fadd <4 x float> %i.hv, %i.hu           ; 3 uses
  %i.hx = fadd <4 x float> %.sroa.17312.56.vec.insert, zeroinitializer
  %i.hy = shufflevector <4 x float> %.sroa.0162.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fmul <4 x float> %i.hw, zeroinitializer ; 2 uses
  %i.ia = fmul <4 x float> %i.hn, zeroinitializer
  %i.ib = fadd <4 x float> %i.ia, %i.hz
  %i.ic = fmul <4 x float> %i.hy, %i.hd
  %i.id = fadd <4 x float> %i.ic, %i.ib           ; 2 uses
  %i.ie = shufflevector <4 x float> %.sroa.11165.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.if = shufflevector <4 x float> %.sroa.11165.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ig = fmul <4 x float> %i.if, %i.hn
  %i.ih = fadd <4 x float> %i.ig, %i.hz
  %i.ii = fmul <4 x float> %i.ie, %i.hd
  %i.ij = fadd <4 x float> %i.ii, %i.ih           ; 2 uses
  %i.ik = shufflevector <4 x float> %.sroa.20168.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = shufflevector <4 x float> %.sroa.20168.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.im = shufflevector <4 x float> %.sroa.20168.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.in = fmul <4 x float> %i.im, %i.hw
  %i.io = fmul <4 x float> %i.il, %i.hn
  %i.ip = fadd <4 x float> %i.io, %i.in
  %i.iq = fmul <4 x float> %i.ik, %i.hd
  %i.ir = fadd <4 x float> %i.iq, %i.ip           ; 2 uses
  %i.is = shufflevector <4 x float> %.sroa.29171.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = shufflevector <4 x float> %.sroa.29171.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iu = shufflevector <4 x float> %.sroa.29171.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iv = fmul <4 x float> %i.iu, %i.hw
  %i.iw = fmul <4 x float> %i.it, %i.hn
  %i.ix = fadd <4 x float> %i.iw, %i.iv
  %i.iy = fmul <4 x float> %i.is, %i.hd
  %i.iz = fadd <4 x float> %i.iy, %i.ix
  %i.ja = fadd <4 x float> %i.hx, %i.iz           ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

bb.h:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.thread
  switch i32 %i.ah, label %_ZNK6embree13InstanceArray3l2wEmm.exit6 [
    i32 37444, label %bb.i
    i32 45057, label %bb.j
    i32 37428, label %bb.k
    i32 37172, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.jb = load ptr, ptr %i.af, align 8, !noalias !1752
  %i.jc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !1752
  %i.je = mul i64 %i.jd, %i.q
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.je ; 4 uses
  %i.jg = load <4 x float>, ptr %i.jf, align 16, !noalias !1750
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.ji = load <4 x float>, ptr %i.jh, align 16, !noalias !1750
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jk = load <4 x float>, ptr %i.jj, align 16, !noalias !1750
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !noalias !1750
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.j:                                             ; preds = %bb.h
  %i.jn = load ptr, ptr %i.af, align 8, !noalias !1750
  %i.jo = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !1750
  %i.jq = mul i64 %i.jp, %i.q
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jq ; 12 uses
  %i.js = load float, ptr %i.jr, align 16, !noalias !1750
  %.sroa.090.0.vec.insert = insertelement <4 x float> poison, float %i.js, i64 0
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.ju = load float, ptr %i.jt, align 4, !noalias !1750
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jw = load float, ptr %i.jv, align 8, !noalias !1750
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  %i.jy = load float, ptr %i.jx, align 4, !noalias !1750
  %i.jz = insertelement <4 x float> poison, float %i.jy, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.jz, float %i.ju, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.kb = load <2 x float>, ptr %i.ka, align 16, !noalias !1750
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.kc, float %i.jw, i64 2
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 52
  %i.ke = load <2 x float>, ptr %i.kd, align 4, !noalias !1750
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.090.8.vec.insert703 = shufflevector <4 x float> %.sroa.090.0.vec.insert, <4 x float> %i.kf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 60
  %i.kh = load float, ptr %i.kg, align 4, !noalias !1750
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.kh, i64 2
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jr, i64 44
  %i.km = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.kn = load float, ptr %i.km, align 16, !noalias !1750 ; 3 uses
  %i.ko = load float, ptr %i.kj, align 4, !noalias !1750 ; 2 uses
  %i.kp = load <4 x float>, ptr %i.ki, align 8, !noalias !1750 ; 2 uses
  %i.kq = load float, ptr %i.kk, align 8, !noalias !1750 ; 3 uses
  %i.kr = load float, ptr %i.kl, align 4, !noalias !1750 ; 3 uses
  %i.ks = fmul float %i.kq, %i.kq
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.ks)
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kr, float %i.kr, float %i.kt)
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.kn, float %i.ku) ; 2 uses
  %i.kw = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.kx = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.kw) ; 3 uses
  %i.ky = extractelement <4 x float> %i.kx, i64 0 ; 2 uses
  %i.kz = fmul float %i.ky, 1.500000e+00
  %i.la = fmul float %i.kv, 5.000000e-01
  %i.lb = fmul float %i.ky, %i.la
  %foldExtExtBinop705 = fmul <4 x float> %i.kx, %i.kx
  %i.lc = extractelement <4 x float> %foldExtExtBinop705, i64 0
  %i.ld = fmul float %i.lc, %i.lb
  %i.le = fsub float %i.kz, %i.ld                 ; 4 uses
  %i.lf = insertelement <4 x float> poison, float %i.le, i64 3
  %i.lg = fmul <4 x float> %i.kp, %i.lf
  %3 = shufflevector <4 x float> %i.kp, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.lh = fmul float %i.kq, %i.le
  %i.li = fmul float %i.kr, %i.le
  %i.lj = fmul float %i.kn, %i.le
  %.sroa.090.12.vec.insert = insertelement <4 x float> %.sroa.090.8.vec.insert703, float %i.lh, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.li, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.lj, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.k:                                             ; preds = %bb.h
  %i.lk = load ptr, ptr %i.af, align 8, !noalias !1752
  %i.ll = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !1752
  %i.ln = mul i64 %i.lm, %i.q
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ln ; 8 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = load <2 x float>, ptr %i.lp, align 4, !noalias !1750
  %i.lr = load float, ptr %i.lo, align 4, !noalias !1750
  %i.ls = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lr, i64 0
  %i.lt = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lu = shufflevector <4 x float> %i.ls, <4 x float> %i.lt, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lx = load <2 x float>, ptr %i.lw, align 4, !noalias !1750
  %i.ly = load float, ptr %i.lv, align 4, !noalias !1750
  %i.lz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ly, i64 0
  %i.ma = shufflevector <2 x float> %i.lx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mb = shufflevector <4 x float> %i.lz, <4 x float> %i.ma, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.md = getelementptr inbounds nuw i8, ptr %i.lo, i64 28
  %i.me = load <2 x float>, ptr %i.md, align 4, !noalias !1750
  %i.mf = load float, ptr %i.mc, align 4, !noalias !1750
  %i.mg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mf, i64 0
  %i.mh = shufflevector <2 x float> %i.me, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mg, <4 x float> %i.mh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 36
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.ml = load <2 x float>, ptr %i.mk, align 4, !noalias !1750
  %i.mm = load float, ptr %i.mj, align 4, !noalias !1750
  %i.mn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mm, i64 0
  %i.mo = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mp = shufflevector <4 x float> %i.mn, <4 x float> %i.mo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.l:                                             ; preds = %bb.h
  %i.mq = load ptr, ptr %i.af, align 8, !noalias !1752
  %i.mr = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !noalias !1752
  %i.mt = mul i64 %i.ms, %i.q
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mt ; 12 uses
  %i.mv = load float, ptr %i.mu, align 4, !noalias !1752
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mx = load float, ptr %i.mw, align 4, !noalias !1752
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mz = load float, ptr %i.my, align 4, !noalias !1752
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  %i.nb = load float, ptr %i.na, align 4, !noalias !1752
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.nd = load float, ptr %i.nc, align 4, !noalias !1752
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 20
  %i.nf = load float, ptr %i.ne, align 4, !noalias !1752
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.nh = load float, ptr %i.ng, align 4, !noalias !1752
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mu, i64 28
  %i.nj = load float, ptr %i.ni, align 4, !noalias !1752
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.nl = load float, ptr %i.nk, align 4, !noalias !1752
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 36
  %i.nn = load float, ptr %i.nm, align 4, !noalias !1752
  %i.no = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %i.np = load float, ptr %i.no, align 4, !noalias !1752
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mu, i64 44
  %i.nr = load float, ptr %i.nq, align 4, !noalias !1752
  %i.ns = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mv, i64 0
  %i.nt = insertelement <4 x float> %i.ns, float %i.nd, i64 1
  %i.nu = insertelement <4 x float> %i.nt, float %i.nl, i64 2
  %i.nv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mx, i64 0
  %i.nw = insertelement <4 x float> %i.nv, float %i.nf, i64 1
  %i.nx = insertelement <4 x float> %i.nw, float %i.nn, i64 2
  %i.ny = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mz, i64 0
  %i.nz = insertelement <4 x float> %i.ny, float %i.nh, i64 1
  %i.oa = insertelement <4 x float> %i.nz, float %i.np, i64 2
  %i.ob = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.nb, i64 0
  %i.oc = insertelement <4 x float> %i.ob, float %i.nj, i64 1
  %i.od = insertelement <4 x float> %i.oc, float %i.nr, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

_ZNK6embree13InstanceArray3l2wEmm.exit6:          ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.26.0 = phi <4 x float> [ %i.jm, %bb.i ], [ %3, %bb.j ], [ %i.mp, %bb.k ], [ %i.od, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.jk, %bb.i ], [ %.sroa.18.44.vec.insert, %bb.j ], [ %i.mi, %bb.k ], [ %i.oa, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.ji, %bb.i ], [ %.sroa.10.28.vec.insert, %bb.j ], [ %i.mb, %bb.k ], [ %i.nx, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.090.0 = phi <4 x float> [ %i.jg, %bb.i ], [ %.sroa.090.12.vec.insert, %bb.j ], [ %i.lu, %bb.k ], [ %i.nu, %bb.l ], [ undef, %bb.h ] ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit6, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.sink678.ph = phi <4 x float> [ %i.ir, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sink676.ph = phi <4 x float> [ %i.ja, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sink674.ph = phi <4 x float> [ %i.ij, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sink670.ph = phi <4 x float> [ %i.id, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.090.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !1750
  %i.og = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.oh = load i64, ptr %i.og, align 8, !noalias !1750
  %i.oi = mul i64 %i.oh, %i.q
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !noalias !1750 ; 2 uses
  %i.ol = icmp ne i32 %i.ok, -1
  tail call void @llvm.assume(i1 %i.ol)
  %i.om = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.on = load ptr, ptr %i.om, align 16, !noalias !1750
  %i.oo = zext i32 %i.ok to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !noalias !1750
  br label %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit6, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.0.i8.sink691 = phi ptr [ %i.s, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %i.s, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %i.oq, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 4 uses
  %.sink678 = phi <4 x float> [ %i.ir, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink678.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink676 = phi <4 x float> [ %i.ja, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink676.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink674 = phi <4 x float> [ %i.ij, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink674.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %.sink670 = phi <4 x float> [ %i.id, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.090.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sink670.ph, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split.sink.split ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i8.sink691, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %.0.i8.sink691, i64 48
  %i.ot = load <4 x float>, ptr %i.or, align 16, !noalias !1750
  %i.ou = load <4 x float>, ptr %i.os, align 16, !noalias !1750
  %i.ov = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ot, <4 x float> %i.ou) ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.0.i8.sink691, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %.0.i8.sink691, i64 64
  %i.oy = load <4 x float>, ptr %i.ow, align 16, !noalias !1750
  %i.oz = load <4 x float>, ptr %i.ox, align 16, !noalias !1750
  %i.pa = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.oy, <4 x float> %i.oz) ; 3 uses
  %i.pb = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pc = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pd = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pe = fmul <4 x float> %.sink678, %i.pd
  %i.pf = fadd <4 x float> %.sink676, %i.pe       ; 2 uses
  %i.pg = fmul <4 x float> %.sink674, %i.pc       ; 2 uses
  %i.ph = fadd <4 x float> %i.pg, %i.pf           ; 2 uses
  %i.pi = fmul <4 x float> %.sink670, %i.pb       ; 4 uses
  %i.pj = fadd <4 x float> %i.pi, %i.ph           ; 2 uses
  %i.pk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.pj)
  %i.pl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.pj)
  %i.pm = shufflevector <4 x float> %i.pa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pn = fmul <4 x float> %.sink678, %i.pm
  %i.po = fadd <4 x float> %.sink676, %i.pn       ; 2 uses
  %i.pp = fadd <4 x float> %i.pg, %i.po           ; 2 uses
  %i.pq = fadd <4 x float> %i.pi, %i.pp           ; 2 uses
  %i.pr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pk, <4 x float> %i.pq)
  %i.ps = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pl, <4 x float> %i.pq)
  %i.pt = shufflevector <4 x float> %i.pa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pu = fmul <4 x float> %.sink674, %i.pt       ; 2 uses
  %i.pv = fadd <4 x float> %i.pf, %i.pu           ; 2 uses
  %i.pw = fadd <4 x float> %i.pi, %i.pv           ; 2 uses
  %i.px = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pr, <4 x float> %i.pw)
  %i.py = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ps, <4 x float> %i.pw)
  %i.pz = fadd <4 x float> %i.pu, %i.po           ; 2 uses
  %i.qa = fadd <4 x float> %i.pi, %i.pz           ; 2 uses
  %i.qb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.px, <4 x float> %i.qa)
  %i.qc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.py, <4 x float> %i.qa)
  %i.qd = shufflevector <4 x float> %i.pa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qe = fmul <4 x float> %.sink670, %i.qd       ; 4 uses
  %i.qf = fadd <4 x float> %i.ph, %i.qe           ; 2 uses
  %i.qg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qb, <4 x float> %i.qf)
  %i.qh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qc, <4 x float> %i.qf)
  %i.qi = fadd <4 x float> %i.qe, %i.pp           ; 2 uses
  %i.qj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qg, <4 x float> %i.qi)
  %i.qk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qh, <4 x float> %i.qi)
  %i.ql = fadd <4 x float> %i.qe, %i.pv           ; 2 uses
  %i.qm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qj, <4 x float> %i.ql)
  %i.qn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qk, <4 x float> %i.ql)
  %i.qo = fadd <4 x float> %i.qe, %i.pz           ; 2 uses
  %i.qp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qm, <4 x float> %i.qo)
  %i.qq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qn, <4 x float> %i.qo)
  %i.qr = fadd <4 x float> %i.qq, %i.qp
  br label %_ZNK6embree13InstanceArray6boundsEm.exit

_ZNK6embree13InstanceArray6boundsEm.exit:         ; preds = %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit
  %i.qs = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.qr, %_ZNK6embree13InstanceArray6boundsEm.exit.sink.split ]
  %i.qt = load <4 x float>, ptr %i.j, align 16, !noalias !1753
  %i.qu = fsub <4 x float> %i.qs, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.qw = load <4 x float>, ptr %i.qv, align 16, !noalias !1754
  %i.qx = fmul <4 x float> %i.qu, %i.qw
  %i.qy = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.qx) ; 3 uses
  %i.qz = extractelement <4 x i32> %i.qy, i64 0   ; 2 uses
  %.sroa.046.4.vec.extract = extractelement <4 x i32> %i.qy, i64 1 ; 2 uses
  %.sroa.046.8.vec.extract = extractelement <4 x i32> %i.qy, i64 2 ; 2 uses
  %i.ra = shl i32 %i.qz, 16
  %i.rb = or i32 %i.ra, %i.qz
  %i.rc = and i32 %i.rb, 50331903
  %i.rd = mul i32 %i.rc, 257
  %i.re = and i32 %i.rd, 50393103
  %i.rf = mul nuw nsw i32 %i.re, 17
  %i.rg = and i32 %i.rf, 51130563
  %i.rh = mul nuw nsw i32 %i.rg, 5
  %i.ri = and i32 %i.rh, 153391689
  %i.rj = shl i32 %.sroa.046.4.vec.extract, 16
  %i.rk = or i32 %i.rj, %.sroa.046.4.vec.extract
  %i.rl = and i32 %i.rk, 50331903
  %i.rm = mul i32 %i.rl, 257
  %i.rn = and i32 %i.rm, 50393103
  %i.ro = mul nuw nsw i32 %i.rn, 17
  %i.rp = and i32 %i.ro, 51130563
  %i.rq = shl i32 %.sroa.046.8.vec.extract, 16
  %i.rr = or i32 %i.rq, %.sroa.046.8.vec.extract
  %i.rs = and i32 %i.rr, 50331903
  %i.rt = mul i32 %i.rs, 257
  %i.ru = and i32 %i.rt, 50393103
  %i.rv = mul nuw nsw i32 %i.ru, 17
  %i.rw = and i32 %i.rv, 51130563
  %i.rx = mul nuw nsw i32 %i.rp, 10
  %i.ry = and i32 %i.rx, 306783378
  %i.rz = or disjoint i32 %i.ri, %i.ry
  %i.sa = mul nuw nsw i32 %i.rw, 20
  %i.sb = and i32 %i.sa, 613566756
  %i.sc = or disjoint i32 %i.rz, %i.sb
  store i32 %i.sc, ptr %i.m, align 8
  %i.sd = add nuw nsw i64 %.0608, 1               ; 2 uses
  %i.se = load i32, ptr %i.b, align 4
  %i.sf = zext i32 %i.se to i64
  %i.sg = icmp samesign ult i64 %i.sd, %i.sf
  br i1 %i.sg, label %bb.b, label %._crit_edge, !llvm.loop !1748
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse216BVHBuilderMorton8BuilderTINS_13BVHNodeRecordINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENS2_13SetBVHNBoundsILi4EEENS2_16CreateMortonLeafILi4ENS_22InstanceArrayPrimitiveEEENS2_19CalculateMeshBoundsINS_13InstanceArrayEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseEmRKNS_5rangeIjEESA_bEUlRKNSS_ImEEE_EEvT_S10_S10_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.228, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %4, ptr %i.e, align 8
  %i.f = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 262272 ; 5 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8
  %i.j = icmp ugt i64 %i.i, 4095
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #11 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.t, %bb.i ], [ %i.k, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #11
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 786624 ; 2 uses
  %i.n = load i64, ptr %i.m, align 64             ; 4 uses
  %i.o = sub i64 0, %i.n
  %i.p = and i64 %i.o, 63                         ; 2 uses
  %i.q = add i64 %i.n, 72
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ugt i64 %i.r, 524288
  br i1 %i.s, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #11 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

end_hunk_1
