Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexTriangleFilter?download=true
inline.NumInlined: 111
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii:bb.a
  store <2 x float> %i.da, ptr %i.ct, align 4, !tbaa !33
  store float %i.cv, ptr %i.cj, align 4, !tbaa !44
  store float %i.cy, ptr %i.cm, align 4, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !34 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !36
  %i.df = fadd float %i.dc, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !35 ; 2 uses
  %i.di = fsub float %i.df, %i.dh
  %i.dj = fneg float %i.dh
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dc, float 2.000000e+00, float %i.dj)
  store float %i.di, ptr %i.db, align 4, !tbaa !34
  store float %i.dk, ptr %i.dg, align 4, !tbaa !35
  store float %i.dc, ptr %i.dd, align 4, !tbaa !36
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.do = load float, ptr %i.dn, align 4, !tbaa !44
  %i.dp = fsub float 1.000000e+00, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !46
  %i.ds = fneg float %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !45
  %i.dx = fneg float %i.dw
  store float %i.c, ptr %i.a, align 4, !tbaa !32
  %i.dy = insertelement <2 x float> poison, float %i.e, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dm, i64 1
  %i.ea = fsub <2 x float> splat (float 1.000000e+00), %i.dz
  store float %i.ds, ptr %i.dv, align 4, !tbaa !45
  %i.eb = load <2 x float>, ptr %i.dt, align 4, !tbaa !33
  %i.ec = fsub <2 x float> splat (float 1.000000e+00), %i.eb
  store <2 x float> %i.ea, ptr %i.d, align 4, !tbaa !33
  store float %i.dp, ptr %i.du, align 4, !tbaa !43
  store <2 x float> %i.ec, ptr %i.dl, align 4, !tbaa !33
  store float %i.dx, ptr %i.dq, align 4, !tbaa !46
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.ed = fneg float %i.f
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !46
  %i.eg = fneg float %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !45
  %i.el = fneg float %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ed, ptr %i.a, align 4, !tbaa !32
  store float %i.c, ptr %i.d, align 4, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !36 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.er = load float, ptr %i.eq, align 4, !tbaa !35 ; 2 uses
  %i.es = fneg float %i.er
  %i.et = tail call float @llvm.fmuladd.f32(float %i.ep, float 2.000000e+00, float %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !34
  %i.ew = fadd float %i.ep, %i.ev
  %i.ex = fsub float %i.ew, %i.er
  %i.ey = load <2 x float>, ptr %i.em, align 4, !tbaa !33
  %i.ez = fsub <2 x float> splat (float 1.000000e+00), %i.ey
  store float %i.eg, ptr %i.em, align 4, !tbaa !40
  %i.fa = load <2 x float>, ptr %i.eh, align 4, !tbaa !33
  %i.fb = fsub <2 x float> splat (float 1.000000e+00), %i.fa
  store float %i.el, ptr %i.eh, align 4, !tbaa !41
  store <2 x float> %i.fb, ptr %i.en, align 4, !tbaa !33
  %i.fc = insertelement <4 x float> poison, float %i.ep, i64 2
  %i.fd = insertelement <4 x float> %i.fc, float %i.et, i64 3
  %i.fe = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ff, ptr %i.ei, align 4, !tbaa !33
  store float %i.ex, ptr %i.eo, align 4, !tbaa !36
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.fg = fsub float 1.000000e+00, %i.f
  %i.fh = fneg float %i.b
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !46
  %i.fk = fsub float 1.000000e+00, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !41
  %i.fn = fneg float %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.fp = load <2 x float>, ptr %i.fo, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !45
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !40
  %i.fu = fneg float %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !43
  %i.fx = fsub float 1.000000e+00, %i.fw
  store float %i.fg, ptr %i.a, align 4, !tbaa !32
  store float %i.fh, ptr %i.d, align 4, !tbaa !31
  store float %i.fk, ptr %i.fs, align 4, !tbaa !40
  store float %i.fn, ptr %i.fv, align 4, !tbaa !43
  %i.fy = insertelement <2 x float> %i.fp, float %i.fr, i64 1
  %i.fz = fsub <2 x float> splat (float 1.000000e+00), %i.fy
  store <2 x float> %i.fz, ptr %i.fq, align 4, !tbaa !33
  store float %i.fu, ptr %i.fo, align 4, !tbaa !44
  store float %i.fx, ptr %i.fi, align 4, !tbaa !46
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !36 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !35 ; 2 uses
  %i.ge = fneg float %i.gd
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gb, float 2.000000e+00, float %i.ge)
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !34
  %i.gi = fadd float %i.gb, %i.gh
  %i.gj = fsub float %i.gi, %i.gd
  store float %i.gb, ptr %i.gg, align 4, !tbaa !34
  store float %i.gf, ptr %i.gc, align 4, !tbaa !35
  store float %i.gj, ptr %i.ga, align 4, !tbaa !36
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !41
  %i.go = fneg float %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !40
  %i.gt = fneg float %i.gs
  %i.gu = load <4 x float>, ptr %i.gk, align 4
  %i.gv = insertelement <4 x float> poison, float %i.e, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.f, i64 1
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gy = fsub <4 x float> splat (float 1.000000e+00), %i.gx
  %i.gz = load <2 x float>, ptr %i.gp, align 4, !tbaa !33
  %i.ha = fsub <2 x float> splat (float 1.000000e+00), %i.gz
  store <4 x float> %i.gy, ptr %i.a, align 4, !tbaa !33
  store float %i.go, ptr %i.gq, align 4, !tbaa !45
  store <2 x float> %i.ha, ptr %i.gm, align 4, !tbaa !33
  store float %i.gt, ptr %i.gl, align 4, !tbaa !46
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !34 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !36
  %i.hf = fadd float %i.hc, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !35 ; 2 uses
  %i.hi = fsub float %i.hf, %i.hh
  %i.hj = fneg float %i.hh
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hc, float 2.000000e+00, float %i.hj)
  store float %i.hi, ptr %i.hb, align 4, !tbaa !34
  store float %i.hk, ptr %i.hg, align 4, !tbaa !35
  store float %i.hc, ptr %i.hd, align 4, !tbaa !36
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.hl = fneg float %i.b
  %i.hm = fsub float 1.000000e+00, %i.e
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !41
  %i.hp = fneg float %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !40
  %i.ht = fneg float %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store float %i.hl, ptr %i.a, align 4, !tbaa !32
  store float %i.hm, ptr %i.d, align 4, !tbaa !31
  store float %i.hp, ptr %i.hr, align 4, !tbaa !40
  %i.hv = load <2 x float>, ptr %i.hq, align 4, !tbaa !33
  %i.hw = fsub <2 x float> splat (float 1.000000e+00), %i.hv
  store float %i.ht, ptr %i.hn, align 4, !tbaa !41
  %i.hx = load <2 x float>, ptr %i.hu, align 4, !tbaa !33
  %i.hy = fsub <2 x float> splat (float 1.000000e+00), %i.hx
  store <2 x float> %i.hw, ptr %i.hu, align 4, !tbaa !33
  store <2 x float> %i.hy, ptr %i.hq, align 4, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleKernel12getIteratorsERNS0_22PtexTriangleKernelIterES3_(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(60) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !64
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = sitofp i32 %i.c to float                 ; 4 uses
  %i.e = fmul nnan float %i.d, %i.d               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %3 = load float, ptr %i.f, align 4, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load float, ptr %i.i, align 4, !tbaa !35   ; 3 uses
  %5 = fmul float %4, 2.500000e-01
  %6 = fneg float %4
  %7 = fmul float %5, %6
  %8 = tail call float @llvm.fmuladd.f32(float %3, float %i.h, float %7)
  %9 = fmul float %i.e, %8
  store i32 %i.c, ptr %1, align 4, !tbaa !49
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %11 = insertelement <2 x float> %10, float %i.e, i64 1
  %12 = fdiv <2 x float> splat (float 1.000000e+00), %11 ; 2 uses
  %i.j = extractelement <2 x float> %12, i64 0    ; 3 uses
  %i.k = fmul float %3, %i.j                      ; 2 uses
  %13 = fmul float %4, %i.j                       ; 2 uses
  %i.l = fmul float %i.h, %i.j                    ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %15 = extractelement <2 x float> %12, i64 1     ; 2 uses
  store float %15, ptr %14, align 4, !tbaa !65
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = load <2 x float>, ptr %16, align 4, !tbaa !33 ; 2 uses
  %19 = insertelement <2 x float> poison, float %i.d, i64 0
  %i.m = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.m, <2 x float> splat (float f0xBEAAAAAB))
  store <2 x float> %20, ptr %17, align 4, !tbaa !33
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load <4 x float>, ptr %21, align 4, !tbaa !33 ; 4 uses
  %i.o = insertelement <4 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.p, <4 x float> splat (float f0xBEAAAAAB))
  %i.r = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.q)
  %i.s = fptosi <4 x float> %i.r to <4 x i32>     ; 5 uses
  store <4 x i32> %i.s, ptr %22, align 4, !tbaa !24
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.t = load <2 x float>, ptr %23, align 4, !tbaa !33 ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.m, <2 x float> splat (float f0xBEAAAAAB))
  %i.v = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.u)
  %i.w = fptosi <2 x float> %i.v to <2 x i32>     ; 3 uses
  store <2 x i32> %i.w, ptr %24, align 4, !tbaa !24
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.k, ptr %25, align 4, !tbaa !66
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %13, ptr %26, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.l, ptr %i.x, align 4, !tbaa !68
  %shift = shufflevector <4 x i32> %i.s, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.y = icmp sgt <4 x i32> %shift, %i.s
  %i.z = extractelement <4 x i1> %i.y, i64 0
  %i.aa = extractelement <4 x i32> %i.s, i64 1
  %i.ab = extractelement <2 x i32> %i.w, i64 0
  %i.ac = icmp sgt i32 %i.ab, %i.aa
  %or.cond = select i1 %i.z, i1 %i.ac, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !50
  store i32 %i.c, ptr %2, align 4, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 52
  store float %15, ptr %i.af, align 4, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = fsub <2 x float> splat (float 1.000000e+00), %18
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.m, <2 x float> splat (float f0xBEAAAAAB))
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.aj, ptr %i.ag, align 4, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.al = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.am = shufflevector <4 x float> %i.al, <4 x float> %i.n, <4 x i32> <i32 0, i32 7, i32 poison, i32 5>
  %i.an = insertelement <4 x float> %i.am, float 0.000000e+00, i64 2
  %i.ao = extractelement <4 x float> %i.n, i64 0
  %i.ap = fsub float 1.000000e+00, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ar = shufflevector <4 x float> %i.al, <4 x float> %i.n, <2 x i32> <i32 1, i32 6>
  %i.as = fneg <2 x float> %i.ar                  ; 2 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.av = fsub <4 x float> %i.au, %i.an
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.p, <4 x float> splat (float f0xBEAAAAAB))
  %i.ax = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.aw)
  %i.ay = fptosi <4 x float> %i.ax to <4 x i32>   ; 3 uses
  store <4 x i32> %i.ay, ptr %i.ak, align 4, !tbaa !24
  %i.az = insertelement <2 x float> %i.as, float %i.ap, i64 0
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.m, <2 x float> splat (float f0xBEAAAAAB))
  %i.bb = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ba)
  %i.bc = fptosi <2 x float> %i.bb to <2 x i32>   ; 2 uses
  store <2 x i32> %i.bc, ptr %i.aq, align 4, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.l, ptr %i.bd, align 4, !tbaa !66
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %13, ptr %i.be, align 4, !tbaa !67
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.k, ptr %27, align 4, !tbaa !68
  %i.bf = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> %i.ay, <4 x i32> <i32 1, i32 0, i32 7, i32 poison>
  %i.bh = shufflevector <2 x i32> %i.w, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x i32> %i.bg, <4 x i32> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bj = shufflevector <4 x i32> %i.ay, <4 x i32> %i.s, <4 x i32> <i32 2, i32 1, i32 0, i32 6>
  %i.bk = icmp sgt <4 x i32> %i.bi, %i.bj         ; 4 uses
  %i.bl = extractelement <4 x i1> %i.bk, i64 3
  %narrow = select i1 %or.cond, i1 %i.bl, i1 false
  %i.bm = zext i1 %narrow to i8
  store i8 %i.bm, ptr %i.ad, align 4, !tbaa !48
  %i.bn = extractelement <4 x i1> %i.bk, i64 1
  %i.bo = extractelement <4 x i1> %i.bk, i64 2
  %or.cond75 = select i1 %i.bo, i1 %i.bn, i1 false
  %i.bp = extractelement <4 x i1> %i.bk, i64 0
  %narrow76 = select i1 %or.cond75, i1 %i.bp, i1 false
  %i.bq = zext i1 %narrow76 to i8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float 0.000000e+00, ptr %i.bs, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter9applyIterERNS0_22PtexTriangleKernelIterEPNS0_12PtexFaceDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Ptex::v2_4::PtexTriangleKernelIter", align 4 ; 16 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %2, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  tail call void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef %i.f, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load float, ptr %i.s, align 4, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !37
  %i.w = fadd float %i.t, %i.v
  store float %i.w, ptr %i.u, align 8, !tbaa !37
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %2, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.aa, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %2, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i16 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.ae, 8
  %.sroa.5.0.extract.trunc = zext nneg i16 %.sroa.5.0.extract.shift to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef nonnull align 4 dereferenceable(60) %1, i64 60, i1 false), !tbaa.struct !73
  %i.af = and i16 %i.ae, 255
  %i.ag = zext nneg i16 %i.af to i32              ; 2 uses
  %i.ah = shl nuw i32 1, %i.ag                    ; 6 uses
  %i.ai = shl nuw i32 1, %.sroa.5.0.extract.trunc ; 3 uses
  store i32 %i.ah, ptr %3, align 4, !tbaa !49
  %i.aj = load i32, ptr %1, align 4, !tbaa !49    ; 2 uses
  %i.ak = sdiv i32 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !74
  %i.an = sdiv i32 %i.am, %i.ai                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = sdiv i32 %i.aq, %i.ai                   ; 2 uses
  %.not79 = icmp sgt i32 %i.an, %i.ar
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.e

