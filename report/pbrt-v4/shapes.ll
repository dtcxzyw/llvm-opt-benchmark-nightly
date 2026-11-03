Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK4pbrt13BilinearPatch3PDFERKNS_11InteractionE:bb.a
  %i.ip = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.io, <2 x float> %i.hx, <2 x float> %i.in)
  %i.iq = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ih, <2 x float> %i.ic, <2 x float> %i.im)
  %i.ir = fadd <2 x float> %i.ip, %i.iq           ; 2 uses
  %i.is = fmul float %i.il, %i.il
  %i.it = fmul <2 x float> %i.ir, %i.ir           ; 2 uses
  %i.iu = extractelement <2 x float> %i.it, i64 0
  %i.iv = fadd float %i.is, %i.iu
  %i.iw = extractelement <2 x float> %i.it, i64 1
  %i.ix = fadd float %i.iw, %i.iv
  %sqrt.i290 = tail call noundef float @llvm.sqrt.f32(float %i.ix) ; 2 uses
  %i.iy = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.hw) ; 3 uses
  %foldExtExtBinop461 = fmul <2 x float> %i.ic, %i.gr
  %i.iz = extractelement <2 x float> %foldExtExtBinop461, i64 0 ; 2 uses
  %i.ja = fneg float %i.iz
  %i.jb = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.jc = tail call noundef float @llvm.fma.f32(float %i.id, float %i.jb, float %i.ja)
  %i.jd = fneg float %i.ii
  %i.je = tail call noundef float @llvm.fma.f32(float %i.jd, float %i.gs, float %i.iz)
  %i.jf = fadd float %i.jc, %i.je                 ; 2 uses
  %i.jg = extractelement <2 x float> %i.hx, i64 0 ; 2 uses
  %foldExtExtBinop463 = fmul <2 x float> %i.hx, %i.gh
  %i.jh = extractelement <2 x float> %foldExtExtBinop463, i64 0 ; 2 uses
  %i.ji = fneg float %i.jh
  %i.jj = tail call noundef float @llvm.fma.f32(float %i.ii, float %i.ho, float %i.ji)
  %i.jk = fneg float %i.jg
  %i.jl = tail call noundef float @llvm.fma.f32(float %i.jk, float %i.jb, float %i.jh)
  %i.jm = fadd float %i.jj, %i.jl                 ; 2 uses
  %i.jn = fmul float %i.id, %i.ho                 ; 2 uses
  %i.jo = fneg float %i.jn
  %i.jp = tail call noundef float @llvm.fma.f32(float %i.jg, float %i.gs, float %i.jo)
  %i.jq = fneg float %i.id
  %i.jr = tail call noundef float @llvm.fma.f32(float %i.jq, float %i.ho, float %i.jn)
  %i.js = fadd float %i.jp, %i.jr                 ; 2 uses
  %i.jt = fmul float %i.jf, %i.jf
  %i.ju = fmul float %i.jm, %i.jm
  %i.jv = fadd float %i.jt, %i.ju
  %i.jw = fmul float %i.js, %i.js
  %i.jx = fadd float %i.jw, %i.jv
  %sqrt.i336 = tail call noundef float @llvm.sqrt.f32(float %i.jx) ; 2 uses
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %.sroa.0392.0, i64 0 ; 3 uses
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %.sroa.0392.0, i64 1 ; 3 uses
  %i.jy = shufflevector <2 x float> %.sroa.0392.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jz = fcmp ogt <4 x float> %i.jy, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ka = fcmp olt <4 x float> %i.jy, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.kb = shufflevector <4 x i1> %i.jz, <4 x i1> %i.ka, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kc = freeze <4 x i1> %i.kb
  %i.kd = bitcast <4 x i1> %i.kc to i4
  %.not465 = icmp eq i4 %i.kd, 0
  br i1 %.not465, label %bb.l, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

