Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/colorspace?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_matrix_invert_3x3:.preheader
  %i.bk = insertelement <4 x double> %i.bj, double %i.an, i64 1
  %i.bl = shufflevector <2 x double> %i.ao, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bn = shufflevector <4 x double> %i.bm, <4 x double> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bo = fmul nsz <4 x double> %i.bb, %i.bn
  store <4 x double> %i.bo, ptr %i.j, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = extractelement <2 x double> %i.u, i64 0
  %i.br = fmul nsz double %i.az, %i.bq
  store double %i.br, ptr %i.bp, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_matrix_mul_3x3(ptr nofree noundef writeonly captures(none) initializes((0, 72)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load double, ptr %2, align 8, !tbaa !9
  %i.f = load double, ptr %1, align 8, !tbaa !9
  %i.g = load double, ptr %i.c, align 8, !tbaa !9
  %i.h = load double, ptr %i.a, align 8, !tbaa !9
  %i.i = fmul nsz double %i.g, %i.h
  %i.j = tail call nsz double @llvm.fmuladd.f64(double %i.e, double %i.f, double %i.i)
  %i.k = load double, ptr %i.d, align 8, !tbaa !9
  %i.l = load double, ptr %i.b, align 8, !tbaa !9
  %i.m = tail call nsz double @llvm.fmuladd.f64(double %i.k, double %i.l, double %i.j)
  store double %i.m, ptr %0, align 8, !tbaa !9
  %i.n = load double, ptr %2, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !9
  %i.q = load double, ptr %i.c, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !9
  %i.t = fmul nsz double %i.q, %i.s
  %i.u = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.t)
  %i.v = load double, ptr %i.d, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !9
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !9
  %i.aa = load double, ptr %2, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ad = load double, ptr %i.c, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !9
  %i.ag = fmul nsz double %i.ad, %i.af
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.ag)
  %i.ai = load double, ptr %i.d, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !9
  %i.al = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load double, ptr %i.an, align 8, !tbaa !9
  %i.as = load double, ptr %1, align 8, !tbaa !9
  %i.at = load double, ptr %i.ao, align 8, !tbaa !9
  %i.au = load double, ptr %i.a, align 8, !tbaa !9
  %i.av = fmul nsz double %i.at, %i.au
  %i.aw = tail call nsz double @llvm.fmuladd.f64(double %i.ar, double %i.as, double %i.av)
  %i.ax = load double, ptr %i.ap, align 8, !tbaa !9
  %i.ay = load double, ptr %i.b, align 8, !tbaa !9
  %i.az = tail call nsz double @llvm.fmuladd.f64(double %i.ax, double %i.ay, double %i.aw)
  store double %i.az, ptr %i.aq, align 8, !tbaa !9
  %i.ba = load double, ptr %i.an, align 8, !tbaa !9
  %i.bb = load double, ptr %i.o, align 8, !tbaa !9
  %i.bc = load double, ptr %i.ao, align 8, !tbaa !9
  %i.bd = load double, ptr %i.r, align 8, !tbaa !9
  %i.be = fmul nsz double %i.bc, %i.bd
  %i.bf = tail call nsz double @llvm.fmuladd.f64(double %i.ba, double %i.bb, double %i.be)
  %i.bg = load double, ptr %i.ap, align 8, !tbaa !9
  %i.bh = load double, ptr %i.w, align 8, !tbaa !9
  %i.bi = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.bh, double %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.bi, ptr %i.bj, align 8, !tbaa !9
  %i.bk = load double, ptr %i.an, align 8, !tbaa !9
  %i.bl = load double, ptr %i.ab, align 8, !tbaa !9
  %i.bm = load double, ptr %i.ao, align 8, !tbaa !9
  %i.bn = load double, ptr %i.ae, align 8, !tbaa !9
  %i.bo = fmul nsz double %i.bm, %i.bn
  %i.bp = tail call nsz double @llvm.fmuladd.f64(double %i.bk, double %i.bl, double %i.bo)
  %i.bq = load double, ptr %i.ap, align 8, !tbaa !9
  %i.br = load double, ptr %i.aj, align 8, !tbaa !9
  %i.bs = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.br, double %i.bp)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bs, ptr %i.bt, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load double, ptr %i.bu, align 8, !tbaa !9
  %i.bz = load double, ptr %1, align 8, !tbaa !9
  %i.ca = load double, ptr %i.bv, align 8, !tbaa !9
  %i.cb = load double, ptr %i.a, align 8, !tbaa !9
  %i.cc = fmul nsz double %i.ca, %i.cb
  %i.cd = tail call nsz double @llvm.fmuladd.f64(double %i.by, double %i.bz, double %i.cc)
  %i.ce = load double, ptr %i.bw, align 8, !tbaa !9
  %i.cf = load double, ptr %i.b, align 8, !tbaa !9
  %i.cg = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double %i.cf, double %i.cd)
  store double %i.cg, ptr %i.bx, align 8, !tbaa !9
  %i.ch = load double, ptr %i.bu, align 8, !tbaa !9
  %i.ci = load double, ptr %i.o, align 8, !tbaa !9
  %i.cj = load double, ptr %i.bv, align 8, !tbaa !9
  %i.ck = load double, ptr %i.r, align 8, !tbaa !9
  %i.cl = fmul nsz double %i.cj, %i.ck
  %i.cm = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double %i.ci, double %i.cl)
  %i.cn = load double, ptr %i.bw, align 8, !tbaa !9
  %i.co = load double, ptr %i.w, align 8, !tbaa !9
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.cn, double %i.co, double %i.cm)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.cp, ptr %i.cq, align 8, !tbaa !9
  %i.cr = load double, ptr %i.bu, align 8, !tbaa !9
  %i.cs = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ct = load double, ptr %i.bv, align 8, !tbaa !9
  %i.cu = load double, ptr %i.ae, align 8, !tbaa !9
  %i.cv = fmul nsz double %i.ct, %i.cu
  %i.cw = tail call nsz double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cv)
  %i.cx = load double, ptr %i.bw, align 8, !tbaa !9
  %i.cy = load double, ptr %i.aj, align 8, !tbaa !9
  %i.cz = tail call nsz double @llvm.fmuladd.f64(double %i.cx, double %i.cy, double %i.cw)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.cz, ptr %i.da, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_matrix_mul_3x3_vec(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load double, ptr %1, align 8, !tbaa !9
  %i.d = load double, ptr %2, align 8, !tbaa !9
  %i.e = load double, ptr %i.a, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !9
  %i.h = fmul nsz double %i.e, %i.g
  %i.i = tail call nsz double @llvm.fmuladd.f64(double %i.c, double %i.d, double %i.h)
  %i.j = load double, ptr %i.b, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !9
  %i.m = tail call nsz double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.i)
  store double %i.m, ptr %0, align 8, !tbaa !9
  %i.n = load double, ptr %1, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !9
  %i.q = load double, ptr %i.a, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !9
  %i.t = fmul nsz double %i.q, %i.s
  %i.u = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.t)
  %i.v = load double, ptr %i.b, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !9
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !9
  %i.aa = load double, ptr %1, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ad = load double, ptr %i.a, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.af = load double, ptr %i.ae, align 8, !tbaa !9
  %i.ag = fmul nsz double %i.ad, %i.af
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.ag)
  %i.ai = load double, ptr %i.b, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !9
  %i.al = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_fill_rgb2xyz_table(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 72)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x i64>, ptr %1, align 4          ; 2 uses
  %i.f = trunc <2 x i64> %i.e to <2 x i32>
  %i.g = lshr <2 x i64> %i.e, splat (i64 32)
  %i.h = trunc nuw <2 x i64> %i.g to <2 x i32>
  %i.i = sitofp <2 x i32> %i.f to <2 x double>
  %i.j = sitofp <2 x i32> %i.h to <2 x double>
  %i.k = fdiv nsz <2 x double> %i.i, %i.j         ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.r = fsub nsz double 1.000000e+00, %i.q
  %i.s = extractelement <2 x double> %i.k, i64 1  ; 2 uses
  %i.t = fsub nsz double %i.r, %i.s               ; 2 uses
  %i.u = load i64, ptr %0, align 4
  %i.v = load i64, ptr %i.a, align 4
  %i.w = load i64, ptr %i.b, align 4
  %i.x = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.y = insertelement <2 x i64> %i.x, i64 %i.w, i64 1 ; 2 uses
  %i.z = trunc <2 x i64> %i.y to <2 x i32>
  %i.aa = lshr <2 x i64> %i.y, splat (i64 32)
  %i.ab = trunc nuw <2 x i64> %i.aa to <2 x i32>
  %i.ac = sitofp <2 x i32> %i.z to <2 x double>
  %i.ad = sitofp <2 x i32> %i.ab to <2 x double>
  %i.ae = load i64, ptr %i.c, align 4
  %i.af = fdiv nsz <2 x double> %i.ac, %i.ad      ; 2 uses
  %i.ag = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.ah = insertelement <2 x i64> %i.ag, i64 %i.ae, i64 1 ; 2 uses
  %i.ai = trunc <2 x i64> %i.ah to <2 x i32>
  %i.aj = lshr <2 x i64> %i.ah, splat (i64 32)
  %i.ak = trunc nuw <2 x i64> %i.aj to <2 x i32>
  %i.al = sitofp <2 x i32> %i.ai to <2 x double>
  %i.am = sitofp <2 x i32> %i.ak to <2 x double>
  %i.an = fdiv nsz <2 x double> %i.al, %i.am      ; 3 uses
  %i.ao = load <2 x i64>, ptr %i.d, align 4       ; 2 uses
  %i.ap = lshr <2 x i64> %i.ao, splat (i64 32)
  %i.aq = trunc <2 x i64> %i.ao to <2 x i32>
  %i.ar = trunc nuw <2 x i64> %i.ap to <2 x i32>
  %i.as = sitofp <2 x i32> %i.aq to <2 x double>
  %i.at = sitofp <2 x i32> %i.ar to <2 x double>
  %i.au = fdiv nsz <2 x double> %i.as, %i.at      ; 4 uses
  %i.av = fdiv nsz <2 x double> %i.af, %i.an      ; 7 uses
  %i.aw = extractelement <2 x double> %i.au, i64 0
  %i.ax = extractelement <2 x double> %i.au, i64 1
  %i.ay = extractelement <2 x double> %i.av, i64 0 ; 2 uses
  %3 = fsub nsz double 1.000000e+00, %i.aw
  %4 = fsub nsz <2 x double> splat (double 1.000000e+00), %i.af
  %i.az = fsub nsz double %3, %i.ax
  %i.ba = fsub nsz <2 x double> %4, %i.an
  %5 = fdiv nsz <2 x double> %i.ba, %i.an         ; 7 uses
  %6 = extractelement <2 x double> %5, i64 0      ; 2 uses
  %7 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %8 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x double> poison, double %i.t, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x double> %i.au, double %i.az, i64 1
  %i.bc = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fdiv nsz <2 x double> %i.bb, %i.bc      ; 9 uses
  %i.be = extractelement <2 x double> %i.bd, i64 1
  %i.bf = extractelement <2 x double> %i.bd, i64 0
  %shift = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %shift, %i.bd
  %i.bg = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %11 = fneg nsz double %i.bf
  %12 = shufflevector <2 x double> %i.av, <2 x double> %i.bd, <2 x i32> <i32 1, i32 2>
  %13 = fneg nsz <2 x double> %12
  %i.bh = fmul nsz <2 x double> %5, %13
  %14 = shufflevector <2 x double> %5, <2 x double> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %14, <2 x double> %i.bh) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1
  %i.bk = fneg nsz double %i.bj                   ; 2 uses
  %foldExtExtBinop.a = fsub nsz <2 x double> %i.bd, %5
  %15 = extractelement <2 x double> %foldExtExtBinop.a, i64 1 ; 2 uses
  %16 = fmul nsz double %6, %11
  %17 = shufflevector <2 x double> %i.bd, <2 x double> %5, <2 x i32> <i32 1, i32 2>
  %18 = fsub nsz <2 x double> %5, %17
  %i.bl = tail call nsz double @llvm.fmuladd.f64(double %i.ay, double %i.be, double %16)
  %19 = shufflevector <2 x double> %i.bd, <2 x double> %i.av, <2 x i32> <i32 0, i32 2>
  %20 = fsub nsz <2 x double> %19, %i.av
  %i.bm = tail call nsz double @llvm.fmuladd.f64(double %i.ay, double %15, double %i.bk)
  %i.bn = tail call nsz double @llvm.fmuladd.f64(double %6, double %i.bg, double %i.bm)
  %i.bo = fdiv nsz double 1.000000e+00, %i.bn     ; 4 uses
  %21 = fmul nsz double %15, %i.bo
  %22 = fmul nsz double %i.bo, %i.bk
  %23 = fmul nsz double %i.bg, %i.bo
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = fmul nsz <2 x double> %18, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.bl, i64 0
  %24 = fneg nsz <2 x double> %i.bi
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> %24, <2 x i32> <i32 0, i32 2>
  %i.bu = fmul nsz <2 x double> %i.bt, %i.bq
  %25 = fmul nsz <2 x double> %20, %i.bq
  %i.bv = fmul nsz double %i.s, %22
  %26 = tail call nsz double @llvm.fmuladd.f64(double %21, double %i.q, double %i.bv)
  %27 = tail call nsz double @llvm.fmuladd.f64(double %23, double %i.t, double %26) ; 3 uses
  %i.bw = fmul nsz <2 x double> %7, %i.bu
  %28 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %8, <2 x double> %i.bw)
  %i.bx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %10, <2 x double> %28) ; 4 uses
  %i.by = insertelement <2 x double> poison, double %27, i64 0
  %29 = shufflevector <2 x double> %i.by, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %30 = fmul nsz <2 x double> %i.av, %29
  store <2 x double> %30, ptr %2, align 8, !tbaa !9
  %31 = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul nsz <2 x double> %i.bd, %31        ; 2 uses
  %32 = extractelement <2 x double> %i.bz, i64 0
  store double %32, ptr %i.l, align 8, !tbaa !9
  store double %27, ptr %i.m, align 8, !tbaa !9
  store <2 x double> %i.bx, ptr %i.n, align 8, !tbaa !9
  %33 = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %34 = insertelement <2 x double> %33, double %27, i64 0
  %i.ca = fmul nsz <2 x double> %5, %34
  store <2 x double> %i.ca, ptr %i.o, align 8, !tbaa !9
  %35 = extractelement <2 x double> %i.bz, i64 1
  store double %35, ptr %i.p, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_fill_rgb2yuv_table(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 72)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 4          ; 2 uses
  %i.b = trunc <2 x i64> %i.a to <2 x i32>
  %i.c = lshr <2 x i64> %i.a, splat (i64 32)
  %i.d = trunc nuw <2 x i64> %i.c to <2 x i32>
  %i.e = sitofp <2 x i32> %i.b to <2 x double>
  %i.f = sitofp <2 x i32> %i.d to <2 x double>
  %i.g = fdiv nsz <2 x double> %i.e, %i.f         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i43 = trunc i64 %i.i to i32
  %.sroa.2.0.extract.shift.i44 = lshr i64 %i.i, 32
  %.sroa.2.0.extract.trunc.i45 = trunc nuw i64 %.sroa.2.0.extract.shift.i44 to i32
  %i.j = sitofp nsz i32 %.sroa.0.0.extract.trunc.i43 to double
  %i.k = sitofp nsz i32 %.sroa.2.0.extract.trunc.i45 to double
  %i.l = fdiv nsz double %i.j, %i.k               ; 5 uses
  %i.m = extractelement <2 x double> %i.g, i64 0  ; 3 uses
  %i.n = fcmp nsz oeq double %i.m, 2.500000e-01
  %i.o = extractelement <2 x double> %i.g, i64 1  ; 4 uses
  %i.p = fcmp nsz oeq double %i.o, 5.000000e-01
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  %i.q = fcmp nsz oeq double %i.l, 2.500000e-01
  %or.cond3 = select i1 %or.cond, i1 %i.q, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 16 dereferenceable(72) @ycgco_matrix, i64 72, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.r = fcmp nsz oeq double %i.m, 1.000000e+00
  %i.s = fcmp nsz oeq double %i.o, 1.000000e+00
  %or.cond5 = select i1 %i.r, i1 %i.s, i1 false
  %i.t = fcmp nsz oeq double %i.l, 1.000000e+00
  %or.cond7 = select i1 %or.cond5, i1 %i.t, i1 false
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 16 dereferenceable(72) @gbr_matrix, i64 72, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store double %i.m, ptr %1, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.o, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.l, ptr %i.v, align 8, !tbaa !9
  %i.w = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x double> %i.w, double %i.l, i64 0
  %i.y = fadd nsz <2 x double> %i.x, splat (double -1.000000e+00)
  %i.z = fdiv nsz <2 x double> splat (double 5.000000e-01), %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul nsz <2 x double> %i.g, %i.ab
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x double> splat (double 5.000000e-01), ptr %i.ad, align 8, !tbaa !9
  %i.ae = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.af = fmul nsz double %i.o, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.af, ptr %i.ag, align 8, !tbaa !9
  %i.ah = fmul nsz double %i.ae, %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.ah, ptr %i.ai, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define double @ff_determine_signal_peak(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 14) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = uitofp nsz i32 %i.d to float
  %i.f = fdiv nsz float %i.e, 1.000000e+02
  %i.g = fpext nsz float %i.f to double
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi nsz double [ %i.g, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.h = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 11) #6 ; 2 uses
  %i.i = fcmp nsz oeq double %.0, 0.000000e+00
  %i.j = icmp ne ptr %i.h, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.p = load i64, ptr %i.o, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.p, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.q = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.r = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.s = fdiv nsz double %i.q, %i.r
  %i.t = fdiv nsz double %i.s, 1.000000e+02
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.2 = phi nsz double [ %.0, %bb.c ], [ %i.t, %bb.e ], [ %.0, %bb.d ] ; 2 uses
  %i.u = fcmp nsz une double %.2, 0.000000e+00
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i32, ptr %i.v, align 8, !tbaa !23
  %i.x = icmp eq i32 %i.w, 16
  %i.y = select i1 %i.x, double 1.000000e+02, double 1.000000e+01
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi nsz double [ %.2, %bb.f ], [ %i.y, %bb.g ]
  ret double %.3
}

declare ptr @av_frame_get_side_data(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @ff_update_hdr_metadata(ptr noundef %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 14) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = fmul nsz double %1, 1.000000e+02
  %i.e = fptoui double %i.d to i32
  store i32 %i.e, ptr %i.c, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @av_frame_get_side_data(ptr noundef %0, i32 noundef 11) #6 ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.l = fmul nsz double %1, 1.000000e+02
  %i.m = tail call i64 @av_d2q(double noundef %i.l, i32 noundef 10000) #7
  store i64 %i.m, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_d2q(double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