._crit_edge83:                                    ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph82, %._crit_edge
  %.05980 = phi i32 [ %i.an, %.lr.ph82 ], [ %i.ce, %._crit_edge ] ; 4 uses
  %i.bn = shl i32 %.05980, %.sroa.5.0.extract.trunc ; 4 uses
  %i.bo = load float, ptr %i.as, align 4, !tbaa !76
  %i.bp = sitofp i32 %i.bn to float
  %i.bq = fsub float %i.bo, %i.bp
  store float %i.bq, ptr %i.at, align 4, !tbaa !76
  %i.br = load i32, ptr %i.al, align 4, !tbaa !74
  %i.bs = sub nsw i32 %i.br, %i.bn
  %i.bt = call noundef i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  store i32 %i.bt, ptr %i.au, align 4, !tbaa !74
  %i.bu = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.bv = sub nsw i32 %i.bu, %i.bn
  %i.bw = call noundef i32 @llvm.smin.i32(i32 %i.bv, i32 %i.ai)
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !75
  %i.bx = load i32, ptr %i.aw, align 4, !tbaa !77
  %i.by = sdiv i32 %i.bx, %i.ah                   ; 2 uses
  %i.bz = load i32, ptr %i.ax, align 4, !tbaa !78
  %i.ca = add nsw i32 %i.bz, -1
  %i.cb = sdiv i32 %i.ca, %i.ah                   ; 2 uses
  %.not6077 = icmp sgt i32 %i.by, %i.cb
  br i1 %.not6077, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.cc = add i32 %i.ah, %i.bn
  %i.cd = mul nsw i32 %.05980, %i.ak
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64, %bb.e
  %i.ce = add i32 %.05980, 1
  %exitcond86.not = icmp eq i32 %.05980, %i.ar
  br i1 %exitcond86.not, label %._crit_edge83, label %bb.e, !llvm.loop !69