bb.l:                                             ; preds = %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit
  %i.ke = extractelement <2 x float> %i.iy, i64 1
  %i.kf = fadd float %i.ke, %sqrt.i290
  %i.kg = extractelement <2 x float> %i.iy, i64 0
  %i.kh = fadd float %i.kf, %i.kg
  %i.ki = fadd float %i.kh, %sqrt.i336            ; 2 uses
  %i.kj = fcmp oeq float %i.ki, 0.000000e+00
  br i1 %i.kj, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kk = fsub float 1.000000e+00, %.sroa.020.0.vec.extract.i ; 2 uses
  %i.kl = fsub float 1.000000e+00, %.sroa.020.4.vec.extract.i ; 2 uses
  %i.km = fmul float %.sroa.020.0.vec.extract.i, %i.kl
  %i.kn = fmul float %i.km, %sqrt.i290
  %i.ko = fmul float %i.kk, %i.kl
  %i.kp = fmul float %.sroa.020.4.vec.extract.i, %i.kk
  %i.kq = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.kr = insertelement <2 x float> %i.kq, float %i.ko, i64 1
  %i.ks = fmul <2 x float> %i.kr, %i.iy           ; 2 uses
  %i.kt = extractelement <2 x float> %i.ks, i64 1
  %i.ku = fadd float %i.kt, %i.kn
  %i.kv = extractelement <2 x float> %i.ks, i64 0
  %i.kw = fadd float %i.ku, %i.kv
  %i.kx = fmul float %.sroa.020.0.vec.extract.i, %.sroa.020.4.vec.extract.i
  %i.ky = fmul float %i.kx, %sqrt.i336
  %i.kz = fadd float %i.kw, %i.ky
  %i.la = fmul float %i.kz, 4.000000e+00
  %i.lb = fdiv float %i.la, %i.ki
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %bb.k, %bb.m, %bb.l, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit, %bb.j
  %.0 = phi float [ %i.lb, %bb.m ], [ %i.ga, %bb.j ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.k ]
  %i.lc = fsub <2 x float> splat (float 1.000000e+00), %.sroa.0392.0 ; 2 uses
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.le = fmul <2 x float> %.sroa.0222.0.copyload, %i.ld
  %i.lf = shufflevector <2 x float> %.sroa.0222.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lg = insertelement <2 x float> %i.lf, float %.sroa.9.0.copyload, i64 1 ; 2 uses
  %i.lh = fmul <2 x float> %i.lg, %i.ld
  %i.li = shufflevector <2 x float> %.sroa.0392.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.lj = fmul <2 x float> %.sroa.0419.0.copyload, %i.li
  %i.lk = shufflevector <2 x float> %.sroa.0419.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ll = insertelement <2 x float> %i.lk, float %.sroa.11.0.copyload, i64 1 ; 2 uses
  %i.lm = fmul <2 x float> %i.ll, %i.li
  %i.ln = fadd <2 x float> %i.lj, %i.le
  %i.lo = fadd <2 x float> %i.lm, %i.lh
  %i.lp = fmul <2 x float> %.sroa.0429.0.copyload, %i.ld
  %i.lq = shufflevector <2 x float> %.sroa.0429.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lr = insertelement <2 x float> %i.lq, float %.sroa.11438.0.copyload, i64 1 ; 2 uses
  %i.ls = fmul <2 x float> %i.lr, %i.ld
  %i.lt = fmul <2 x float> %.sroa.0401.0.copyload, %i.li
  %i.lu = shufflevector <2 x float> %.sroa.0401.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lv = insertelement <2 x float> %i.lu, float %.sroa.13.0.copyload, i64 1 ; 2 uses
  %i.lw = fmul <2 x float> %i.lv, %i.li
  %i.lx = fadd <2 x float> %i.lt, %i.lp
  %i.ly = fadd <2 x float> %i.lw, %i.ls
  %i.lz = fsub <2 x float> %i.lx, %i.ln           ; 2 uses
  %i.ma = fsub <2 x float> %i.ly, %i.lo           ; 3 uses
  %i.mb = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mc = fmul <2 x float> %.sroa.0419.0.copyload, %i.mb
  %i.md = fmul <2 x float> %i.ll, %i.mb
  %i.me = shufflevector <2 x float> %.sroa.0392.0, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mf = fmul <2 x float> %.sroa.0401.0.copyload, %i.me
  %i.mg = fmul <2 x float> %i.lv, %i.me
  %i.mh = fadd <2 x float> %i.mf, %i.mc
  %i.mi = fadd <2 x float> %i.mg, %i.md
  %i.mj = fmul <2 x float> %.sroa.0222.0.copyload, %i.mb
  %i.mk = fmul <2 x float> %i.lg, %i.mb
  %i.ml = fmul <2 x float> %.sroa.0429.0.copyload, %i.me
  %i.mm = fmul <2 x float> %i.lr, %i.me
  %i.mn = fadd <2 x float> %i.ml, %i.mj
  %i.mo = fadd <2 x float> %i.mm, %i.mk
  %i.mp = fsub <2 x float> %i.mh, %i.mn           ; 3 uses
  %i.mq = fsub <2 x float> %i.mi, %i.mo           ; 2 uses
  %i.mr = extractelement <2 x float> %i.lz, i64 0 ; 2 uses
  %i.ms = extractelement <2 x float> %i.mq, i64 1 ; 2 uses
  %i.mt = fmul float %i.mr, %i.ms                 ; 2 uses
  %i.mu = fneg float %i.mt
  %i.mv = extractelement <2 x float> %i.ma, i64 1
  %i.mw = extractelement <2 x float> %i.mp, i64 0
  %i.mx = tail call noundef float @llvm.fma.f32(float %i.mv, float %i.mw, float %i.mu)
  %i.my = fneg float %i.mr
  %i.mz = tail call noundef float @llvm.fma.f32(float %i.my, float %i.ms, float %i.mt)
  %i.na = fadd float %i.mx, %i.mz                 ; 2 uses
  %i.nb = fmul <2 x float> %i.ma, %i.mp           ; 2 uses
  %i.nc = fneg <2 x float> %i.nb
  %i.nd = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.lz, <2 x float> %i.mq, <2 x float> %i.nc)
  %i.ne = fneg <2 x float> %i.ma
  %i.nf = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ne, <2 x float> %i.mp, <2 x float> %i.nb)
  %i.ng = fadd <2 x float> %i.nd, %i.nf           ; 2 uses
  %i.nh = fmul float %i.na, %i.na
  %i.ni = fmul <2 x float> %i.ng, %i.ng           ; 2 uses
  %i.nj = extractelement <2 x float> %i.ni, i64 1
  %i.nk = fadd float %i.nj, %i.nh
  %i.nl = extractelement <2 x float> %i.ni, i64 0
  %i.nm = fadd float %i.nl, %i.nk
  %sqrt.i386 = tail call noundef float @llvm.sqrt.f32(float %i.nm)
  %i.nn = fdiv float %.0, %sqrt.i386
  ret float %i.nn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt13BilinearPatch6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 8 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(52) %2, <2 x float> %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional", align 16   ; 14 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.pbrt::Point2", align 8      ; 2 uses
  %i.b = load ptr, ptr @_ZN4pbrt13BilinearPatch9allMeshesE, align 8, !tbaa !206
  %i.c = load i32, ptr %1, align 4, !tbaa !215
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !212  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !217
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !216
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !218  ; 4 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !89
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %.sroa.0860.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 7 uses
  %.sroa.13868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.13868.0.copyload = load float, ptr %.sroa.13868.0..sroa_idx, align 4 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %.sroa.0852.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 4 uses
  %.sroa.9858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.9858.0.copyload = load float, ptr %.sroa.9858.0..sroa_idx, align 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !89
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %.sroa.0844.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 4 uses
  %i.ac = shufflevector <2 x float> %.sroa.0844.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.9850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.9850.0.copyload = load float, ptr %.sroa.9850.0..sroa_idx, align 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.af ; 2 uses
  %.sroa.6843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.6843.0.copyload = load float, ptr %.sroa.6843.0..sroa_idx, align 4
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4
  %6 = load <8 x float>, ptr %2, align 4          ; 2 uses
  %i.ai = shufflevector <8 x float> %6, <8 x float> poison, <3 x i32> <i32 0, i32 3, i32 4>
  %i.aj = shufflevector <8 x float> %6, <8 x float> poison, <3 x i32> <i32 1, i32 2, i32 5>
  %i.ak = fadd <3 x float> %i.ai, %i.aj
  %i.al = fmul <3 x float> %i.ak, splat (float 5.000000e-01) ; 3 uses
  %i.am = shufflevector <2 x float> %.sroa.0860.0.copyload, <2 x float> %.sroa.0852.0.copyload, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.an = shufflevector <4 x float> %i.am, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ao = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aq = shufflevector <3 x float> %i.al, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ar = fsub <4 x float> %i.ap, %i.aq           ; 3 uses
  %i.as = shufflevector <2 x float> %.sroa.0860.0.copyload, <2 x float> %.sroa.0852.0.copyload, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.at = shufflevector <2 x float> %.sroa.0844.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aw = shufflevector <3 x float> %i.al, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ax = fsub <4 x float> %i.av, %i.aw           ; 3 uses
  %i.ay = insertelement <4 x float> poison, float %.sroa.13868.0.copyload, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %.sroa.9858.0.copyload, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %.sroa.9850.0.copyload, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %.sroa.6843.0.copyload, i64 3
  %i.bc = shufflevector <3 x float> %i.al, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bd = fsub <4 x float> %i.bb, %i.bc           ; 3 uses
  %i.be = fmul <4 x float> %i.ar, %i.ar
  %i.bf = fmul <4 x float> %i.ax, %i.ax
  %i.bg = fadd <4 x float> %i.be, %i.bf
  %i.bh = fmul <4 x float> %i.bd, %i.bd
  %i.bi = fadd <4 x float> %i.bg, %i.bh
  %i.bj = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bi) ; 3 uses
  %i.bk = fdiv <4 x float> %i.ar, %i.bj           ; 5 uses
  %i.bl = fdiv <4 x float> %i.ax, %i.bj           ; 5 uses
  %i.bm = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <2 x i32> <i32 0, i32 4>
  %i.bn = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <2 x i32> <i32 1, i32 5>
  %i.bo = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <2 x i32> <i32 2, i32 6>
  %i.bp = fdiv <4 x float> %i.bd, %i.bj           ; 6 uses
  %i.bq = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <2 x i32> <i32 3, i32 7>
  %i.br = tail call noundef zeroext i1 @_ZNK4pbrt13BilinearPatch11IsRectangleEPKNS_17BilinearPatchMeshE(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %i.h)
  br i1 %i.br, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !227
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bu = extractelement <4 x float> %i.bp, i64 0
  %i.bv = extractelement <4 x float> %i.bp, i64 1
  %i.bw = extractelement <4 x float> %i.bp, i64 2
  %i.bx = extractelement <4 x float> %i.bp, i64 3
  %i.by = tail call noundef float @_ZN4pbrt17SphericalQuadAreaENS_7Vector3IfEES1_S1_S1_(<2 x float> %i.bm, float %i.bu, <2 x float> %i.bn, float %i.bv, <2 x float> %i.bq, float %i.bx, <2 x float> %i.bo, float %i.bw)
  %i.bz = fcmp ugt float %i.by, f0x38D1B717
  br i1 %i.bz, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZNK4pbrt13BilinearPatch6SampleENS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %4, ptr noundef nonnull align 4 dereferenceable(12) %1, <2 x float> %3)
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !36, !range !30, !noundef !31
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.e, label %.noexc

