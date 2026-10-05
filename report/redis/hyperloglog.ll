Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hyperloglog?download=true
inline.NumInlined: 34
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@hllCount:bb.a
  %i.hb = extractelement <2 x double> %i.ha, i64 1
  %i.hc = fadd double %i.gz, %i.hb
  %i.hd = fmul double %i.hc, 5.000000e-01
  %i.he = extractelement <2 x double> %i.ha, i64 0
  %i.hf = fadd double %i.hd, %i.he
  %i.hg = fmul double %i.hf, 5.000000e-01
  %i.hh = sitofp <2 x i32> %i.ed to <2 x double>  ; 2 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 1
  %i.hj = fadd double %i.hg, %i.hi
  %i.hk = fmul double %i.hj, 5.000000e-01
  %i.hl = extractelement <2 x double> %i.hh, i64 0
  %i.hm = fadd double %i.hk, %i.hl
  %i.hn = fmul double %i.hm, 5.000000e-01
  %i.ho = sitofp <2 x i32> %i.ef to <2 x double>  ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1
  %i.hq = fadd double %i.hn, %i.hp
  %i.hr = fmul double %i.hq, 5.000000e-01
  %i.hs = extractelement <2 x double> %i.ho, i64 0
  %i.ht = fadd double %i.hr, %i.hs
  %i.hu = fmul double %i.ht, 5.000000e-01
  %i.hv = sitofp <2 x i32> %i.eh to <2 x double>  ; 2 uses
  %i.hw = extractelement <2 x double> %i.hv, i64 1
  %i.hx = fadd double %i.hu, %i.hw
  %i.hy = fmul double %i.hx, 5.000000e-01
  %i.hz = extractelement <2 x double> %i.hv, i64 0
  %i.ia = fadd double %i.hy, %i.hz
  %i.ib = fmul double %i.ia, 5.000000e-01
  %i.ic = sitofp <2 x i32> %i.ej to <2 x double>  ; 2 uses
  %i.id = extractelement <2 x double> %i.ic, i64 1
  %i.ie = fadd double %i.ib, %i.id
  %i.if = fmul double %i.ie, 5.000000e-01
  %i.ig = extractelement <2 x double> %i.ic, i64 0
  %i.ih = fadd double %i.if, %i.ig
  %i.ii = fmul double %i.ih, 5.000000e-01
  %i.ij = sitofp <2 x i32> %i.el to <2 x double>  ; 2 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 1
  %i.il = fadd double %i.ii, %i.ik
  %i.im = fmul double %i.il, 5.000000e-01
  %i.in = extractelement <2 x double> %i.ij, i64 0
  %i.io = fadd double %i.im, %i.in
  %i.ip = fmul double %i.io, 5.000000e-01
  %i.iq = sitofp <2 x i32> %i.en to <2 x double>  ; 2 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 1
  %i.is = fadd double %i.ip, %i.ir
  %i.it = fmul double %i.is, 5.000000e-01
  %i.iu = extractelement <2 x double> %i.iq, i64 0
  %i.iv = fadd double %i.it, %i.iu
  %i.iw = fmul double %i.iv, 5.000000e-01
  %i.ix = sitofp <2 x i32> %i.ep to <2 x double>  ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 1
  %i.iz = fadd double %i.iw, %i.iy
  %i.ja = fmul double %i.iz, 5.000000e-01
  %i.jb = extractelement <2 x double> %i.ix, i64 0
  %i.jc = fadd double %i.ja, %i.jb
  %i.jd = fmul double %i.jc, 5.000000e-01
  %i.je = sitofp <2 x i32> %i.er to <2 x double>  ; 2 uses
  %i.jf = extractelement <2 x double> %i.je, i64 1
  %i.jg = fadd double %i.jd, %i.jf
  %i.jh = fmul double %i.jg, 5.000000e-01
  %i.ji = extractelement <2 x double> %i.je, i64 0
  %i.jj = fadd double %i.jh, %i.ji
  %i.jk = fmul double %i.jj, 5.000000e-01
  %i.jl = sitofp <2 x i32> %i.et to <2 x double>  ; 2 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 1
  %i.jn = fadd double %i.jk, %i.jm
  %i.jo = fmul double %i.jn, 5.000000e-01
  %i.jp = extractelement <2 x double> %i.jl, i64 0
  %i.jq = fadd double %i.jo, %i.jp
  %i.jr = fmul double %i.jq, 5.000000e-01
  %i.js = sitofp <2 x i32> %i.ev to <2 x double>  ; 2 uses
  %i.jt = extractelement <2 x double> %i.js, i64 1
  %i.ju = fadd double %i.jr, %i.jt
  %i.jv = fmul double %i.ju, 5.000000e-01
  %i.jw = extractelement <2 x double> %i.js, i64 0
  %i.jx = fadd double %i.jv, %i.jw
  %i.jy = fmul double %i.jx, 5.000000e-01
  %i.jz = sitofp <2 x i32> %i.ex to <2 x double>  ; 2 uses
  %i.ka = extractelement <2 x double> %i.jz, i64 1
  %i.kb = fadd double %i.jy, %i.ka
  %i.kc = fmul double %i.kb, 5.000000e-01
  %i.kd = extractelement <2 x double> %i.jz, i64 0
  %i.ke = fadd double %i.kc, %i.kd
  %i.kf = fmul double %i.ke, 5.000000e-01
  %i.kg = sitofp <2 x i32> %i.ez to <2 x double>  ; 2 uses
  %i.kh = extractelement <2 x double> %i.kg, i64 1
  %i.ki = fadd double %i.kf, %i.kh
  %i.kj = fmul double %i.ki, 5.000000e-01
  %i.kk = extractelement <2 x double> %i.kg, i64 0
  %i.kl = fadd double %i.kj, %i.kk
  %i.km = fmul double %i.kl, 5.000000e-01
  %i.kn = sitofp <2 x i32> %i.fb to <2 x double>  ; 2 uses
  %i.ko = extractelement <2 x double> %i.kn, i64 1
  %i.kp = fadd double %i.km, %i.ko
  %i.kq = fmul double %i.kp, 5.000000e-01
  %i.kr = extractelement <2 x double> %i.kn, i64 0
  %i.ks = fadd double %i.kq, %i.kr
  %i.kt = fmul double %i.ks, 5.000000e-01
  %i.ku = sitofp <2 x i32> %i.fd to <2 x double>  ; 2 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 1
  %i.kw = fadd double %i.kt, %i.kv
  %i.kx = fmul double %i.kw, 5.000000e-01
  %i.ky = extractelement <2 x double> %i.ku, i64 0
  %i.kz = fadd double %i.kx, %i.ky
  %i.la = fmul double %i.kz, 5.000000e-01
  %i.lb = sitofp <2 x i32> %i.ff to <2 x double>  ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 1
  %i.ld = fadd double %i.la, %i.lc
  %i.le = fmul double %i.ld, 5.000000e-01
  %i.lf = extractelement <2 x double> %i.lb, i64 0
  %i.lg = fadd double %i.le, %i.lf
  %i.lh = fmul double %i.lg, 5.000000e-01
  %i.li = sitofp <2 x i32> %i.fh to <2 x double>  ; 2 uses
  %i.lj = extractelement <2 x double> %i.li, i64 1
  %i.lk = fadd double %i.lh, %i.lj
  %i.ll = fmul double %i.lk, 5.000000e-01
  %i.lm = extractelement <2 x double> %i.li, i64 0
  %i.ln = fadd double %i.ll, %i.lm
  %i.lo = fmul double %i.ln, 5.000000e-01
  %i.lp = sitofp <2 x i32> %i.fj to <2 x double>  ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 1
  %i.lr = fadd double %i.lo, %i.lq
  %i.ls = fmul double %i.lr, 5.000000e-01
  %i.lt = extractelement <2 x double> %i.lp, i64 0
  %i.lu = fadd double %i.ls, %i.lt
  %i.lv = fmul double %i.lu, 5.000000e-01
  %i.lw = sitofp <2 x i32> %i.fl to <2 x double>  ; 2 uses
  %i.lx = extractelement <2 x double> %i.lw, i64 1
  %i.ly = fadd double %i.lv, %i.lx
  %i.lz = fmul double %i.ly, 5.000000e-01
  %i.ma = extractelement <2 x double> %i.lw, i64 0
  %i.mb = fadd double %i.lz, %i.ma
  %i.mc = fmul double %i.mb, 5.000000e-01
  %i.md = sitofp <2 x i32> %i.fn to <2 x double>  ; 2 uses
  %i.me = extractelement <2 x double> %i.md, i64 1
  %i.mf = fadd double %i.mc, %i.me
  %i.mg = fmul double %i.mf, 5.000000e-01
  %i.mh = extractelement <2 x double> %i.md, i64 0
  %i.mi = fadd double %i.mg, %i.mh
  %i.mj = fmul double %i.mi, 5.000000e-01
  %i.mk = sitofp <2 x i32> %i.fp to <2 x double>  ; 2 uses
  %i.ml = extractelement <2 x double> %i.mk, i64 1
  %i.mm = fadd double %i.mj, %i.ml
  %i.mn = fmul double %i.mm, 5.000000e-01
  %i.mo = extractelement <2 x double> %i.mk, i64 0
  %i.mp = fadd double %i.mn, %i.mo
  %i.mq = fmul double %i.mp, 5.000000e-01
  %i.mr = tail call double @llvm.fmuladd.f64(double %.016.i29, double 1.638400e+04, double %i.mq)
  %i.ms = fdiv double f0x41A71547652B82FE, %i.mr
  %i.mt = fpext double %i.ms to x86_fp80
  %i.mu = tail call i64 @llroundl(x86_fp80 noundef %i.mt) #19, !tbaa !19
  %i.mv = sitofp i64 %i.mu to double
  %i.mw = fptoui double %i.mv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %i.mw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @llroundl(x86_fp80 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @hllAdd(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  switch i8 %i.d, label %bb.d [
    i8 0, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = tail call i32 @hllDenseAdd(ptr noundef nonnull %i.e, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @hllSparseAdd(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.c ], [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @hllMergeDenseAVX2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 6
  %i.d = add i64 %i.a, 8
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !95

bb.b:                                             ; preds = %.rtcont, %bb.b
  %.070125 = phi ptr [ %.rtmerge, %.rtcont ], [ %i.y, %bb.b ] ; 2 uses
  %.071124 = phi ptr [ %.rtmerge130, %.rtcont ], [ %i.z, %bb.b ] ; 3 uses
  %.072123 = phi i32 [ 0, %.rtcont ], [ %i.aa, %bb.b ]
  %i.e = load <32 x i8>, ptr %.070125, align 1, !tbaa !23
  %i.f = shufflevector <32 x i8> %i.e, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 32, i32 7, i32 8, i32 9, i32 32, i32 10, i32 11, i32 12, i32 32, i32 13, i32 14, i32 15, i32 32, i32 16, i32 17, i32 18, i32 48, i32 19, i32 20, i32 21, i32 48, i32 22, i32 23, i32 24, i32 48, i32 25, i32 26, i32 27, i32 48> ; 2 uses
  %i.g = bitcast <32 x i8> %i.f to <4 x i64>
  %i.h = and <4 x i64> %i.g, splat (i64 270582939711)
  %i.i = bitcast <32 x i8> %i.f to <8 x i32>      ; 3 uses
  %i.j = shl nuw nsw <8 x i32> %i.i, splat (i32 2)
  %i.k = bitcast <8 x i32> %i.j to <4 x i64>
  %i.l = and <4 x i64> %i.k, splat (i64 69269232566016)
  %i.m = shl nuw nsw <8 x i32> %i.i, splat (i32 4)
  %i.n = bitcast <8 x i32> %i.m to <4 x i64>
  %i.o = and <4 x i64> %i.n, splat (i64 17732923536900096)
  %i.p = shl nuw nsw <8 x i32> %i.i, splat (i32 6)
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>
  %i.r = and <4 x i64> %i.q, splat (i64 4539628425446424576)
  %i.s = or disjoint <4 x i64> %i.l, %i.h
  %i.t = or disjoint <4 x i64> %i.s, %i.r
  %i.u = or disjoint <4 x i64> %i.t, %i.o
  %i.v = load <32 x i8>, ptr %.071124, align 1, !tbaa !23
  %i.w = bitcast <4 x i64> %i.u to <32 x i8>
  %i.x = tail call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.v, <32 x i8> %i.w)
  store <32 x i8> %i.x, ptr %.071124, align 1, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %.070125, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.071124, i64 32
  %i.aa = add nuw nsw i32 %.072123, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, 511
  br i1 %exitcond.not, label %vector.memcheck, label %bb.b, !llvm.loop !90

vector.memcheck:                                  ; preds = %bb.b
  %2 = getelementptr i8, ptr %0, i64 16360
  %3 = getelementptr i8, ptr %0, i64 16384
  %4 = getelementptr i8, ptr %1, i64 12270
  %5 = getelementptr i8, ptr %1, i64 12289
  %bound0 = icmp ult ptr %2, %5
  %bound1 = icmp ult ptr %4, %3
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 12270
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 12270
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 12273
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 12274
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 12275
  %11 = load i8, ptr %6, align 1, !tbaa !23, !alias.scope !96
  %12 = load <4 x i8>, ptr %7, align 1, !tbaa !23, !alias.scope !96
  %13 = load i8, ptr %8, align 1, !tbaa !23, !alias.scope !96
  %14 = load i8, ptr %9, align 1, !tbaa !23, !alias.scope !96
  %15 = load i8, ptr %10, align 1, !tbaa !23, !alias.scope !96
  %16 = insertelement <8 x i8> poison, i8 %11, i64 0
  %17 = shufflevector <4 x i8> %12, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <8 x i8> %16, <8 x i8> %17, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %19 = insertelement <8 x i8> %18, i8 %13, i64 5
  %20 = insertelement <8 x i8> %19, i8 %14, i64 6
  %21 = insertelement <8 x i8> %20, i8 %15, i64 7
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 12271
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 12271
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 12274
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 12275
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 12276
  %27 = load i8, ptr %22, align 1, !tbaa !23, !alias.scope !96
  %28 = load <4 x i8>, ptr %23, align 1, !tbaa !23, !alias.scope !96
  %29 = load i8, ptr %24, align 1, !tbaa !23, !alias.scope !96
  %30 = load i8, ptr %25, align 1, !tbaa !23, !alias.scope !96
  %31 = load i8, ptr %26, align 1, !tbaa !23, !alias.scope !96
  %32 = insertelement <8 x i8> poison, i8 %27, i64 0
  %33 = shufflevector <4 x i8> %28, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <8 x i8> %32, <8 x i8> %33, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %35 = insertelement <8 x i8> %34, i8 %29, i64 5
  %36 = insertelement <8 x i8> %35, i8 %30, i64 6
  %37 = insertelement <8 x i8> %36, i8 %31, i64 7
  %38 = tail call <8 x i8> @llvm.fshr.v8i8(<8 x i8> %37, <8 x i8> %21, <8 x i8> <i8 0, i8 6, i8 4, i8 2, i8 0, i8 6, i8 4, i8 2>)
  %39 = and <8 x i8> %38, splat (i8 63)
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16360 ; 2 uses
  %wide.load = load <8 x i8>, ptr %40, align 1, !tbaa !23, !alias.scope !97, !noalias !96
  %41 = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load, <8 x i8> %39)
  store <8 x i8> %41, ptr %40, align 1, !tbaa !23, !alias.scope !97, !noalias !96
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 12276
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 12276
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 12279
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 12280
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 12281
  %47 = load i8, ptr %42, align 1, !tbaa !23, !alias.scope !96
  %48 = load <4 x i8>, ptr %43, align 1, !tbaa !23, !alias.scope !96
  %49 = load i8, ptr %44, align 1, !tbaa !23, !alias.scope !96
  %50 = load i8, ptr %45, align 1, !tbaa !23, !alias.scope !96
  %51 = load i8, ptr %46, align 1, !tbaa !23, !alias.scope !96
  %52 = insertelement <8 x i8> poison, i8 %47, i64 0
  %53 = shufflevector <4 x i8> %48, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %54 = shufflevector <8 x i8> %52, <8 x i8> %53, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %55 = insertelement <8 x i8> %54, i8 %49, i64 5
  %56 = insertelement <8 x i8> %55, i8 %50, i64 6
  %57 = insertelement <8 x i8> %56, i8 %51, i64 7
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 12277
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 12277
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 12280
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 12281
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 12282
  %63 = load i8, ptr %58, align 1, !tbaa !23, !alias.scope !96
  %64 = load <4 x i8>, ptr %59, align 1, !tbaa !23, !alias.scope !96
  %65 = load i8, ptr %60, align 1, !tbaa !23, !alias.scope !96
  %66 = load i8, ptr %61, align 1, !tbaa !23, !alias.scope !96
  %67 = load i8, ptr %62, align 1, !tbaa !23, !alias.scope !96
  %68 = insertelement <8 x i8> poison, i8 %63, i64 0
  %69 = shufflevector <4 x i8> %64, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %70 = shufflevector <8 x i8> %68, <8 x i8> %69, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %71 = insertelement <8 x i8> %70, i8 %65, i64 5
  %72 = insertelement <8 x i8> %71, i8 %66, i64 6
  %73 = insertelement <8 x i8> %72, i8 %67, i64 7
  %74 = tail call <8 x i8> @llvm.fshr.v8i8(<8 x i8> %73, <8 x i8> %57, <8 x i8> <i8 0, i8 6, i8 4, i8 2, i8 0, i8 6, i8 4, i8 2>)
  %75 = and <8 x i8> %74, splat (i8 63)
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16368 ; 2 uses
  %wide.load.1 = load <8 x i8>, ptr %76, align 1, !tbaa !23, !alias.scope !97, !noalias !96
  %77 = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load.1, <8 x i8> %75)
  store <8 x i8> %77, ptr %76, align 1, !tbaa !23, !alias.scope !97, !noalias !96
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 12282
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 12282
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 12285
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 12286
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 12287
  %83 = load i8, ptr %78, align 1, !tbaa !23, !alias.scope !96
  %84 = load <4 x i8>, ptr %79, align 1, !tbaa !23, !alias.scope !96
  %85 = load i8, ptr %80, align 1, !tbaa !23, !alias.scope !96
  %86 = load i8, ptr %81, align 1, !tbaa !23, !alias.scope !96
  %87 = load i8, ptr %82, align 1, !tbaa !23, !alias.scope !96
  %88 = insertelement <8 x i8> poison, i8 %83, i64 0
  %89 = shufflevector <4 x i8> %84, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %90 = shufflevector <8 x i8> %88, <8 x i8> %89, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %91 = insertelement <8 x i8> %90, i8 %85, i64 5
  %92 = insertelement <8 x i8> %91, i8 %86, i64 6
  %93 = insertelement <8 x i8> %92, i8 %87, i64 7
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 12283
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 12283
  %96 = getelementptr inbounds nuw i8, ptr %1, i64 12286
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 12287
  %98 = getelementptr inbounds nuw i8, ptr %1, i64 12288
  %99 = load i8, ptr %94, align 1, !tbaa !23, !alias.scope !96
  %100 = load <4 x i8>, ptr %95, align 1, !tbaa !23, !alias.scope !96
  %101 = load i8, ptr %96, align 1, !tbaa !23, !alias.scope !96
  %102 = load i8, ptr %97, align 1, !tbaa !23, !alias.scope !96
  %103 = load i8, ptr %98, align 1, !tbaa !23, !alias.scope !96
  %104 = insertelement <8 x i8> poison, i8 %99, i64 0
  %105 = shufflevector <4 x i8> %100, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %106 = shufflevector <8 x i8> %104, <8 x i8> %105, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %107 = insertelement <8 x i8> %106, i8 %101, i64 5
  %108 = insertelement <8 x i8> %107, i8 %102, i64 6
  %109 = insertelement <8 x i8> %108, i8 %103, i64 7
  %110 = tail call <8 x i8> @llvm.fshr.v8i8(<8 x i8> %109, <8 x i8> %93, <8 x i8> <i8 0, i8 6, i8 4, i8 2, i8 0, i8 6, i8 4, i8 2>)
  %111 = and <8 x i8> %110, splat (i8 63)
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 16376 ; 2 uses
  %wide.load.2 = load <8 x i8>, ptr %112, align 1, !tbaa !23, !alias.scope !97, !noalias !96
  %113 = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load.2, <8 x i8> %111)
  store <8 x i8> %113, ptr %112, align 1, !tbaa !23, !alias.scope !97, !noalias !96
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %vector.body
  ret void

.preheader:                                       ; preds = %vector.memcheck, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 16360, %vector.memcheck ] ; 4 uses
  %i.ab = trunc i64 %indvars.iv to i32
  %i.ac = mul nuw nsw i32 %i.ab, 6                ; 2 uses
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = trunc i32 %i.ac to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !23
  %i.ak = tail call i8 @llvm.fshr.i8(i8 %i.aj, i8 %i.ah, i8 %i.af)
  %i.al = and i8 %i.ak, 63
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  %.79 = tail call i8 @llvm.umax.i8(i8 %i.an, i8 %i.al)
  store i8 %.79, ptr %i.am, align 1, !tbaa !23
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ao = trunc i64 %indvars.iv.next to i32
  %i.ap = mul nuw nsw i32 %i.ao, 6                ; 2 uses
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = trunc i32 %i.ap to i8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23
  %i.ax = tail call i8 @llvm.fshr.i8(i8 %i.aw, i8 %i.au, i8 %i.as)
  %i.ay = and i8 %i.ax, 63
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !23
  %.79.1 = tail call i8 @llvm.umax.i8(i8 %i.ba, i8 %i.ay)
  store i8 %.79.1, ptr %i.az, align 1, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond129.not.1 = icmp eq i64 %indvars.iv.next.1, 16384
  br i1 %exitcond129.not.1, label %bb.c, label %.preheader, !llvm.loop !94

