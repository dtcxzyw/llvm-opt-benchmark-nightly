Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvartypes?download=true
inline.NumInlined: 1130
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN12colvarmodule8rotation22compute_overlap_matrixEv:bb.a
  %i.x = load double, ptr %i.w, align 8, !tbaa !69 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !70 ; 2 uses
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.aa, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.aa, ptr %i.ac, align 8, !tbaa !55
  %i.ad = fsub double %i.a, %i.c
  %i.ae = fsub double %i.ad, %i.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ae, ptr %i.af, align 8, !tbaa !55
  %i.ag = fadd double %i.x, %i.z                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.ag, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.ag, ptr %i.ai, align 8, !tbaa !55
  %i.aj = fadd double %i.q, %i.s                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.aj, ptr %i.ak, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.aj, ptr %i.al, align 8, !tbaa !55
  %i.am = fsub double %i.c, %i.a
  %i.an = fsub double %i.am, %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.an, ptr %i.ao, align 8, !tbaa !55
  %i.ap = fadd double %i.j, %i.l                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.ap, ptr %i.aq, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ap, ptr %i.ar, align 8, !tbaa !55
  %i.as = fneg double %i.a
  %i.at = fsub double %i.as, %i.c
  %i.au = fadd double %i.at, %i.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.au, ptr %i.av, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN2NR18diagonalize_matrixEPA4_dPdS1_(ptr noundef %0, ptr noundef initializes((0, 32)) %1, ptr noundef initializes((0, 128)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !71
  %i.b = call noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = call noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  %i.d = call noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef nonnull %2) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load <2 x double>, ptr %2, align 8, !tbaa !55 ; 3 uses
  %i.g = extractelement <2 x double> %i.f, i64 0  ; 2 uses
  %i.h = call double @llvm.fmuladd.f64(double %i.g, double %i.g, double 0.000000e+00)
  %i.i = extractelement <2 x double> %i.f, i64 1  ; 2 uses
  %i.j = call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.h)
  %i.k = load <2 x double>, ptr %i.e, align 8, !tbaa !55 ; 3 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.m = call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.j)
  %i.n = extractelement <2 x double> %i.k, i64 1  ; 2 uses
  %i.o = call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.m)
  %i.p = call noundef double @sqrt(double noundef %i.o) #18
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fdiv <2 x double> %i.f, %i.r
  store <2 x double> %i.s, ptr %2, align 8, !tbaa !55
  %i.t = fdiv <2 x double> %i.k, %i.r
  store <2 x double> %i.t, ptr %i.e, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = load <2 x double>, ptr %i.u, align 8, !tbaa !55 ; 3 uses
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  %i.y = call double @llvm.fmuladd.f64(double %i.x, double %i.x, double 0.000000e+00)
  %i.z = extractelement <2 x double> %i.w, i64 1  ; 2 uses
  %i.aa = call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.y)
  %i.ab = load <2 x double>, ptr %i.v, align 8, !tbaa !55 ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.aa)
  %i.ae = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.af = call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ad)
  %i.ag = call noundef double @sqrt(double noundef %i.af) #18
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fdiv <2 x double> %i.w, %i.ai
  store <2 x double> %i.aj, ptr %i.u, align 8, !tbaa !55
  %i.ak = fdiv <2 x double> %i.ab, %i.ai
  store <2 x double> %i.ak, ptr %i.v, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.an = load <2 x double>, ptr %i.al, align 8, !tbaa !55 ; 3 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 2 uses
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double 0.000000e+00)
  %i.aq = extractelement <2 x double> %i.an, i64 1 ; 2 uses
  %i.ar = call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.ap)
  %i.as = load <2 x double>, ptr %i.am, align 8, !tbaa !55 ; 3 uses
  %i.at = extractelement <2 x double> %i.as, i64 0 ; 2 uses
  %i.au = call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.ar)
  %i.av = extractelement <2 x double> %i.as, i64 1 ; 2 uses
  %i.aw = call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.au)
  %i.ax = call noundef double @sqrt(double noundef %i.aw) #18
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fdiv <2 x double> %i.an, %i.az
  store <2 x double> %i.ba, ptr %i.al, align 8, !tbaa !55
  %i.bb = fdiv <2 x double> %i.as, %i.az
  store <2 x double> %i.bb, ptr %i.am, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.be = load <2 x double>, ptr %i.bc, align 8, !tbaa !55 ; 3 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  %i.bg = call double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double 0.000000e+00)
  %i.bh = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.bi = call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bg)
  %i.bj = load <2 x double>, ptr %i.bd, align 8, !tbaa !55 ; 3 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bl = call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %i.bi)
  %i.bm = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bn = call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %i.bl)
  %i.bo = call noundef double @sqrt(double noundef %i.bn) #18
  %i.bp = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fdiv <2 x double> %i.be, %i.bq
  store <2 x double> %i.br, ptr %i.bc, align 8, !tbaa !55
  %i.bs = fdiv <2 x double> %i.bj, %i.bq
  store <2 x double> %i.bs, ptr %i.bd, align 8, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.025 = phi i32 [ 1, %bb.a ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule8rotation15debug_gradientsERS0_RKSt6vectorIdSaIdEES6_mm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(568) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca [4 x [4 x %"class.colvarmodule::rvector"]], align 16 ; 50 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.colvarmodule::quaternion", align 16 ; 13 uses
  %8 = alloca %"class.colvarmodule::quaternion", align 16 ; 9 uses
  %9 = alloca %"class.colvarmodule::quaternion", align 16 ; 9 uses
  %10 = alloca %"class.colvarmodule::quaternion", align 16 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %47 = alloca %struct.rotation_derivative, align 8 ; 14 uses
  %48 = alloca %"class.colvarmodule::rvector", align 16 ; 8 uses
  %49 = alloca %"struct.std::array", align 8      ; 17 uses
  %50 = alloca %"struct.std::array.51", align 16  ; 57 uses
  %i.j = alloca [4 x [4 x double]], align 16      ; 32 uses
  %i.k = alloca [4 x double], align 16            ; 8 uses
  %i.l = alloca [4 x [4 x double]], align 16      ; 18 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.m = alloca double, align 8                   ; 5 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load double, ptr %i.o, align 8, !tbaa !55
  store double %i.p, ptr %i.b, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load double, ptr %i.q, align 8, !tbaa !55
  store double %i.r, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !55
  store double %i.t, ptr %i.d, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.v = load double, ptr %i.u, align 8, !tbaa !55
  store double %i.v, ptr %i.e, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.y = load <2 x double>, ptr %i.w, align 8, !tbaa !55
  store <2 x double> %i.y, ptr %7, align 16, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.ac = load <2 x double>, ptr %i.aa, align 8, !tbaa !55
  store <2 x double> %i.ac, ptr %i.z, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load <2 x double>, ptr %i.ad, align 8, !tbaa !55
  store <2 x double> %i.af, ptr %8, align 16, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aj = load <2 x double>, ptr %i.ah, align 8, !tbaa !55
  store <2 x double> %i.aj, ptr %i.ag, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = load <2 x double>, ptr %i.ak, align 8, !tbaa !55
  store <2 x double> %i.am, ptr %9, align 16, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aq = load <2 x double>, ptr %i.ao, align 8, !tbaa !55
  store <2 x double> %i.aq, ptr %i.an, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = load <2 x double>, ptr %i.ar, align 8, !tbaa !55
  store <2 x double> %i.at, ptr %10, align 16, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !55
  store <2 x double> %i.ax, ptr %i.au, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.ay = load i64, ptr @_ZN12colvarmodule8cv_widthE, align 8, !tbaa !24 ; 14 uses
  %i.az = load i64, ptr @_ZN12colvarmodule7cv_precE, align 8, !tbaa !24 ; 14 uses
  call void @_ZN12colvarmodule6to_strB5cxx11ERKdmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.ay, i64 noundef %i.az)
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %.noexc unwind label %bb.ct    ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.bb, ptr %16, align 8, !tbaa !33, !alias.scope !186
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !35 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.bc, ptr %16, align 8, !tbaa !40, !alias.scope !186
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !36
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !36, !alias.scope !186
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.bk = phi i64 [ %i.bg, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !35, !alias.scope !186
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !40
  store i64 0, ptr %i.bl, align 8, !tbaa !35
  store i8 0, ptr %i.bd, align 8, !tbaa !36
  %i.bn = add i64 %i.bk, -4611686018427387897
  %i.bo = icmp ult i64 %i.bn, 7
  br i1 %i.bo, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc124 unwind label %bb.cu

.noexc124:                                        ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.c
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.9, i64 noundef 7)
          to label %.noexc125 unwind label %bb.cu ; 6 uses

.noexc125:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  store ptr %i.bq, ptr %15, align 8, !tbaa !33, !alias.scope !187
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