.noexc:                                           ; preds = %bb.d
  tail call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.136, i32 noundef 235, ptr noundef nonnull @.str.137, ptr noundef nonnull align 1 dereferenceable(4) @.str.138) #34
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !241
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.ce, ptr %i.cf, align 8, !tbaa !493
  %.sroa.0.sroa.2.0..sroa_idx.i560 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i566 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.5.0.copyload.i567 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i566, align 16
  %.sroa.0.sroa.6.0..sroa_idx.i568 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.0.sroa.6.0.copyload.i569 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i568, align 4
  %i.cg = fadd float %.sroa.0.sroa.5.0.copyload.i567, %.sroa.0.sroa.6.0.copyload.i569
  %i.ch = fmul float %i.cg, 5.000000e-01          ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i582 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i584 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.ci = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i560, align 4
  %i.cj = load <4 x float>, ptr %4, align 16
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cl = fadd <2 x float> %i.ci, %i.ck
  %i.cm = fmul <2 x float> %i.cl, splat (float 5.000000e-01) ; 2 uses
  %i.cn = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.co = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cq = fadd <2 x float> %i.cn, %i.cp
  %i.cr = fmul <2 x float> %i.cq, splat (float 5.000000e-01) ; 2 uses
  %i.cs = fadd float %.sroa.0.sroa.5.0.copyload.i582, %.sroa.0.sroa.6.0.copyload.i584
  %i.ct = fmul float %i.cs, 5.000000e-01          ; 2 uses
  %i.cu = fsub float %i.ch, %i.ct                 ; 3 uses
  %i.cv = fsub <2 x float> %i.cm, %i.cr           ; 4 uses
  %i.cw = fmul <2 x float> %i.cv, %i.cv           ; 2 uses
  %shift = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cw, %shift
  %i.cx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cy = fmul float %i.cu, %i.cu
  %i.cz = fadd float %i.cx, %i.cy                 ; 2 uses
  %i.da = fcmp oeq float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %sqrt.i.i597 = tail call noundef float @llvm.sqrt.f32(float %i.cz) ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.0271.0.copyload = load <2 x float>, ptr %i.db, align 8 ; 2 uses
  %.sroa.2272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.2272.0.copyload = load float, ptr %.sroa.2272.0..sroa_idx, align 16 ; 2 uses
  %i.dc = extractelement <2 x float> %i.cv, i64 0
  %i.dd = fneg float %i.dc
  %i.de = fdiv float %i.dd, %sqrt.i.i597
  %i.df = extractelement <2 x float> %i.cv, i64 1
  %i.dg = fneg float %i.df
  %i.dh = fdiv float %i.dg, %sqrt.i.i597
  %i.di = fneg float %i.cu
  %i.dj = fdiv float %i.di, %sqrt.i.i597          ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0271.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0271.0.copyload, i64 1
  %i.dk = fmul float %i.dj, %.sroa.2272.0.copyload ; 2 uses
  %i.dl = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.dh, float %i.dk)
  %i.dm = fneg float %i.dk
  %i.dn = tail call noundef float @llvm.fma.f32(float %.sroa.2272.0.copyload, float %i.dj, float %i.dm)
  %i.do = fadd float %i.dl, %i.dn
  %i.dp = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.de, float %i.do)
  %i.dq = tail call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dr = fsub <2 x float> %i.cr, %i.cm           ; 2 uses
  %i.ds = fsub float %i.ct, %i.ch                 ; 2 uses
  %i.dt = fmul <2 x float> %i.dr, %i.dr           ; 2 uses
  %shift877 = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop878 = fadd <2 x float> %i.dt, %shift877
  %i.du = extractelement <2 x float> %foldExtExtBinop878, i64 0
  %i.dv = fmul float %i.ds, %i.ds
  %i.dw = fadd float %i.du, %i.dv
  %i.dx = fdiv float %i.dq, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.dz = load float, ptr %i.dy, align 16, !tbaa !53
  %i.ea = fdiv float %i.dz, %i.dx                 ; 2 uses
  %i.eb = tail call float @llvm.fabs.f32(float %i.ea)
  %i.ec = fcmp oeq float %i.eb, +inf
  br i1 %i.ec, label %bb.h, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.i

