inline.NumInlined: 210
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btPolarDecomposition = type { float, i32 }

@_ZZ14polarDecomposeRK11btMatrix3x3RS_S2_E5polar = internal global %class.btPolarDecomposition zeroinitializer, align 4
@_ZGVZ14polarDecomposeRK11btMatrix3x3RS_S2_E5polar = internal global i64 0, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN20btPolarDecompositionC1Efj = dso_local unnamed_addr alias void (ptr, float, i32), ptr @_ZN20btPolarDecompositionC2Efj

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN20btPolarDecompositionC2Efj(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0, float noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store float %1, ptr %0, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef i32 @_ZNK20btPolarDecomposition9decomposeERK11btMatrix3x3RS0_S3_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(48) initializes((0, 48)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(48) initializes((0, 48)) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 16, i1 false), !tbaa.struct !13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.g = load float, ptr %i.c, align 4, !tbaa !15, !noalias !16 ; 3 uses
  %i.h = load float, ptr %i.a, align 4, !tbaa !15, !noalias !16 ; 3 uses
  %i.i = fneg float %i.g                          ; 2 uses
  %i.j = load float, ptr %1, align 4, !tbaa !15, !noalias !16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = load <2 x float>, ptr %i.e, align 4, !tbaa !15, !noalias !16 ; 5 uses
  %i.m = load <2 x float>, ptr %i.f, align 4, !tbaa !15, !noalias !16 ; 4 uses
  %i.n = fneg <2 x float> %i.m                    ; 3 uses
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.h, i64 1 ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.g, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.s, <2 x float> %i.q) ; 3 uses
  %i.u = extractelement <2 x float> %i.l, i64 0
  %i.v = extractelement <2 x float> %i.t, i64 0
  %i.w = load <2 x float>, ptr %i.k, align 4, !tbaa !15, !noalias !16 ; 7 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.w, %shift
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = tail call float @llvm.fmuladd.f32(float %i.j, float %i.v, float %i.y)
  %i.aa = extractelement <2 x float> %i.w, i64 1
  %i.ab = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %i.i, i64 1
  %i.ad = fmul <2 x float> %i.w, %i.ac
  %i.ae = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.af = insertelement <2 x float> %i.ae, float %i.j, i64 1 ; 2 uses
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.m, <2 x float> %i.ad)
  %i.ah = fneg <2 x float> %i.l
  %i.ai = fmul <2 x float> %i.af, %i.ah
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.p, <2 x float> %i.ai)
  %i.ak = fneg float %i.h
  %i.al = fmul float %i.x, %i.ak
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.u, float %i.al)
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.9243.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %.sroa.10244.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.11245.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.11245.16..sroa_idx, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ap = shufflevector <2 x float> %i.l, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.aq = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.j, i64 1
  %i.as = fmul <2 x float> %i.ap, %i.ar
  %i.at = insertelement <2 x float> poison, float %i.h, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.g, i64 1
  %i.av = shufflevector <2 x float> %i.m, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.as) ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ax, float %i.z)
  %i.az = fdiv float 1.000000e+00, %i.ay          ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bc = fmul <2 x float> %i.t, %i.bb            ; 4 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.be = fmul <2 x float> %i.ag, %i.bb           ; 3 uses
  %i.bf = fmul <2 x float> %i.aj, %i.bb           ; 3 uses
  %i.bg = fmul <2 x float> %i.aw, %i.bb           ; 3 uses
  %i.bh = fmul float %i.am, %i.az                 ; 2 uses
  store float %i.bd, ptr %3, align 4
  %i.bi = extractelement <2 x float> %i.be, i64 0
  store float %i.bi, ptr %.sroa.4239.0..sroa_idx, align 4
  %i.bj = extractelement <2 x float> %i.bf, i64 0
  store float %i.bj, ptr %.sroa.5240.0..sroa_idx, align 4
  %4 = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %5 = insertelement <4 x float> %4, float 0.000000e+00, i64 0
  %6 = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> %5, <4 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %7, ptr %.sroa.6241.0..sroa_idx, align 4
  store <2 x float> %i.bg, ptr %i.ao, align 4
  %.sroa.15248.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store float %i.bh, ptr %.sroa.15248.32..sroa_idx, align 4
  %.sroa.16249.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  store float 0.000000e+00, ptr %.sroa.16249.32..sroa_idx, align 4, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %.thread253, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %8 = extractelement <2 x float> %i.bc, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bt = extractelement <2 x float> %i.bg, i64 0
  %i.bu = extractelement <2 x float> %i.bg, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.bv = phi float [ %i.bh, %.lr.ph ], [ %i.jf, %bb.d ] ; 2 uses
  %i.bw = phi float [ %i.bu, %.lr.ph ], [ %i.je, %bb.d ] ; 2 uses
  %i.bx = phi float [ %i.bt, %.lr.ph ], [ %i.jd, %bb.d ] ; 2 uses
  %i.by = phi float [ %8, %.lr.ph ], [ %i.hs, %bb.d ]
  %i.bz = phi float [ %i.bd, %.lr.ph ], [ %i.ht, %bb.d ]
  %.042271 = phi i32 [ 0, %.lr.ph ], [ %i.ja, %bb.d ] ; 2 uses
  %i.ca = phi <2 x float> [ %i.bc, %.lr.ph ], [ %i.hr, %bb.d ]
  %i.cb = phi <2 x float> [ %i.bf, %.lr.ph ], [ %i.jg, %bb.d ] ; 3 uses
  %i.cc = phi <2 x float> [ %i.be, %.lr.ph ], [ %i.jh, %bb.d ] ; 3 uses
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.bz)
  %i.ce = extractelement <2 x float> %i.cc, i64 1
  %i.cf = tail call noundef float @llvm.fabs.f32(float %i.ce)
  %i.cg = tail call noundef float @llvm.fabs.f32(float %i.bv)
  %i.ch = insertelement <2 x float> %i.cc, float %i.by, i64 1 ; 2 uses
  %i.ci = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ch)
  %i.cj = insertelement <2 x float> %i.cb, float %i.bx, i64 1
  %i.ck = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cj) ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cm = insertelement <2 x float> %i.cl, float %i.bw, i64 1
  %i.cn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cm) ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fadd <2 x float> %i.cp, %i.ci
  %i.cr = fadd <2 x float> %i.cq, %i.ck           ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ct = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ch)
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fadd <2 x float> %i.cu, %i.cv
  %i.cx = fadd <2 x float> %i.cw, %i.cn           ; 2 uses
  %i.cy = fadd <2 x float> %i.ck, %i.cn
  %i.cz = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fadd <2 x float> %i.da, %i.db           ; 2 uses
  %i.dd = fcmp ogt <2 x float> %i.cr, %i.cx
  %i.de = select <2 x i1> %i.dd, <2 x float> %i.cr, <2 x float> %i.cx ; 2 uses
  %i.df = fcmp ogt <2 x float> %i.de, %i.dc
  %i.dg = select <2 x i1> %i.df, <2 x float> %i.de, <2 x float> %i.dc ; 2 uses
  %i.dh = load <2 x float>, ptr %2, align 4, !tbaa !15 ; 4 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0
  %i.dj = tail call noundef float @llvm.fabs.f32(float %i.di)
  %i.dk = load <2 x float>, ptr %i.b, align 4, !tbaa !15 ; 2 uses
  %i.dl = load float, ptr %i.bn, align 4, !tbaa !15
  %i.dm = tail call noundef float @llvm.fabs.f32(float %i.dl)
  %i.dn = load <2 x float>, ptr %i.d, align 4, !tbaa !15 ; 2 uses
  %i.do = load float, ptr %i.bp, align 4, !tbaa !15 ; 2 uses
  %i.dp = load float, ptr %i.br, align 4, !tbaa !15 ; 3 uses
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dr = shufflevector <2 x float> %i.dh, <2 x float> %i.dk, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ds = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dr)
  %i.dt = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.du = insertelement <2 x float> %i.dt, float %i.do, i64 0
  %i.dv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du) ; 2 uses
  %i.dw = load <4 x float>, ptr %i.bq, align 4, !tbaa !15 ; 2 uses
  %i.dx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dw)
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fadd <2 x float> %i.ea, %i.ds
  %i.ec = fadd <2 x float> %i.eb, %i.dv           ; 2 uses
  %i.ed = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ee = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dr)
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fadd <2 x float> %i.ef, %i.eg
  %i.ei = fadd <2 x float> %i.eh, %i.dy           ; 2 uses
  %i.ej = fadd <2 x float> %i.dv, %i.dy
  %i.ek = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.el = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fadd <2 x float> %i.el, %i.em           ; 2 uses
  %i.eo = fcmp ogt <2 x float> %i.ec, %i.ei
  %i.ep = select <2 x i1> %i.eo, <2 x float> %i.ec, <2 x float> %i.ei ; 2 uses
  %i.eq = fcmp ogt <2 x float> %i.ep, %i.en
  %i.er = select <2 x i1> %i.eq, <2 x float> %i.ep, <2 x float> %i.en ; 2 uses
  %shift277 = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop278 = fmul <2 x float> %shift277, %i.dg
  %i.es = extractelement <2 x float> %foldExtExtBinop278, i64 0 ; 2 uses
  %i.et = extractelement <2 x float> %i.er, i64 0
  %i.eu = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.ev = fmul float %i.eu, %i.et                 ; 2 uses
  %i.ew = tail call noundef float @llvm.fabs.f32(float %i.es)
  %i.ex = fcmp olt float %i.ew, f0x34000000
  %i.ey = tail call float @llvm.fabs.f32(float %i.ev)
  %i.ez = fcmp olt float %i.ey, f0x34000000
  %or.cond = select i1 %i.ex, i1 true, i1 %i.ez
  br i1 %or.cond, label %.thread253, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fa = fdiv float %i.es, %i.ev
  %i.fb = tail call noundef float @powf(float noundef %i.fa, float noundef 2.500000e-01) #8 ; 2 uses
  %i.fc = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.fe = insertelement <4 x float> %i.fd, float %i.do, i64 0 ; 2 uses
  %i.ff = insertelement <4 x float> %i.fe, float 0.000000e+00, i64 1
  %i.fg = fdiv float 1.000000e+00, %i.fb          ; 4 uses
  %i.fh = fadd float %i.fb, -2.000000e+00         ; 3 uses
  %i.fi = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.fh, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.fk = fmul <4 x float> %i.fe, %i.fj
  %i.fl = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.fn = shufflevector <4 x float> %i.dw, <4 x float> %i.fm, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.fo = fmul <4 x float> %i.fn, %i.fj
  %i.fp = fmul float %i.dp, %i.fh
  %i.fq = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fs = fmul <2 x float> %i.cc, %i.fr
  %i.ft = fmul float %i.bx, %i.fg
  %i.fu = fmul <2 x float> %i.cb, %i.fr
  %i.fv = fmul float %i.bw, %i.fg
  %i.fw = fmul float %i.bv, %i.fg
  %i.fx = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ft, i64 0
  %i.fy = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ga = fadd <4 x float> %i.fk, %i.fz
  %i.gb = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.fv, i64 0
  %i.gc = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gb, <4 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ge = fadd <4 x float> %i.fo, %i.gd
  %i.gf = fadd float %i.fp, %i.fw
  %i.gg = fmul <4 x float> %i.ga, <float 5.000000e-01, float -0.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 4 uses
  %i.gh = fmul <4 x float> %i.ge, <float 5.000000e-01, float -0.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 3 uses
  %i.gi = fmul float %i.gf, 5.000000e-01          ; 2 uses
  %i.gj = fadd <4 x float> %i.ff, %i.gg           ; 13 uses
  %i.gk = insertelement <4 x float> %i.fn, float 0.000000e+00, i64 1
  %i.gl = fadd <4 x float> %i.gk, %i.gh           ; 7 uses
  store <4 x float> %i.gj, ptr %i.bp, align 4, !tbaa !15
  store <4 x float> %i.gl, ptr %i.bq, align 4, !tbaa !15
  store float 0.000000e+00, ptr %i.bs, align 4, !tbaa !15
  %i.gm = extractelement <4 x float> %i.gl, i64 0 ; 2 uses
  %i.gn = extractelement <4 x float> %i.gj, i64 3 ; 2 uses
  %i.go = extractelement <4 x float> %i.gj, i64 2
  %i.gp = extractelement <4 x float> %i.gl, i64 2
  %i.gq = extractelement <4 x float> %i.gj, i64 0
  %i.gr = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x float> %i.dh, %i.gs
  %i.gu = fmul <2 x float> %i.ca, %i.fr
  %i.gv = fadd <2 x float> %i.gt, %i.gu
  %i.gw = fmul <2 x float> %i.gv, splat (float 5.000000e-01) ; 3 uses
  %i.gx = fadd <2 x float> %i.dh, %i.gw           ; 5 uses
  store <2 x float> %i.gx, ptr %2, align 4, !tbaa !15
  %i.gy = extractelement <2 x float> %i.gx, i64 1
  %i.gz = extractelement <2 x float> %i.gx, i64 0
  %i.ha = shufflevector <4 x float> %i.gl, <4 x float> %i.gj, <2 x i32> <i32 3, i32 6>
  %i.hb = fneg <2 x float> %i.ha                  ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 0
  %i.hd = fmul float %i.gm, %i.hc
  %i.he = fmul <2 x float> %i.gx, %i.hb
  %i.hf = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 5 uses
  %i.hg = shufflevector <4 x float> %i.gj, <4 x float> %i.hf, <4 x i32> <i32 2, i32 5, i32 4, i32 poison>
  %i.hh = insertelement <4 x float> %i.hg, float 0.000000e+00, i64 3
  %i.hi = shufflevector <4 x float> %i.gl, <4 x float> %i.gj, <4 x i32> <i32 3, i32 2, i32 7, i32 poison>
  %i.hj = insertelement <4 x float> %i.hi, float -0.000000e+00, i64 3
  %9 = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %10 = shufflevector <4 x float> %i.hf, <4 x float> %i.gj, <2 x i32> <i32 1, i32 4>
  %11 = shufflevector <4 x float> %i.gj, <4 x float> %i.hf, <2 x i32> <i32 0, i32 5>
  %12 = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %13 = fneg <4 x float> %i.gl                    ; 2 uses
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %15 = shufflevector <4 x float> %i.gj, <4 x float> %i.hf, <2 x i32> <i32 0, i32 4>
  %16 = fmul <2 x float> %15, %14
  %17 = extractelement <4 x float> %13, i64 2
  %i.hk = fmul float %i.gn, %17
  %18 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hk, i64 0
  %19 = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %18, <4 x float> %19, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hj, <4 x float> %20) ; 2 uses
  %22 = extractelement <4 x float> %21, i64 0
  %23 = fadd float %i.dp, %i.gi                   ; 4 uses
  store float %23, ptr %i.br, align 4, !tbaa !15
  %i.hl = insertelement <2 x float> %9, float %23, i64 0
  %24 = fneg <2 x float> %i.hl                    ; 2 uses
  %25 = extractelement <2 x float> %24, i64 0
  %26 = fmul float %i.go, %25
  %27 = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.gp, float %26) ; 2 uses
  %28 = fmul float %i.gy, %27
  %29 = fmul <2 x float> %10, %24
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %12, <2 x float> %29)
  %31 = shufflevector <4 x float> %i.hf, <4 x float> %i.gj, <2 x i32> <i32 0, i32 4>
  %32 = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %33 = insertelement <2 x float> %32, float %23, i64 0
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %33, <2 x float> %16)
  store float 0.000000e+00, ptr %.sroa.6241.0..sroa_idx, align 4, !tbaa !14
  store float 0.000000e+00, ptr %.sroa.11245.16..sroa_idx, align 4, !tbaa !14
  %35 = tail call noundef float @llvm.fmuladd.f32(float %i.gn, float %23, float %i.hd) ; 2 uses
  %36 = tail call float @llvm.fmuladd.f32(float %i.gz, float %35, float %28)
  %i.hm = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %22, float %36)
  %i.hn = fdiv float 1.000000e+00, %i.hm          ; 2 uses
  %i.ho = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hq = fmul <2 x float> %30, %i.hp             ; 3 uses
  %37 = insertelement <2 x float> poison, float %35, i64 0
  %38 = insertelement <2 x float> %37, float %27, i64 1
  %i.hr = fmul <2 x float> %38, %i.hp             ; 3 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 1 ; 2 uses
  %i.ht = extractelement <2 x float> %i.hr, i64 0 ; 2 uses
  %i.hu = fmul <2 x float> %34, %i.hp             ; 3 uses
  %i.hv = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hn, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hx = fmul <4 x float> %21, %i.hw             ; 4 uses
  store float %i.ht, ptr %3, align 4
  store <2 x float> %i.hq, ptr %.sroa.4239.0..sroa_idx, align 4
  store float %i.hs, ptr %i.an, align 4
  store <2 x float> %i.hu, ptr %.sroa.9243.16..sroa_idx, align 4
  store <4 x float> %i.hx, ptr %i.ao, align 4
  %i.hy = extractelement <2 x float> %i.gw, i64 0
  %i.hz = tail call noundef float @llvm.fabs.f32(float %i.hy)
  %i.ia = extractelement <4 x float> %i.gg, i64 2
  %i.ib = tail call noundef float @llvm.fabs.f32(float %i.ia)
  %i.ic = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> %i.gg, <2 x i32> <i32 1, i32 7>
  %i.ie = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.id) ; 2 uses
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ig = insertelement <2 x float> %i.if, float %i.hz, i64 0
  %i.ih = insertelement <2 x float> %i.ie, float %i.ib, i64 0
  %i.ii = fadd <2 x float> %i.ig, %i.ih
  %i.ij = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gh)
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.il = fadd <2 x float> %i.ik, %i.ii           ; 2 uses
  %i.im = extractelement <4 x float> %i.gg, i64 0
  %i.in = tail call noundef float @llvm.fabs.f32(float %i.im)
  %i.io = extractelement <4 x float> %i.gh, i64 0
  %i.ip = tail call noundef float @llvm.fabs.f32(float %i.io)
  %i.iq = fadd float %i.in, %i.ip
  %i.ir = tail call noundef float @llvm.fabs.f32(float %i.gi)
  %i.is = fadd float %i.ir, %i.iq                 ; 2 uses
  %i.it = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  %i.iu = extractelement <2 x float> %i.il, i64 1 ; 2 uses
  %i.iv = fcmp ogt float %i.it, %i.iu
  %.sroa.speculated3.i52 = select i1 %i.iv, float %i.it, float %i.iu ; 2 uses
  %i.iw = fcmp ogt float %.sroa.speculated3.i52, %i.is
  %.sroa.speculated.i53 = select i1 %i.iw, float %.sroa.speculated3.i52, float %i.is
  %i.ix = load float, ptr %0, align 4, !tbaa !9
  %i.iy = fmul float %i.eu, %i.ix
  %i.iz = fcmp ugt float %.sroa.speculated.i53, %i.iy
  br i1 %i.iz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ja = add nuw i32 %.042271, 1                 ; 2 uses
  %i.jb = load i32, ptr %i.bk, align 4, !tbaa !12
  %i.jc = icmp ult i32 %i.ja, %i.jb
  %i.jd = extractelement <4 x float> %i.hx, i64 0
  %i.je = extractelement <4 x float> %i.hx, i64 1
  %i.jf = extractelement <4 x float> %i.hx, i64 2
  %i.jg = shufflevector <2 x float> %i.hq, <2 x float> %i.hu, <2 x i32> <i32 1, i32 3>
  %i.jh = shufflevector <2 x float> %i.hq, <2 x float> %i.hu, <2 x i32> <i32 0, i32 2>
  br i1 %i.jc, label %bb.b, label %.thread253, !llvm.loop !19