.rtvec:                                           ; preds = %bb.a
  %i.bb = load i8, ptr %1, align 1, !tbaa !23     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !23  ; 2 uses
  %i.be = tail call i8 @llvm.fshl.i8(i8 %i.bd, i8 %i.bb, i8 2)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23
  %i.bh = tail call i8 @llvm.fshl.i8(i8 %i.bg, i8 %i.bd, i8 4)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23  ; 2 uses
  %i.bn = tail call i8 @llvm.fshl.i8(i8 %i.bm, i8 %i.bk, i8 2)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !23  ; 2 uses
  %i.bq = tail call i8 @llvm.fshl.i8(i8 %i.bp, i8 %i.bm, i8 4)
  %i.br = load <2 x i8>, ptr %i.bi, align 1, !tbaa !23
  %i.bs = shufflevector <2 x i8> %i.br, <2 x i8> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bb, i64 0
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.be, i64 1
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bh, i64 2
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bn, i64 5
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bq, i64 6
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bp, i64 7 ; 2 uses
  %i.bz = and <8 x i8> %i.by, <i8 63, i8 63, i8 63, i8 poison, i8 63, i8 63, i8 63, i8 poison>
  %i.ca = lshr <8 x i8> %i.by, <i8 63, i8 63, i8 63, i8 2, i8 63, i8 63, i8 63, i8 2>
  %i.cb = shufflevector <8 x i8> %i.bz, <8 x i8> %i.ca, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 5, i32 6, i32 15>
  %i.cc = load <8 x i8>, ptr %0, align 1, !tbaa !23
  %i.cd = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %i.cc, <8 x i8> %i.cb)
  store <8 x i8> %i.cd, ptr %0, align 1, !tbaa !23
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ce = load i8, ptr %1, align 1, !tbaa !23
  %i.cf = and i8 %i.ce, 63
  %i.cg = load i8, ptr %0, align 1, !tbaa !23
  %..scalar = tail call i8 @llvm.umax.i8(i8 %i.cg, i8 %i.cf)
  store i8 %..scalar, ptr %0, align 1, !tbaa !23
  %i.ch = load i8, ptr %1, align 1, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23
  %i.ck = tail call i8 @llvm.fshl.i8(i8 %i.cj, i8 %i.ch, i8 2)
  %i.cl = and i8 %i.ck, 63
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23
  %..1.scalar = tail call i8 @llvm.umax.i8(i8 %i.cn, i8 %i.cl)
  store i8 %..1.scalar, ptr %i.cm, align 1, !tbaa !23
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cr = tail call i8 @llvm.fshl.i8(i8 %i.cq, i8 %i.co, i8 4)
  %i.cs = and i8 %i.cr, 63
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !23
  %..2.scalar = tail call i8 @llvm.umax.i8(i8 %i.cu, i8 %i.cs)
  store i8 %..2.scalar, ptr %i.ct, align 1, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !23
  %i.cx = lshr i8 %i.cw, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23
  %..3.scalar = tail call i8 @llvm.umax.i8(i8 %i.cz, i8 %i.cx)
  store i8 %..3.scalar, ptr %i.cy, align 1, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !23
  %i.dc = and i8 %i.db, 63
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !23
  %..4.scalar = tail call i8 @llvm.umax.i8(i8 %i.de, i8 %i.dc)
  store i8 %..4.scalar, ptr %i.dd, align 1, !tbaa !23
  %i.df = load i8, ptr %i.da, align 1, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !23
  %i.di = tail call i8 @llvm.fshl.i8(i8 %i.dh, i8 %i.df, i8 2)
  %i.dj = and i8 %i.di, 63
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !23
  %..5.scalar = tail call i8 @llvm.umax.i8(i8 %i.dl, i8 %i.dj)
  store i8 %..5.scalar, ptr %i.dk, align 1, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !23
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = tail call i8 @llvm.fshl.i8(i8 %i.dp, i8 %i.dn, i8 4)
  %i.dr = and i8 %i.dq, 63
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !23
  %..6.scalar = tail call i8 @llvm.umax.i8(i8 %i.dt, i8 %i.dr)
  store i8 %..6.scalar, ptr %i.ds, align 1, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !23
  %i.dw = lshr i8 %i.dv, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !23
  %..7.scalar = tail call i8 @llvm.umax.i8(i8 %i.dy, i8 %i.dw)
  store i8 %..7.scalar, ptr %i.dx, align 1, !tbaa !23
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge = phi ptr [ %i.bi, %.rtvec ], [ %i.cv, %.rtscalar ]
  %.rtmerge130 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hllMergeDense(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %.b = load i1, ptr @simd_enabled, align 4
  br i1 %.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.b = and i32 %i.a, 1024
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hllMergeDenseAVX2(ptr noundef %0, ptr noundef %1)
  br label %.loopexit

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %i.c = trunc i64 %indvars.iv to i32
  %i.d = mul nuw nsw i32 %i.c, 6                  ; 2 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = trunc i32 %i.d to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = tail call i8 @llvm.fshr.i8(i8 %i.k, i8 %i.i, i8 %i.g)
  %i.m = and i8 %i.l, 63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %. = tail call i8 @llvm.umax.i8(i8 %i.o, i8 %i.m)
  store i8 %., ptr %i.n, align 1, !tbaa !23
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = trunc i64 %indvars.iv.next to i32
  %i.q = mul nuw nsw i32 %i.p, 6                  ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = trunc i32 %i.q to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23
  %i.y = tail call i8 @llvm.fshr.i8(i8 %i.x, i8 %i.v, i8 %i.t)
  %i.z = and i8 %i.y, 63
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  %..1 = tail call i8 @llvm.umax.i8(i8 %i.ab, i8 %i.z)
  store i8 %..1, ptr %i.aa, align 1, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 16384
  br i1 %exitcond.not.1, label %.loopexit, label %bb.d, !llvm.loop !5

.loopexit:                                        ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @hllMerge(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.b.i = load i1, ptr @simd_enabled, align 4
  br i1 %.b.i, label %.preheader68, label %bb.c

.preheader68:                                     ; preds = %bb.c, %bb.b
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.h = and i32 %i.g, 1024
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.preheader68, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @hllMergeDenseAVX2(ptr noundef %0, ptr noundef nonnull readonly %i.f)
  br label %hllMergeDense.exit

bb.e:                                             ; preds = %bb.e, %.preheader68
  %indvars.iv.i = phi i64 [ 0, %.preheader68 ], [ %indvars.iv.next.i.1, %bb.e ] ; 4 uses
  %i.i = trunc i64 %indvars.iv.i to i32
  %i.j = mul nuw nsw i32 %i.i, 6                  ; 2 uses
  %i.k = lshr i32 %i.j, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = trunc i32 %i.j to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23
  %i.r = tail call i8 @llvm.fshr.i8(i8 %i.q, i8 %i.o, i8 %i.m)
  %i.s = and i8 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %..i = tail call i8 @llvm.umax.i8(i8 %i.u, i8 %i.s)
  store i8 %..i, ptr %i.t, align 1, !tbaa !23
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = trunc i64 %indvars.iv.next.i to i32
  %i.w = mul nuw nsw i32 %i.v, 6                  ; 2 uses
  %i.x = lshr i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = trunc i32 %i.w to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  %i.ae = tail call i8 @llvm.fshr.i8(i8 %i.ad, i8 %i.ab, i8 %i.z)
  %i.af = and i8 %i.ae, 63
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %..i.1 = tail call i8 @llvm.umax.i8(i8 %i.ah, i8 %i.af)
  store i8 %..i.1, ptr %i.ag, align 1, !tbaa !23
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 16384
  br i1 %exitcond.not.i.1, label %hllMergeDense.exit, label %bb.e, !llvm.loop !5

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.b, i64 -1
  %.val.i = load i8, ptr %i.ai, align 1, !tbaa !23 ; 2 uses
  %i.aj = and i8 %.val.i, 7
  switch i8 %i.aj, label %.thread [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = lshr i8 %.val.i, 3
  %i.al = zext nneg i8 %i.ak to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  %i.ao = zext i8 %i.an to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 -5
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !28
  %i.ar = zext i16 %i.aq to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds i8, ptr %i.b, i64 -9
  %i.at = load i32, ptr %i.as, align 1, !tbaa !19
  %i.au = zext i32 %i.at to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.b, i64 -17
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !21
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i64 [ %i.aw, %bb.k ], [ %i.al, %bb.g ], [ %i.ao, %bb.h ], [ %i.ar, %bb.i ], [ %i.au, %bb.j ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i
  %.not5760 = icmp samesign ugt i64 %.0.i, 16
  br i1 %.not5760, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %sdslen.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.04462 = phi ptr [ %i.cn, %.loopexit ], [ %i.ay, %.lr.ph.preheader ] ; 3 uses
  %.04561 = phi i32 [ %.2, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.az = load i8, ptr %.04462, align 1, !tbaa !23 ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 4 uses
  %trunc = and i8 %i.az, -64
  switch i8 %trunc, label %bb.n [
    i8 0, label %bb.l
    i8 64, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = sext i32 %.04561 to i64
  %i.be = add nsw i64 %i.bc, %i.bd                ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16384
  br i1 %i.bf, label %.thread, label %.loopexit

bb.m:                                             ; preds = %.lr.ph
  %i.bg = shl nuw nsw i32 %i.ba, 8
  %i.bh = and i32 %i.bg, 16128
  %i.bi = getelementptr inbounds nuw i8, ptr %.04462, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !23
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, 1
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = sext i32 %.04561 to i64
  %i.bp = add nsw i64 %i.bn, %i.bo                ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 16384
  br i1 %i.bq, label %.thread, label %.loopexit

bb.n:                                             ; preds = %.lr.ph
  %i.br = and i32 %i.ba, 3                        ; 4 uses
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = lshr i32 %i.ba, 2
  %i.bv = and i32 %i.bu, 31                       ; 5 uses
  %i.bw = sext i32 %.04561 to i64                 ; 6 uses
  %i.bx = add nsw i64 %i.bt, %i.bw
  %i.by = icmp sgt i64 %i.bx, 16384
  br i1 %i.by, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.bz = trunc nuw nsw i32 %i.bv to i8
  %i.ca = add nuw nsw i8 %i.bz, 1                 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.bw ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %i.cd = zext i8 %i.cc to i32
  %.not53 = icmp samesign ult i32 %i.bv, %i.cd
  br i1 %.not53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader
  %indvars.iv.next = add nsw i64 %i.bw, 1         ; 2 uses
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23
  %i.cg = zext i8 %i.cf to i32
  %.not53.1 = icmp samesign ult i32 %i.bv, %i.cg
  br i1 %.not53.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 %i.ca, ptr %i.ce, align 1, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.1 = add nsw i64 %i.bw, 2       ; 2 uses
  %.not.1 = icmp eq i32 %i.br, 1
  br i1 %.not.1, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next.1 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = zext i8 %i.ci to i32
  %.not53.2 = icmp samesign ult i32 %i.bv, %i.cj
  br i1 %.not53.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 %i.ca, ptr %i.ch, align 1, !tbaa !23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.2 = add nsw i64 %i.bw, 3       ; 2 uses
  %.not.2 = icmp eq i32 %i.br, 2
  br i1 %.not.2, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next.2 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23
  %i.cm = zext i8 %i.cl to i32
  %.not53.3 = icmp samesign ult i32 %i.bv, %i.cm
  br i1 %.not53.3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %i.ca, ptr %i.ck, align 1, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.next.3 = add nsw i64 %i.bw, 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.s, %bb.v, %bb.y, %bb.m, %bb.l
  %.sink = phi i64 [ 1, %bb.l ], [ 2, %bb.m ], [ 1, %bb.y ], [ 1, %bb.v ], [ 1, %bb.s ], [ 1, %bb.p ]
  %.2.in = phi i64 [ %i.be, %bb.l ], [ %i.bp, %bb.m ], [ %indvars.iv.next, %bb.p ], [ %indvars.iv.next.1, %bb.s ], [ %indvars.iv.next.2, %bb.v ], [ %indvars.iv.next.3, %bb.y ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.04462, i64 %.sink ; 2 uses
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %.not57 = icmp ult ptr %i.cn, %i.ax
  br i1 %.not57, label %.lr.ph, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %.loopexit
  %i.co = icmp eq i32 %.2, 16384
  br i1 %i.co, label %hllMergeDense.exit, label %.thread

hllMergeDense.exit:                               ; preds = %bb.e, %bb.d, %._crit_edge
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n, %bb.f, %sdslen.exit, %._crit_edge, %hllMergeDense.exit
  %.148 = phi i32 [ 0, %hllMergeDense.exit ], [ -1, %._crit_edge ], [ -1, %bb.f ], [ -1, %sdslen.exit ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.l ]
  ret i32 %.148
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @hllDenseCompressAVX2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.092 = phi ptr [ %1, %bb.a ], [ %i.v, %bb.b ]  ; 2 uses
  %.04991 = phi ptr [ %0, %bb.a ], [ %i.w, %bb.b ] ; 3 uses
  %.05090 = phi i32 [ 0, %bb.a ], [ %i.x, %bb.b ]
  %i.a = load <4 x i64>, ptr %.092, align 1, !tbaa !23 ; 2 uses
  %i.b = and <4 x i64> %i.a, splat (i64 270582939711)
  %i.c = bitcast <4 x i64> %i.a to <8 x i32>      ; 3 uses
  %i.d = lshr <8 x i32> %i.c, splat (i32 2)
  %i.e = bitcast <8 x i32> %i.d to <4 x i64>
  %i.f = and <4 x i64> %i.e, splat (i64 17317308141504)
  %i.g = lshr <8 x i32> %i.c, splat (i32 4)
  %i.h = bitcast <8 x i32> %i.g to <4 x i64>
  %i.i = and <4 x i64> %i.h, splat (i64 1108307721056256)
  %i.j = lshr <8 x i32> %i.c, splat (i32 6)
  %i.k = bitcast <8 x i32> %i.j to <4 x i64>
  %i.l = and <4 x i64> %i.k, splat (i64 70931694147600384)
  %i.m = or disjoint <4 x i64> %i.f, %i.b
  %i.n = or disjoint <4 x i64> %i.m, %i.l
  %i.o = or disjoint <4 x i64> %i.n, %i.i
  %i.p = bitcast <4 x i64> %i.o to <32 x i8>
  %i.q = shufflevector <32 x i8> %i.p, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14, i32 32, i32 32, i32 32, i32 32, i32 16, i32 17, i32 18, i32 20, i32 21, i32 22, i32 24, i32 25, i32 26, i32 28, i32 29, i32 30, i32 48, i32 48, i32 48, i32 48>
  %i.r = bitcast <32 x i8> %i.q to <4 x i64>      ; 2 uses
  %i.s = shufflevector <4 x i64> %i.r, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.t = shufflevector <4 x i64> %i.r, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.s, ptr %.04991, align 1, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %.04991, i64 12
  store <2 x i64> %i.t, ptr %i.u, align 1, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %.092, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.04991, i64 24
  %i.x = add nuw nsw i32 %.05090, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, 511
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !100

bb.c:                                             ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 16352, %bb.b ] ; 3 uses
  %i.y = trunc i64 %indvars.iv to i32
  %i.z = mul i32 %i.y, 6                          ; 2 uses
  %i.aa = lshr i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = and i32 %i.z, 6                         ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = sub nuw nsw i64 8, %i.ad                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23
  %i.ah = zext i8 %i.ag to i64                    ; 2 uses
  %i.ai = shl nuw nsw i32 63, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %i.al = trunc i32 %i.ai to i8
  %i.am = xor i8 %i.al, -1
  %i.an = and i8 %i.ak, %i.am
  %i.ao = shl nuw nsw i64 %i.ah, %i.ad
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = or i8 %i.an, %i.ap
  store i8 %i.aq, ptr %i.aj, align 1, !tbaa !23
  %i.ar = trunc nuw nsw i64 %i.ae to i16
  %i.as = ashr i16 -64, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = trunc nsw i16 %i.as to i8
  %i.aw = and i8 %i.au, %i.av
  %i.ax = lshr i64 %i.ah, %i.ae
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = or i8 %i.aw, %i.ay
  store i8 %i.az, ptr %i.at, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond95.not, label %bb.c, label %.preheader, !llvm.loop !101
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hllDenseCompress(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %.b = load i1, ptr @simd_enabled, align 4
  br i1 %.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.b = and i32 %i.a, 1024
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hllDenseCompressAVX2(ptr noundef %0, ptr noundef %1)
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %i.c = trunc i64 %indvars.iv to i32
  %i.d = mul i32 %i.c, 6                          ; 2 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = and i32 %i.d, 6                          ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = sub nuw nsw i64 8, %i.h                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = shl nuw nsw i32 63, %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = trunc i32 %i.m to i8
  %i.q = xor i8 %i.p, -1
  %i.r = and i8 %i.o, %i.q
  %i.s = shl nuw nsw i64 %i.l, %i.h
  %i.t = trunc i64 %i.s to i8
  %i.u = or i8 %i.r, %i.t
  store i8 %i.u, ptr %i.n, align 1, !tbaa !23
  %i.v = trunc nuw nsw i64 %i.i to i16
  %i.w = ashr i16 -64, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = trunc nsw i16 %i.w to i8
  %i.aa = and i8 %i.y, %i.z
  %i.ab = lshr i64 %i.l, %i.i
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = or i8 %i.aa, %i.ac
  store i8 %i.ad, ptr %i.x, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !6

.loopexit:                                        ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @createHLLObject() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 18) #19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 127, ptr %i.b, align 1, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 -1, ptr %i.c, align 1, !tbaa !23
  %i.d = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.a) #19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  store i32 1280072008, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i8 1, ptr %i.g, align 1, !tbaa !23
  ret ptr %i.d
}

declare ptr @createObject(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @isHLLObjectOrReply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @checkType(ptr noundef %0, ptr noundef %1, i32 noundef 0) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %bb.k [
    i32 0, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = tail call i64 @stringObjectLen(ptr noundef nonnull %1) #19
  %i.g = icmp ult i64 %i.f, 16
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %.not16 = icmp eq i8 %i.j, 72
  br i1 %.not16, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23
  %.not17 = icmp eq i8 %i.l, 89
  br i1 %.not17, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !23
  %.not18 = icmp eq i8 %i.n, 76
  br i1 %.not18, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23
  %.not19 = icmp eq i8 %i.p, 76
  br i1 %.not19, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23    ; 2 uses
  %i.s = icmp ugt i8 %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp eq i8 %i.r, 0
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i64 @stringObjectLen(ptr noundef nonnull %1) #19
  %.not20 = icmp eq i64 %i.u, 12304
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j, %bb.h, %bb.d, %bb.e, %bb.f, %bb.g, %bb.c
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.6) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.a, %bb.k
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0
}

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i64 @stringObjectLen(ptr noundef) local_unnamed_addr #7

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @pfaddCommand(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = call ptr @lookupKeyWriteWithLink(ptr noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a) #19 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.k = call ptr @sdsnewlen(ptr noundef null, i64 noundef 18) #19 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 127, ptr %i.l, align 1, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  store i8 -1, ptr %i.m, align 1, !tbaa !23
  %i.n = call ptr @createObject(i32 noundef 0, ptr noundef %i.k) #19 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  store i32 1280072008, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i8 1, ptr %i.q, align 1, !tbaa !23
  store ptr %i.n, ptr %i.b, align 8, !tbaa !77
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = call ptr @dbAddByLink(ptr noundef %i.r, ptr noundef %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.w = call i32 @isHLLObjectOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.i)
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77
  %i.ab = call ptr @dbUnshareStringValue(ptr noundef %i.x, ptr noundef %i.aa, ptr noundef nonnull %i.i) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.052 = phi ptr [ %i.v, %bb.b ], [ %i.ab, %bb.d ] ; 11 uses
  %.051 = phi i32 [ 1, %bb.b ], [ 0, %bb.d ]      ; 2 uses
  %i.ac = call i64 @stringObjectLen(ptr noundef %.052) #19
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not55 = icmp eq i32 %i.ad, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call i64 @kvobjAllocSize(ptr noundef %.052) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.053 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !79
  %i.ah = icmp sgt i32 %i.ag, 2
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.052, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.162 = phi i32 [ %.051, %.lr.ph ], [ %.3, %bb.r ] ; 2 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 7 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %.val.i = load i8, ptr %i.ao, align 1, !tbaa !23 ; 2 uses
  %i.ap = and i8 %.val.i, 7
  switch i8 %i.ap, label %sdslen.exit [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = lshr i8 %.val.i, 3
  %i.ar = zext nneg i8 %i.aq to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 -3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !23
  %i.au = zext i8 %i.at to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 -5
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !28
  %i.ax = zext i16 %i.aw to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -9
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds i8, ptr %i.an, i64 -17
  %i.bc = load i64, ptr %i.bb, align 1, !tbaa !21
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi i64 [ %i.bc, %bb.m ], [ %i.ar, %bb.i ], [ %i.au, %bb.j ], [ %i.ax, %bb.k ], [ %i.ba, %bb.l ], [ 0, %bb.h ] ; 2 uses
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !23
  switch i8 %i.bf, label %hllAdd.exit.thread [
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %sdslen.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = call i32 @hllDenseAdd(ptr noundef nonnull %i.bg, ptr noundef nonnull readonly %i.an, i64 noundef %.0.i)
  br label %hllAdd.exit

bb.o:                                             ; preds = %sdslen.exit
  %i.bi = call i32 @hllSparseAdd(ptr noundef nonnull %.052, ptr noundef nonnull readonly %i.an, i64 noundef %.0.i)
  br label %hllAdd.exit

hllAdd.exit:                                      ; preds = %bb.n, %bb.o
  %.0.i59 = phi i32 [ %i.bi, %bb.o ], [ %i.bh, %bb.n ]
  switch i32 %.0.i59, label %bb.r [
    i32 1, label %bb.p
    i32 -1, label %hllAdd.exit.thread
  ]

bb.p:                                             ; preds = %hllAdd.exit
  %i.bj = add nsw i32 %.162, 1
  br label %bb.r

hllAdd.exit.thread:                               ; preds = %sdslen.exit, %hllAdd.exit
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.32) #19
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not58 = icmp eq i32 %i.bk, 0
  br i1 %.not58, label %.critedge, label %bb.q

bb.q:                                             ; preds = %hllAdd.exit.thread
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26
  %i.br = call i32 @getKeySlot(ptr noundef %i.bq) #19
  %i.bs = call i64 @kvobjAllocSize(ptr noundef nonnull %.052) #19
  call void @updateSlotAllocSize(ptr noundef %i.bl, i32 noundef %i.br, ptr noundef nonnull %.052, i64 noundef %.053, i64 noundef %i.bs) #19
  br label %.critedge

bb.r:                                             ; preds = %bb.p, %hllAdd.exit
  %.3 = phi i32 [ %.162, %hllAdd.exit ], [ %i.bj, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i32, ptr %i.af, align 8, !tbaa !79
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.h, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.r, %bb.g
  %.1.lcssa = phi i32 [ %.051, %bb.g ], [ %.3, %bb.r ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !26
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26
  %i.ce = call i32 @getKeySlot(ptr noundef %i.cd) #19
  %i.cf = call i64 @stringObjectLen(ptr noundef %.052) #19
  call void @updateKeysizesHist(ptr noundef %i.by, i32 noundef %i.ce, i32 noundef 0, i64 noundef %i.ac, i64 noundef %i.cf) #19
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not56 = icmp eq i32 %i.cg, 0
  br i1 %.not56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !77
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26
  %i.cn = call i32 @getKeySlot(ptr noundef %i.cm) #19
  %i.co = call i64 @kvobjAllocSize(ptr noundef nonnull %.052) #19
  call void @updateSlotAllocSize(ptr noundef %i.ch, i32 noundef %i.cn, ptr noundef nonnull %.052, i64 noundef %.053, i64 noundef %i.co) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %.not57 = icmp eq i32 %.1.lcssa, 0              ; 2 uses
  br i1 %.not57, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 15 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cr = or i8 %i.cq, -128
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !23
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.ct = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !77
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.cs, ptr noundef %i.cv, ptr noundef nonnull %.052, i32 noundef 1) #19
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !77
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.db = load i32, ptr %i.da, align 8, !tbaa !82
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.7, ptr noundef %i.cy, i32 noundef %i.db) #19
  %i.dc = sext i32 %.1.lcssa to i64
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.de = add nsw i64 %i.dd, %i.dc
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8
  %i.dh = select i1 %.not57, ptr %i.dg, ptr %i.df
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dh) #19
  br label %.critedge

.critedge:                                        ; preds = %hllAdd.exit.thread, %bb.q, %bb.c, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @dbUnshareStringValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #7

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #7

declare void @updateKeysizesHist(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @pfcountCommand(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16400 x i8], align 16            ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %i.e = icmp sgt i32 %i.d, 2
  br i1 %i.e, label %.lr.ph, label %bb.g

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16400) %i.a, i8 0, i64 16400, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 -1, ptr %i.f, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = tail call ptr @lookupKeyRead(ptr noundef %i.j, ptr noundef %i.m) #19 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @isHLLObjectOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.n)
  %.not72 = icmp eq i32 %i.p, 0
  br i1 %.not72, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @hllMerge(ptr noundef nonnull %i.g, ptr noundef nonnull %i.n)
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  br label %.thread

bb.f:                                             ; preds = %bb.b, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !79
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.f
  %i.v = call i64 @hllCount(ptr noundef nonnull %i.a, ptr noundef null)
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.v) #19
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77
  %i.ac = tail call ptr @lookupKeyRead(ptr noundef %i.x, ptr noundef %i.ab) #19 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !104
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ae) #19
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.af = tail call i32 @isHLLObjectOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.ac)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77
  %i.ak = tail call ptr @dbUnshareStringValue(ptr noundef %i.ag, ptr noundef %i.aj, ptr noundef nonnull %i.ac) #19 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 15
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !23  ; 2 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.an, align 1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 13
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 48
  %i.bf = zext nneg i8 %i.ap to i64
  %i.bg = shl nuw nsw i64 %i.bf, 56
  %i.bh = or disjoint i64 %i.bg, %i.as
  %i.bi = or disjoint i64 %i.bh, %i.aw
  %i.bj = or disjoint i64 %i.bi, %i.ba
  %i.bk = or disjoint i64 %i.bj, %i.be
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !19
  %i.bl = call i64 @hllCount(ptr noundef nonnull %i.am, ptr noundef nonnull %i.b) ; 2 uses
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !19
  %.not71 = icmp eq i32 %i.bm, 0
  br i1 %.not71, label %.thread74, label %bb.m

.thread74:                                        ; preds = %bb.l
  store i64 %i.bl, ptr %i.an, align 1
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !77
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.bn, ptr noundef %i.bq, ptr noundef nonnull %i.ak, i32 noundef 1) #19
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.bs = add nsw i64 %i.br, 1
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.o

bb.n:                                             ; preds = %.thread74, %bb.k
  %.068 = phi i64 [ %i.bk, %bb.k ], [ %i.bl, %.thread74 ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.068) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.n, %bb.h, %.thread
  ret void
}