bb.e:                                             ; preds = %.noexc125
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !35 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %.noexc125
  store ptr %i.br, ptr %15, align 8, !tbaa !40, !alias.scope !187
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !36
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !36, !alias.scope !187
  %.phi.trans.insert.i122 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre.i123 = load i64, ptr %.phi.trans.insert.i122, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.e
  %i.bz = phi i64 [ %i.bv, %bb.e ], [ %.pre.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !35, !alias.scope !187
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !40
  store i64 0, ptr %i.ca, align 8, !tbaa !35
  store i8 0, ptr %i.bs, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKNS_10quaternionEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, i64 noundef %i.az)
          to label %bb.g unwind label %bb.cv

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !35, !noalias !188 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !35, !noalias !188 ; 4 uses
  %i.cf = add i64 %i.ce, %i.cc                    ; 2 uses
  %i.cg = load ptr, ptr %15, align 8, !tbaa !40, !noalias !188 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bq
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.g
  %i.ci = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.g
  %i.cj = load i64, ptr %i.bq, align 8, !tbaa !36, !noalias !188
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ck = phi i64 [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.cl = icmp ugt i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cm = load ptr, ptr %18, align 8, !tbaa !40, !noalias !188
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.h
  %i.cp = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cp)
end_hunk_0
begin_hunk_1_@_ZN12colvarmodule8rotation15debug_gradientsERS0_RKSt6vectorIdSaIdEES6_mm:bb.a
  store i64 %i.aec, ptr %i.aed, align 8, !tbaa !35, !alias.scope !208
  store ptr %i.adu, ptr %i.adr, align 8, !tbaa !40
  store i64 0, ptr %i.aeb, align 8, !tbaa !35
  store i8 0, ptr %i.adu, align 8, !tbaa !36
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit426

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit426: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i420
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.aee = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !35, !noalias !209
  %i.aeg = icmp eq i64 %i.aef, 4611686018427387903
  br i1 %i.aeg, label %bb.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i427

bb.cp:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit426
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc432 unwind label %bb.eb

.noexc432:                                        ; preds = %bb.cp
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i427: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit426
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %.noexc433 unwind label %bb.eb ; 6 uses

.noexc433:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i427
  %i.aei = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  store ptr %i.aei, ptr %38, align 8, !tbaa !33, !alias.scope !209
  %i.aej = load ptr, ptr %i.aeh, align 8, !tbaa !40 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16 ; 5 uses
  %i.ael = icmp eq ptr %i.aej, %i.aek
  br i1 %i.ael, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

bb.cq:                                            ; preds = %.noexc433
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !35 ; 3 uses
  %i.aeo = icmp ult i64 %i.aen, 16
  call void @llvm.assume(i1 %i.aeo)
  %i.aep = add nuw nsw i64 %i.aen, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aei, ptr noundef nonnull align 8 dereferenceable(1) %i.aek, i64 %i.aep, i1 false)
  br label %bb.cr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %.noexc433
  store ptr %i.aej, ptr %38, align 8, !tbaa !40, !alias.scope !209
  %i.aeq = load i64, ptr %i.aek, align 8, !tbaa !36
  store i64 %i.aeq, ptr %i.aei, align 8, !tbaa !36, !alias.scope !209
  %.phi.trans.insert.i429 = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %.pre.i430 = load i64, ptr %.phi.trans.insert.i429, align 8, !tbaa !35
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428, %bb.cq
  %i.aer = phi i64 [ %i.aen, %bb.cq ], [ %.pre.i430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428 ]
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aet = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %i.aer, ptr %i.aet, align 8, !tbaa !35, !alias.scope !209
  store ptr %i.aek, ptr %i.aeh, align 8, !tbaa !40
  store i64 0, ptr %i.aes, align 8, !tbaa !35
  store i8 0, ptr %i.aek, align 8, !tbaa !36
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 10)
          to label %bb.cs unwind label %bb.ec

bb.cs:                                            ; preds = %bb.cr
  %i.aeu = load ptr, ptr %38, align 8, !tbaa !40  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.aei
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.cs
  %i.aew = load i64, ptr %i.aei, align 8, !tbaa !36
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  %i.aey = load ptr, ptr %39, align 8, !tbaa !40  ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.afa = icmp eq ptr %i.aey, %i.aez
  br i1 %i.afa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %i.afb = load i64, ptr %i.aez, align 8, !tbaa !36
  %i.afc = add i64 %i.afb, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438
  %i.afd = load ptr, ptr %46, align 8, !tbaa !40  ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.aff = icmp eq ptr %i.afd, %i.afe
  br i1 %i.aff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  %i.afg = load i64, ptr %i.afe, align 8, !tbaa !36
  %i.afh = add i64 %i.afg, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afh) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  %i.afi = load ptr, ptr %40, align 8, !tbaa !40  ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.abn
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %i.afk = load i64, ptr %i.abn, align 8, !tbaa !36
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444
  %i.afm = load ptr, ptr %41, align 8, !tbaa !40  ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.afo = icmp eq ptr %i.afm, %i.afn
  br i1 %i.afo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
  %i.afp = load i64, ptr %i.afn, align 8, !tbaa !36
  %i.afq = add i64 %i.afp, 1
  call void @_ZdlPvm(ptr noundef %i.afm, i64 noundef %i.afq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  %i.afr = load ptr, ptr %45, align 8, !tbaa !40  ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.aft = icmp eq ptr %i.afr, %i.afs
  br i1 %i.aft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449
  %i.afu = load i64, ptr %i.afs, align 8, !tbaa !36
  %i.afv = add i64 %i.afu, 1
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  %i.afw = load ptr, ptr %42, align 8, !tbaa !40  ; 2 uses
  %i.afx = icmp eq ptr %i.afw, %i.zd
  br i1 %i.afx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  %i.afy = load i64, ptr %i.zd, align 8, !tbaa !36
  %i.afz = add i64 %i.afy, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.afz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  %i.aga = load ptr, ptr %43, align 8, !tbaa !40  ; 2 uses
  %i.agb = icmp eq ptr %i.aga, %i.yn
  br i1 %i.agb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.agc = load i64, ptr %i.yn, align 8, !tbaa !36
  %i.agd = add i64 %i.agc, 1
  call void @_ZdlPvm(ptr noundef %i.aga, i64 noundef %i.agd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
  %i.age = load ptr, ptr %44, align 8, !tbaa !40  ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.agg = icmp eq ptr %i.age, %i.agf
  br i1 %i.agg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458
  %i.agh = load i64, ptr %i.agf, align 8, !tbaa !36
  %i.agi = add i64 %i.agh, 1
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  store ptr %1, ptr %47, align 8, !tbaa !210
  %i.agj = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.agk = load ptr, ptr %2, align 8, !tbaa !74   ; 2 uses
  store ptr %i.agk, ptr %i.agj, align 8
  %i.agl = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.agm = getelementptr inbounds [8 x i8], ptr %i.agk, i64 %4 ; 2 uses
  store ptr %i.agm, ptr %i.agl, align 8
  %i.agn = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 2 uses
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.agm, i64 %4
  store ptr %i.ago, ptr %i.agn, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.agq = load ptr, ptr %3, align 8, !tbaa !74   ; 2 uses
  store ptr %i.agq, ptr %i.agp, align 8
  %i.agr = getelementptr inbounds nuw i8, ptr %47, i64 40
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.agq, i64 %5 ; 2 uses
  store ptr %i.ags, ptr %i.agr, align 8
  %i.agt = getelementptr inbounds nuw i8, ptr %47, i64 48
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.ags, i64 %5
  store ptr %i.agu, ptr %i.agt, align 8
  %i.agv = getelementptr inbounds nuw i8, ptr %47, i64 56
  store i64 %4, ptr %i.agv, align 8, !tbaa !211
  %i.agw = getelementptr inbounds nuw i8, ptr %47, i64 64
  store i64 %5, ptr %i.agw, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %49, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %50, i8 0, i64 384, i1 false)
  call void @_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq(ptr noundef nonnull align 8 dereferenceable(712) %47, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461
  %i.agx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.agy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.agz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aha = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ahb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ahc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ahd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ahe = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ahf = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ahg = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ahh = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ahi = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ahj = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ahk = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.ahl = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ahm = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ahn = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.aho = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.ahp = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.ahq = getelementptr inbounds nuw i8, ptr %6, i64 168
  %i.ahr = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.ahs = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.aht = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.ahu = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.ahv = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.ahw = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.ahx = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.ahy = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ahz = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.aia = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.aib = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.aic = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.aid = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.aie = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.aif = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.aig = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.aih = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.aii = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.aij = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.aik = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.ail = getelementptr inbounds nuw i8, ptr %6, i64 336
  %i.aim = getelementptr inbounds nuw i8, ptr %6, i64 344
  %i.ain = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.aio = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.aip = getelementptr inbounds nuw i8, ptr %6, i64 368
  %i.aiq = getelementptr inbounds nuw i8, ptr %6, i64 376
  %i.air = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ais = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ait = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.aja = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.ajc = getelementptr inbounds nuw i8, ptr %49, i64 56
  %i.ajd = getelementptr inbounds nuw i8, ptr %49, i64 80
  %i.aje = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %49, i64 48 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %49, i64 72 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 7 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 9 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.ajm = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 6 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 10 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 7 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ajt = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.aju = getelementptr inbounds nuw i8, ptr %50, i64 56
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %50, i64 80
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %50, i64 104
  %i.ajz = getelementptr inbounds nuw i8, ptr %50, i64 128
  %i.aka = getelementptr inbounds nuw i8, ptr %50, i64 152
  %i.akb = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %50, i64 176
  %i.akd = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %50, i64 200
  %i.akf = getelementptr inbounds nuw i8, ptr %50, i64 224
  %i.akg = getelementptr inbounds nuw i8, ptr %50, i64 248
  %i.akh = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %50, i64 272
  %i.akj = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %50, i64 296
  %i.akl = getelementptr inbounds nuw i8, ptr %50, i64 320
  %i.akm = getelementptr inbounds nuw i8, ptr %50, i64 344
  %i.akn = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %50, i64 368
  %i.akp = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.akq = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.akr = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %50, i64 72
  %i.akt = getelementptr inbounds nuw i8, ptr %50, i64 96
  %i.aku = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %50, i64 120
  %i.akw = getelementptr inbounds nuw i8, ptr %50, i64 144
  %i.akx = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %50, i64 168
  %i.akz = getelementptr inbounds nuw i8, ptr %50, i64 192
  %i.ala = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %50, i64 216
  %i.alc = getelementptr inbounds nuw i8, ptr %50, i64 240
  %i.ald = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %50, i64 264
  %i.alf = getelementptr inbounds nuw i8, ptr %50, i64 288
  %i.alg = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %50, i64 312
  %i.ali = getelementptr inbounds nuw i8, ptr %50, i64 336
  %i.alj = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %50, i64 360
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.all = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.gep.sroa.gep788 = getelementptr inbounds nuw i8, ptr %50, i64 112
  %.sroa.gep763.sroa.gep789 = getelementptr inbounds nuw i8, ptr %50, i64 96
  %i.aln = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %.sroa.gep.sroa.gep779 = getelementptr inbounds nuw i8, ptr %50, i64 208
  %.sroa.gep763.sroa.gep780 = getelementptr inbounds nuw i8, ptr %50, i64 192
  %i.alp = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %.sroa.gep.sroa.gep770 = getelementptr inbounds nuw i8, ptr %50, i64 304
  %.sroa.gep763.sroa.gep771 = getelementptr inbounds nuw i8, ptr %50, i64 288
  %i.alr = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %.sroa.gep799 = getelementptr inbounds nuw i8, ptr %49, i64 40
  %.sroa.gep801 = getelementptr inbounds nuw i8, ptr %49, i64 64
  %.sroa.gep803 = getelementptr inbounds nuw i8, ptr %49, i64 88
  br label %bb.ed

._crit_edge:                                      ; preds = %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void

bb.ct:                                            ; preds = %bb.a
  %i.als = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482

bb.cv:                                            ; preds = %bb.f
  %i.alu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.alv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i130, %bb.m
  %i.alw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473

bb.cy:                                            ; preds = %bb.o
  %i.alx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i140, %bb.t, %.critedge.i146
  %i.aly = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN12colvarmodule8rotation15debug_gradientsERS0_RKSt6vectorIdSaIdEES6_mm:bb.a
  %i.awp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awo, <2 x double> %i.awn)
  store <2 x double> %i.awp, ptr %i.ala, align 16, !tbaa !55
  %i.awq = load <2 x double>, ptr %i.alc, align 16
  %i.awr = load double, ptr %i.ale, align 8, !tbaa !55
  %i.aws = load <2 x double>, ptr %i.ald, align 16, !tbaa !55
  %i.awt = insertelement <2 x double> %i.awq, double %i.awr, i64 1
  %i.awu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awt, <2 x double> %i.aws)
  store <2 x double> %i.awu, ptr %i.ald, align 16, !tbaa !55
  %i.awv = load <2 x double>, ptr %i.alf, align 16
  %i.aww = load double, ptr %i.alh, align 8, !tbaa !55
  %i.awx = load <2 x double>, ptr %i.alg, align 16, !tbaa !55
  %i.awy = insertelement <2 x double> %i.awv, double %i.aww, i64 1
  %i.awz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.awy, <2 x double> %i.awx)
  store <2 x double> %i.awz, ptr %i.alg, align 16, !tbaa !55
  %i.axa = load <2 x double>, ptr %i.ali, align 16
  %i.axb = load double, ptr %i.alk, align 8, !tbaa !55
  %i.axc = load <2 x double>, ptr %i.alj, align 16, !tbaa !55
  %i.axd = insertelement <2 x double> %i.axa, double %i.axb, i64 1
  %i.axe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avt, <2 x double> %i.axd, <2 x double> %i.axc)
  store <2 x double> %i.axe, ptr %i.alj, align 16, !tbaa !55
  br label %.split751.us