bb.f:                                             ; preds = %.lr.ph, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64
  %.078 = phi i32 [ %i.by, %.lr.ph ], [ %i.es, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64 ] ; 4 uses
  %i.cf = shl i32 %.078, %i.ag                    ; 4 uses
  %i.cg = add i32 %i.cc, %i.cf
  %i.ch = sub i32 %i.aj, %i.cg                    ; 2 uses
  %i.ci = load float, ptr %i.ay, align 4, !tbaa !79
  %i.cj = sitofp i32 %i.cf to float
  %i.ck = fsub float %i.ci, %i.cj
  store float %i.ck, ptr %i.az, align 4, !tbaa !79
  %i.cl = load i32, ptr %i.aw, align 4, !tbaa !77
  %i.cm = sub nsw i32 %i.cl, %i.cf
  %i.cn = call noundef i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  store i32 %i.cn, ptr %i.ba, align 4, !tbaa !77
  %i.co = load i32, ptr %i.ax, align 4, !tbaa !78
  %i.cp = sub nsw i32 %i.co, %i.cf
  %i.cq = call noundef i32 @llvm.smin.i32(i32 %i.cp, i32 %i.ah)
  store i32 %i.cq, ptr %i.bb, align 4, !tbaa !78
  %i.cr = load i32, ptr %i.bc, align 4, !tbaa !80
  %i.cs = sub nsw i32 %i.cr, %i.ch
  store i32 %i.cs, ptr %i.bd, align 4, !tbaa !80
  %i.ct = load i32, ptr %i.be, align 4, !tbaa !81
  %i.cu = sub nsw i32 %i.ct, %i.ch
  store i32 %i.cu, ptr %i.bf, align 4, !tbaa !81
  %i.cv = add nsw i32 %.078, %i.cd
  %i.cw = load ptr, ptr %2, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.cv) ; 10 uses
  %.not61 = icmp eq ptr %i.cz, null
  br i1 %.not61, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !50
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.bh, align 8, !tbaa !38 ; 2 uses
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  br i1 %i.dd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.di = invoke noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dn = load i32, ptr %i.bk, align 8, !tbaa !26
  invoke void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef %i.de, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dn)
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.m, %bb.n
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.do