declare ptr @lookupKeyRead(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @pfmergeCommand(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.a, i8 0, i64 16384, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !79
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.06074 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.f ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = tail call ptr @lookupKeyRead(ptr noundef %i.i, ptr noundef %i.l) #19 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @isHLLObjectOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  %.not67 = icmp eq i32 %i.o, 0
  br i1 %.not67, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !23
  %i.t = icmp eq i8 %i.s, 0
  %spec.select = select i1 %i.t, i32 1, i32 %.06074
  %i.u = call i32 @hllMerge(ptr noundef nonnull %i.a, ptr noundef nonnull %i.m)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  br label %.thread

bb.f:                                             ; preds = %bb.b, %bb.d
  %.2 = phi i32 [ %spec.select, %bb.d ], [ %.06074, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.d, align 8, !tbaa !79
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.z = icmp eq i32 %.2, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.060.lcssa = phi i1 [ true, %bb.a ], [ %i.z, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ag = call ptr @lookupKeyWriteWithLink(ptr noundef %i.ab, ptr noundef %i.af, ptr noundef nonnull %i.b) #19 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ai = call ptr @sdsnewlen(ptr noundef null, i64 noundef 18) #19 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i8 127, ptr %i.aj, align 1, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  store i8 -1, ptr %i.ak, align 1, !tbaa !23
  %i.al = call ptr @createObject(i32 noundef 0, ptr noundef %i.ai) #19 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  store i32 1280072008, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 1, ptr %i.ao, align 1, !tbaa !23
  store ptr %i.al, ptr %i.c, align 8, !tbaa !77
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !77
  %i.at = call ptr @dbAddByLink(ptr noundef %i.ap, ptr noundef %i.as, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !77
  %i.ay = call ptr @dbUnshareStringValue(ptr noundef %i.au, ptr noundef %i.ax, ptr noundef nonnull %i.ag) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.at, %bb.g ], [ %i.ay, %bb.h ] ; 11 uses
  %i.az = call i64 @stringObjectLen(ptr noundef %.0) #19
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = call i64 @kvobjAllocSize(ptr noundef %.0) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.059 = phi i64 [ %i.bb, %bb.j ], [ 0, %bb.i ]
  br i1 %.060.lcssa, label %.critedge.preheader, label %bb.l

.critedge.preheader:                              ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bd = call i32 @hllSparseToDense(ptr noundef %.0)
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.b.i = load i1, ptr @simd_enabled, align 4
  br i1 %.b.i, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.o, %bb.n
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.bj = and i32 %i.bi, 1024
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @hllDenseCompressAVX2(ptr noundef nonnull %i.bh, ptr noundef nonnull readonly %i.a)
  br label %hllDenseCompress.exit

bb.q:                                             ; preds = %.preheader, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.bk = trunc i64 %indvars.iv.i to i32
  %i.bl = mul i32 %i.bk, 6                        ; 2 uses
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = and i32 %i.bl, 6                        ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bq = sub nuw nsw i64 8, %i.bp                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %i.bu = shl nuw nsw i32 63, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = trunc i32 %i.bu to i8
  %i.by = xor i8 %i.bx, -1
  %i.bz = and i8 %i.bw, %i.by
  %i.ca = shl nuw nsw i64 %i.bt, %i.bp
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = or i8 %i.bz, %i.cb
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !23
  %i.cd = trunc nuw nsw i64 %i.bq to i16
  %i.ce = ashr i16 -64, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !23
  %i.ch = trunc nsw i16 %i.ce to i8
  %i.ci = and i8 %i.cg, %i.ch
  %i.cj = lshr i64 %i.bt, %i.bq
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = or i8 %i.ci, %i.ck
  store i8 %i.cl, ptr %i.cf, align 1, !tbaa !23
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16384
  br i1 %exitcond.not.i, label %hllDenseCompress.exit, label %bb.q, !llvm.loop !6

bb.r:                                             ; preds = %.critedge.preheader, %hllDenseSet.exit
  %indvars.iv78 = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next79, %hllDenseSet.exit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv78
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23  ; 4 uses
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %hllDenseSet.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  switch i8 %i.cr, label %hllDenseSet.exit [
    i8 0, label %bb.t
    i8 1, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = mul nuw nsw i64 %indvars.iv78, 6        ; 2 uses
  %.zext = lshr i64 %i.ct, 3
  %i.cu = and i64 %i.ct, 6                        ; 4 uses
  %i.cv = sub nuw nsw i64 8, %i.cu                ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.zext ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !23  ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr i8, ptr %i.cw, i64 1      ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !23  ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = lshr i64 %i.cy, %i.cu
  %i.dd = shl nuw nsw i64 %i.db, %i.cv
  %i.de = or i64 %i.dd, %i.dc
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = and i32 %i.df, 63
  %i.dh = zext i8 %i.cn to i32
  %i.di = icmp samesign ult i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.u, label %hllDenseSet.exit

bb.u:                                             ; preds = %bb.t
  %i.dj = zext i8 %i.cn to i64                    ; 2 uses
  %i.dk = trunc nuw nsw i64 %i.cu to i8
  %i.dl = shl i8 63, %i.dk
  %i.dm = xor i8 %i.dl, -1
  %i.dn = and i8 %i.cx, %i.dm
  %i.do = shl nuw nsw i64 %i.dj, %i.cu
  %i.dp = trunc i64 %i.do to i8
  %i.dq = or i8 %i.dn, %i.dp
  store i8 %i.dq, ptr %i.cw, align 1, !tbaa !23
  %i.dr = trunc nuw nsw i64 %i.cv to i16
  %i.ds = ashr i16 -64, %i.dr
  %i.dt = trunc nsw i16 %i.ds to i8
  %i.du = and i8 %i.da, %i.dt
  %i.dv = lshr i64 %i.dj, %i.cv
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  %i.dx = or i8 %i.du, %i.dw
  store i8 %i.dx, ptr %i.cz, align 1, !tbaa !23
  br label %hllDenseSet.exit

bb.v:                                             ; preds = %bb.s
  %i.dy = call i32 @hllSparseSet(ptr noundef nonnull %.0, i64 noundef %indvars.iv78, i8 noundef zeroext %i.cn) ; 0 uses
  br label %hllDenseSet.exit

hllDenseSet.exit:                                 ; preds = %bb.u, %bb.t, %bb.s, %bb.v, %bb.r
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, 16384
  br i1 %exitcond.not, label %hllDenseCompress.exit, label %bb.r, !llvm.loop !106

hllDenseCompress.exit:                            ; preds = %bb.q, %hllDenseSet.exit, %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !26
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 15 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !23
  %i.ed = or i8 %i.ec, -128
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !23
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not66 = icmp eq i32 %i.ee, 0
  br i1 %.not66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %hllDenseCompress.exit
  %i.ef = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.eg = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !26
  %i.el = call i32 @getKeySlot(ptr noundef %i.ek) #19
  %i.em = call i64 @kvobjAllocSize(ptr noundef nonnull %.0) #19
  call void @updateSlotAllocSize(ptr noundef %i.ef, i32 noundef %i.el, ptr noundef nonnull %.0, i64 noundef %.059, i64 noundef %i.em) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %hllDenseCompress.exit
  %i.en = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.eo = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !77
  call void @keyModified(ptr noundef %0, ptr noundef %i.en, ptr noundef %i.eq, ptr noundef nonnull %.0, i32 noundef 1) #19
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !77
  %i.eu = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !82
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.7, ptr noundef %i.et, i32 noundef %i.ew) #19
  %i.ex = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ey = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !77
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !26
  %i.fd = call i32 @getKeySlot(ptr noundef %i.fc) #19
  %i.fe = call i64 @stringObjectLen(ptr noundef nonnull %.0) #19
  call void @updateKeysizesHist(ptr noundef %i.ex, i32 noundef %i.fd, i32 noundef 0, i64 noundef %i.az, i64 noundef %i.fe) #19
  %i.ff = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.fg = add nsw i64 %i.ff, 1
  store i64 %i.fg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.fh = load ptr, ptr @shared, align 8, !tbaa !85
  call void @addReply(ptr noundef %0, ptr noundef %i.fh) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pfselftestCommand(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 4 uses
  %i.b = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 12304) #19 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  br label %.preheader126

.preheader126:                                    ; preds = %bb.a, %bb.d
  %.084137 = phi i32 [ 0, %bb.a ], [ %i.bb, %bb.d ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader126, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader126 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = tail call i32 @rand() #19
  %i.e = and i32 %i.d, 63                         ; 2 uses
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.f, ptr %i.g, align 1, !tbaa !23
  %i.h = trunc i64 %indvars.iv to i32
  %i.i = mul i32 %i.h, 6                          ; 2 uses
  %i.j = lshr i32 %i.i, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = and i32 %i.i, 6                          ; 2 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = sub nuw nsw i64 8, %i.m                  ; 2 uses
  %i.o = zext nneg i32 %i.e to i64                ; 2 uses
  %i.p = shl nuw nsw i32 63, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23
  %i.s = trunc i32 %i.p to i8
  %i.t = xor i8 %i.s, -1
  %i.u = and i8 %i.r, %i.t
  %i.v = shl nuw nsw i64 %i.o, %i.m
  %i.w = trunc i64 %i.v to i8
  %i.x = or i8 %i.u, %i.w
  store i8 %i.x, ptr %i.q, align 1, !tbaa !23
  %i.y = trunc nuw nsw i64 %i.n to i16
  %i.z = ashr i16 -64, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  %i.ac = trunc nsw i16 %i.z to i8
  %i.ad = and i8 %i.ab, %i.ac
  %i.ae = lshr i64 %i.o, %i.n
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = or i8 %i.ad, %i.af
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !107

.preheader:                                       ; preds = %bb.b, %bb.c
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.ah = trunc i64 %indvars.iv151 to i32
  %i.ai = mul i32 %i.ah, 6                        ; 2 uses
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = and i32 %i.ai, 6                        ; 2 uses
  %i.am = sub nuw nsw i32 8, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ak ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !23
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.ap, %i.al
  %i.au = shl nuw nsw i32 %i.as, %i.am
  %i.av = or i32 %i.au, %i.at
  %i.aw = and i32 %i.av, 63                       ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv151
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %.not98 = icmp eq i32 %i.aw, %i.az
  br i1 %.not98, label %bb.c, label %.thread123

.thread123:                                       ; preds = %.preheader
  %i.ba = trunc nuw nsw i64 %indvars.iv151 to i32
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.ba, i32 noundef %i.az, i32 noundef %i.aw) #19
  tail call void @sdsfree(ptr noundef nonnull %i.b) #19
  br label %bb.o

bb.c:                                             ; preds = %.preheader
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, 16384
  br i1 %exitcond154.not, label %bb.d, label %.preheader, !llvm.loop !108

bb.d:                                             ; preds = %bb.c
  %i.bb = add nuw nsw i32 %.084137, 1             ; 2 uses
  %exitcond155.not = icmp eq i32 %i.bb, 1000
  br i1 %exitcond155.not, label %bb.e, label %.preheader126, !llvm.loop !109

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12288) %i.c, i8 0, i64 12288, i1 false)
  %i.bc = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 18) #19 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 127, ptr %i.bd, align 1, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 17
  store i8 -1, ptr %i.be, align 1, !tbaa !23
  %i.bf = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.bc) #19 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  store i32 1280072008, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i8 1, ptr %i.bi, align 1, !tbaa !23
  %i.bj = tail call i32 @rand() #19
  %i.bk = sext i32 %i.bj to i64
  %i.bl = tail call i32 @rand() #19
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 32
  %i.bo = or i64 %i.bn, %i.bk
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.critedge100
  %indvars.iv156 = phi i64 [ 1, %bb.e ], [ %indvars.iv.next157, %.critedge100 ] ; 9 uses
  %.085138 = phi i64 [ 1, %bb.e ], [ %.2, %.critedge100 ] ; 2 uses
  %i.bp = xor i64 %i.bo, %indvars.iv156
  %i.bq = mul i64 %i.bp, -4132994306676758123     ; 2 uses
  %i.br = lshr i64 %i.bq, 47
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, -4132994306676758123
  %i.bu = xor i64 %i.bt, 3829533692205168561
  %i.bv = mul i64 %i.bu, -4132994306676758123     ; 2 uses
  %i.bw = lshr i64 %i.bv, 47
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, -4132994306676758123     ; 2 uses
  %i.bz = lshr i64 %i.by, 47
  %i.ca = xor i64 %i.bz, %i.by                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 14
  %i.cc = or disjoint i64 %i.cb, 1125899906842624
  %i.cd = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.cc, i1 true) ; 4 uses
  %i.ce = trunc nuw nsw i64 %i.cd to i32          ; 2 uses
  %i.cf = and i64 %i.ca, 16383                    ; 2 uses
  %i.cg = mul nuw nsw i64 %i.cf, 6                ; 2 uses
  %.zext.i = lshr i64 %i.cg, 3                    ; 2 uses
  %i.ch = and i64 %i.cg, 6                        ; 7 uses
  %i.ci = sub nuw nsw i64 8, %i.ch                ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.zext.i ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !23  ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr i8, ptr %i.cj, i64 1      ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23  ; 2 uses
  %i.co = zext i8 %i.cn to i64
  %i.cp = lshr i64 %i.cl, %i.ch
  %i.cq = shl nuw nsw i64 %i.co, %i.ci
  %i.cr = or i64 %i.cq, %i.cp
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 63
  %.not.i = icmp samesign ugt i32 %i.ct, %i.ce
  br i1 %.not.i, label %hllDenseAdd.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.cu = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cv = trunc nuw nsw i64 %i.ch to i8
  %i.cw = shl i8 63, %i.cv
  %i.cx = xor i8 %i.cw, -1
  %i.cy = and i8 %i.ck, %i.cx
  %i.cz = shl nuw nsw i64 %i.cu, %i.ch
  %i.da = trunc i64 %i.cz to i8
  %i.db = or i8 %i.cy, %i.da
  store i8 %i.db, ptr %i.cj, align 1, !tbaa !23
  %i.dc = trunc nuw nsw i64 %i.ci to i16
  %i.dd = ashr i16 -64, %i.dc
  %i.de = trunc nsw i16 %i.dd to i8
  %i.df = and i8 %i.cn, %i.de
  %i.dg = lshr i64 %i.cu, %i.ci
  %i.dh = trunc nuw nsw i64 %i.dg to i8
  %i.di = or i8 %i.df, %i.dh
  store i8 %i.di, ptr %i.cm, align 1, !tbaa !23
  br label %hllDenseAdd.exit