_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit: ; preds = %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.ed, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 16 dereferenceable(89) %4, i64 72, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !129
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !129
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.ea, ptr %i.eh, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.s

bb.j:                                             ; preds = %bb.c
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !119
  %i.ek = fcmp une float %i.ej, 0.000000e+00
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.em = load float, ptr %i.el, align 4
  %i.en = fcmp une float %i.em, 0.000000e+00
  %or.cond.i = select i1 %i.ek, i1 true, i1 %i.en
  %.sroa.2236.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.2236.0.copyload.pre = load float, ptr %.sroa.2236.0..sroa_idx.phi.trans.insert, align 4 ; 2 uses
  %i.eo = fcmp une float %.sroa.2236.0.copyload.pre, 0.000000e+00
  %or.cond = select i1 %or.cond.i, i1 true, i1 %i.eo
  br i1 %or.cond, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.j
  %.sroa.0235.0.copyload = load <2 x float>, ptr %i.ei, align 4 ; 2 uses
  %i.ep = insertelement <4 x float> poison, float %.sroa.2236.0.copyload.pre, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.er = fmul <4 x float> %i.bp, %i.eq           ; 2 uses
  %i.es = shufflevector <2 x float> %.sroa.0235.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.et = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.es, <4 x float> %i.bl, <4 x float> %i.er)
  %i.eu = fneg <4 x float> %i.er
  %i.ev = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.eq, <4 x float> %i.bp, <4 x float> %i.eu)
  %i.ew = fadd <4 x float> %i.et, %i.ev
  %i.ex = shufflevector <2 x float> %.sroa.0235.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> %i.bk, <4 x float> %i.ew)
  %i.ez = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ey) ; 2 uses
  %i.fa = fcmp ogt <4 x float> %i.ez, splat (float f0x3C23D70A)
  %i.fb = select <4 x i1> %i.fa, <4 x float> %i.ez, <4 x float> splat (float f0x3C23D70A) ; 4 uses
  %i.fc = extractelement <4 x float> %i.fb, i64 0 ; 3 uses
  %i.fd = extractelement <4 x float> %i.fb, i64 1 ; 3 uses
  %i.fe = fadd float %i.fc, %i.fd                 ; 5 uses
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.ff = extractelement <4 x float> %i.fb, i64 2 ; 4 uses
  %i.fg = extractelement <4 x float> %i.fb, i64 3 ; 4 uses
  %i.fh = fadd float %i.ff, %i.fg                 ; 3 uses
  %i.fi = fadd nnan float %i.fe, %i.fh
