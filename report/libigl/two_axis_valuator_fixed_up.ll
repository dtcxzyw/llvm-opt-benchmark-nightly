Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/two_axis_valuator_fixed_up?download=true
inline.NumInlined: 1130
inline.NumDeleted: 728
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl26two_axis_valuator_fixed_upIffEEviidRKN5Eigen10QuaternionIT_Li0EEEiiiiRNS2_IT0_Li0EEE = comdat any

$_ZN3igl26two_axis_valuator_fixed_upIddEEviidRKN5Eigen10QuaternionIT_Li0EEEiiiiRNS2_IT0_Li0EEE = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl26two_axis_valuator_fixed_upIffEEviidRKN5Eigen10QuaternionIT_Li0EEEiiiiRNS2_IT0_Li0EEE(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit:
  %i.a = sub nsw i32 %6, %4
  %i.b = sitofp i32 %i.a to float
  %i.c = fpext nnan ninf float %i.b to double
  %i.d = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %1, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = sub nsw i32 %7, %5
  %i.h = sitofp i32 %i.g to double
  %i.i = insertelement <2 x double> poison, double %i.c, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.h, i64 1
  %i.k = fmul nnan <2 x double> %i.j, splat (double f0x400921FB54442D18)
  %i.l = fpext nnan ninf <2 x float> %i.f to <2 x double>
  %i.m = fdiv <2 x double> %i.k, %i.l
  %i.n = insertelement <2 x double> poison, double %2, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.o, %i.m
  %i.q = fmul <2 x double> %i.p, splat (double 5.000000e-01)
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  %i.s = fmul <2 x float> %i.r, splat (float 5.000000e-01) ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.u = tail call noundef float @cosf(float noundef %i.t) #3
  %i.v = tail call noundef float @sinf(float noundef %i.t) #3
  %9 = insertelement <2 x float> poison, float %i.v, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %10, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.w = load <4 x float>, ptr %3, align 16, !tbaa !9, !noalias !14 ; 4 uses
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.y = fmul <4 x float> %i.x, %12
  %i.z = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %13 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.aa = fmul <4 x float> %i.z, %13
  %i.ab = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = fmul <4 x float> %i.w, %i.ac
  %i.ae = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %14 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.af = fmul <4 x float> %i.ae, %14
  %i.ag = fsub <4 x float> %i.ad, %i.af
  %i.ah = fadd <4 x float> %i.y, %i.aa
  %i.ai = bitcast <4 x float> %i.ah to <4 x i32>
  %i.aj = xor <4 x i32> %i.ai, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.ak = bitcast <4 x i32> %i.aj to <4 x float>
  %i.al = fadd <4 x float> %i.ag, %i.ak           ; 4 uses
  %i.am = fmul <4 x float> %i.al, %i.al           ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ap = fadd <2 x float> %i.an, %i.ao
  %i.aq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ap) ; 2 uses
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  %i.as = tail call float @llvm.sqrt.f32(float %i.aq)
  %i.at = insertelement <4 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = fdiv <4 x float> %i.al, %i.au
  %storemerge = select i1 %i.ar, <4 x float> %i.av, <4 x float> %i.al ; 4 uses
  %i.aw = extractelement <2 x float> %i.s, i64 1  ; 2 uses
  %i.ax = tail call noundef float @cosf(float noundef %i.aw) #3
  %i.ay = tail call noundef float @sinf(float noundef %i.aw) #3
  %15 = insertelement <2 x float> poison, float %i.ay, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %17 = fmul <4 x float> %16, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 3 uses
  %.sroa.016.8.vec.insert = insertelement <4 x float> %17, float %i.ax, i64 3 ; 2 uses
  %i.az = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.ba = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.bb = fmul <4 x float> %i.ba, %i.az
  %i.bc = shufflevector <4 x float> %.sroa.016.8.vec.insert, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.bd = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.be = fmul <4 x float> %i.bd, %i.bc
  %i.bf = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bg = fmul <4 x float> %i.bf, %.sroa.016.8.vec.insert
  %i.bh = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.bi = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.bj = fmul <4 x float> %i.bi, %i.bh
  %i.bk = fsub <4 x float> %i.bg, %i.bj
  %i.bl = fadd <4 x float> %i.bb, %i.be
  %i.bm = bitcast <4 x float> %i.bl to <4 x i32>
  %i.bn = xor <4 x i32> %i.bm, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.bo = bitcast <4 x i32> %i.bn to <4 x float>
  %i.bp = fadd <4 x float> %i.bk, %i.bo           ; 4 uses
  %i.bq = fmul <4 x float> %i.bp, %i.bp           ; 2 uses
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bt = fadd <2 x float> %i.br, %i.bs
  %i.bu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bt) ; 2 uses
  %i.bv = fcmp ogt float %i.bu, 0.000000e+00
  %i.bw = tail call float @llvm.sqrt.f32(float %i.bu)
  %i.bx = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = fdiv <4 x float> %i.bp, %i.by
  %storemerge44 = select i1 %i.bv, <4 x float> %i.bz, <4 x float> %i.bp
  store <4 x float> %storemerge44, ptr %8, align 16, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl26two_axis_valuator_fixed_upIddEEviidRKN5Eigen10QuaternionIT_Li0EEEiiiiRNS2_IT0_Li0EEE(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull align 16 dereferenceable(32) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 16 dereferenceable(32) %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit:
  %i.a = sub nsw i32 %6, %4
  %i.b = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %1, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x double>
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = sub nsw i32 %7, %5
  %i.h = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.i = insertelement <2 x i32> %i.h, i32 %i.g, i64 1
  %i.j = sitofp <2 x i32> %i.i to <2 x double>
  %i.k = fmul nnan <2 x double> %i.j, splat (double f0x400921FB54442D18)
  %i.l = fdiv <2 x double> %i.k, %i.d
  %i.m = insertelement <2 x double> poison, double %2, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.l
  %i.p = fmul <2 x double> %i.o, splat (double 5.000000e-01)
  %i.q = fmul <2 x double> %i.p, splat (double 5.000000e-01) ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 0  ; 2 uses
  %i.s = tail call double @cos(double noundef %i.r) #3
  %i.t = tail call double @sin(double noundef %i.r) #3 ; 2 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.t, i64 0
  %i.u = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, <double 0.000000e+00, double 1.000000e+00> ; 4 uses
  %i.w = fmul double %i.t, 0.000000e+00
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %.sroa.440.16.vec.insert = insertelement <2 x double> %i.x, double %i.s, i64 1 ; 4 uses
  %i.y = load <1 x double>, ptr %3, align 16
  %i.z = shufflevector <1 x double> %i.y, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = load <1 x double>, ptr %i.e, align 8
  %i.ab = shufflevector <1 x double> %i.aa, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = load <2 x double>, ptr %i.f, align 16   ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.af = fmul <2 x double> %i.v, %i.ae
  %i.ag = fmul <2 x double> %.sroa.440.16.vec.insert, %i.ab
  %i.ah = fadd <2 x double> %i.ag, %i.af
  %i.ai = fmul <2 x double> %i.v, %i.ad
  %i.aj = fmul <2 x double> %.sroa.440.16.vec.insert, %i.z
  %i.ak = fsub <2 x double> %i.ai, %i.aj
  %i.al = bitcast <2 x double> %i.ak to <2 x i64>
  %i.am = xor <2 x i64> %i.al, <i64 0, i64 -9223372036854775808>
  %i.an = bitcast <2 x i64> %i.am to <2 x double>
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = fadd <2 x double> %i.ah, %i.ao          ; 4 uses
  %i.aq = fmul <2 x double> %.sroa.440.16.vec.insert, %i.ae
  %i.ar = fmul <2 x double> %i.v, %i.ab
  %i.as = fsub <2 x double> %i.aq, %i.ar
  %i.at = fmul <2 x double> %.sroa.440.16.vec.insert, %i.ad
  %i.au = fmul <2 x double> %i.v, %i.z
  %i.av = fadd <2 x double> %i.au, %i.at
  %i.aw = bitcast <2 x double> %i.av to <2 x i64>
  %i.ax = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = xor <2 x i64> %i.aw, <i64 -9223372036854775808, i64 0>
  %i.az = bitcast <2 x i64> %i.ay to <2 x double>
  %i.ba = fadd <2 x double> %i.ax, %i.az          ; 3 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bc = fmul <2 x double> %i.ap, %i.ap
  %i.bd = fmul <2 x double> %i.ba, %i.ba
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fadd <2 x double> %i.bc, %i.be
  %i.bg = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bf) ; 2 uses
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00     ; 2 uses
  %.scalar.i.i = tail call double @llvm.sqrt.f64(double %i.bg)
  %i.bi = insertelement <2 x double> poison, double %.scalar.i.i, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fdiv <2 x double> %i.ap, %i.bj
  %i.bl = fdiv <2 x double> %i.bb, %i.bj
  %i.bm = select i1 %i.bh, <2 x double> %i.bl, <2 x double> %i.bb ; 4 uses
  %i.bn = select i1 %i.bh, <2 x double> %i.bk, <2 x double> %i.ap ; 4 uses
  %i.bo = extractelement <2 x double> %i.q, i64 1 ; 2 uses
  %i.bp = tail call double @cos(double noundef %i.bo) #3
  %i.bq = tail call double @sin(double noundef %i.bo) #3 ; 2 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i16 = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.br = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.br, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.bt = fmul double %i.bq, 0.000000e+00
  %i.bu = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = fmul <2 x double> %i.bn, %i.bz
  %i.cb = fmul <2 x double> %i.bm, %i.bv
  %i.cc = fadd <2 x double> %i.ca, %i.cb
  %i.cd = fmul <2 x double> %i.bn, %i.bx
  %i.ce = fmul <2 x double> %i.bm, %i.bu
  %i.cf = fsub <2 x double> %i.cd, %i.ce
  %i.cg = bitcast <2 x double> %i.cf to <2 x i64>
  %i.ch = xor <2 x i64> %i.cg, <i64 0, i64 -9223372036854775808>
  %i.ci = bitcast <2 x i64> %i.ch to <2 x double>
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ck = fadd <2 x double> %i.cc, %i.cj          ; 4 uses
  %i.cl = fmul <2 x double> %i.bz, %i.bm
  %i.cm = fmul <2 x double> %i.bn, %i.bv
  %i.cn = fsub <2 x double> %i.cl, %i.cm
  %i.co = fmul <2 x double> %i.bm, %i.bx
  %i.cp = fmul <2 x double> %i.bn, %i.bu
  %i.cq = fadd <2 x double> %i.co, %i.cp
  %i.cr = bitcast <2 x double> %i.cq to <2 x i64>
  %i.cs = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = xor <2 x i64> %i.cr, <i64 -9223372036854775808, i64 0>
  %i.cu = bitcast <2 x i64> %i.ct to <2 x double>
  %i.cv = fadd <2 x double> %i.cs, %i.cu          ; 3 uses
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  store <2 x double> %i.ck, ptr %8, align 16
  store <2 x double> %i.cw, ptr %.sroa.443.0..sroa_idx, align 16, !tbaa !9
  %i.cx = fmul <2 x double> %i.ck, %i.ck
  %i.cy = fmul <2 x double> %i.cv, %i.cv
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.da = fadd <2 x double> %i.cx, %i.cz
  %i.db = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.da) ; 2 uses
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.a, label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit18

bb.a:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  %.scalar.i.i17 = tail call double @llvm.sqrt.f64(double %i.db)
  %i.dd = insertelement <2 x double> poison, double %.scalar.i.i17, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = fdiv <2 x double> %i.ck, %i.de
  store <2 x double> %i.df, ptr %8, align 16, !tbaa !9
  %i.dg = fdiv <2 x double> %i.cw, %i.de
  store <2 x double> %i.dg, ptr %.sroa.443.0..sroa_idx, align 16, !tbaa !9
  br label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit18

_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit18: ; preds = %bb.a, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
end_hunk_0