.split748:                                        ; preds = %bb.ef
  %i.axf = icmp eq i64 %.038758, 2                ; 16 uses
  %.sroa.gep.val = load double, ptr %.sroa.gep, align 16
  %.val = load double, ptr %50, align 16
  %i.axg = select i1 %i.axf, double %.sroa.gep.val, double %.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 40, i64 24
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v
  %i.axh = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.axi = load <2 x double>, ptr %i.j, align 16, !tbaa !55
  %i.axj = insertelement <2 x double> poison, double %i.atx, i64 0
  %i.axk = shufflevector <2 x double> %i.axj, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.axl = insertelement <2 x double> poison, double %i.axg, i64 0
  %i.axm = insertelement <2 x double> %i.axl, double %i.axh, i64 1
  %i.axn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axm, <2 x double> %i.axi)
  store <2 x double> %i.axn, ptr %i.j, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel.v = select i1 %i.axf, i64 64, i64 48
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel.v
  %i.axo = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel766.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel.v = select i1 %i.axf, i64 88, i64 72
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel.v
  %i.axp = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel769.v.sroa.sel, align 8, !tbaa !55
  %i.axq = load <2 x double>, ptr %i.all, align 16, !tbaa !55
  %i.axr = insertelement <2 x double> poison, double %i.axo, i64 0
  %i.axs = insertelement <2 x double> %i.axr, double %i.axp, i64 1
  %i.axt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axs, <2 x double> %i.axq)
  store <2 x double> %i.axt, ptr %i.all, align 16, !tbaa !55
  %.sroa.gep.sroa.gep788.val = load double, ptr %.sroa.gep.sroa.gep788, align 16
  %.sroa.gep763.sroa.gep789.val = load double, ptr %.sroa.gep763.sroa.gep789, align 16
  %i.axu = select i1 %i.axf, double %.sroa.gep.sroa.gep788.val, double %.sroa.gep763.sroa.gep789.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel.v = select i1 %i.axf, i64 136, i64 120
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel.v
  %i.axv = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel796.v.sroa.sel, align 8, !tbaa !55
  %i.axw = load <2 x double>, ptr %i.alm, align 16, !tbaa !55
  %i.axx = insertelement <2 x double> poison, double %i.axu, i64 0
  %i.axy = insertelement <2 x double> %i.axx, double %i.axv, i64 1
  %i.axz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.axy, <2 x double> %i.axw)
  store <2 x double> %i.axz, ptr %i.alm, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel.v = select i1 %i.axf, i64 160, i64 144
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel.v
  %i.aya = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel793.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 184, i64 168
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel.v
  %i.ayb = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel790.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.ayc = load <2 x double>, ptr %i.aln, align 16, !tbaa !55
  %i.ayd = insertelement <2 x double> poison, double %i.aya, i64 0
  %i.aye = insertelement <2 x double> %i.ayd, double %i.ayb, i64 1
  %i.ayf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.aye, <2 x double> %i.ayc)
  store <2 x double> %i.ayf, ptr %i.aln, align 16, !tbaa !55
  %.sroa.gep.sroa.gep779.val = load double, ptr %.sroa.gep.sroa.gep779, align 16
  %.sroa.gep763.sroa.gep780.val = load double, ptr %.sroa.gep763.sroa.gep780, align 16
  %i.ayg = select i1 %i.axf, double %.sroa.gep.sroa.gep779.val, double %.sroa.gep763.sroa.gep780.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel.v = select i1 %i.axf, i64 232, i64 216
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel.v
  %i.ayh = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel787.v.sroa.sel, align 8, !tbaa !55
  %i.ayi = load <2 x double>, ptr %i.alo, align 16, !tbaa !55
  %i.ayj = insertelement <2 x double> poison, double %i.ayg, i64 0
  %i.ayk = insertelement <2 x double> %i.ayj, double %i.ayh, i64 1
  %i.ayl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayk, <2 x double> %i.ayi)
  store <2 x double> %i.ayl, ptr %i.alo, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel.v = select i1 %i.axf, i64 256, i64 240
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel.v
  %i.aym = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel784.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 280, i64 264
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel.v
  %i.ayn = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel781.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.ayo = load <2 x double>, ptr %i.alp, align 16, !tbaa !55
  %i.ayp = insertelement <2 x double> poison, double %i.aym, i64 0
  %i.ayq = insertelement <2 x double> %i.ayp, double %i.ayn, i64 1
  %i.ayr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayq, <2 x double> %i.ayo)
  store <2 x double> %i.ayr, ptr %i.alp, align 16, !tbaa !55
  %.sroa.gep.sroa.gep770.val = load double, ptr %.sroa.gep.sroa.gep770, align 16
  %.sroa.gep763.sroa.gep771.val = load double, ptr %.sroa.gep763.sroa.gep771, align 16
  %i.ays = select i1 %i.axf, double %.sroa.gep.sroa.gep770.val, double %.sroa.gep763.sroa.gep771.val
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel.v = select i1 %i.axf, i64 328, i64 312
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel.v
  %i.ayt = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel778.v.sroa.sel, align 8, !tbaa !55
  %i.ayu = load <2 x double>, ptr %i.alq, align 16, !tbaa !55
  %i.ayv = insertelement <2 x double> poison, double %i.ays, i64 0
  %i.ayw = insertelement <2 x double> %i.ayv, double %i.ayt, i64 1
  %i.ayx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.ayw, <2 x double> %i.ayu)
  store <2 x double> %i.ayx, ptr %i.alq, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel.v = select i1 %i.axf, i64 352, i64 336
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel.v
  %i.ayy = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel775.v.sroa.sel, align 16, !tbaa !55
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel.v = select i1 %i.axf, i64 376, i64 360
  %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %50, i64 %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel.v
  %i.ayz = load double, ptr %.idx.i585.sroa.sel.idx.sroa.sel.sroa.sel772.sroa.sel.v.sroa.sel, align 8, !tbaa !55
  %i.aza = load <2 x double>, ptr %i.alr, align 16, !tbaa !55
  %i.azb = insertelement <2 x double> poison, double %i.ayy, i64 0
  %i.azc = insertelement <2 x double> %i.azb, double %i.ayz, i64 1
  %i.azd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.axk, <2 x double> %i.azc, <2 x double> %i.aza)
  store <2 x double> %i.azd, ptr %i.alr, align 16, !tbaa !55
  br label %.split751.us