hllDenseAdd.exit:                                 ; preds = %.lr.ph.i.i.i, %bb.f
  %i.dj = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !23
  switch i8 %i.dl, label %hllAdd.exit [
    i8 0, label %.lr.ph.i.i.i106
    i8 1, label %.lr.ph.i.i.i101.preheader
  ]

.lr.ph.i.i.i101.preheader:                        ; preds = %hllDenseAdd.exit
  %i.dm = trunc nuw nsw i64 %i.cd to i8
  %i.dn = add nuw nsw i8 %i.dm, 1
  %i.do = tail call range(i32 -1, 2) i32 @hllSparseSet(ptr noundef nonnull %i.bf, i64 noundef %i.cf, i8 noundef zeroext %i.dn) ; 0 uses
  br label %hllAdd.exit

.lr.ph.i.i.i106:                                  ; preds = %hllDenseAdd.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.zext.i ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !23  ; 2 uses
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.dq, i64 1      ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23  ; 2 uses
  %i.dv = zext i8 %i.du to i64
  %i.dw = lshr i64 %i.ds, %i.ch
  %i.dx = shl nuw nsw i64 %i.dv, %i.ci
  %i.dy = or i64 %i.dx, %i.dw
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 63
  %.not.i112 = icmp samesign ugt i32 %i.ea, %i.ce
  br i1 %.not.i112, label %hllAdd.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i106
  %i.eb = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.ec = trunc nuw nsw i64 %i.ch to i8
  %i.ed = shl i8 63, %i.ec
  %i.ee = xor i8 %i.ed, -1
  %i.ef = and i8 %i.dr, %i.ee
  %i.eg = shl nuw nsw i64 %i.eb, %i.ch
  %i.eh = trunc i64 %i.eg to i8
  %i.ei = or i8 %i.ef, %i.eh
  store i8 %i.ei, ptr %i.dq, align 1, !tbaa !23
  %i.ej = trunc nuw nsw i64 %i.ci to i16
  %i.ek = ashr i16 -64, %i.ej
  %i.el = trunc nsw i16 %i.ek to i8
  %i.em = and i8 %i.du, %i.el
  %i.en = lshr i64 %i.eb, %i.ci
  %i.eo = trunc nuw nsw i64 %i.en to i8
  %i.ep = or i8 %i.em, %i.eo
  store i8 %i.ep, ptr %i.dt, align 1, !tbaa !23
  br label %hllAdd.exit

