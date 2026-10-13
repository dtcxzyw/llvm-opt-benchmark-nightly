Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/colorspace?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ycgco_matrix = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 2.500000e-01, double 5.000000e-01, double 2.500000e-01], [3 x double] [double -2.500000e-01, double 5.000000e-01, double -2.500000e-01], [3 x double] [double 5.000000e-01, double 0.000000e+00, double -5.000000e-01]], align 16
@gbr_matrix = internal unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double -5.000000e-01, double 5.000000e-01], [3 x double] [double 5.000000e-01, double -5.000000e-01, double 0.000000e+00]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_matrix_invert_3x3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 72)) %1) local_unnamed_addr #0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !10 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load double, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.j = fneg nsz double %i.i
  %i.k = load <2 x double>, ptr %0, align 8, !tbaa !10 ; 5 uses
  %i.l = load <2 x double>, ptr %i.c, align 8, !tbaa !10 ; 7 uses
  %i.m = insertelement <2 x double> poison, double %i.i, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x double> %i.p, double %i.b, i64 1
  %i.r = fneg nsz <2 x double> %i.q               ; 3 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul nsz <2 x double> %i.l, %i.s
  %i.u = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.n, <2 x double> %i.t) ; 3 uses
  %2 = extractelement <2 x double> %i.u, i64 0
  %3 = fneg nsz double %2
  %i.v = load <2 x double>, ptr %i.g, align 8, !tbaa !10 ; 5 uses
  %i.w = load double, ptr %i.h, align 8, !tbaa !10 ; 2 uses
  %i.x = shufflevector <2 x double> %i.l, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.y = fmul nsz <2 x double> %i.x, %i.r
  %i.z = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aa = shufflevector <2 x double> %i.l, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.ab = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.aa, <2 x double> %i.y) ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul nsz <2 x double> %i.ad, %i.r
  %i.af = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x double> %i.v, double %i.w, i64 1
  %i.ah = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ag, <2 x double> %i.ae) ; 2 uses
  %i.ai = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aj = insertelement <2 x double> %i.ai, double %i.f, i64 0
  %i.ak = insertelement <2 x double> poison, double %i.j, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul nsz <2 x double> %i.aj, %i.al
  %i.an = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.ao, <2 x double> %i.am) ; 3 uses
  %i.aq = shufflevector <2 x double> %i.ah, <2 x double> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.ar = fneg nsz <2 x double> %i.aq
  %i.as = shufflevector <2 x double> %i.l, <2 x double> %i.ab, <2 x i32> <i32 1, i32 3>
  %i.at = fneg nsz <2 x double> %i.as             ; 2 uses
  %i.au = insertelement <2 x double> %i.z, double %i.f, i64 0
  %i.av = fmul nsz <2 x double> %i.au, %i.at
  %i.aw = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.ax = shufflevector <2 x double> %i.v, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ay = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ax, <2 x double> %i.av) ; 2 uses
  %i.az = extractelement <2 x double> %i.u, i64 1
  %i.ba = extractelement <2 x double> %i.ay, i64 1
  %i.bb = tail call nsz double @llvm.fmuladd.f64(double %i.f, double %i.az, double %i.ba)
  %i.bc = fdiv nsz double 1.000000e+00, %i.bb     ; 2 uses
  %i.bd = insertelement <4 x double> poison, double %i.bc, i64 0
  %i.be = shufflevector <4 x double> %i.bd, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bf = shufflevector <2 x double> %i.ap, <2 x double> %i.at, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bg = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x double> %i.bf, <4 x double> %i.bg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %4 = shufflevector <2 x double> %i.ar, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %5 = shufflevector <4 x double> %i.bh, <4 x double> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bi = fmul nsz <4 x double> %i.be, %5
  store <4 x double> %i.bi, ptr %1, align 8, !tbaa !10
  %6 = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %7 = insertelement <4 x double> %6, double %3, i64 1
  %i.bj = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x double> %7, <4 x double> %i.bj, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %8 = shufflevector <4 x double> %i.bk, <4 x double> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bl = fmul nsz <4 x double> %i.be, %8
  store <4 x double> %i.bl, ptr %i.o, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = extractelement <2 x double> %i.ab, i64 0
  %i.bo = fmul nsz double %i.bc, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !10
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
  %i.e = load double, ptr %2, align 8, !tbaa !10
  %i.f = load double, ptr %1, align 8, !tbaa !10
  %i.g = load double, ptr %i.c, align 8, !tbaa !10
  %i.h = load double, ptr %i.a, align 8, !tbaa !10
  %i.i = fmul nsz double %i.g, %i.h
  %i.j = tail call nsz double @llvm.fmuladd.f64(double %i.e, double %i.f, double %i.i)
  %i.k = load double, ptr %i.d, align 8, !tbaa !10
  %i.l = load double, ptr %i.b, align 8, !tbaa !10
  %i.m = tail call nsz double @llvm.fmuladd.f64(double %i.k, double %i.l, double %i.j)
  store double %i.m, ptr %0, align 8, !tbaa !10
  %i.n = load double, ptr %2, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !10
  %i.q = load double, ptr %i.c, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !10
  %i.t = fmul nsz double %i.q, %i.s
  %i.u = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.t)
  %i.v = load double, ptr %i.d, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !10
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !10
  %i.aa = load double, ptr %2, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !10
  %i.ad = load double, ptr %i.c, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  %i.ag = fmul nsz double %i.ad, %i.af
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.ag)
  %i.ai = load double, ptr %i.d, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !10
  %i.al = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load double, ptr %i.an, align 8, !tbaa !10
  %i.as = load double, ptr %1, align 8, !tbaa !10
  %i.at = load double, ptr %i.ao, align 8, !tbaa !10
  %i.au = load double, ptr %i.a, align 8, !tbaa !10
  %i.av = fmul nsz double %i.at, %i.au
  %i.aw = tail call nsz double @llvm.fmuladd.f64(double %i.ar, double %i.as, double %i.av)
  %i.ax = load double, ptr %i.ap, align 8, !tbaa !10
  %i.ay = load double, ptr %i.b, align 8, !tbaa !10
  %i.az = tail call nsz double @llvm.fmuladd.f64(double %i.ax, double %i.ay, double %i.aw)
  store double %i.az, ptr %i.aq, align 8, !tbaa !10
  %i.ba = load double, ptr %i.an, align 8, !tbaa !10
  %i.bb = load double, ptr %i.o, align 8, !tbaa !10
  %i.bc = load double, ptr %i.ao, align 8, !tbaa !10
  %i.bd = load double, ptr %i.r, align 8, !tbaa !10
  %i.be = fmul nsz double %i.bc, %i.bd
  %i.bf = tail call nsz double @llvm.fmuladd.f64(double %i.ba, double %i.bb, double %i.be)
  %i.bg = load double, ptr %i.ap, align 8, !tbaa !10
  %i.bh = load double, ptr %i.w, align 8, !tbaa !10
  %i.bi = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.bh, double %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.bi, ptr %i.bj, align 8, !tbaa !10
  %i.bk = load double, ptr %i.an, align 8, !tbaa !10
  %i.bl = load double, ptr %i.ab, align 8, !tbaa !10
  %i.bm = load double, ptr %i.ao, align 8, !tbaa !10
  %i.bn = load double, ptr %i.ae, align 8, !tbaa !10
  %i.bo = fmul nsz double %i.bm, %i.bn
  %i.bp = tail call nsz double @llvm.fmuladd.f64(double %i.bk, double %i.bl, double %i.bo)
  %i.bq = load double, ptr %i.ap, align 8, !tbaa !10
  %i.br = load double, ptr %i.aj, align 8, !tbaa !10
  %i.bs = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.br, double %i.bp)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bs, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load double, ptr %i.bu, align 8, !tbaa !10
  %i.bz = load double, ptr %1, align 8, !tbaa !10
  %i.ca = load double, ptr %i.bv, align 8, !tbaa !10
  %i.cb = load double, ptr %i.a, align 8, !tbaa !10
  %i.cc = fmul nsz double %i.ca, %i.cb
  %i.cd = tail call nsz double @llvm.fmuladd.f64(double %i.by, double %i.bz, double %i.cc)
  %i.ce = load double, ptr %i.bw, align 8, !tbaa !10
  %i.cf = load double, ptr %i.b, align 8, !tbaa !10
  %i.cg = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double %i.cf, double %i.cd)
  store double %i.cg, ptr %i.bx, align 8, !tbaa !10
  %i.ch = load double, ptr %i.bu, align 8, !tbaa !10
  %i.ci = load double, ptr %i.o, align 8, !tbaa !10
  %i.cj = load double, ptr %i.bv, align 8, !tbaa !10
  %i.ck = load double, ptr %i.r, align 8, !tbaa !10
  %i.cl = fmul nsz double %i.cj, %i.ck
  %i.cm = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double %i.ci, double %i.cl)
  %i.cn = load double, ptr %i.bw, align 8, !tbaa !10
  %i.co = load double, ptr %i.w, align 8, !tbaa !10
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.cn, double %i.co, double %i.cm)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.cp, ptr %i.cq, align 8, !tbaa !10
  %i.cr = load double, ptr %i.bu, align 8, !tbaa !10
  %i.cs = load double, ptr %i.ab, align 8, !tbaa !10
  %i.ct = load double, ptr %i.bv, align 8, !tbaa !10
  %i.cu = load double, ptr %i.ae, align 8, !tbaa !10
  %i.cv = fmul nsz double %i.ct, %i.cu
  %i.cw = tail call nsz double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cv)
  %i.cx = load double, ptr %i.bw, align 8, !tbaa !10
  %i.cy = load double, ptr %i.aj, align 8, !tbaa !10
  %i.cz = tail call nsz double @llvm.fmuladd.f64(double %i.cx, double %i.cy, double %i.cw)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.cz, ptr %i.da, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_matrix_mul_3x3_vec(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load double, ptr %1, align 8, !tbaa !10
  %i.d = load double, ptr %2, align 8, !tbaa !10
  %i.e = load double, ptr %i.a, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !10
  %i.h = fmul nsz double %i.e, %i.g
  %i.i = tail call nsz double @llvm.fmuladd.f64(double %i.c, double %i.d, double %i.h)
  %i.j = load double, ptr %i.b, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = tail call nsz double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.i)
  store double %i.m, ptr %0, align 8, !tbaa !10
  %i.n = load double, ptr %1, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !10
  %i.q = load double, ptr %i.a, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !10
  %i.t = fmul nsz double %i.q, %i.s
  %i.u = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.t)
  %i.v = load double, ptr %i.b, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !10
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !10
  %i.aa = load double, ptr %1, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !10
  %i.ad = load double, ptr %i.a, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  %i.ag = fmul nsz double %i.ad, %i.af
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.ag)
  %i.ai = load double, ptr %i.b, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !10
  %i.al = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_fill_rgb2xyz_table(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 72)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = load i64, ptr %0, align 4
  %i.k = load i64, ptr %i.a, align 4
  %i.l = load i64, ptr %i.b, align 4
  %i.m = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %i.n = insertelement <2 x i64> %i.m, i64 %i.l, i64 1 ; 2 uses
  %i.o = trunc <2 x i64> %i.n to <2 x i32>
  %i.p = lshr <2 x i64> %i.n, splat (i64 32)
  %i.q = trunc nuw <2 x i64> %i.p to <2 x i32>
  %i.r = sitofp <2 x i32> %i.o to <2 x double>
end_hunk_0