bb.m:                                             ; preds = %bb.h
  %i.du = invoke noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.dv = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  %i.dy = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dz = load i32, ptr %i.bk, align 8, !tbaa !26 ; 4 uses
  %i.ea = load i32, ptr %i.bl, align 4, !tbaa !22 ; 2 uses
  %.not.i62 = icmp eq i32 %i.dz, %i.ea
  %i.eb = select i1 %.not.i62, i32 0, i32 20
  %i.ec = icmp ult i32 %i.dz, 5
  %i.ed = shl nuw nsw i32 %i.dz, 2
  %i.ee = select i1 %i.ec, i32 %i.ed, i32 0
  %i.ef = add i32 %i.ee, %i.dy
  %i.eg = add i32 %i.ef, %i.eb
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr @_ZN4Ptex4v2_422PtexTriangleKernelIter14applyFunctionsE, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !82
  invoke void %i.ej(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef %i.de, ptr noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.ea)
          to label %bb.o unwind label %bb.k, !inline_history !70

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ek = load float, ptr %i.bg, align 4, !tbaa !50
  %i.el = load float, ptr %i.bm, align 8, !tbaa !37
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.bm, align 8, !tbaa !37
  %i.en = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64: ; preds = %bb.f, %bb.o
  %i.es = add i32 %.078, 1
  %exitcond.not = icmp eq i32 %.078, %i.cb
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !71