.split751.us:                                     ; preds = %.preheader.us753.preheader, %.preheader.us.preheader, %.split748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.l, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !71
  %i.aze = call noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a)
  %.not.i570 = icmp eq i32 %i.aze, 0
  br i1 %.not.i570, label %.preheader.i, label %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge

.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge: ; preds = %.split751.us
  %i.azf = load <4 x double>, ptr %i.l, align 16, !tbaa !55
  br label %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit

.preheader.i:                                     ; preds = %.split751.us
  %i.azg = call noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) ; 0 uses
  %i.azh = call noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef nonnull %i.l) ; 0 uses
  %i.azi = load <4 x double>, ptr %i.l, align 16, !tbaa !55 ; 5 uses
  %i.azj = extractelement <4 x double> %i.azi, i64 0 ; 2 uses
  %i.azk = extractelement <4 x double> %i.azi, i64 1 ; 2 uses
  %i.azl = load <2 x double>, ptr %i.ait, align 16, !tbaa !55 ; 2 uses
  %i.azm = call double @llvm.fmuladd.f64(double %i.azj, double %i.azj, double 0.000000e+00)
  %i.azn = call double @llvm.fmuladd.f64(double %i.azk, double %i.azk, double %i.azm)
  %i.azo = shufflevector <2 x double> %i.azl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.azp = shufflevector <4 x double> %i.azi, <4 x double> %i.azo, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.azq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.azn, i64 0
  %i.azr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azp, <2 x double> %i.azp, <2 x double> %i.azq)
  %i.azs = shufflevector <4 x double> %i.azi, <4 x double> %i.azo, <2 x i32> <i32 3, i32 5> ; 2 uses
  %i.azt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azs, <2 x double> %i.azs, <2 x double> %i.azr) ; 2 uses
  %i.azu = load <2 x double>, ptr %i.aiu, align 16, !tbaa !55 ; 3 uses
  %i.azv = load <2 x double>, ptr %i.aiv, align 16, !tbaa !55 ; 3 uses
  %i.azw = shufflevector <2 x double> %i.azu, <2 x double> %i.azv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.azx = shufflevector <2 x double> %i.azt, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.azy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azw, <2 x double> %i.azw, <2 x double> %i.azx)
  %i.azz = shufflevector <2 x double> %i.azu, <2 x double> %i.azv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.baa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azz, <2 x double> %i.azz, <2 x double> %i.azy) ; 2 uses
  %i.bab = shufflevector <2 x double> %i.azt, <2 x double> %i.baa, <2 x i32> <i32 0, i32 2>
  %i.bac = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bab) ; 2 uses
  %i.bad = shufflevector <2 x double> %i.bac, <2 x double> poison, <4 x i32> zeroinitializer
  %i.bae = fdiv <4 x double> %i.azi, %i.bad       ; 3 uses
  %i.baf = shufflevector <4 x double> %i.bae, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.baf, ptr %i.l, align 16, !tbaa !55
  %i.bag = shufflevector <4 x double> %i.bae, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.bag, ptr %i.ais, align 16, !tbaa !55
  %i.bah = shufflevector <2 x double> %i.bac, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bai = fdiv <2 x double> %i.azl, %i.bah
  store <2 x double> %i.bai, ptr %i.ait, align 16, !tbaa !55
  %i.baj = fdiv <2 x double> %i.azu, %i.bah
  store <2 x double> %i.baj, ptr %i.aiu, align 16, !tbaa !55
  %i.bak = load <2 x double>, ptr %i.aiw, align 16, !tbaa !55 ; 3 uses
  %i.bal = load <2 x double>, ptr %i.aix, align 16, !tbaa !55 ; 3 uses
  %i.bam = shufflevector <2 x double> %i.bak, <2 x double> %i.bal, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ban = shufflevector <2 x double> %i.baa, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bao = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bam, <2 x double> %i.bam, <2 x double> %i.ban)
  %i.bap = shufflevector <2 x double> %i.bak, <2 x double> %i.bal, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.baq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bap, <2 x double> %i.bap, <2 x double> %i.bao) ; 2 uses
  %i.bar = load <2 x double>, ptr %i.aiy, align 16, !tbaa !55 ; 3 uses
  %i.bas = extractelement <2 x double> %i.bar, i64 0 ; 2 uses
  %i.bat = extractelement <2 x double> %i.baq, i64 1
  %i.bau = extractelement <2 x double> %i.bar, i64 1 ; 2 uses
  %i.bav = call double @llvm.fmuladd.f64(double %i.bas, double %i.bas, double %i.bat)
  %i.baw = call double @llvm.fmuladd.f64(double %i.bau, double %i.bau, double %i.bav)
  %i.bax = insertelement <2 x double> %i.baq, double %i.baw, i64 1
  %i.bay = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bax) ; 2 uses
  %i.baz = shufflevector <2 x double> %i.bay, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bba = fdiv <2 x double> %i.azv, %i.baz
  store <2 x double> %i.bba, ptr %i.aiv, align 16, !tbaa !55
  %i.bbb = fdiv <2 x double> %i.bak, %i.baz
  store <2 x double> %i.bbb, ptr %i.aiw, align 16, !tbaa !55
  %i.bbc = shufflevector <2 x double> %i.bay, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bbd = fdiv <2 x double> %i.bal, %i.bbc
  store <2 x double> %i.bbd, ptr %i.aix, align 16, !tbaa !55
  %i.bbe = fdiv <2 x double> %i.bar, %i.bbc
  store <2 x double> %i.bbe, ptr %i.aiy, align 16, !tbaa !55
  br label %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit

_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit:       ; preds = %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge, %.preheader.i
  %i.bbf = phi <4 x double> [ %i.azf, %.split751.us._ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit_crit_edge ], [ %i.bae, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  switch i32 %i.aty, label %_ZN12colvarmodule7rvectorixEi.exit [
    i32 0, label %_ZN12colvarmodule7rvectorixEi.exit.thread
    i32 1, label %_ZN12colvarmodule7rvectorixEi.exit.thread679
  ]

_ZN12colvarmodule7rvectorixEi.exit.thread:        ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %57 = load <2 x double>, ptr %48, align 16
  %i.bbg = shufflevector <2 x double> %57, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bbh = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %i.bbi = load double, ptr %49, align 8, !tbaa !55
  %i.bbj = load double, ptr %i.aje, align 8, !tbaa !55
  %i.bbk = load double, ptr %i.ajf, align 8, !tbaa !55
  %i.bbl = insertelement <4 x double> poison, double %i.bbh, i64 0
  %i.bbm = shufflevector <4 x double> %i.bbl, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bbn = insertelement <4 x double> %i.bbg, double %i.bbk, i64 1
  %i.bbo = insertelement <4 x double> %i.bbn, double %i.bbi, i64 2
  %i.bbp = insertelement <4 x double> %i.bbo, double %i.bbj, i64 3
  %i.bbq = fmul <4 x double> %i.bbm, %i.bbp
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit.thread679:     ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %58 = load <2 x double>, ptr %i.aiz, align 8
  %i.bbr = shufflevector <2 x double> %58, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bbs = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %i.bbt = load double, ptr %i.aja, align 8, !tbaa !55
  %i.bbu = load double, ptr %i.ajb, align 8, !tbaa !55
  %i.bbv = load double, ptr %i.ajc, align 8, !tbaa !55
  %i.bbw = insertelement <4 x double> poison, double %i.bbs, i64 0
  %i.bbx = shufflevector <4 x double> %i.bbw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bby = insertelement <4 x double> %i.bbr, double %i.bbv, i64 1
  %i.bbz = insertelement <4 x double> %i.bby, double %i.bbt, i64 2
  %i.bca = insertelement <4 x double> %i.bbz, double %i.bbu, i64 3
  %i.bcb = fmul <4 x double> %i.bbx, %i.bca
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit:               ; preds = %_ZN2NR18diagonalize_matrixEPA4_dPdS1_.exit
  %i.bcc = icmp eq i64 %.038758, 2                ; 5 uses
  %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bcc, i64 16, i64 0
  %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %48, i64 %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bcd = load double, ptr %.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 16, !tbaa !55
  %i.bce = load double, ptr @_ZN12colvarmodule25debug_gradients_step_sizeE, align 8, !tbaa !55 ; 2 uses
  %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bcc, i64 16, i64 0
  %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %49, i64 %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.bcf = load double, ptr %.idx.i571.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !55
  %.sroa.gep799.val = load double, ptr %.sroa.gep799, align 8
  %.val1125 = load double, ptr %i.aje, align 8
  %i.bcg = select i1 %i.bcc, double %.sroa.gep799.val, double %.val1125
  %.sroa.gep801.val = load double, ptr %.sroa.gep801, align 8
  %.val1126 = load double, ptr %i.ajf, align 8
  %i.bch = select i1 %i.bcc, double %.sroa.gep801.val, double %.val1126
  %i.bci = insertelement <4 x double> poison, double %i.bce, i64 0
  %i.bcj = shufflevector <4 x double> %i.bci, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bck = insertelement <4 x double> poison, double %i.bcd, i64 0
  %i.bcl = insertelement <4 x double> %i.bck, double %i.bch, i64 1
  %i.bcm = insertelement <4 x double> %i.bcl, double %i.bcf, i64 2
  %i.bcn = insertelement <4 x double> %i.bcm, double %i.bcg, i64 3
  %i.bco = fmul <4 x double> %i.bcj, %i.bcn
  %.idx.i577.sroa.sel.v.sroa.sel = select i1 %i.bcc, ptr %.sroa.gep803, ptr %i.ajg
  br label %_ZN12colvarmodule7rvectorixEi.exit578

_ZN12colvarmodule7rvectorixEi.exit578:            ; preds = %_ZN12colvarmodule7rvectorixEi.exit.thread, %_ZN12colvarmodule7rvectorixEi.exit.thread679, %_ZN12colvarmodule7rvectorixEi.exit
  %i.bcp = phi double [ %i.bce, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.bbs, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.bbh, %_ZN12colvarmodule7rvectorixEi.exit.thread ]
  %i.bcq = phi ptr [ %.idx.i577.sroa.sel.v.sroa.sel, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.ajd, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.ajg, %_ZN12colvarmodule7rvectorixEi.exit.thread ]
  %i.bcr = phi <4 x double> [ %i.bco, %_ZN12colvarmodule7rvectorixEi.exit ], [ %i.bcb, %_ZN12colvarmodule7rvectorixEi.exit.thread679 ], [ %i.bbq, %_ZN12colvarmodule7rvectorixEi.exit.thread ] ; 3 uses
  %i.bcs = load double, ptr %i.bcq, align 8, !tbaa !55
  %i.bct = fmul double %i.bcp, %i.bcs
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.bcu = load double, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.bcv = extractelement <4 x double> %i.bcr, i64 0
  %i.bcw = fadd double %i.bcv, %i.bcu
  %i.bcx = load double, ptr %i.k, align 16, !tbaa !55
  %i.bcy = fsub double %i.bcw, %i.bcx
  %i.bcz = call noundef double @llvm.fabs.f64(double %i.bcy)
  %i.bda = fdiv double %i.bcz, %i.bcu
  store double %i.bda, ptr %i.m, align 8, !tbaa !55
  call void @_ZN12colvarmodule6to_strB5cxx11ERKdmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.ay, i64 noundef %i.az)
  %i.bdb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %55, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 29)
          to label %.noexc583 unwind label %bb.ev ; 6 uses

.noexc583:                                        ; preds = %_ZN12colvarmodule7rvectorixEi.exit578
  store ptr %i.ajh, ptr %54, align 8, !tbaa !33, !alias.scope !215
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !40 ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdb, i64 16 ; 5 uses
  %i.bde = icmp eq ptr %i.bdc, %i.bdd
  br i1 %i.bde, label %bb.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

bb.eg:                                            ; preds = %.noexc583
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdb, i64 8
  %i.bdg = load i64, ptr %i.bdf, align 8, !tbaa !35 ; 3 uses
  %i.bdh = icmp ult i64 %i.bdg, 16
  call void @llvm.assume(i1 %i.bdh)
  %i.bdi = add nuw nsw i64 %i.bdg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajh, ptr noundef nonnull align 8 dereferenceable(1) %i.bdd, i64 %i.bdi, i1 false)
  br label %bb.eh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %.noexc583
  store ptr %i.bdc, ptr %54, align 8, !tbaa !40, !alias.scope !215
  %i.bdj = load i64, ptr %i.bdd, align 8, !tbaa !36
  store i64 %i.bdj, ptr %i.ajh, align 8, !tbaa !36, !alias.scope !215
  %.phi.trans.insert.i580 = getelementptr inbounds nuw i8, ptr %i.bdb, i64 8
  %.pre.i581 = load i64, ptr %.phi.trans.insert.i580, align 8, !tbaa !35
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579, %bb.eg
  %i.bdk = phi i64 [ %i.bdg, %bb.eg ], [ %.pre.i581, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ]
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdb, i64 8
  store i64 %i.bdk, ptr %i.aji, align 8, !tbaa !35, !alias.scope !215
  store ptr %i.bdd, ptr %i.bdb, align 8, !tbaa !40
  store i64 0, ptr %i.bdl, align 8, !tbaa !35
  store i8 0, ptr %i.bdd, align 8, !tbaa !36
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bdm = load i64, ptr %i.aji, align 8, !tbaa !35, !noalias !216
  %i.bdn = add i64 %i.bdm, -4611686018427387877
  %i.bdo = icmp ult i64 %i.bdn, 27
  br i1 %i.bdo, label %bb.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc592 unwind label %.loopexit.split-lp

.noexc592:                                        ; preds = %bb.ei
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587: ; preds = %bb.eh
  %i.bdp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.22, i64 noundef 27)
          to label %.noexc593 unwind label %.loopexit ; 6 uses

.noexc593:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i587
  store ptr %i.ajj, ptr %53, align 8, !tbaa !33, !alias.scope !216
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !40 ; 2 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdp, i64 16 ; 5 uses
  %i.bds = icmp eq ptr %i.bdq, %i.bdr
  br i1 %i.bds, label %bb.ej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