end_hunk_0
begin_hunk_1_@_ZN4pbrt17SphericalQuadAreaENS_7Vector3IfEES1_S1_S1_:bb.a
  %i.au = insertelement <2 x float> poison, float %7, i64 0
  %i.av = insertelement <2 x float> %i.au, float %1, i64 1 ; 2 uses
  %i.aw = fmul <2 x float> %i.at, %i.av           ; 2 uses
  %i.ax = fneg <2 x float> %i.aw
  %i.ay = shufflevector <2 x float> %6, <2 x float> %0, <2 x i32> <i32 1, i32 2>
  %i.az = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ay, <2 x float> %i.az, <2 x float> %i.ax)
  %i.bb = insertelement <2 x float> %i.ap, float %7, i64 0
  %i.bc = fneg <2 x float> %i.bb
  %i.bd = insertelement <2 x float> %i.k, float %1, i64 1
  %i.be = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.aw)
  %i.bf = fadd <2 x float> %i.ba, %i.be           ; 3 uses
  %i.bg = shufflevector <2 x float> %0, <2 x float> %4, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bh = shufflevector <2 x float> %2, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = fmul <4 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = fneg <4 x float> %i.bi
  %i.bk = shufflevector <2 x float> %2, <2 x float> %6, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bl = shufflevector <2 x float> %0, <2 x float> %4, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.bm = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bk, <4 x float> %i.bl, <4 x float> %i.bj)
  %i.bn = shufflevector <2 x float> %0, <2 x float> %2, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bo = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bq = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bp, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bs = fneg <4 x float> %i.br
  %i.bt = shufflevector <2 x float> %2, <2 x float> %4, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> %i.a, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bw = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.bs, <4 x float> %i.bv, <4 x float> %i.bi)
  %i.bx = fadd <4 x float> %i.bm, %i.bw           ; 9 uses
  %i.by = fmul <2 x float> %i.q, %i.q             ; 2 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.by, %shift
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop259 = fmul <4 x float> %i.bx, %i.bx
  %i.ca = extractelement <4 x float> %foldExtExtBinop259, i64 0
  %i.cb = fadd float %i.ca, %i.bz                 ; 2 uses
  %i.cc = fcmp oeq float %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cd = fmul <2 x float> %i.ae, %i.ae           ; 2 uses
  %shift261 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop262 = fadd <2 x float> %i.cd, %shift261
  %i.ce = extractelement <2 x float> %foldExtExtBinop262, i64 0
  %foldExtExtBinop264 = fmul <4 x float> %i.bx, %i.bx
  %i.cf = extractelement <4 x float> %foldExtExtBinop264, i64 1
  %i.cg = fadd float %i.cf, %i.ce                 ; 2 uses
  %i.ch = fcmp oeq float %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ci = fmul <2 x float> %i.as, %i.as           ; 2 uses
  %shift266 = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop267 = fadd <2 x float> %i.ci, %shift266
  %i.cj = extractelement <2 x float> %foldExtExtBinop267, i64 0
  %foldExtExtBinop269 = fmul <4 x float> %i.bx, %i.bx
  %i.ck = extractelement <4 x float> %foldExtExtBinop269, i64 2
  %i.cl = fadd float %i.ck, %i.cj                 ; 2 uses
  %i.cm = fcmp oeq float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cn = fmul <2 x float> %i.bf, %i.bf           ; 2 uses
  %shift271 = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop272 = fadd <2 x float> %i.cn, %shift271
  %i.co = extractelement <2 x float> %foldExtExtBinop272, i64 0
  %foldExtExtBinop274 = fmul <4 x float> %i.bx, %i.bx
  %i.cp = extractelement <4 x float> %foldExtExtBinop274, i64 3
  %i.cq = fadd float %i.cp, %i.co                 ; 2 uses
  %i.cr = fcmp oeq float %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cg, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cl, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cq, i64 3
  %i.cw = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cv) ; 5 uses
  %i.cx = fdiv <4 x float> %i.bx, %i.cw           ; 4 uses
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fdiv <2 x float> %i.q, %i.cy            ; 2 uses
  %i.da = fneg <2 x float> %i.cz
  %i.db = extractelement <4 x float> %i.cx, i64 0 ; 2 uses
  %i.dc = fneg float %i.db
  %i.dd = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.de = fdiv <2 x float> %i.ae, %i.dd           ; 2 uses
  %i.df = fneg <2 x float> %i.de
  %i.dg = extractelement <4 x float> %i.cx, i64 1 ; 2 uses
  %i.dh = fneg float %i.dg
  %i.di = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dj = fdiv <2 x float> %i.as, %i.di           ; 2 uses
  %i.dk = fneg <2 x float> %i.dj
  %i.dl = extractelement <4 x float> %i.cx, i64 2 ; 2 uses
  %i.dm = fneg float %i.dl
  %i.dn = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.do = fdiv <2 x float> %i.bf, %i.dn           ; 2 uses
  %i.dp = extractelement <4 x float> %i.cx, i64 3 ; 2 uses
  %i.dq = tail call noundef float @_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_(<2 x float> %i.do, float %i.dp, <2 x float> %i.da, float %i.dc)
  %i.dr = tail call noundef float @_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_(<2 x float> %i.cz, float %i.db, <2 x float> %i.df, float %i.dh)
  %i.ds = tail call noundef float @_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_(<2 x float> %i.de, float %i.dg, <2 x float> %i.dk, float %i.dm)
  %i.dt = fneg <2 x float> %i.do
  %i.du = fneg float %i.dp
  %i.dv = tail call noundef float @_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_(<2 x float> %i.dj, float %i.dl, <2 x float> %i.dt, float %i.du)
  %i.dw = fadd float %i.dq, %i.dr
  %i.dx = fadd float %i.dw, %i.ds
  %i.dy = fadd float %i.dx, %i.dv
  %i.dz = fadd float %i.dy, f0xC0C90FDB
  %i.ea = tail call noundef float @llvm.fabs.f32(float %i.dz)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi float [ %i.ea, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

declare { <2 x float>, float } @_ZN4pbrt24SampleSphericalRectangleENS_6Point3IfEES1_NS_7Vector3IfEES3_NS_6Point2IfEEPf(<2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float, ptr noundef byval(%"class.pbrt::Point2") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK4pbrt13BilinearPatch3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, <2 x float> %2, float %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %5 = alloca %"class.pstd::optional.22", align 16 ; 14 uses
  %6 = alloca %"class.pbrt::Point3", align 8      ; 3 uses
  %i.a = load ptr, ptr @_ZN4pbrt13BilinearPatch9allMeshesE, align 8, !tbaa !206
  %i.b = load i32, ptr %0, align 4, !tbaa !215
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !217
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !216
  %i.l = shl nsw i32 %i.k, 2
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !218  ; 4 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !89
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %.sroa.0505.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 5 uses
  %.sroa.8508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.8508.0.copyload = load float, ptr %.sroa.8508.0..sroa_idx, align 4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !89
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.v ; 3 uses
  %.sroa.6501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.8503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.8503.0.copyload = load float, ptr %.sroa.8503.0..sroa_idx, align 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.z ; 3 uses
  %.sroa.6496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !89
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %i.af = load <2 x float>, ptr %i.w, align 4     ; 3 uses
  %.sroa.6501.0.copyload = load float, ptr %.sroa.6501.0..sroa_idx, align 4
  %i.ag = load <2 x float>, ptr %i.aa, align 4    ; 2 uses
  %.sroa.6496.0.copyload = load float, ptr %.sroa.6496.0..sroa_idx, align 4
  %i.ah = load <2 x float>, ptr %i.ae, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.ai = tail call { <2 x float>, float } @_ZNK4pbrt18ShapeSampleContext15OffsetRayOriginENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(52) %1, <2 x float> %2, float %3), !noalias !496 ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.ai, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.ai, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !241, !noalias !496
  store <2 x float> %.fca.0.extract.i, ptr %4, align 8, !alias.scope !496
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !496
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %2, ptr %i.al, align 4, !alias.scope !496
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %3, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !496
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.ak, ptr %i.am, align 8, !tbaa !127, !alias.scope !496
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.an, align 8, !tbaa !129, !alias.scope !496
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZNK4pbrt13BilinearPatch9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.22") align 8 %5, ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, float noundef +inf)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.ap = load i8, ptr %i.ao, align 16, !tbaa !139, !range !30, !noundef !31
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %7 = load <8 x float>, ptr %1, align 4          ; 2 uses
  %i.ar = shufflevector <8 x float> %7, <8 x float> poison, <3 x i32> <i32 0, i32 3, i32 4>
  %i.as = shufflevector <8 x float> %7, <8 x float> poison, <3 x i32> <i32 1, i32 2, i32 5>
  %i.at = fadd <3 x float> %i.ar, %i.as
  %i.au = fmul <3 x float> %i.at, splat (float 5.000000e-01) ; 3 uses
  %i.av = shufflevector <2 x float> %.sroa.0505.0.copyload, <2 x float> %i.af, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aw = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ay = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ba = shufflevector <3 x float> %i.au, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bb = fsub <4 x float> %i.az, %i.ba           ; 3 uses
  %i.bc = shufflevector <2 x float> %.sroa.0505.0.copyload, <2 x float> %i.af, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bf = shufflevector <3 x float> %i.au, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bg = fsub <4 x float> %i.be, %i.bf           ; 3 uses
  %i.bh = insertelement <4 x float> poison, float %.sroa.8508.0.copyload, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %.sroa.8503.0.copyload, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %.sroa.8.0.copyload, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %.sroa.6.0.copyload, i64 3
  %i.bl = shufflevector <3 x float> %i.au, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bm = fsub <4 x float> %i.bk, %i.bl           ; 3 uses
  %i.bn = fmul <4 x float> %i.bb, %i.bb
  %i.bo = fmul <4 x float> %i.bg, %i.bg
  %i.bp = fadd <4 x float> %i.bn, %i.bo
  %i.bq = fmul <4 x float> %i.bm, %i.bm
  %i.br = fadd <4 x float> %i.bp, %i.bq
  %i.bs = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.br) ; 3 uses
  %i.bt = fdiv <4 x float> %i.bb, %i.bs           ; 5 uses
  %i.bu = fdiv <4 x float> %i.bg, %i.bs           ; 5 uses
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.bw = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.by = fdiv <4 x float> %i.bm, %i.bs           ; 6 uses
  %i.bz = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.ca = call noundef zeroext i1 @_ZNK4pbrt13BilinearPatch11IsRectangleEPKNS_17BilinearPatchMeshE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull %i.g)
  br i1 %i.ca, label %bb.c, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit

bb.c:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !227
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %bb.d, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit

bb.d:                                             ; preds = %bb.c
  %i.cd = extractelement <4 x float> %i.by, i64 0 ; 2 uses
  %i.ce = extractelement <4 x float> %i.by, i64 1 ; 2 uses
  %i.cf = extractelement <4 x float> %i.by, i64 2 ; 2 uses
  %i.cg = extractelement <4 x float> %i.by, i64 3 ; 2 uses
  %i.ch = call noundef float @_ZN4pbrt17SphericalQuadAreaENS_7Vector3IfEES1_S1_S1_(<2 x float> %i.bv, float %i.cd, <2 x float> %i.bw, float %i.ce, <2 x float> %i.bz, float %i.cg, <2 x float> %i.bx, float %i.cf)
  %i.ci = fcmp ugt float %i.ch, f0x38D1B717
  br i1 %i.ci, label %bb.e, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.cj = call noundef float @_ZNK4pbrt13BilinearPatch3PDFERKNS_11InteractionE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(80) %5)
  %.sroa.0.sroa.3.0.copyload.i378 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i380 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.ck = fadd float %.sroa.0.sroa.3.0.copyload.i378, %.sroa.0.sroa.4.0.copyload.i380
  %i.cl = fmul float %i.ck, 5.000000e-01
  %.sroa.0.sroa.3.0..sroa_idx.i394 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.sroa.3.0.copyload.i395 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i394, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i396 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.0.sroa.4.0.copyload.i397 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i396, align 4
  %i.cm = fadd float %.sroa.0.sroa.3.0.copyload.i395, %.sroa.0.sroa.4.0.copyload.i397
  %i.cn = fmul float %i.cm, 5.000000e-01
  %i.co = fsub float %i.cl, %i.cn                 ; 2 uses
  %i.cp = fmul float %i.co, %i.co
  %i.cq = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %1, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison) ; 2 uses
  %i.cr = shufflevector <6 x float> %i.cq, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cs = shufflevector <6 x float> %i.cq, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ct = fadd <2 x float> %i.cr, %i.cs
  %i.cu = fmul <2 x float> %i.ct, splat (float 5.000000e-01)
  %i.cv = load <6 x float>, ptr %5, align 16      ; 2 uses
  %i.cw = shufflevector <6 x float> %i.cv, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cx = shufflevector <6 x float> %i.cv, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cy = fadd <2 x float> %i.cw, %i.cx
  %i.cz = fmul <2 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fsub <2 x float> %i.cu, %i.cz           ; 2 uses
  %i.db = fmul <2 x float> %i.da, %i.da           ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = fadd float %i.dc, %i.cp
  %i.de = extractelement <2 x float> %i.db, i64 1
  %i.df = fadd float %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.0102.0.copyload = load <2 x float>, ptr %i.dg, align 8 ; 2 uses
  %.sroa.2103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.2103.0.copyload = load float, ptr %.sroa.2103.0..sroa_idx, align 16 ; 2 uses
  %.sroa.0509.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.dh = fneg float %.sroa.0509.0.vec.extract
  %.sroa.0509.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.di = fneg float %.sroa.0509.4.vec.extract
  %i.dj = fneg float %3                           ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0102.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0102.0.copyload, i64 1
  %i.dk = fmul float %.sroa.2103.0.copyload, %i.dj ; 2 uses
  %i.dl = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.di, float %i.dk)
  %i.dm = fneg float %i.dk
  %i.dn = call noundef float @llvm.fma.f32(float %.sroa.2103.0.copyload, float %i.dj, float %i.dm)
  %i.do = fadd float %i.dl, %i.dn
  %i.dp = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.dh, float %i.do)
  %i.dq = call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dr = fdiv float %i.df, %i.dq
  %i.ds = fmul float %i.cj, %i.dr                 ; 2 uses
  %i.dt = call float @llvm.fabs.f32(float %i.ds)
  %i.du = fcmp oeq float %i.dt, +inf
  %i.dv = select i1 %i.du, float 0.000000e+00, float %i.ds
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.dw = call noundef float @_ZN4pbrt17SphericalQuadAreaENS_7Vector3IfEES1_S1_S1_(<2 x float> %i.bv, float %i.cd, <2 x float> %i.bw, float %i.ce, <2 x float> %i.bz, float %i.cg, <2 x float> %i.bx, float %i.cf)
  %i.dx = fdiv float 1.000000e+00, %i.dw          ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !119
  %i.ea = fcmp une float %i.dz, 0.000000e+00
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fcmp une float %i.ec, 0.000000e+00
  %or.cond.i = select i1 %i.ea, i1 true, i1 %i.ed
  %.sroa.268.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.268.0.copyload.pre = load float, ptr %.sroa.268.0..sroa_idx.phi.trans.insert, align 4 ; 2 uses
  %i.ee = fcmp une float %.sroa.268.0.copyload.pre, 0.000000e+00
  %or.cond = select i1 %or.cond.i, i1 true, i1 %i.ee
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.g

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.e
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.dy, align 4 ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i439 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i441 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.ef = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.eg = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ei = fadd <2 x float> %i.ef, %i.eh
  %i.ej = fmul <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = fadd float %.sroa.0.sroa.5.0.copyload.i439, %.sroa.0.sroa.6.0.copyload.i441
  %i.el = fmul float %i.ek, 5.000000e-01
  %i.em = insertelement <2 x float> %i.af, float %.sroa.6501.0.copyload, i64 1
  %i.en = fsub <2 x float> %i.em, %.sroa.0505.0.copyload
  %i.eo = fsub float %.sroa.8503.0.copyload, %.sroa.8508.0.copyload
  %i.ep = insertelement <2 x float> %i.ag, float %.sroa.6496.0.copyload, i64 1
  %i.eq = fsub <2 x float> %i.ep, %.sroa.0505.0.copyload
  %i.er = fsub float %.sroa.8.0.copyload, %.sroa.8508.0.copyload
  %.sroa.0.sroa.2.0..sroa_idx.i461 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i467 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.sroa.5.0.copyload.i468 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i467, align 16
  %.sroa.0.sroa.6.0..sroa_idx.i469 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.0.sroa.6.0.copyload.i470 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i469, align 4
  %i.es = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i461, align 4
  %i.et = load <4 x float>, ptr %5, align 16
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ev = fadd <2 x float> %i.es, %i.eu
  %i.ew = fmul <2 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = fadd float %.sroa.0.sroa.5.0.copyload.i468, %.sroa.0.sroa.6.0.copyload.i470
  %i.ey = fmul float %i.ex, 5.000000e-01
  store <2 x float> %i.ew, ptr %6, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ey, ptr %.sroa.29.0..sroa_idx, align 8
  %i.ez = call <2 x float> @_ZN4pbrt30InvertSphericalRectangleSampleENS_6Point3IfEES1_NS_7Vector3IfEES3_S1_(<2 x float> %i.ej, float %i.el, <2 x float> %.sroa.0505.0.copyload, float %.sroa.8508.0.copyload, <2 x float> %i.en, float %i.eo, <2 x float> %i.eq, float %i.er, ptr noundef nonnull byval(%"class.pbrt::Point3") align 8 %6) ; 3 uses
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fb = fcmp ogt <4 x float> %i.fa, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.fc = fcmp olt <4 x float> %i.fa, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.fd = shufflevector <4 x i1> %i.fb, <4 x i1> %i.fc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fe = freeze <4 x i1> %i.fd
  %i.ff = bitcast <4 x i1> %i.fe to i4
  %.not518 = icmp eq i4 %i.ff, 0
  br i1 %.not518, label %bb.f, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

