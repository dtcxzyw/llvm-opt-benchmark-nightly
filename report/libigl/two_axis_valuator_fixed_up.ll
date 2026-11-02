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
  %sincos.sin44 = alloca float, align 4           ; 2 uses
  %sincos.cos45 = alloca float, align 4           ; 2 uses
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
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
  %i.t = extractelement <2 x float> %i.s, i64 0
  call void @sincosf(float %i.t, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %cos = load float, ptr %sincos.cos, align 4
  %sin = load float, ptr %sincos.sin, align 4
  %i.u = insertelement <2 x float> poison, float %sin, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.v, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.x = load <4 x float>, ptr %3, align 16, !tbaa !9, !noalias !14 ; 4 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.z = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.aa = fmul <4 x float> %i.y, %i.z
  %i.ab = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.ac = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ad = fmul <4 x float> %i.ab, %i.ac
  %i.ae = insertelement <4 x float> poison, float %cos, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fmul <4 x float> %i.x, %i.af
  %i.ah = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.ai = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aj = fmul <4 x float> %i.ah, %i.ai
  %i.ak = fsub <4 x float> %i.ag, %i.aj
  %i.al = fadd <4 x float> %i.aa, %i.ad
  %i.am = bitcast <4 x float> %i.al to <4 x i32>
  %i.an = xor <4 x i32> %i.am, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.ao = bitcast <4 x i32> %i.an to <4 x float>
  %i.ap = fadd <4 x float> %i.ak, %i.ao           ; 4 uses
  %i.aq = fmul <4 x float> %i.ap, %i.ap           ; 2 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.at = fadd <2 x float> %i.ar, %i.as
  %9 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at) ; 2 uses
  %i.au = fcmp ogt float %9, 0.000000e+00
  %10 = call float @llvm.sqrt.f32(float %9)
  %i.av = insertelement <4 x float> poison, float %10, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = fdiv <4 x float> %i.ap, %i.aw
  %storemerge = select i1 %i.au, <4 x float> %i.ax, <4 x float> %i.ap ; 4 uses
  %i.ay = extractelement <2 x float> %i.s, i64 1
  call void @sincosf(float %i.ay, ptr nonnull %sincos.sin44, ptr nonnull %sincos.cos45)
  %cos47 = load float, ptr %sincos.cos45, align 4
  %sin46 = load float, ptr %sincos.sin44, align 4
  %i.az = insertelement <2 x float> poison, float %sin46, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bb = fmul <4 x float> %i.ba, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 3 uses
  %.sroa.016.8.vec.insert = insertelement <4 x float> %i.bb, float %cos47, i64 3 ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.bd = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.be = fmul <4 x float> %i.bd, %i.bc
  %i.bf = shufflevector <4 x float> %.sroa.016.8.vec.insert, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.bg = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bh = fmul <4 x float> %i.bg, %i.bf
  %i.bi = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bj = fmul <4 x float> %i.bi, %.sroa.016.8.vec.insert
  %i.bk = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.bl = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.bm = fmul <4 x float> %i.bl, %i.bk
  %i.bn = fsub <4 x float> %i.bj, %i.bm
  %i.bo = fadd <4 x float> %i.be, %i.bh
  %i.bp = bitcast <4 x float> %i.bo to <4 x i32>
  %i.bq = xor <4 x i32> %i.bp, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.br = bitcast <4 x i32> %i.bq to <4 x float>
  %i.bs = fadd <4 x float> %i.bn, %i.br           ; 4 uses
  %i.bt = fmul <4 x float> %i.bs, %i.bs           ; 2 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bw = fadd <2 x float> %i.bu, %i.bv
  %11 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bw) ; 2 uses
  %i.bx = fcmp ogt float %11, 0.000000e+00
  %12 = call float @llvm.sqrt.f32(float %11)
  %i.by = insertelement <4 x float> poison, float %12, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = fdiv <4 x float> %i.bs, %i.bz
  %storemerge44 = select i1 %i.bx, <4 x float> %i.ca, <4 x float> %i.bs
  store <4 x float> %storemerge44, ptr %8, align 16, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl26two_axis_valuator_fixed_upIddEEviidRKN5Eigen10QuaternionIT_Li0EEEiiiiRNS2_IT0_Li0EEE(i32 noundef %0, i32 noundef %1, double noundef %2, ptr noundef nonnull align 16 dereferenceable(32) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 16 dereferenceable(32) %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit:
  %sincos.sin51 = alloca double, align 8          ; 2 uses
  %sincos.cos52 = alloca double, align 8          ; 2 uses
  %sincos.sin = alloca double, align 8            ; 2 uses
  %sincos.cos = alloca double, align 8            ; 2 uses
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
  %i.l = fdiv <2 x double> %i.k, %i.d             ; 2 uses
  %9 = extractelement <2 x double> %i.l, i64 0
  %10 = fmul double %2, %9
  %11 = fmul double %10, 5.000000e-01
  %12 = fmul double %11, 5.000000e-01
  call void @sincos(double %12, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8    ; 2 uses
  %cos = load double, ptr %sincos.cos, align 8
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %sin, i64 0
  %i.m = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.m, <double 0.000000e+00, double 1.000000e+00> ; 4 uses
  %i.o = fmul double %sin, 0.000000e+00
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %.sroa.440.16.vec.insert = insertelement <2 x double> %i.p, double %cos, i64 1 ; 4 uses
  %i.q = load <1 x double>, ptr %3, align 16
  %i.r = shufflevector <1 x double> %i.q, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = load <1 x double>, ptr %i.e, align 8
  %i.t = shufflevector <1 x double> %i.s, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.u = load <2 x double>, ptr %i.f, align 16    ; 2 uses
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.x = fmul <2 x double> %i.n, %i.w
  %i.y = fmul <2 x double> %.sroa.440.16.vec.insert, %i.t
  %i.z = fadd <2 x double> %i.y, %i.x
  %i.aa = fmul <2 x double> %i.n, %i.v
  %i.ab = fmul <2 x double> %.sroa.440.16.vec.insert, %i.r
  %i.ac = fsub <2 x double> %i.aa, %i.ab
  %i.ad = bitcast <2 x double> %i.ac to <2 x i64>
  %i.ae = xor <2 x i64> %i.ad, <i64 0, i64 -9223372036854775808>
  %i.af = bitcast <2 x i64> %i.ae to <2 x double>
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fadd <2 x double> %i.z, %i.ag           ; 4 uses
  %i.ai = fmul <2 x double> %.sroa.440.16.vec.insert, %i.w
  %i.aj = fmul <2 x double> %i.n, %i.t
  %i.ak = fsub <2 x double> %i.ai, %i.aj
  %i.al = fmul <2 x double> %.sroa.440.16.vec.insert, %i.v
  %i.am = fmul <2 x double> %i.n, %i.r
  %i.an = fadd <2 x double> %i.am, %i.al
  %i.ao = bitcast <2 x double> %i.an to <2 x i64>
  %i.ap = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = xor <2 x i64> %i.ao, <i64 -9223372036854775808, i64 0>
  %i.ar = bitcast <2 x i64> %i.aq to <2 x double>
  %i.as = fadd <2 x double> %i.ap, %i.ar          ; 3 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.au = fmul <2 x double> %i.ah, %i.ah
  %i.av = fmul <2 x double> %i.as, %i.as
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = fadd <2 x double> %i.au, %i.aw
  %13 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ax) ; 2 uses
  %i.ay = fcmp ogt double %13, 0.000000e+00       ; 2 uses
  %.scalar.i.i = call double @llvm.sqrt.f64(double %13)
  %i.az = insertelement <2 x double> poison, double %.scalar.i.i, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fdiv <2 x double> %i.ah, %i.ba
  %i.bc = fdiv <2 x double> %i.at, %i.ba
  %i.bd = select i1 %i.ay, <2 x double> %i.bc, <2 x double> %i.at ; 4 uses
  %i.be = select i1 %i.ay, <2 x double> %i.bb, <2 x double> %i.ah ; 4 uses
  %i.bf = extractelement <2 x double> %i.l, i64 1
  %14 = fmul double %2, %i.bf
  %15 = fmul double %14, 5.000000e-01
  %16 = fmul double %15, 5.000000e-01
  call void @sincos(double %16, ptr nonnull %sincos.sin51, ptr nonnull %sincos.cos52)
  %sin53 = load double, ptr %sincos.sin51, align 8 ; 2 uses
  %cos54 = load double, ptr %sincos.cos52, align 8
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i16 = insertelement <2 x double> poison, double %sin53, i64 0
  %i.bg = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %i.bg, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.bi = fmul double %sin53, 0.000000e+00
  %i.bj = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %cos54, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = fmul <2 x double> %i.be, %i.bo
  %i.bq = fmul <2 x double> %i.bd, %i.bk
  %i.br = fadd <2 x double> %i.bp, %i.bq
  %i.bs = fmul <2 x double> %i.be, %i.bm
  %i.bt = fmul <2 x double> %i.bd, %i.bj
  %i.bu = fsub <2 x double> %i.bs, %i.bt
  %i.bv = bitcast <2 x double> %i.bu to <2 x i64>
  %i.bw = xor <2 x i64> %i.bv, <i64 0, i64 -9223372036854775808>
  %i.bx = bitcast <2 x i64> %i.bw to <2 x double>
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = fadd <2 x double> %i.br, %i.by          ; 4 uses
  %i.ca = fmul <2 x double> %i.bd, %i.bo
  %i.cb = fmul <2 x double> %i.be, %i.bk
  %i.cc = fsub <2 x double> %i.ca, %i.cb
  %i.cd = fmul <2 x double> %i.bd, %i.bm
  %i.ce = fmul <2 x double> %i.be, %i.bj
  %i.cf = fadd <2 x double> %i.cd, %i.ce
  %i.cg = bitcast <2 x double> %i.cf to <2 x i64>
  %i.ch = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = xor <2 x i64> %i.cg, <i64 -9223372036854775808, i64 0>
  %i.cj = bitcast <2 x i64> %i.ci to <2 x double>
  %i.ck = fadd <2 x double> %i.ch, %i.cj          ; 3 uses
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  store <2 x double> %i.bz, ptr %8, align 16
  store <2 x double> %i.cl, ptr %.sroa.443.0..sroa_idx, align 16, !tbaa !9
  %i.cm = fmul <2 x double> %i.bz, %i.bz
  %i.cn = fmul <2 x double> %i.ck, %i.ck
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fadd <2 x double> %i.cm, %i.co
  %17 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cp) ; 2 uses
  %i.cq = fcmp ogt double %17, 0.000000e+00
  br i1 %i.cq, label %bb.a, label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit18