bb.ej:                                            ; preds = %.noexc593
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdp, i64 8
  %i.bdu = load i64, ptr %i.bdt, align 8, !tbaa !35 ; 3 uses
  %i.bdv = icmp ult i64 %i.bdu, 16
  call void @llvm.assume(i1 %i.bdv)
  %i.bdw = add nuw nsw i64 %i.bdu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajj, ptr noundef nonnull align 8 dereferenceable(1) %i.bdr, i64 %i.bdw, i1 false)
  br label %bb.ek

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %.noexc593
  store ptr %i.bdq, ptr %53, align 8, !tbaa !40, !alias.scope !216
  %i.bdx = load i64, ptr %i.bdr, align 8, !tbaa !36
  store i64 %i.bdx, ptr %i.ajj, align 8, !tbaa !36, !alias.scope !216
  %.phi.trans.insert.i589 = getelementptr inbounds nuw i8, ptr %i.bdp, i64 8
  %.pre.i590 = load i64, ptr %.phi.trans.insert.i589, align 8, !tbaa !35
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
  %i.bdy = phi i64 [ %i.bdu, %bb.ej ], [ %.pre.i590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588 ]
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdp, i64 8
  store i64 %i.bdy, ptr %i.ajk, align 8, !tbaa !35, !alias.scope !216
  store ptr %i.bdr, ptr %i.bdp, align 8, !tbaa !40
  store i64 0, ptr %i.bdz, align 8, !tbaa !35
  store i8 0, ptr %i.bdr, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  %i.bea = load <2 x double>, ptr %7, align 16, !tbaa !55, !noalias !217
  %i.beb = shufflevector <4 x double> %i.bcr, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.bec = fadd <2 x double> %i.beb, %i.bea       ; 2 uses
  %i.bed = load <2 x double>, ptr %i.z, align 16, !tbaa !55, !noalias !217
  %i.bee = shufflevector <4 x double> %i.bcr, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bef = insertelement <2 x double> %i.bee, double %i.bct, i64 1
  %i.beg = fadd <2 x double> %i.bef, %i.bed       ; 2 uses
  %i.beh = extractelement <4 x double> %i.bbf, i64 0
  %i.bei = extractelement <2 x double> %i.bec, i64 0
  %i.bej = fsub double %i.bei, %i.beh             ; 2 uses
  %i.bek = extractelement <4 x double> %i.bbf, i64 1
  %i.bel = extractelement <2 x double> %i.bec, i64 1
  %i.bem = fsub double %i.bel, %i.bek             ; 2 uses
  %i.ben = extractelement <4 x double> %i.bbf, i64 2
  %i.beo = extractelement <2 x double> %i.beg, i64 0
  %i.bep = fsub double %i.beo, %i.ben             ; 2 uses
  %i.beq = extractelement <4 x double> %i.bbf, i64 3
  %i.ber = extractelement <2 x double> %i.beg, i64 1
  %i.bes = fsub double %i.ber, %i.beq             ; 2 uses
  %i.bet = fmul double %i.bem, %i.bem
  %i.beu = call double @llvm.fmuladd.f64(double %i.bej, double %i.bej, double %i.bet)
  %i.bev = call double @llvm.fmuladd.f64(double %i.bep, double %i.bep, double %i.beu)
  %i.bew = call noundef double @llvm.fmuladd.f64(double %i.bes, double %i.bes, double %i.bev)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.bew)
  store double %sqrt.i, ptr %i.n, align 8, !tbaa !55
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKdmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.ay, i64 noundef %i.az)
          to label %bb.el unwind label %bb.ew