hllAdd.exit:                                      ; preds = %bb.g, %.lr.ph.i.i.i106, %hllDenseAdd.exit, %.lr.ph.i.i.i101.preheader
  %i.eq = icmp eq i64 %.085138, %indvars.iv156
  br i1 %i.eq, label %bb.h, label %.critedge100

bb.h:                                             ; preds = %hllAdd.exit
  %i.er = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7992), align 8, !tbaa !60
  %i.es = lshr i64 %i.er, 1
  %i.et = icmp samesign ugt i64 %i.es, %indvars.iv156
  br i1 %i.et, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.eu = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !23
  %.not = icmp eq i8 %i.ew, 1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.9) #19
  br label %.thread119

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.ex = tail call i64 @hllCount(ptr noundef nonnull %i.b, ptr noundef null)
  %i.ey = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.ez = tail call i64 @hllCount(ptr noundef %i.ey, ptr noundef null)
  %.not97 = icmp eq i64 %i.ex, %i.ez
  br i1 %.not97, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.10) #19
  br label %.thread119

.critedge:                                        ; preds = %bb.k
  %i.fa = tail call i64 @hllCount(ptr noundef nonnull %i.b, ptr noundef null)
  %i.fb = sub nsw i64 %indvars.iv156, %i.fa
  %i.fc = uitofp nneg i64 %indvars.iv156 to double
  %i.fd = fmul nnan double %i.fc, 4.875000e-02
  %i.fe = tail call double @llvm.ceil.f64(double %i.fd)
  %i.ff = fptoui double %i.fe to i64
  %i.fg = icmp eq i64 %indvars.iv156, 10
  %spec.store.select = select i1 %i.fg, i64 1, i64 %i.ff
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.fb, i1 true) ; 2 uses
  %i.fh = icmp sgt i64 %spec.select, %spec.store.select
  br i1 %i.fh, label %bb.m, label %.thread116