bb.e:                                             ; preds = %bb.c
  %i.ji = load <2 x float>, ptr %2, align 4, !tbaa !15, !noalias !21 ; 2 uses
  %i.jj = load <2 x float>, ptr %i.b, align 4, !tbaa !15, !noalias !21 ; 2 uses
  %i.jk = load <2 x float>, ptr %i.d, align 4, !tbaa !15, !noalias !21 ; 2 uses
  %i.jl = load <2 x float>, ptr %1, align 4, !tbaa !15, !noalias !24
  %i.jm = load <2 x float>, ptr %i.a, align 4, !tbaa !15, !noalias !24
  %i.jn = load <2 x float>, ptr %i.c, align 4, !tbaa !15, !noalias !24
  %i.jo = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jp = insertelement <4 x float> %i.jo, float 1.000000e+00, i64 3
  %i.jq = shufflevector <2 x float> %i.jm, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.jr = shufflevector <2 x float> %i.jl, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.js = shufflevector <2 x float> %i.ji, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jt = insertelement <4 x float> %i.js, float -0.000000e+00, i64 3
  %i.ju = load <2 x float>, ptr %i.e, align 4, !tbaa !15, !noalias !24 ; 4 uses
  %i.jv = load <2 x float>, ptr %i.k, align 4, !tbaa !15, !noalias !24 ; 4 uses
  %i.jw = extractelement <2 x float> %i.jv, i64 1
  %i.jx = load <2 x float>, ptr %i.f, align 4, !tbaa !15, !noalias !24 ; 4 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 1
  %i.jz = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x float> %i.jz, %i.ju
  %i.kb = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.kb, <2 x float> %i.ka)
  %i.kd = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.kd, <2 x float> %i.kc)
  %i.kf = extractelement <2 x float> %i.jv, i64 0
  %i.kg = extractelement <2 x float> %i.jx, i64 0
  %i.kh = shufflevector <2 x float> %i.jn, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ki = shufflevector <2 x float> %i.jk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kj = insertelement <4 x float> %i.ki, float -0.000000e+00, i64 3
  %i.kk = load <2 x float>, ptr %i.bm, align 4, !tbaa !15, !noalias !21 ; 4 uses
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.km = load <2 x float>, ptr %i.bn, align 4, !tbaa !15, !noalias !21 ; 3 uses
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ko = load <2 x float>, ptr %i.bo, align 4, !tbaa !15, !noalias !21 ; 4 uses
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kq = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kr = shufflevector <4 x float> %i.jp, <4 x float> %i.kq, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ks = fmul <4 x float> %i.kr, %i.jq
  %i.kt = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ku = shufflevector <4 x float> %i.jt, <4 x float> %i.kt, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.kv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jr, <4 x float> %i.ku, <4 x float> %i.ks)
  %shift280 = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop281 = fmul <2 x float> %i.kn, %shift280
  %i.kw = extractelement <2 x float> %foldExtExtBinop281, i64 0
  %i.kx = extractelement <2 x float> %i.kk, i64 1
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.kx, float %i.kw)
  %i.kz = extractelement <2 x float> %i.ko, i64 1
  %i.la = tail call noundef float @llvm.fmuladd.f32(float %i.jy, float %i.kz, float %i.ky) ; 2 uses
  %i.lb = fadd float %i.la, %i.la
  %i.lc = fmul float %i.lb, 5.000000e-01
  %foldExtExtBinop284 = fmul <2 x float> %i.km, %i.ju
  %i.ld = extractelement <2 x float> %foldExtExtBinop284, i64 0
  %i.le = extractelement <2 x float> %i.kk, i64 0
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.le, float %i.ld)
  %i.lg = extractelement <2 x float> %i.ko, i64 0
  %i.lh = tail call noundef float @llvm.fmuladd.f32(float %i.kg, float %i.lg, float %i.lf) ; 2 uses
  %i.li = shufflevector <2 x float> %i.ko, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.lj = shufflevector <4 x float> %i.kj, <4 x float> %i.li, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.lk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kh, <4 x float> %i.lj, <4 x float> %i.kv) ; 2 uses
  %i.ll = fmul <2 x float> %i.kn, %i.ju
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.kl, <2 x float> %i.ll)
  %i.ln = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.kp, <2 x float> %i.lm) ; 2 uses
  %i.lo = insertelement <4 x float> %i.lk, float -0.000000e+00, i64 3
  %i.lp = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lq = shufflevector <4 x float> %i.lo, <4 x float> %i.lp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lr = fadd <4 x float> %i.lk, %i.lq
  %i.ls = fadd float %i.lh, %i.lh
  %shift286 = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop287 = fadd <2 x float> %i.ln, %shift286
  %i.lt = shufflevector <2 x float> %foldExtExtBinop287, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lu = fmul <4 x float> %i.lr, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00> ; 3 uses
  %i.lv = fmul float %i.ls, 5.000000e-01
  store <4 x float> %i.lu, ptr %3, align 4
  %i.lw = extractelement <4 x float> %i.lu, i64 1
  store float %i.lw, ptr %i.an, align 4
  store float %i.lv, ptr %.sroa.9243.16..sroa_idx, align 4
  %i.lx = insertelement <4 x float> %i.lu, float 1.000000e+00, i64 1
  %i.ly = shufflevector <4 x float> %i.lt, <4 x float> %i.lx, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.lz = fmul <4 x float> %i.ly, <float 5.000000e-01, float 0.000000e+00, float 1.000000e+00, float poison>
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %i.ma, ptr %.sroa.10244.16..sroa_idx, align 4
  store float %i.lc, ptr %.sroa.15248.32..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.16249.32..sroa_idx, align 4, !tbaa !14
  br label %bb.f