bb.el:                                            ; preds = %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.bex = load i64, ptr %i.ajk, align 8, !tbaa !35, !noalias !218 ; 4 uses
  %i.bey = load i64, ptr %i.ajl, align 8, !tbaa !35, !noalias !218 ; 4 uses
  %i.bez = add i64 %i.bey, %i.bex                 ; 2 uses
  %i.bfa = load ptr, ptr %53, align 8, !tbaa !40, !noalias !218 ; 2 uses
  %i.bfb = icmp eq ptr %i.bfa, %i.ajj
  br i1 %i.bfb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i607, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i607: ; preds = %bb.el
  %i.bfc = icmp ult i64 %i.bex, 16
  call void @llvm.assume(i1 %i.bfc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595: ; preds = %bb.el
  %i.bfd = load i64, ptr %i.ajj, align 8, !tbaa !36, !noalias !218
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i596: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i607
  %i.bfe = phi i64 [ %i.bfd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i607 ]
  %i.bff = icmp ugt i64 %i.bez, %i.bfe
  br i1 %i.bff, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i596
  %i.bfg = load ptr, ptr %56, align 8, !tbaa !40, !noalias !218
  %i.bfh = icmp eq ptr %i.bfg, %i.ajm
  br i1 %i.bfh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i600

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i606: ; preds = %bb.em
  %i.bfi = icmp ult i64 %i.bey, 16
  call void @llvm.assume(i1 %i.bfi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i600: ; preds = %bb.em
  %i.bfj = load i64, ptr %i.ajm, align 8, !tbaa !36, !noalias !218
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i601: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i606
  %i.bfk = phi i64 [ %i.bfj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i600 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i606 ]
  %.not.i602 = icmp ugt i64 %i.bez, %i.bfk
  br i1 %.not.i602, label %bb.eo, label %.critedge.i603

.critedge.i603:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i601
  %i.bfl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %56, i64 noundef 0, i64 noundef 0, ptr noundef %i.bfa, i64 noundef %i.bex)
          to label %.noexc608 unwind label %.loopexit696 ; 5 uses

.noexc608:                                        ; preds = %.critedge.i603
end_hunk_2
begin_hunk_3_@_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq:bb.a
  %i.awh = extractelement <2 x double> %i.awf, i64 1
  %i.awi = fmul double %i.awg, %i.awh
  %i.awj = extractelement <2 x double> %i.awf, i64 0
  %i.awk = tail call double @llvm.fmuladd.f64(double %i.awj, double %i.avy, double %i.awi)
  %i.awl = load double, ptr %i.fo, align 8, !tbaa !55
  %i.awm = fmul double %i.avx, %i.awl
  %i.awn = fdiv double %i.awm, %i.ct
  %i.awo = load double, ptr %i.er, align 8, !tbaa !55
  %i.awp = tail call double @llvm.fmuladd.f64(double %i.awn, double %i.awo, double %i.awk)
  %i.awq = getelementptr inbounds nuw i8, ptr %0, i64 568
  store double %i.awp, ptr %i.awq, align 8, !tbaa !55
  %i.awr = load double, ptr %i.ez, align 8, !tbaa !55 ; 2 uses
  %i.aws = load double, ptr %i.iy, align 8, !tbaa !55 ; 2 uses
  %i.awt = fmul double %i.awr, %i.aws
  %i.awu = fdiv double %i.awt, %i.cl
  %i.awv = load double, ptr %i.fc, align 8, !tbaa !55 ; 2 uses
  %i.aww = load double, ptr %i.fo, align 8, !tbaa !55 ; 2 uses
  %i.awx = insertelement <2 x double> poison, double %i.aws, i64 0
  %i.awy = shufflevector <2 x double> %i.awx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awz = insertelement <2 x double> poison, double %i.awv, i64 0
  %i.axa = insertelement <2 x double> %i.awz, double %i.aww, i64 1
  %i.axb = fmul <2 x double> %i.awy, %i.axa
  %i.axc = fdiv <2 x double> %i.axb, %i.dn        ; 2 uses
  %i.axd = extractelement <2 x double> %i.axc, i64 0
  %i.axe = fmul double %i.awv, %i.axd
  %i.axf = tail call double @llvm.fmuladd.f64(double %i.awu, double %i.awr, double %i.axe)
  %i.axg = extractelement <2 x double> %i.axc, i64 1
  %i.axh = tail call double @llvm.fmuladd.f64(double %i.axg, double %i.aww, double %i.axf)
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 696
  store double %i.axh, ptr %i.axi, align 8, !tbaa !55
  %i.axj = load double, ptr %i.ez, align 8, !tbaa !55
  %i.axk = load double, ptr %i.mb, align 8, !tbaa !55 ; 3 uses
  %i.axl = load double, ptr %i.br, align 8, !tbaa !55
  %i.axm = load double, ptr %i.fc, align 8, !tbaa !55
  %i.axn = insertelement <2 x double> poison, double %i.axj, i64 0
  %i.axo = insertelement <2 x double> %i.axn, double %i.axk, i64 1
  %i.axp = insertelement <2 x double> poison, double %i.axk, i64 0
  %i.axq = insertelement <2 x double> %i.axp, double %i.axm, i64 1
  %i.axr = fmul <2 x double> %i.axo, %i.axq
  %i.axs = fdiv <2 x double> %i.axr, %i.ck        ; 2 uses
  %i.axt = load double, ptr %i.bs, align 8, !tbaa !55
  %i.axu = extractelement <2 x double> %i.axs, i64 1
  %i.axv = fmul double %i.axt, %i.axu
  %i.axw = extractelement <2 x double> %i.axs, i64 0
  %i.axx = tail call double @llvm.fmuladd.f64(double %i.axw, double %i.axl, double %i.axv)
  %i.axy = load double, ptr %i.fo, align 8, !tbaa !55
  %i.axz = fmul double %i.axk, %i.axy
  %i.aya = fdiv double %i.axz, %i.ct
  %i.ayb = load double, ptr %i.bt, align 8, !tbaa !55
  %i.ayc = tail call double @llvm.fmuladd.f64(double %i.aya, double %i.ayb, double %i.axx)
  %i.ayd = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.ayc, ptr %i.ayd, align 8, !tbaa !55
  %i.aye = load double, ptr %i.ez, align 8, !tbaa !55
  %i.ayf = load double, ptr %i.mb, align 8, !tbaa !55 ; 3 uses
  %i.ayg = fmul double %i.aye, %i.ayf
  %i.ayh = fdiv double %i.ayg, %i.cl
  %i.ayi = load double, ptr %i.db, align 8, !tbaa !55
  %i.ayj = load double, ptr %i.fc, align 8, !tbaa !55
  %i.ayk = load double, ptr %i.de, align 8, !tbaa !55
  %i.ayl = load double, ptr %i.fo, align 8, !tbaa !55
  %i.aym = insertelement <2 x double> poison, double %i.ayj, i64 0
  %i.ayn = insertelement <2 x double> %i.aym, double %i.ayf, i64 1
  %i.ayo = insertelement <2 x double> poison, double %i.ayf, i64 0
  %i.ayp = insertelement <2 x double> %i.ayo, double %i.ayl, i64 1
  %i.ayq = fmul <2 x double> %i.ayn, %i.ayp
  %i.ayr = fdiv <2 x double> %i.ayq, %i.dn        ; 2 uses
  %i.ays = extractelement <2 x double> %i.ayr, i64 0
  %i.ayt = fmul double %i.ayk, %i.ays
  %i.ayu = tail call double @llvm.fmuladd.f64(double %i.ayh, double %i.ayi, double %i.ayt)
  %i.ayv = load double, ptr %i.ds, align 8, !tbaa !55
  %i.ayw = extractelement <2 x double> %i.ayr, i64 1
  %i.ayx = tail call double @llvm.fmuladd.f64(double %i.ayw, double %i.ayv, double %i.ayu)
  %i.ayy = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %i.ayx, ptr %i.ayy, align 8, !tbaa !55
  %i.ayz = load double, ptr %i.ez, align 8, !tbaa !55
  %i.aza = load double, ptr %i.mb, align 8, !tbaa !55 ; 3 uses
  %i.azb = load double, ptr %i.dz, align 8, !tbaa !55
  %i.azc = load double, ptr %i.fc, align 8, !tbaa !55
  %i.azd = insertelement <2 x double> poison, double %i.ayz, i64 0
  %i.aze = insertelement <2 x double> %i.azd, double %i.aza, i64 1
  %i.azf = insertelement <2 x double> poison, double %i.aza, i64 0
  %i.azg = insertelement <2 x double> %i.azf, double %i.azc, i64 1
  %i.azh = fmul <2 x double> %i.aze, %i.azg
  %i.azi = fdiv <2 x double> %i.azh, %i.ck        ; 2 uses
  %i.azj = load double, ptr %i.ei, align 8, !tbaa !55
  %i.azk = extractelement <2 x double> %i.azi, i64 1
  %i.azl = fmul double %i.azj, %i.azk
  %i.azm = extractelement <2 x double> %i.azi, i64 0
  %i.azn = tail call double @llvm.fmuladd.f64(double %i.azm, double %i.azb, double %i.azl)
  %i.azo = load double, ptr %i.fo, align 8, !tbaa !55
  %i.azp = fmul double %i.aza, %i.azo
  %i.azq = fdiv double %i.azp, %i.ct
  %i.azr = load double, ptr %i.er, align 8, !tbaa !55
  %i.azs = tail call double @llvm.fmuladd.f64(double %i.azq, double %i.azr, double %i.azn)
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 576
  store double %i.azs, ptr %i.azt, align 8, !tbaa !55
  %i.azu = load double, ptr %i.ez, align 8, !tbaa !55 ; 2 uses
  %i.azv = load double, ptr %i.mb, align 8, !tbaa !55 ; 2 uses
  %i.azw = fmul double %i.azu, %i.azv
  %i.azx = fdiv double %i.azw, %i.cl
  %i.azy = load double, ptr %i.fc, align 8, !tbaa !55 ; 2 uses
  %i.azz = load double, ptr %i.fo, align 8, !tbaa !55 ; 2 uses
  %i.baa = insertelement <2 x double> poison, double %i.azv, i64 0
  %i.bab = shufflevector <2 x double> %i.baa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bac = insertelement <2 x double> poison, double %i.azy, i64 0
  %i.bad = insertelement <2 x double> %i.bac, double %i.azz, i64 1
  %i.bae = fmul <2 x double> %i.bab, %i.bad
  %i.baf = fdiv <2 x double> %i.bae, %i.dn        ; 2 uses
  %i.bag = extractelement <2 x double> %i.baf, i64 0
  %i.bah = fmul double %i.azy, %i.bag
  %i.bai = tail call double @llvm.fmuladd.f64(double %i.azx, double %i.azu, double %i.bah)
  %i.baj = extractelement <2 x double> %i.baf, i64 1
  %i.bak = tail call double @llvm.fmuladd.f64(double %i.baj, double %i.azz, double %i.bai)
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 704
  store double %i.bak, ptr %i.bal, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK19rotation_derivative20calc_derivative_implILb1ELb1ELb1EEEvRA4_A4_KN12colvarmodule7rvectorEPS2_PSt5arrayIS2_Lm4EEPS8_IS9_Lm4EE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 384, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load double, ptr %i.a, align 8, !tbaa !55 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load double, ptr %i.d, align 8, !tbaa !55 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load double, ptr %i.h, align 8, !tbaa !55 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load double, ptr %i.l, align 8, !tbaa !55 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load double, ptr %i.p, align 8, !tbaa !55 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load double, ptr %i.t, align 8, !tbaa !55 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load double, ptr %i.x, align 8, !tbaa !55 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !55 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = load double, ptr %i.af, align 8, !tbaa !55 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !55 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ao = load double, ptr %i.an, align 8, !tbaa !55 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.as = load double, ptr %i.ar, align 8, !tbaa !55 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aw = load double, ptr %i.av, align 8, !tbaa !55 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = load double, ptr %i.az, align 8, !tbaa !55 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.be = load double, ptr %i.bd, align 8, !tbaa !55 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !55 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.4556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bo = load <2 x double>, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %5 = load <2 x double>, ptr %i.bp, align 8
  %i.bq = shufflevector <2 x double> %5, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bz = load <6 x double>, ptr %1, align 8, !tbaa !55, !noalias !77 ; 7 uses
  %i.ca = load double, ptr %i.g, align 8, !tbaa !30, !noalias !254 ; 3 uses
  %i.cb = load double, ptr %i.f, align 8, !tbaa !28, !noalias !254 ; 3 uses
  %i.cc = load double, ptr %i.c, align 8, !tbaa !29, !noalias !255 ; 3 uses
  %i.cd = extractelement <6 x double> %i.bz, i64 0
  %i.ce = fmul double %i.b, %i.cd
  %i.cf = fmul double %i.b, %i.cc
  %i.cg = extractelement <6 x double> %i.bz, i64 2
  %i.ch = fmul double %i.b, %i.cg
  %i.ci = fmul double %i.e, %i.cb
  %i.cj = extractelement <6 x double> %i.bz, i64 4
  %i.ck = fmul double %i.e, %i.cj
  %i.cl = fmul double %i.e, %i.ca
  %i.cm = fadd double %i.ce, %i.ci
  %i.cn = fadd double %i.cf, %i.ck
  %i.co = fadd double %i.ch, %i.cl
  %i.cp = load <3 x double>, ptr %i.j, align 8, !tbaa !55, !noalias !256 ; 4 uses
  %i.cq = shufflevector <3 x double> %i.cp, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.cr = load double, ptr %i.k, align 8, !tbaa !29, !noalias !256 ; 2 uses
  %i.cs = extractelement <3 x double> %i.cp, i64 0
  %i.ct = fmul double %i.i, %i.cs
  %i.cu = fmul double %i.i, %i.cr
  %i.cv = extractelement <3 x double> %i.cp, i64 2
  %i.cw = fmul double %i.i, %i.cv
  %i.cx = fadd double %i.cm, %i.ct
  %i.cy = fadd double %i.cn, %i.cu
  %i.cz = fadd double %i.co, %i.cw
  %i.da = load <3 x double>, ptr %i.n, align 8, !tbaa !55, !noalias !257 ; 4 uses
  %i.db = shufflevector <3 x double> %i.da, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dc = load double, ptr %i.o, align 8, !tbaa !29, !noalias !257 ; 2 uses
  %i.dd = extractelement <3 x double> %i.da, i64 0
  %i.de = fmul double %i.m, %i.dd
  %i.df = fmul double %i.m, %i.dc
  %i.dg = extractelement <3 x double> %i.da, i64 2
  %i.dh = fmul double %i.m, %i.dg
  %i.di = fadd double %i.cx, %i.de
  %i.dj = fadd double %i.cy, %i.df
  %i.dk = fadd double %i.cz, %i.dh
  %i.dl = load <3 x double>, ptr %i.r, align 8, !tbaa !55, !noalias !258 ; 4 uses
  %i.dm = shufflevector <3 x double> %i.dl, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dn = load double, ptr %i.s, align 8, !tbaa !29, !noalias !258 ; 2 uses
  %i.do = extractelement <3 x double> %i.dl, i64 0
  %i.dp = fmul double %i.q, %i.do
  %i.dq = fmul double %i.q, %i.dn
  %i.dr = extractelement <3 x double> %i.dl, i64 2
  %i.ds = fmul double %i.q, %i.dr
  %i.dt = fadd double %i.di, %i.dp
  %i.du = fadd double %i.dj, %i.dq
  %i.dv = fadd double %i.dk, %i.ds
  %i.dw = load <2 x double>, ptr %i.bl, align 8, !tbaa !55 ; 2 uses
  %i.dx = load <2 x double>, ptr %i.bm, align 8, !tbaa !55
  %i.dy = load <4 x double>, ptr %i.bw, align 8, !tbaa !55 ; 7 uses
  %i.dz = load double, ptr %i.bx, align 8, !tbaa !55
  %i.ea = shufflevector <6 x double> %i.bz, <6 x double> poison, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %i.eb = shufflevector <4 x double> %i.dy, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.ec = shufflevector <2 x double> %i.dw, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ed = shufflevector <3 x double> %i.ec, <3 x double> %i.eb, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.ee = fmul <4 x double> %i.ea, %i.ed
  %i.ef = shufflevector <6 x double> %i.bz, <6 x double> poison, <4 x i32> <i32 3, i32 1, i32 5, i32 3>
  %i.eg = shufflevector <2 x double> %i.dw, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.eh = shufflevector <4 x double> %i.eg, <4 x double> %i.dy, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.ei = fmul <4 x double> %i.ef, %i.eh
  %i.ej = fadd <4 x double> %i.ee, %i.ei
  %i.ek = shufflevector <2 x double> %i.dx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.el = shufflevector <4 x double> %i.ek, <4 x double> %i.dy, <4 x i32> <i32 0, i32 0, i32 0, i32 6>
  %i.em = fmul <4 x double> %i.cq, %i.el
  %i.en = fadd <4 x double> %i.ej, %i.em
  %i.eo = shufflevector <4 x double> %i.ek, <4 x double> %i.dy, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.ep = fmul <4 x double> %i.db, %i.eo
  %i.eq = fadd <4 x double> %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.es = load double, ptr %i.er, align 8, !tbaa !55 ; 2 uses
  %i.et = load <3 x double>, ptr %i.v, align 8, !tbaa !55, !noalias !259 ; 5 uses
  %i.eu = shufflevector <3 x double> %i.et, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ev = load double, ptr %i.w, align 8, !tbaa !29, !noalias !259 ; 4 uses
  %i.ew = extractelement <3 x double> %i.et, i64 0
  %i.ex = fmul double %i.u, %i.ew
  %i.ey = fmul double %i.u, %i.ev
  %i.ez = extractelement <3 x double> %i.et, i64 2
  %i.fa = fmul double %i.u, %i.ez
  %i.fb = fadd double %i.dt, %i.ex
  %i.fc = fadd double %i.du, %i.ey
  %i.fd = fadd double %i.dv, %i.fa
  %i.fe = insertelement <4 x double> %i.bq, double %i.es, i64 1
  %i.ff = shufflevector <4 x double> %i.fe, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fg = fmul <4 x double> %i.eu, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fr = load <3 x double>, ptr %i.z, align 8, !tbaa !55, !noalias !260 ; 4 uses
  %i.fs = shufflevector <3 x double> %i.fr, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ft = load double, ptr %i.aa, align 8, !tbaa !29, !noalias !260 ; 2 uses
  %i.fu = extractelement <3 x double> %i.fr, i64 0
  %i.fv = fmul double %i.y, %i.fu
  %i.fw = fmul double %i.y, %i.ft
  %i.fx = extractelement <3 x double> %i.fr, i64 2
  %i.fy = fmul double %i.y, %i.fx
  %i.fz = fadd double %i.fb, %i.fv
  %i.ga = fadd double %i.fc, %i.fw
  %i.gb = fadd double %i.fd, %i.fy
  %i.gc = load <3 x double>, ptr %i.ad, align 8, !tbaa !55, !noalias !261 ; 4 uses
  %i.gd = shufflevector <3 x double> %i.gc, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ge = load double, ptr %i.ae, align 8, !tbaa !29, !noalias !261 ; 2 uses
  %i.gf = extractelement <3 x double> %i.gc, i64 0
  %i.gg = fmul double %i.ac, %i.gf
  %i.gh = fmul double %i.ac, %i.ge
  %i.gi = extractelement <3 x double> %i.gc, i64 2
  %i.gj = fmul double %i.ac, %i.gi
  %i.gk = fadd double %i.fz, %i.gg
  %i.gl = fadd double %i.ga, %i.gh
  %i.gm = fadd double %i.gb, %i.gj
  %i.gn = load <3 x double>, ptr %i.ah, align 8, !tbaa !55, !noalias !262 ; 4 uses
  %i.go = shufflevector <3 x double> %i.gn, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gp = load double, ptr %i.ai, align 8, !tbaa !29, !noalias !262 ; 2 uses
  %i.gq = extractelement <3 x double> %i.gn, i64 0
  %i.gr = fmul double %i.ag, %i.gq
  %i.gs = fmul double %i.ag, %i.gp
  %i.gt = extractelement <3 x double> %i.gn, i64 2
  %i.gu = fmul double %i.ag, %i.gt
  %i.gv = fadd double %i.gk, %i.gr
  %i.gw = fadd double %i.gl, %i.gs
  %i.gx = fadd double %i.gm, %i.gu
  %i.gy = load <3 x double>, ptr %i.al, align 8, !tbaa !55, !noalias !263 ; 4 uses
  %i.gz = shufflevector <3 x double> %i.gy, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ha = load double, ptr %i.am, align 8, !tbaa !29, !noalias !263 ; 2 uses
  %i.hb = extractelement <3 x double> %i.gy, i64 0
  %i.hc = fmul double %i.ak, %i.hb
  %i.hd = fmul double %i.ak, %i.ha
  %i.he = extractelement <3 x double> %i.gy, i64 2
  %i.hf = fmul double %i.ak, %i.he
  %i.hg = fadd double %i.gv, %i.hc
  %i.hh = fadd double %i.gw, %i.hd
  %i.hi = fadd double %i.gx, %i.hf
  %i.hj = load <3 x double>, ptr %i.ap, align 8, !tbaa !55, !noalias !264 ; 4 uses
  %i.hk = shufflevector <3 x double> %i.hj, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hl = load double, ptr %i.aq, align 8, !tbaa !29, !noalias !264 ; 2 uses
  %i.hm = extractelement <3 x double> %i.hj, i64 0
  %i.hn = fmul double %i.ao, %i.hm
  %i.ho = fmul double %i.ao, %i.hl
  %i.hp = extractelement <3 x double> %i.hj, i64 2
  %i.hq = fmul double %i.ao, %i.hp
  %i.hr = fadd double %i.hg, %i.hn
  %i.hs = fadd double %i.hh, %i.ho
  %i.ht = fadd double %i.hi, %i.hq
  %i.hu = load <3 x double>, ptr %i.at, align 8, !tbaa !55, !noalias !265 ; 4 uses
  %i.hv = shufflevector <3 x double> %i.hu, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hw = load double, ptr %i.au, align 8, !tbaa !29, !noalias !265 ; 2 uses
  %i.hx = extractelement <3 x double> %i.hu, i64 0
  %i.hy = fmul double %i.as, %i.hx
  %i.hz = fmul double %i.as, %i.hw
  %i.ia = extractelement <3 x double> %i.hu, i64 2
  %i.ib = fmul double %i.as, %i.ia
  %i.ic = fadd double %i.hr, %i.hy
  %i.id = fadd double %i.hs, %i.hz
  %i.ie = fadd double %i.ht, %i.ib
  %i.if = load <3 x double>, ptr %i.ax, align 8, !tbaa !55, !noalias !266 ; 4 uses
  %i.ig = shufflevector <3 x double> %i.if, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ih = load double, ptr %i.ay, align 8, !tbaa !29, !noalias !266 ; 2 uses
  %i.ii = extractelement <3 x double> %i.if, i64 0
  %i.ij = fmul double %i.aw, %i.ii
  %i.ik = fmul double %i.aw, %i.ih
  %i.il = extractelement <3 x double> %i.if, i64 2
  %i.im = fmul double %i.aw, %i.il
  %i.in = fadd double %i.ic, %i.ij
  %i.io = fadd double %i.id, %i.ik
  %i.ip = fadd double %i.ie, %i.im
  %i.iq = load <3 x double>, ptr %i.bb, align 8, !tbaa !55, !noalias !267 ; 4 uses
  %i.ir = shufflevector <3 x double> %i.iq, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.is = load double, ptr %i.bc, align 8, !tbaa !29, !noalias !267 ; 2 uses
  %i.it = extractelement <3 x double> %i.iq, i64 0
  %i.iu = fmul double %i.ba, %i.it
  %i.iv = fmul double %i.ba, %i.is
  %i.iw = extractelement <3 x double> %i.iq, i64 2
  %i.ix = fmul double %i.ba, %i.iw
  %i.iy = fadd double %i.in, %i.iu
  %i.iz = fadd double %i.io, %i.iv
  %i.ja = fadd double %i.ip, %i.ix
  %i.jb = load <3 x double>, ptr %i.bf, align 8, !tbaa !55, !noalias !268 ; 4 uses
  %i.jc = shufflevector <3 x double> %i.jb, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.jd = load double, ptr %i.bg, align 8, !tbaa !29, !noalias !268 ; 2 uses
  %i.je = extractelement <3 x double> %i.jb, i64 0
  %i.jf = fmul double %i.be, %i.je
  %i.jg = fmul double %i.be, %i.jd
  %i.jh = extractelement <3 x double> %i.jb, i64 2
  %i.ji = fmul double %i.be, %i.jh
end_hunk_3