.thread116:                                       ; preds = %.critedge
  %i.fi = mul nuw nsw i64 %indvars.iv156, 10
  br label %.critedge100

bb.m:                                             ; preds = %.critedge
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef %indvars.iv156, i64 noundef %spec.select) #19
  br label %.thread119

.critedge100:                                     ; preds = %.thread116, %hllAdd.exit
  %.2 = phi i64 [ %i.fi, %.thread116 ], [ %.085138, %hllAdd.exit ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next157, 10000001
  br i1 %exitcond159.not, label %bb.n, label %.lr.ph.i.i.i, !llvm.loop !110

bb.n:                                             ; preds = %.critedge100
  %i.fj = load ptr, ptr @shared, align 8, !tbaa !85
  tail call void @addReply(ptr noundef %0, ptr noundef %i.fj) #19
  br label %.thread119

.thread119:                                       ; preds = %bb.m, %bb.l, %bb.j, %bb.n
  tail call void @sdsfree(ptr noundef %i.b) #19
  tail call void @decrRefCount(ptr noundef nonnull %i.bf) #19
  br label %bb.o

bb.o:                                             ; preds = %.thread123, %.thread119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #14

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #10

declare void @decrRefCount(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @pfdebugCommand(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 7 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.12) #21
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79
  %.not125 = icmp eq i32 %i.i, 3
  br i1 %.not125, label %bb.c, label %bb.aq

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = tail call i32 @strcasecmp(ptr noundef %i.m, ptr noundef nonnull @.str.13) #21
  %.not126 = icmp eq i32 %i.n, 0
  br i1 %.not126, label %.thread146, label %bb.d

.thread146:                                       ; preds = %bb.c
  store i1 false, ptr @simd_enabled, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.m, ptr noundef nonnull @.str.14) #21
  %.not127 = icmp eq i32 %i.o, 0
  br i1 %.not127, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store i1 true, ptr @simd_enabled, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #19
  %.b.pr = load i1, ptr @simd_enabled, align 4
  br i1 %.b.pr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread146, %bb.e
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.q = and i32 %i.p, 1024
  %.not128 = icmp eq i32 %i.q, 0
  br i1 %.not128, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ @.str.16, %bb.f ], [ @.str.17, %bb.g ]
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef nonnull %i.r) #19
  br label %.thread156

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = tail call ptr @lookupKeyWrite(ptr noundef %i.t, ptr noundef %i.v) #19 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #19
  br label %.thread156

bb.k:                                             ; preds = %bb.i
  %i.y = tail call i32 @isHLLObjectOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.w)
  %.not129 = icmp eq i32 %i.y, 0
  br i1 %.not129, label %bb.l, label %.thread156

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = tail call ptr @dbUnshareStringValue(ptr noundef %i.z, ptr noundef %i.ac, ptr noundef nonnull %i.w) #19 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 4 uses
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not130 = icmp eq i32 %i.ag, 0
  br i1 %.not130, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0120 = phi i64 [ %i.ah, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ai = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.19) #21
  %.not131 = icmp eq i32 %i.ai, 0
  br i1 %.not131, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !79
  %.not132 = icmp eq i32 %i.ak, 3
  br i1 %.not132, label %bb.p, label %bb.aq

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  %i.ap = tail call i32 @hllSparseToDense(ptr noundef nonnull %i.ad)
  %.not134 = icmp eq i32 %i.ap, -1
  br i1 %.not134, label %.thread148, label %bb.r

.thread148:                                       ; preds = %bb.q
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  br label %.thread156

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.aw = tail call i32 @getKeySlot(ptr noundef %i.av) #19
  %i.ax = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  tail call void @updateKeysizesHist(ptr noundef %i.aq, i32 noundef %i.aw, i32 noundef 0, i64 noundef %i.ao, i64 noundef %i.ax) #19
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not133 = icmp eq i32 %i.ay, 0
  br i1 %.not133, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !77
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.bf = tail call i32 @getKeySlot(ptr noundef %i.be) #19
  %i.bg = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #19
  tail call void @updateSlotAllocSize(ptr noundef %i.az, i32 noundef %i.bf, ptr noundef nonnull %i.ad, i64 noundef %.0120, i64 noundef %i.bg) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !26
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 16384) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.v
  %.0119161 = phi i32 [ 0, %bb.u ], [ %i.bw, %bb.v ] ; 2 uses
  %i.bl = mul nuw nsw i32 %.0119161, 6            ; 2 uses
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = trunc i32 %i.bl to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = tail call i8 @llvm.fshr.i8(i8 %i.bs, i8 %i.bq, i8 %i.bo)
  %i.bu = and i8 %i.bt, 63
  %i.bv = zext nneg i8 %i.bu to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bv) #19
  %i.bw = add nuw nsw i32 %.0119161, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, 16384
  br i1 %exitcond.not, label %.thread156, label %bb.v, !llvm.loop !111

bb.w:                                             ; preds = %bb.n
  %i.bx = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.20) #21
  %.not135 = icmp eq i32 %i.bx, 0
  br i1 %.not135, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !79
  %.not136 = icmp eq i32 %i.bz, 3
  br i1 %.not136, label %bb.y, label %bb.aq