bb.f:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %i.ez, i64 1 ; 3 uses
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %i.ez, i64 0 ; 3 uses
  %i.fg = insertelement <4 x float> poison, float %.sroa.268.0.copyload.pre, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fi = fmul <4 x float> %i.by, %i.fh           ; 2 uses
  %i.fj = shufflevector <2 x float> %.sroa.067.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fk = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.fj, <4 x float> %i.bu, <4 x float> %i.fi)
  %i.fl = fneg <4 x float> %i.fi
  %i.fm = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.fh, <4 x float> %i.by, <4 x float> %i.fl)
  %i.fn = fadd <4 x float> %i.fk, %i.fm
  %i.fo = shufflevector <2 x float> %.sroa.067.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fp = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.fo, <4 x float> %i.bt, <4 x float> %i.fn)
  %i.fq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fp) ; 2 uses
  %i.fr = fcmp ogt <4 x float> %i.fq, splat (float f0x3C23D70A)
  %i.fs = select <4 x i1> %i.fr, <4 x float> %i.fq, <4 x float> splat (float f0x3C23D70A) ; 4 uses
  %i.ft = extractelement <4 x float> %i.fs, i64 0 ; 2 uses
  %i.fu = extractelement <4 x float> %i.fs, i64 1 ; 2 uses
  %i.fv = fadd float %i.ft, %i.fu
  %i.fw = extractelement <4 x float> %i.fs, i64 2 ; 2 uses
  %i.fx = fadd float %i.fv, %i.fw
  %i.fy = extractelement <4 x float> %i.fs, i64 3 ; 2 uses
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = fsub float 1.000000e+00, %.sroa.020.0.vec.extract.i ; 2 uses
  %i.gb = fsub float 1.000000e+00, %.sroa.020.4.vec.extract.i ; 2 uses
  %i.gc = fmul float %i.ga, %i.gb
  %i.gd = fmul float %i.gc, %i.ft
  %i.ge = fmul float %.sroa.020.0.vec.extract.i, %i.gb
  %i.gf = fmul float %i.ge, %i.fu
  %i.gg = fadd float %i.gd, %i.gf
  %i.gh = fmul float %.sroa.020.4.vec.extract.i, %i.ga
  %i.gi = fmul float %i.gh, %i.fw
  %i.gj = fadd float %i.gg, %i.gi
  %i.gk = fmul float %.sroa.020.0.vec.extract.i, %.sroa.020.4.vec.extract.i
  %i.gl = fmul float %i.gk, %i.fy
  %i.gm = fadd float %i.gj, %i.gl
end_hunk_1