.thread253:                                       ; preds = %bb.d, %bb.b, %bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.me = load <2 x float>, ptr %2, align 4, !tbaa !15, !noalias !27 ; 2 uses
  %i.mf = load <2 x float>, ptr %i.b, align 4, !tbaa !15, !noalias !27 ; 2 uses
  %i.mg = load <2 x float>, ptr %i.d, align 4, !tbaa !15, !noalias !27 ; 2 uses
  %i.mh = load <2 x float>, ptr %1, align 4, !tbaa !15, !noalias !30
  %i.mi = load <2 x float>, ptr %i.a, align 4, !tbaa !15, !noalias !30
  %i.mj = load <2 x float>, ptr %i.c, align 4, !tbaa !15, !noalias !30
  %i.mk = shufflevector <2 x float> %i.mf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ml = insertelement <4 x float> %i.mk, float 1.000000e+00, i64 3
  %i.mm = shufflevector <2 x float> %i.mi, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.mn = shufflevector <2 x float> %i.mh, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.mo = shufflevector <2 x float> %i.me, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mp = insertelement <4 x float> %i.mo, float -0.000000e+00, i64 3
  %i.mq = load <2 x float>, ptr %i.e, align 4, !tbaa !15, !noalias !30 ; 4 uses
  %i.mr = load <2 x float>, ptr %i.k, align 4, !tbaa !15, !noalias !30 ; 4 uses
  %i.ms = extractelement <2 x float> %i.mr, i64 1
  %i.mt = load <2 x float>, ptr %i.f, align 4, !tbaa !15, !noalias !30 ; 4 uses
  %i.mu = extractelement <2 x float> %i.mt, i64 1
  %i.mv = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = fmul <2 x float> %i.mv, %i.mq
  %i.mx = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.my = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.mx, <2 x float> %i.mw)
  %i.mz = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.mz, <2 x float> %i.my)
  %i.nb = extractelement <2 x float> %i.mr, i64 0
  %i.nc = extractelement <2 x float> %i.mt, i64 0
  %i.nd = shufflevector <2 x float> %i.mj, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ne = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nf = insertelement <4 x float> %i.ne, float -0.000000e+00, i64 3
  %i.ng = load <2 x float>, ptr %i.mb, align 4, !tbaa !15, !noalias !27 ; 4 uses
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ni = load <2 x float>, ptr %i.mc, align 4, !tbaa !15, !noalias !27 ; 3 uses
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nk = load <2 x float>, ptr %i.md, align 4, !tbaa !15, !noalias !27 ; 4 uses
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nm = shufflevector <2 x float> %i.ni, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.nn = shufflevector <4 x float> %i.ml, <4 x float> %i.nm, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.no = fmul <4 x float> %i.nn, %i.mm
  %i.np = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.nq = shufflevector <4 x float> %i.mp, <4 x float> %i.np, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.nr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mn, <4 x float> %i.nq, <4 x float> %i.no)
  %shift289 = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop290 = fmul <2 x float> %i.nj, %shift289
  %i.ns = extractelement <2 x float> %foldExtExtBinop290, i64 0
  %i.nt = extractelement <2 x float> %i.ng, i64 1
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.nt, float %i.ns)
  %i.nv = extractelement <2 x float> %i.nk, i64 1
  %i.nw = tail call noundef float @llvm.fmuladd.f32(float %i.mu, float %i.nv, float %i.nu) ; 2 uses
  %i.nx = fadd float %i.nw, %i.nw
  %i.ny = fmul float %i.nx, 5.000000e-01
  %foldExtExtBinop293 = fmul <2 x float> %i.ni, %i.mq
  %i.nz = extractelement <2 x float> %foldExtExtBinop293, i64 0
  %i.oa = extractelement <2 x float> %i.ng, i64 0
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.oa, float %i.nz)
  %i.oc = extractelement <2 x float> %i.nk, i64 0
  %i.od = tail call noundef float @llvm.fmuladd.f32(float %i.nc, float %i.oc, float %i.ob) ; 2 uses
  %i.oe = shufflevector <2 x float> %i.nk, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.of = shufflevector <4 x float> %i.nf, <4 x float> %i.oe, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.og = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nd, <4 x float> %i.of, <4 x float> %i.nr) ; 2 uses
  %i.oh = fmul <2 x float> %i.nj, %i.mq
  %i.oi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.nh, <2 x float> %i.oh)
  %i.oj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.nl, <2 x float> %i.oi) ; 2 uses
  %i.ok = insertelement <4 x float> %i.og, float -0.000000e+00, i64 3
  %i.ol = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_0