bb.y:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.cb = tail call fastcc i64 @sdslen(ptr noundef %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  %i.cd = tail call ptr @sdsempty() #19           ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23
  %.not137 = icmp eq i8 %i.cf, 1
  br i1 %.not137, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @sdsfree(ptr noundef %i.cd) #19
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #19
  br label %.thread156

bb.aa:                                            ; preds = %bb.y
  %i.cg = icmp samesign ugt i64 %i.cb, 16
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ae
  %.0115160 = phi ptr [ %.1116, %bb.ae ], [ %i.cd, %.lr.ph.preheader ] ; 3 uses
  %.0117159 = phi ptr [ %.1118, %bb.ae ], [ %i.ch, %.lr.ph.preheader ] ; 5 uses
  %i.ci = load i8, ptr %.0117159, align 1, !tbaa !23 ; 2 uses
  %i.cj = zext i8 %i.ci to i32                    ; 4 uses
  %trunc = and i8 %i.ci, -64
  switch i8 %trunc, label %bb.ad [
    i8 0, label %bb.ab
    i8 64, label %bb.ac
  ]

bb.ab:                                            ; preds = %.lr.ph
  %i.ck = add nuw nsw i32 %i.cj, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0117159, i64 1
  %i.cm = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115160, ptr noundef nonnull @.str.22, i32 noundef %i.ck) #19
  br label %bb.ae

bb.ac:                                            ; preds = %.lr.ph
  %i.cn = shl nuw nsw i32 %i.cj, 8
  %i.co = and i32 %i.cn, 16128
  %i.cp = getelementptr inbounds nuw i8, ptr %.0117159, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.co, 1
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %.0117159, i64 2
  %i.cv = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115160, ptr noundef nonnull @.str.23, i32 noundef %i.ct) #19
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  %i.cw = and i32 %i.cj, 3
  %i.cx = add nuw nsw i32 %i.cw, 1
  %i.cy = lshr i32 %i.cj, 2
  %i.cz = and i32 %i.cy, 31
  %i.da = add nuw nsw i32 %i.cz, 1
  %i.db = getelementptr inbounds nuw i8, ptr %.0117159, i64 1
  %i.dc = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115160, ptr noundef nonnull @.str.24, i32 noundef %i.da, i32 noundef %i.cx) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.1118 = phi ptr [ %i.cl, %bb.ab ], [ %i.cu, %bb.ac ], [ %i.db, %bb.ad ] ; 2 uses
  %.1116 = phi ptr [ %i.cm, %bb.ab ], [ %i.cv, %bb.ac ], [ %i.dc, %bb.ad ] ; 2 uses
  %i.dd = icmp ult ptr %.1118, %i.cc
  br i1 %i.dd, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.ae, %bb.aa
  %.0115.lcssa = phi ptr [ %i.cd, %bb.aa ], [ %.1116, %bb.ae ]
  %i.de = tail call ptr @sdstrim(ptr noundef %.0115.lcssa, ptr noundef nonnull @.str.25) #19 ; 3 uses
  %i.df = tail call fastcc i64 @sdslen(ptr noundef %i.de)
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef %i.de, i64 noundef %i.df) #19
  tail call void @sdsfree(ptr noundef %i.de) #19
  br label %.thread156

bb.af:                                            ; preds = %bb.w
  %i.dg = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.26) #21
  %.not138 = icmp eq i32 %i.dg, 0
  br i1 %.not138, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !79
  %.not139 = icmp eq i32 %i.di, 3
  br i1 %.not139, label %.thread149, label %bb.aq

.thread149:                                       ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !23
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @__const.pfdebugCommand.encodingstr, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !113
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef %i.dn) #19
  br label %.thread156

bb.ah:                                            ; preds = %bb.af
  %i.do = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.29) #21
  %.not140 = icmp eq i32 %i.do, 0
  br i1 %.not140, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !79
  %.not141 = icmp eq i32 %i.dq, 3
  br i1 %.not141, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !23
  %i.dt = icmp eq i8 %i.ds, 1
  br i1 %i.dt, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.du = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  %i.dv = tail call i32 @hllSparseToDense(ptr noundef nonnull %i.ad)
  %.not143 = icmp eq i32 %i.dv, -1
  br i1 %.not143, label %.thread151, label %bb.al

.thread151:                                       ; preds = %bb.ak
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  br label %.thread156

bb.al:                                            ; preds = %bb.ak
  %i.dw = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !77
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !26
  %i.ec = tail call i32 @getKeySlot(ptr noundef %i.eb) #19
  %i.ed = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  tail call void @updateKeysizesHist(ptr noundef %i.dw, i32 noundef %i.ec, i32 noundef 0, i64 noundef %i.du, i64 noundef %i.ed) #19
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not142 = icmp eq i32 %i.ee, 0
  br i1 %.not142, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !26
  %i.el = tail call i32 @getKeySlot(ptr noundef %i.ek) #19
  %i.em = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #19
  tail call void @updateSlotAllocSize(ptr noundef %i.ef, i32 noundef %i.el, ptr noundef nonnull %i.ad, i64 noundef %.0120, i64 noundef %i.em) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.en = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.eo = add nsw i64 %i.en, 1
  store i64 %i.eo, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.an
  %.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @shared, i64 32), %bb.an ], [ getelementptr inbounds nuw (i8, ptr @shared, i64 24), %bb.aj ]
  %i.ep = load ptr, ptr %.in, align 8
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ep) #19
  br label %.thread156

bb.ap:                                            ; preds = %bb.ah
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %i.f) #19
  br label %.thread156

bb.aq:                                            ; preds = %bb.ai, %bb.ag, %bb.x, %bb.o, %bb.b
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef %i.f) #19
  br label %.thread156

.thread156:                                       ; preds = %bb.v, %bb.ao, %.thread151, %.thread149, %.thread148, %bb.z, %._crit_edge, %bb.ap, %bb.k, %bb.aq, %bb.j, %bb.h
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