bb.a:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  %.scalar.i.i17 = call double @llvm.sqrt.f64(double %17)
  %i.cr = insertelement <2 x double> poison, double %.scalar.i.i17, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = fdiv <2 x double> %i.bz, %i.cs
  store <2 x double> %i.ct, ptr %8, align 16, !tbaa !9
  %i.cu = fdiv <2 x double> %i.cl, %i.cs
  store <2 x double> %i.cu, ptr %.sroa.443.0..sroa_idx, align 16, !tbaa !9
  br label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit18

_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit18: ; preds = %bb.a, %_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, i1 true, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIfLi0EEEEmlIS2_EES2_RKNS0_IT_EE"}
!11 = distinct !{!11, !10, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIfLi0EEEEmlIS2_EES2_RKNS0_IT_EE: argument 0"}
!12 = distinct !{!12, i1 true, !"_ZN5Eigen8internal12quat_productILi1ENS_10QuaternionIfLi0EEES3_fE3runERKNS_14QuaternionBaseIS3_EES8_"}
!13 = distinct !{!13, !12, !"_ZN5Eigen8internal12quat_productILi1ENS_10QuaternionIfLi0EEES3_fE3runERKNS_14QuaternionBaseIS3_EES8_: argument 0"}
!14 = !{!13, !11}
end_hunk_0