bb.q:                                             ; preds = %bb.c
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !38
  %i.ev = load ptr, ptr %2, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef ptr %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !25
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !26 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !22 ; 2 uses
  %.not.i65 = icmp eq i32 %i.fg, %i.fi
  %i.fj = select i1 %.not.i65, i32 0, i32 20
  %i.fk = icmp ult i32 %i.fg, 5
  %i.fl = shl nuw nsw i32 %i.fg, 2
  %i.fm = select i1 %i.fk, i32 %i.fl, i32 0
  %i.fn = add i32 %i.fm, %i.fe
  %i.fo = add i32 %i.fn, %i.fj
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr @_ZN4Ptex4v2_422PtexTriangleKernelIter14applyFunctionsE, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !82
  tail call void %i.fr(ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef %i.eu, ptr noundef %i.fc, i32 noundef %i.fg, i32 noundef %i.fi), !inline_history !70
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !37
  %i.fw = fadd float %i.ft, %i.fv
  store float %i.fw, ptr %i.fu, align 8, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge83, %bb.q, %bb.b
  ret void
}

declare void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleFilter7releaseEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(68) %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN4Ptex4v2_410PtexFilterE"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4Ptex4v2_411PtexTextureE", !10, i64 0}
!12 = !{!"_ZTSN4Ptex4v2_410PtexFilter10FilterTypeE", !5, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!"_ZTSN4Ptex4v2_410PtexFilter7OptionsE", !6, i64 0, !12, i64 4, !13, i64 8, !14, i64 12, !13, i64 16}
!16 = !{!"p1 float", !10, i64 0}
!17 = !{!"_ZTSN4Ptex4v2_48DataTypeE", !5, i64 0}
!18 = !{!"_ZTSN4Ptex4v2_418PtexTriangleFilterE", !9, i64 0, !11, i64 8, !15, i64 16, !16, i64 40, !14, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !17, i64 64}
!19 = !{!18, !11, i64 8}
!20 = !{!"vtable pointer", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!18, !6, i64 60}
!23 = !{!18, !17, i64 64}
!24 = !{!6, !6, i64 0}
!25 = !{!18, !6, i64 52}
!26 = !{!18, !6, i64 56}
!27 = !{!"_ZTSN4Ptex4v2_43ResE", !5, i64 0, !5, i64 1}
!28 = !{!"_ZTSN4Ptex4v2_48FaceInfoE", !27, i64 0, !5, i64 2, !5, i64 3, !5, i64 4}
!29 = !{!5, !5, i64 0}
!30 = !{!"_ZTSN4Ptex4v2_418PtexTriangleKernelE", !27, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44}
!31 = !{!30, !14, i64 8}
!32 = !{!30, !14, i64 4}
!33 = !{!14, !14, i64 0}
!34 = !{!30, !14, i64 36}
!35 = !{!30, !14, i64 40}
!36 = !{!30, !14, i64 44}
!37 = !{!18, !14, i64 48}
!38 = !{!18, !16, i64 40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!30, !14, i64 12}
!41 = !{!30, !14, i64 24}
!42 = !{!28, !5, i64 2}
!43 = !{!30, !14, i64 16}
!44 = !{!30, !14, i64 28}
!45 = !{!30, !14, i64 20}
!46 = !{!30, !14, i64 32}
!47 = !{!"_ZTSN4Ptex4v2_422PtexTriangleKernelIterE", !6, i64 0, !14, i64 4, !14, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !13, i64 48, !14, i64 52, !14, i64 56}
!48 = !{!47, !13, i64 48}
!49 = !{!47, !6, i64 0}
!50 = !{!47, !14, i64 56}
!51 = distinct !{!51, !39, !55, !56}
!52 = distinct !{!52, !57}
!53 = distinct !{!53, !39, !55}
!54 = !{!28, !5, i64 3}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{i64 0, i64 1, !29, i64 1, i64 1, !29, i64 4, i64 4, !33, i64 8, i64 4, !33, i64 12, i64 4, !33, i64 16, i64 4, !33, i64 20, i64 4, !33, i64 24, i64 4, !33, i64 28, i64 4, !33, i64 32, i64 4, !33, i64 36, i64 4, !33, i64 40, i64 4, !33, i64 44, i64 4, !33}
!59 = !{ptr @_ZN4Ptex4v2_418PtexTriangleFilter15applyAcrossEdgeERNS0_18PtexTriangleKernelERKNS0_8FaceInfoEi}
!60 = !{!30, !5, i64 0}
!61 = !{!30, !5, i64 1}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!27, !5, i64 0}
!65 = !{!47, !14, i64 52}
!66 = !{!47, !14, i64 36}
!67 = !{!47, !14, i64 40}
!68 = !{!47, !14, i64 44}
!69 = distinct !{!69, !39}
!70 = distinct !{null}
!71 = distinct !{!71, !39}
!72 = !{!13, !13, i64 0}
!73 = !{i64 0, i64 4, !24, i64 4, i64 4, !33, i64 8, i64 4, !33, i64 12, i64 4, !24, i64 16, i64 4, !24, i64 20, i64 4, !24, i64 24, i64 4, !24, i64 28, i64 4, !24, i64 32, i64 4, !24, i64 36, i64 4, !33, i64 40, i64 4, !33, i64 44, i64 4, !33, i64 48, i64 1, !72, i64 52, i64 4, !33, i64 56, i64 4, !33}
!74 = !{!47, !6, i64 16}
!75 = !{!47, !6, i64 28}
!76 = !{!47, !14, i64 8}
!77 = !{!47, !6, i64 12}
!78 = !{!47, !6, i64 24}
!79 = !{!47, !14, i64 4}
!80 = !{!47, !6, i64 20}
!81 = !{!47, !6, i64 32}
!82 = !{!10, !10, i64 0}
end_hunk_0