declare void @addReplyStatus(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @lookupKeyWrite(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @sdsempty() local_unnamed_addr #7

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare ptr @sdstrim(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.umax.v32i8(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.fshr.v8i8(<8 x i8>, <8 x i8>, <8 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umax.v8i8(<8 x i8>, <8 x i8>) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = distinct !{!4, !22}
!5 = distinct !{!5, !22}
!6 = distinct !{!6, !22}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{i32 1, !"ThinLTO", i32 0}
!14 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!15 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !17, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!17, !17, i64 0}
!24 = !{!"any pointer", !17, i64 0}
!25 = !{!"redisObject", !18, i64 0, !18, i64 0, !18, i64 1, !18, i64 3, !18, i64 4, !18, i64 5, !24, i64 8}
!26 = !{!25, !24, i64 8}
!27 = !{!"short", !17, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 omnipotent char", !24, i64 0}
!30 = !{!"any p2 pointer", !24, i64 0}
!31 = !{!"p2 omnipotent char", !30, i64 0}
!32 = !{!"p1 _ZTS7redisDb", !24, i64 0}
!33 = !{!"p1 _ZTS4dict", !24, i64 0}
!34 = !{!"p1 _ZTS11aeEventLoop", !24, i64 0}
!35 = !{!"p1 _ZTS3rax", !24, i64 0}
!36 = !{!"long long", !17, i64 0}
!37 = !{!"p1 _ZTS4list", !24, i64 0}
!38 = !{!"p1 _ZTS14ConnectionType", !24, i64 0}
!39 = !{!"connListener", !17, i64 0, !18, i64 64, !31, i64 72, !18, i64 80, !18, i64 84, !38, i64 88, !24, i64 96}
!40 = !{!"p1 _ZTS6client", !24, i64 0}
!41 = !{!"p2 _ZTS14pendingCommand", !30, i64 0}
!42 = !{!"pendingCommandPool", !41, i64 0, !18, i64 8, !18, i64 12, !18, i64 16}
!43 = !{!"double", !17, i64 0}
!44 = !{!"malloc_stats", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80}
!45 = !{!"p1 _ZTS11hotkeyStats", !24, i64 0}
!46 = !{!"p1 double", !24, i64 0}
!47 = !{!"p1 _ZTS9saveparam", !24, i64 0}
!48 = !{!"p2 _ZTS10connection", !30, i64 0}
!49 = !{!"p1 _ZTS7redisOp", !24, i64 0}
!50 = !{!"redisOpArray", !49, i64 0, !18, i64 8, !18, i64 12}
!51 = !{!"p1 _ZTS11replBacklog", !24, i64 0}
!52 = !{!"replDataBuf", !37, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40}
!53 = !{!"p1 _ZTS10connection", !24, i64 0}
!54 = !{!"p1 _ZTS8_kvstore", !24, i64 0}
!55 = !{!"p1 _ZTS12clusterState", !24, i64 0}
!56 = !{!"aclInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!57 = !{!"redisTLSContextConfig", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !18, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !18, i64 104, !18, i64 108, !18, i64 112, !18, i64 116}
!58 = !{!"p1 _ZTS14sentinelConfig", !24, i64 0}
!59 = !{!"redisServer", !18, i64 0, !20, i64 8, !29, i64 16, !29, i64 24, !31, i64 32, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !32, i64 64, !33, i64 72, !33, i64 80, !34, i64 88, !35, i64 96, !18, i64 104, !18, i64 108, !17, i64 112, !17, i64 116, !36, i64 120, !17, i64 128, !18, i64 132, !18, i64 136, !18, i64 140, !29, i64 144, !18, i64 152, !18, i64 156, !17, i64 160, !18, i64 204, !20, i64 208, !18, i64 216, !18, i64 220, !18, i64 224, !29, i64 232, !29, i64 240, !18, i64 248, !18, i64 252, !20, i64 256, !17, i64 264, !33, i64 272, !33, i64 280, !33, i64 288, !37, i64 296, !17, i64 304, !18, i64 312, !18, i64 316, !17, i64 320, !18, i64 324, !18, i64 328, !18, i64 332, !17, i64 336, !18, i64 464, !29, i64 472, !29, i64 480, !18, i64 488, !17, i64 496, !18, i64 1328, !39, i64 1336, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !40, i64 1496, !40, i64 1504, !24, i64 1512, !35, i64 1520, !18, i64 1528, !35, i64 1536, !18, i64 1544, !37, i64 1552, !17, i64 1560, !17, i64 1624, !33, i64 1880, !17, i64 1888, !18, i64 1896, !18, i64 1900, !17, i64 1904, !18, i64 2416, !18, i64 2420, !42, i64 2424, !18, i64 2448, !36, i64 2456, !18, i64 2464, !18, i64 2468, !18, i64 2472, !18, i64 2476, !18, i64 2480, !20, i64 2488, !20, i64 2496, !20, i64 2504, !20, i64 2512, !20, i64 2520, !20, i64 2528, !36, i64 2536, !36, i64 2544, !36, i64 2552, !36, i64 2560, !36, i64 2568, !36, i64 2576, !43, i64 2584, !36, i64 2592, !36, i64 2600, !36, i64 2608, !36, i64 2616, !36, i64 2624, !36, i64 2632, !20, i64 2640, !36, i64 2648, !36, i64 2656, !36, i64 2664, !36, i64 2672, !36, i64 2680, !36, i64 2688, !36, i64 2696, !36, i64 2704, !20, i64 2712, !20, i64 2720, !20, i64 2728, !36, i64 2736, !36, i64 2744, !36, i64 2752, !36, i64 2760, !36, i64 2768, !43, i64 2776, !36, i64 2784, !36, i64 2792, !36, i64 2800, !36, i64 2808, !36, i64 2816, !37, i64 2824, !36, i64 2832, !36, i64 2840, !20, i64 2848, !44, i64 2856, !17, i64 2944, !17, i64 2952, !17, i64 2960, !17, i64 2968, !20, i64 2976, !20, i64 2984, !20, i64 2992, !20, i64 3000, !20, i64 3008, !20, i64 3016, !20, i64 3024, !20, i64 3032, !43, i64 3040, !17, i64 3048, !20, i64 3080, !36, i64 3088, !36, i64 3096, !36, i64 3104, !17, i64 3112, !17, i64 4136, !17, i64 5160, !36, i64 5168, !36, i64 5176, !36, i64 5184, !36, i64 5192, !17, i64 5200, !36, i64 6264, !36, i64 6272, !20, i64 6280, !36, i64 6288, !36, i64 6296, !20, i64 6304, !17, i64 6312, !45, i64 6408, !18, i64 6416, !18, i64 6420, !18, i64 6424, !18, i64 6428, !18, i64 6432, !18, i64 6436, !18, i64 6440, !18, i64 6444, !18, i64 6448, !18, i64 6452, !18, i64 6456, !18, i64 6460, !18, i64 6464, !20, i64 6472, !18, i64 6480, !18, i64 6484, !18, i64 6488, !18, i64 6492, !20, i64 6496, !20, i64 6504, !18, i64 6512, !18, i64 6516, !18, i64 6520, !18, i64 6524, !18, i64 6528, !18, i64 6532, !29, i64 6536, !17, i64 6544, !18, i64 6616, !18, i64 6620, !18, i64 6624, !46, i64 6632, !18, i64 6640, !18, i64 6644, !18, i64 6648, !18, i64 6652, !18, i64 6656, !18, i64 6660, !18, i64 6664, !18, i64 6668, !18, i64 6672, !29, i64 6680, !29, i64 6688, !18, i64 6696, !18, i64 6700, !20, i64 6704, !20, i64 6712, !20, i64 6720, !20, i64 6728, !20, i64 6736, !18, i64 6744, !18, i64 6748, !29, i64 6752, !18, i64 6760, !18, i64 6764, !36, i64 6768, !36, i64 6776, !20, i64 6784, !20, i64 6792, !20, i64 6800, !18, i64 6808, !18, i64 6812, !20, i64 6816, !18, i64 6824, !18, i64 6828, !18, i64 6832, !18, i64 6836, !18, i64 6840, !20, i64 6848, !18, i64 6856, !17, i64 6860, !17, i64 6864, !24, i64 6872, !18, i64 6880, !36, i64 6888, !36, i64 6896, !36, i64 6904, !36, i64 6912, !18, i64 6920, !47, i64 6928, !18, i64 6936, !29, i64 6944, !18, i64 6952, !18, i64 6956, !18, i64 6960, !20, i64 6968, !20, i64 6976, !20, i64 6984, !20, i64 6992, !18, i64 7000, !18, i64 7004, !18, i64 7008, !18, i64 7012, !18, i64 7016, !18, i64 7020, !48, i64 7024, !18, i64 7032, !18, i64 7036, !29, i64 7040, !18, i64 7048, !18, i64 7052, !18, i64 7056, !17, i64 7060, !18, i64 7068, !50, i64 7072, !18, i64 7088, !29, i64 7096, !18, i64 7104, !29, i64 7112, !18, i64 7120, !18, i64 7124, !18, i64 7128, !18, i64 7132, !18, i64 7136, !18, i64 7140, !18, i64 7144, !17, i64 7148, !17, i64 7189, !36, i64 7232, !36, i64 7240, !17, i64 7248, !36, i64 7256, !18, i64 7264, !18, i64 7268, !51, i64 7272, !36, i64 7280, !36, i64 7288, !52, i64 7296, !20, i64 7344, !20, i64 7352, !18, i64 7360, !18, i64 7364, !18, i64 7368, !18, i64 7372, !18, i64 7376, !18, i64 7380, !18, i64 7384, !18, i64 7388, !18, i64 7392, !20, i64 7400, !37, i64 7408, !20, i64 7416, !29, i64 7424, !29, i64 7432, !29, i64 7440, !18, i64 7448, !18, i64 7452, !40, i64 7456, !40, i64 7464, !18, i64 7472, !18, i64 7476, !18, i64 7480, !18, i64 7484, !20, i64 7488, !20, i64 7496, !20, i64 7504, !20, i64 7512, !20, i64 7520, !53, i64 7528, !53, i64 7536, !18, i64 7544, !29, i64 7552, !20, i64 7560, !18, i64 7568, !18, i64 7572, !18, i64 7576, !20, i64 7584, !20, i64 7592, !18, i64 7600, !18, i64 7604, !18, i64 7608, !18, i64 7612, !29, i64 7616, !18, i64 7624, !18, i64 7628, !17, i64 7632, !36, i64 7680, !18, i64 7688, !37, i64 7696, !18, i64 7704, !36, i64 7712, !36, i64 7720, !20, i64 7728, !20, i64 7736, !18, i64 7744, !36, i64 7752, !20, i64 7760, !18, i64 7768, !18, i64 7772, !18, i64 7776, !18, i64 7780, !18, i64 7784, !36, i64 7792, !17, i64 7800, !18, i64 7812, !18, i64 7816, !18, i64 7820, !17, i64 7824, !37, i64 7872, !37, i64 7880, !18, i64 7888, !20, i64 7896, !37, i64 7904, !37, i64 7912, !18, i64 7920, !18, i64 7924, !18, i64 7928, !18, i64 7932, !20, i64 7936, !20, i64 7944, !20, i64 7952, !20, i64 7960, !20, i64 7968, !20, i64 7976, !20, i64 7984, !20, i64 7992, !20, i64 8000, !36, i64 8008, !36, i64 8016, !36, i64 8024, !18, i64 8032, !18, i64 8036, !17, i64 8040, !20, i64 8048, !17, i64 8056, !36, i64 8064, !36, i64 8072, !18, i64 8080, !20, i64 8088, !36, i64 8096, !20, i64 8104, !36, i64 8112, !54, i64 8120, !33, i64 8128, !18, i64 8136, !54, i64 8144, !18, i64 8152, !18, i64 8156, !18, i64 8160, !18, i64 8164, !36, i64 8168, !36, i64 8176, !29, i64 8184, !36, i64 8192, !36, i64 8200, !36, i64 8208, !18, i64 8216, !55, i64 8224, !18, i64 8232, !18, i64 8236, !18, i64 8240, !18, i64 8244, !18, i64 8248, !29, i64 8256, !29, i64 8264, !29, i64 8272, !18, i64 8280, !18, i64 8284, !18, i64 8288, !18, i64 8292, !18, i64 8296, !18, i64 8300, !18, i64 8304, !18, i64 8308, !36, i64 8312, !18, i64 8320, !18, i64 8324, !18, i64 8328, !36, i64 8336, !18, i64 8344, !18, i64 8348, !18, i64 8352, !18, i64 8356, !18, i64 8360, !18, i64 8364, !18, i64 8368, !18, i64 8372, !18, i64 8376, !36, i64 8384, !33, i64 8392, !29, i64 8400, !20, i64 8408, !29, i64 8416, !18, i64 8424, !56, i64 8432, !18, i64 8472, !20, i64 8480, !18, i64 8488, !18, i64 8492, !18, i64 8496, !57, i64 8504, !29, i64 8624, !29, i64 8632, !29, i64 8640, !29, i64 8648, !58, i64 8656, !36, i64 8664, !18, i64 8672, !29, i64 8680, !18, i64 8688, !18, i64 8692, !18, i64 8696, !20, i64 8704, !18, i64 8712, !18, i64 8716, !29, i64 8720, !18, i64 8728, !18, i64 8732}
!60 = !{!59, !20, i64 7992}
!61 = !{!"p1 _ZTS11redisObject", !24, i64 0}
!62 = !{!"p2 _ZTS11redisObject", !30, i64 0}
!63 = !{!"p1 _ZTS14pendingCommand", !24, i64 0}
!64 = !{!"pendingCommandList", !63, i64 0, !63, i64 8, !18, i64 16, !18, i64 20}
!65 = !{!"p1 _ZTS14deferredObject", !24, i64 0}
!66 = !{!"p1 _ZTS12redisCommand", !24, i64 0}
!67 = !{!"p1 _ZTS9dictEntry", !24, i64 0}
!68 = !{!"multiState", !41, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !20, i64 24, !18, i64 32}
!69 = !{!"blockingState", !18, i64 0, !36, i64 8, !18, i64 16, !33, i64 24, !18, i64 32, !18, i64 36, !36, i64 40, !24, i64 48, !24, i64 56, !20, i64 64}
!70 = !{!"p1 _ZTS8listNode", !24, i64 0}
!71 = !{!"listNode", !70, i64 0, !70, i64 8, !24, i64 16}
!72 = !{!"p1 _ZTS13payloadHeader", !24, i64 0}
!73 = !{!"p1 _ZTS7asmTask", !24, i64 0}
!74 = !{!"client", !20, i64 0, !20, i64 8, !53, i64 16, !17, i64 24, !17, i64 25, !17, i64 26, !17, i64 27, !18, i64 28, !32, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !29, i64 64, !20, i64 72, !20, i64 80, !18, i64 88, !62, i64 96, !18, i64 104, !18, i64 108, !62, i64 112, !20, i64 120, !64, i64 128, !63, i64 152, !65, i64 160, !18, i64 168, !62, i64 176, !18, i64 184, !18, i64 188, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !24, i64 224, !18, i64 232, !18, i64 236, !20, i64 240, !37, i64 248, !36, i64 256, !37, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !18, i64 296, !18, i64 300, !67, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !36, i64 336, !36, i64 344, !18, i64 352, !18, i64 356, !18, i64 360, !18, i64 364, !20, i64 368, !20, i64 376, !29, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !17, i64 480, !18, i64 524, !29, i64 528, !18, i64 536, !18, i64 540, !20, i64 544, !68, i64 552, !69, i64 592, !36, i64 664, !37, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !29, i64 704, !29, i64 712, !70, i64 720, !70, i64 728, !70, i64 736, !24, i64 744, !24, i64 752, !24, i64 760, !24, i64 768, !24, i64 776, !20, i64 784, !35, i64 792, !20, i64 800, !18, i64 808, !70, i64 816, !24, i64 824, !70, i64 832, !20, i64 840, !70, i64 848, !20, i64 856, !70, i64 864, !20, i64 872, !71, i64 880, !71, i64 904, !20, i64 928, !20, i64 936, !20, i64 944, !36, i64 952, !20, i64 960, !20, i64 968, !29, i64 976, !17, i64 984, !72, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !73, i64 1024, !29, i64 1032, !17, i64 1040}
!75 = !{!74, !32, i64 32}
!76 = !{!74, !62, i64 96}
!77 = !{!61, !61, i64 0}
!78 = !{!59, !18, i64 6644}
!79 = !{!74, !18, i64 88}
!80 = !{!"p1 _ZTS7_estore", !24, i64 0}
!81 = !{!"redisDb", !54, i64 0, !54, i64 8, !80, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !33, i64 56, !33, i64 64, !18, i64 72, !36, i64 80, !20, i64 88}
!82 = !{!81, !18, i64 72}
!83 = !{!59, !36, i64 6888}
!84 = !{!"sharedObjectsStruct", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !17, i64 64, !17, i64 96, !17, i64 128, !17, i64 160, !61, i64 192, !61, i64 200, !61, i64 208, !61, i64 216, !61, i64 224, !61, i64 232, !61, i64 240, !61, i64 248, !61, i64 256, !61, i64 264, !61, i64 272, !61, i64 280, !61, i64 288, !61, i64 296, !61, i64 304, !61, i64 312, !61, i64 320, !61, i64 328, !61, i64 336, !61, i64 344, !61, i64 352, !61, i64 360, !61, i64 368, !61, i64 376, !61, i64 384, !61, i64 392, !61, i64 400, !61, i64 408, !61, i64 416, !61, i64 424, !61, i64 432, !61, i64 440, !61, i64 448, !61, i64 456, !61, i64 464, !61, i64 472, !61, i64 480, !61, i64 488, !61, i64 496, !61, i64 504, !61, i64 512, !61, i64 520, !61, i64 528, !61, i64 536, !61, i64 544, !61, i64 552, !61, i64 560, !61, i64 568, !61, i64 576, !61, i64 584, !61, i64 592, !61, i64 600, !61, i64 608, !61, i64 616, !61, i64 624, !61, i64 632, !61, i64 640, !61, i64 648, !61, i64 656, !61, i64 664, !61, i64 672, !61, i64 680, !61, i64 688, !61, i64 696, !61, i64 704, !61, i64 712, !61, i64 720, !61, i64 728, !61, i64 736, !61, i64 744, !61, i64 752, !61, i64 760, !61, i64 768, !61, i64 776, !61, i64 784, !61, i64 792, !61, i64 800, !61, i64 808, !17, i64 816, !17, i64 896, !17, i64 80896, !17, i64 81152, !17, i64 81408, !17, i64 81664, !29, i64 81920, !29, i64 81928}
!85 = !{!84, !61, i64 0}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !22, !98}
!95 = !{!"branch_weights", i32 1, i32 1048575}
!96 = !{!92}
!97 = !{!93}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !22}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = !{!84, !61, i64 24}
!105 = distinct !{!105, !22}
!106 = distinct !{!106, !22}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = !{!29, !29, i64 0}
end_hunk_0
