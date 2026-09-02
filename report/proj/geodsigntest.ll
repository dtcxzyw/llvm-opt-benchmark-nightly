Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geodsigntest?download=true
inline.NumInlined: 458
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@main:bb.a
  %spec.select763.1 = add nuw nsw i32 %i.ayx, %i.ayq
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  call void @geod_lineinit(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.800000e+02, i32 noundef 2827)
  %i.ayy = call double @geod_genposition(ptr noundef nonnull %0, i32 noundef 32768, double noundef 1.500000e+07, ptr noundef null, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.ayz = load double, ptr %i.dk, align 8, !tbaa !10
  %i.aza = fcmp une double %i.ayz, 1.800000e+02
  %not..i1823.2 = zext i1 %i.aza to i32
  %i.azb = load double, ptr %i.dl, align 8, !tbaa !10 ; 2 uses
  %i.azc = fcmp oeq double %i.azb, 0.000000e+00
  %i.azd = bitcast double %i.azb to i64
  %.unshifted.lobit.i1830.2 = lshr i64 %i.azd, 63
  %i.aze = trunc nuw nsw i64 %.unshifted.lobit.i1830.2 to i32
  %not..i1828.2 = select i1 %i.azc, i32 %i.aze, i32 1
  %i.azf = or i32 %not..i1828.2, %not..i1823.2
  %spec.select763.2 = add nuw nsw i32 %i.azf, %spec.select763.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  call void @geod_lineinit(ptr noundef nonnull %0, ptr noundef nonnull readonly %5, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef -1.800000e+02, i32 noundef 2827)
  %i.azg = call double @geod_genposition(ptr noundef nonnull %0, i32 noundef 32768, double noundef 1.500000e+07, ptr noundef null, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.azh = load double, ptr %i.dk, align 8, !tbaa !10
  %i.azi = fcmp une double %i.azh, -1.800000e+02
  %not..i1823.3 = zext i1 %i.azi to i32
  %i.azj = load double, ptr %i.dl, align 8, !tbaa !10 ; 2 uses
  %i.azk = fcmp oeq double %i.azj, 0.000000e+00
  %i.azl = fneg double %i.azj
  %.unshifted.i1829.3 = bitcast double %i.azl to i64
  %.unshifted.lobit.i1830.3 = lshr i64 %.unshifted.i1829.3, 63
  %i.azm = trunc nuw nsw i64 %.unshifted.lobit.i1830.3 to i32
  %not..i1828.3 = select i1 %i.azk, i32 %i.azm, i32 1
  %i.azn = or i32 %not..i1828.3, %not..i1823.3
  %i.azo = or i32 %i.azn, %spec.select763.2
  %.not755 = icmp eq i32 %i.azo, 0
  br i1 %.not755, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %geod_init.exit1821
  %i.azp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.145, i32 noundef 365) ; 0 uses
  %i.azq = add nsw i32 %.150, 1
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %geod_init.exit1821
  %.151 = phi i32 [ %i.azq, %bb.fb ], [ %.150, %geod_init.exit1821 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not756 = icmp eq i32 %.151, 0
  br i1 %.not756, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.azr = icmp sgt i32 %.151, 1
  %i.azs = select i1 %i.azr, ptr @.str.148, ptr @.str.149
  %i.azt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, i32 noundef %.151, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.azs) ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fd
  %.0604 = phi i32 [ 1, %bb.fd ], [ 0, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db) #17
  ret i32 %.0604
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc double @AngDiff(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 8 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 6 uses
  %i.g = fneg double %0
  %i.h = tail call double @remainder(double noundef %i.g, double noundef 3.600000e+02) #17 ; 2 uses
  %i.i = tail call double @remainder(double noundef %1, double noundef 3.600000e+02) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = fadd double %i.h, %i.i
  store volatile double %i.j, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.0..0..0..0..0..0.5.i = load volatile double, ptr %i.d, align 8, !tbaa !10
  %i.k = fsub double %.0..0..0..0..0..0.5.i, %i.i
  store volatile double %i.k, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.0..0..0..0..0..0.6.i = load volatile double, ptr %i.d, align 8, !tbaa !10
  %.0..0..0..0..0..0.2.i = load volatile double, ptr %i.e, align 8, !tbaa !10
  %i.l = fsub double %.0..0..0..0..0..0.6.i, %.0..0..0..0..0..0.2.i
  store volatile double %i.l, ptr %i.f, align 8, !tbaa !10
  %.0..0..0..0..0..0.3.i = load volatile double, ptr %i.e, align 8, !tbaa !10
  %i.m = fsub double %.0..0..0..0..0..0.3.i, %i.h
  store volatile double %i.m, ptr %i.e, align 8, !tbaa !10
  %.0..0..0..0..0..0..i = load volatile double, ptr %i.f, align 8, !tbaa !10
  %i.n = fsub double %.0..0..0..0..0..0..i, %i.i
  store volatile double %i.n, ptr %i.f, align 8, !tbaa !10
  %.0..0..0..0..0..0.7.i = load volatile double, ptr %i.d, align 8, !tbaa !10
  %i.o = fcmp une double %.0..0..0..0..0..0.7.i, 0.000000e+00
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.4.i = load volatile double, ptr %i.e, align 8, !tbaa !10
  %.0..0..0..0..0..0.1.i = load volatile double, ptr %i.f, align 8, !tbaa !10
  %i.p = fadd double %.0..0..0..0..0..0.4.i, %.0..0..0..0..0..0.1.i
  %i.q = fsub double 0.000000e+00, %i.p
  br label %sumx.exit

bb.c:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.8.i = load volatile double, ptr %i.d, align 8, !tbaa !10
  br label %sumx.exit

sumx.exit:                                        ; preds = %bb.b, %bb.c
  %i.r = phi double [ %i.q, %bb.b ], [ %.0..0..0..0..0..0.8.i, %bb.c ] ; 3 uses
  %.0..0..0..0..0..0.9.i = load volatile double, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = tail call double @remainder(double noundef %.0..0..0..0..0..0.9.i, double noundef 3.600000e+02) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = fadd double %i.r, %i.s
  store volatile double %i.t, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.0..0..0..0..0..0.5.i15 = load volatile double, ptr %i.a, align 8, !tbaa !10
  %i.u = fsub double %.0..0..0..0..0..0.5.i15, %i.r
  store volatile double %i.u, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0..0..0.6.i16 = load volatile double, ptr %i.a, align 8, !tbaa !10
  %.0..0..0..0..0..0.2.i17 = load volatile double, ptr %i.b, align 8, !tbaa !10
  %i.v = fsub double %.0..0..0..0..0..0.6.i16, %.0..0..0..0..0..0.2.i17
  store volatile double %i.v, ptr %i.c, align 8, !tbaa !10
  %.0..0..0..0..0..0.3.i18 = load volatile double, ptr %i.b, align 8, !tbaa !10
  %i.w = fsub double %.0..0..0..0..0..0.3.i18, %i.s
  store volatile double %i.w, ptr %i.b, align 8, !tbaa !10
  %.0..0..0..0..0..0..i19 = load volatile double, ptr %i.c, align 8, !tbaa !10
  %i.x = fsub double %.0..0..0..0..0..0..i19, %i.r
  store volatile double %i.x, ptr %i.c, align 8, !tbaa !10
  %.0..0..0..0..0..0.7.i20 = load volatile double, ptr %i.a, align 8, !tbaa !10
  %i.y = fcmp une double %.0..0..0..0..0..0.7.i20, 0.000000e+00
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %sumx.exit
  %.0..0..0..0..0..0.4.i23 = load volatile double, ptr %i.b, align 8, !tbaa !10
  %.0..0..0..0..0..0.1.i24 = load volatile double, ptr %i.c, align 8, !tbaa !10
  %i.z = fadd double %.0..0..0..0..0..0.4.i23, %.0..0..0..0..0..0.1.i24
  %i.aa = fsub double 0.000000e+00, %i.z
  br label %sumx.exit25

bb.e:                                             ; preds = %sumx.exit
  %.0..0..0..0..0..0.8.i21 = load volatile double, ptr %i.a, align 8, !tbaa !10
  br label %sumx.exit25

sumx.exit25:                                      ; preds = %bb.d, %bb.e
  %i.ab = phi double [ %i.aa, %bb.d ], [ %.0..0..0..0..0..0.8.i21, %bb.e ] ; 3 uses
  %.0..0..0..0..0..0.9.i22 = load volatile double, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = fcmp oeq double %.0..0..0..0..0..0.9.i22, 0.000000e+00
  %i.ad = tail call double @llvm.fabs.f64(double %.0..0..0..0..0..0.9.i22)
  %i.ae = fcmp oeq double %i.ad, 1.800000e+02
  %or.cond = or i1 %i.ac, %i.ae
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sumx.exit25
  %i.af = fcmp oeq double %i.ab, 0.000000e+00
  %i.ag = fsub double %1, %0
  %i.ah = fneg double %i.ab
  %i.ai = select i1 %i.af, double %i.ag, double %i.ah
  %i.aj = tail call double @llvm.copysign.f64(double %.0..0..0..0..0..0.9.i22, double %i.ai)
  br label %bb.g

bb.g:                                             ; preds = %sumx.exit25, %bb.f
  %.0 = phi double [ %i.aj, %bb.f ], [ %.0..0..0..0..0..0.9.i22, %sumx.exit25 ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.ab, ptr %2, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @remainder(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write, errnomem: write)
declare double @remquo(double noundef, double noundef, ptr noundef writeonly captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @Lengths(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, ptr nofree noundef writeonly captures(address_is_null) %11, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(address_is_null) %14, ptr nofree noundef writeonly captures(address_is_null) %15, ptr nofree noundef nonnull writeonly captures(none) initializes((8, 56)) %16) unnamed_addr #15 {
bb.a:
  %.not = icmp eq ptr %13, null
  %i.a = icmp ne ptr %14, null                    ; 2 uses
  %.not115 = icmp eq ptr %11, null
  %i.b = insertelement <2 x double> <double 1.000000e+00, double poison>, double %1, i64 1 ; 2 uses
  %i.c = insertelement <2 x double> <double poison, double -1.000000e+00>, double %1, i64 0
  %i.d = fsub <2 x double> %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 48
  %17 = insertelement <2 x double> poison, double %1, i64 0
  %18 = fmul double %1, %1                        ; 8 uses
  %i.i = fsub double 6.000000e+00, %18
  %i.j = fmul double %1, %18                      ; 2 uses
  %i.k = fmul double %1, %i.j                     ; 2 uses
  %i.l = insertelement <2 x double> poison, double %18, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.n = fmul double %1, %i.k                     ; 2 uses
  %i.o = fmul double %1, %i.n
  %i.p = insertelement <2 x double> <double -9.000000e+00, double poison>, double %i.i, i64 1
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.p, <2 x double> <double 6.400000e+01, double -1.600000e+01>) ; 2 uses
  %19 = shufflevector <2 x double> <double 3.000000e+00, double poison>, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %i.m, <2 x double> <double -5.000000e+00, double -1.280000e+02>)
  %i.s = insertelement <2 x double> poison, double %i.k, i64 0
  %20 = insertelement <2 x double> %i.s, double %18, i64 1 ; 2 uses
  %21 = fmul <2 x double> %i.r, %20
  %22 = insertelement <2 x double> %17, double %i.o, i64 1 ; 2 uses
  %23 = shufflevector <2 x double> <double poison, double -7.000000e+00>, <2 x double> %i.q, <2 x i32> <i32 3, i32 1>
  %i.t = fmul <2 x double> %22, %23
  %24 = shufflevector <2 x double> %i.t, <2 x double> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %25 = fmul <4 x double> %24, <double 3.125000e-02, double f0x3F40000000000000, double f0x3F60000000000000, double f0x3F40000000000000> ; 8 uses
  %26 = shufflevector <4 x double> %25, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  store <2 x double> %26, ptr %i.e, align 8, !tbaa !10
  %i.u = insertelement <2 x double> <double poison, double -0.000000e+00>, double %18, i64 0 ; 2 uses
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> <double 9.000000e+00, double 0.000000e+00>, <2 x double> <double -1.600000e+01, double -7.000000e+00>)
  %i.w = insertelement <2 x double> poison, double %i.j, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.n, i64 1 ; 2 uses
  %i.y = fmul <2 x double> %i.x, %i.v
  %i.z = fdiv <2 x double> %i.y, <double 7.680000e+02, double 1.280000e+03> ; 5 uses
  %27 = extractelement <2 x double> %i.z, i64 0
  store double %27, ptr %i.f, align 8, !tbaa !10
  %28 = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %29 = shufflevector <4 x double> %25, <4 x double> %28, <2 x i32> <i32 2, i32 5>
  store <2 x double> %29, ptr %i.g, align 8, !tbaa !10
  %i.aa = extractelement <4 x double> %25, i64 1
  store double %i.aa, ptr %i.h, align 8, !tbaa !10
  %30 = fadd double %18, 4.000000e+00
  %i.ab = insertelement <2 x double> poison, double %30, i64 0
  %i.ac = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ad = fadd double %18, 2.000000e+00
  %i.ae = insertelement <2 x double> <double -1.100000e+01, double poison>, double %i.ad, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.ae, <2 x double> <double -2.800000e+01, double 1.600000e+01>) ; 2 uses
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.af, <2 x i32> <i32 0, i32 2>
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.m, <2 x double> <double 6.400000e+01, double -1.920000e+02>)
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.m, <2 x double> zeroinitializer)
  %i.aj = fmul <2 x double> %i.ai, splat (double 3.906250e-03) ; 2 uses
  %i.ak = fadd <2 x double> %i.aj, %i.ac
  %i.al = fsub <2 x double> %i.aj, %i.ac
  %i.am = shufflevector <2 x double> %i.ak, <2 x double> %i.al, <2 x i32> <i32 0, i32 3>
  %i.an = fdiv <2 x double> %i.am, %i.d           ; 2 uses
  %31 = tail call double @llvm.fmuladd.f64(double %18, double 3.500000e+01, double 6.400000e+01)
  %32 = insertelement <2 x double> <double 7.000000e+00, double poison>, double %31, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %i.m, <2 x double> <double 3.500000e+01, double 3.840000e+02>)
  %i.ap = fmul <2 x double> %i.ao, %20
  %33 = shufflevector <2 x double> <double poison, double 7.700000e+01>, <2 x double> %i.af, <2 x i32> <i32 3, i32 1>
  %34 = fmul <2 x double> %22, %33
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> <double 1.500000e+01, double 0.000000e+00>, <2 x double> <double 8.000000e+01, double 6.300000e+01>)
  %36 = fmul <2 x double> %i.x, %35
  %37 = fdiv <2 x double> %36, <double 7.680000e+02, double 1.280000e+03> ; 3 uses
  %38 = shufflevector <2 x double> %34, <2 x double> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %39 = fmul <4 x double> %38, <double 3.125000e-02, double f0x3F40000000000000, double f0x3F60000000000000, double f0x3F40000000000000> ; 5 uses
  %40 = extractelement <2 x double> %i.an, i64 0  ; 2 uses
  %41 = extractelement <2 x double> %i.an, i64 1  ; 2 uses
  %42 = fsub double %40, %41                      ; 2 uses
  %43 = fadd double %41, 1.000000e+00             ; 2 uses
  %44 = fadd double %40, 1.000000e+00             ; 3 uses
  br i1 %.not115, label %.preheader.preheader, label %SinCosSeries.exit

.preheader.preheader:                             ; preds = %bb.a
  %45 = shufflevector <4 x double> %39, <4 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %46 = shufflevector <2 x double> %37, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <6 x double> %45, <6 x double> %46, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %48 = shufflevector <4 x double> %25, <4 x double> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %49 = shufflevector <2 x double> %i.z, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <6 x double> %48, <6 x double> %49, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %51 = fneg <6 x double> %47
  %52 = insertelement <2 x double> poison, double %7, i64 0
  %53 = insertelement <2 x double> %52, double %4, i64 1 ; 3 uses
  %54 = insertelement <2 x double> poison, double %6, i64 0
  %i.aq = insertelement <2 x double> %54, double %3, i64 1 ; 3 uses
  %55 = fsub <2 x double> %53, %i.aq
  %56 = fadd <2 x double> %i.aq, %53
  %57 = fmul <2 x double> %i.aq, splat (double 2.000000e+00)
  %58 = insertelement <6 x double> poison, double %43, i64 0
  %59 = shufflevector <6 x double> %58, <6 x double> poison, <6 x i32> zeroinitializer
  %60 = fmul <6 x double> %59, %51
  %61 = insertelement <6 x double> poison, double %44, i64 0
  %62 = shufflevector <6 x double> %61, <6 x double> poison, <6 x i32> zeroinitializer
  %63 = tail call <6 x double> @llvm.fmuladd.v6f64(<6 x double> %62, <6 x double> %50, <6 x double> %60) ; 6 uses
  %i.ar = fmul <2 x double> %55, splat (double 2.000000e+00)
  %i.as = fmul <2 x double> %56, %i.ar            ; 6 uses
  %i.at = fmul <2 x double> %i.as, zeroinitializer
  %64 = shufflevector <6 x double> %63, <6 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fadd <2 x double> %i.at, %64            ; 2 uses
  %i.av = fmul <2 x double> %i.as, %i.au
  %65 = shufflevector <6 x double> %63, <6 x double> poison, <2 x i32> <i32 5, i32 5>
  %i.aw = fadd <2 x double> %65, %i.av            ; 2 uses
  %i.ax = fneg <2 x double> %i.au
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.aw, <2 x double> %i.ax)
  %66 = shufflevector <6 x double> %63, <6 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.az = fadd <2 x double> %i.ay, %66            ; 2 uses
  %i.ba = fneg <2 x double> %i.aw
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.az, <2 x double> %i.ba)
  %67 = shufflevector <6 x double> %63, <6 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.bc = fadd <2 x double> %67, %i.bb            ; 2 uses
  %i.bd = fneg <2 x double> %i.az
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.bc, <2 x double> %i.bd)
  %68 = shufflevector <6 x double> %63, <6 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.bf = fadd <2 x double> %i.be, %68
  %i.bg = fneg <2 x double> %i.bc
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.bf, <2 x double> %i.bg)
  %69 = shufflevector <6 x double> %63, <6 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fadd <2 x double> %69, %i.bh
  %i.bj = fmul <2 x double> %57, %53
  %i.bk = fmul <2 x double> %i.bj, %i.bi          ; 2 uses
  %shift.a = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fsub <2 x double> %i.bk, %shift.a
  %i.bl = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  br label %bb.b

SinCosSeries.exit:                                ; preds = %bb.a
  %i.bm = insertelement <2 x double> poison, double %7, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %4, i64 1 ; 3 uses
  %i.bo = insertelement <2 x double> poison, double %6, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %3, i64 1 ; 3 uses
  %i.bq = fsub <2 x double> %i.bn, %i.bp
  %i.br = fadd <2 x double> %i.bp, %i.bn
  %i.bs = fmul <2 x double> %i.bp, splat (double 2.000000e+00)
  %i.bt = fmul <2 x double> %i.bq, splat (double 2.000000e+00)
  %i.bu = fmul <2 x double> %i.br, %i.bt          ; 11 uses
  %i.bv = fmul <2 x double> %i.bu, zeroinitializer ; 2 uses
  %70 = shufflevector <4 x double> %25, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fadd <2 x double> %i.bv, %70            ; 2 uses
  %i.bx = fmul <2 x double> %i.bu, %i.bw
  %i.by = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fadd <2 x double> %i.by, %i.bx          ; 2 uses
  %i.ca = fneg <2 x double> %i.bw
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bz, <2 x double> %i.ca)
  %71 = shufflevector <4 x double> %25, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cc = fadd <2 x double> %i.cb, %71            ; 2 uses
  %i.cd = fneg <2 x double> %i.bz
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cc, <2 x double> %i.cd)
  %i.cf = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fadd <2 x double> %i.cf, %i.ce          ; 2 uses
  %i.ch = fneg <2 x double> %i.cc
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cg, <2 x double> %i.ch)
  %72 = shufflevector <4 x double> %25, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.cj = fadd <2 x double> %i.ci, %72
  %i.ck = fneg <2 x double> %i.cg
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cj, <2 x double> %i.ck)
  %i.cm = shufflevector <4 x double> %25, <4 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fadd <2 x double> %i.cm, %i.cl
  %i.co = fmul <2 x double> %i.bs, %i.bn          ; 2 uses
  %i.cp = fmul <2 x double> %i.co, %i.cn          ; 2 uses
  %shift186 = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187 = fsub <2 x double> %i.cp, %shift186
  %i.cq = extractelement <2 x double> %foldExtExtBinop187, i64 0 ; 2 uses
  %i.cr = fadd double %2, %i.cq
  %i.cs = fmul double %44, %i.cr
  store double %i.cs, ptr %11, align 8, !tbaa !10
  %73 = shufflevector <4 x double> %39, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fadd <2 x double> %i.bv, %73            ; 2 uses
  %i.cu = fmul <2 x double> %i.bu, %i.ct
  %i.cv = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fadd <2 x double> %i.cv, %i.cu          ; 2 uses
  %i.cx = fneg <2 x double> %i.ct
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cw, <2 x double> %i.cx)
  %74 = shufflevector <4 x double> %39, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cz = fadd <2 x double> %i.cy, %74            ; 2 uses
  %i.da = fneg <2 x double> %i.cw
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cz, <2 x double> %i.da)
  %i.dc = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fadd <2 x double> %i.dc, %i.db          ; 2 uses
  %i.de = fneg <2 x double> %i.cz
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.dd, <2 x double> %i.de)
  %75 = shufflevector <4 x double> %39, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.dg = fadd <2 x double> %i.df, %75
  %i.dh = fneg <2 x double> %i.dd
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.dg, <2 x double> %i.dh)
  %i.dj = shufflevector <4 x double> %39, <4 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fadd <2 x double> %i.dj, %i.di
  %i.dl = fmul <2 x double> %i.co, %i.dk          ; 2 uses
  %shift189 = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop190 = fsub <2 x double> %i.dl, %shift189
  %i.dm = extractelement <2 x double> %foldExtExtBinop190, i64 0
  %i.dn = fneg double %i.dm
  %i.do = fmul double %43, %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %44, double %i.cq, double %i.do)
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %SinCosSeries.exit
  %.sink = phi double [ %i.bl, %.preheader.preheader ], [ %i.dp, %SinCosSeries.exit ]
  %i.dq = tail call double @llvm.fmuladd.f64(double %42, double %2, double %.sink) ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %42, ptr %13, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.dr = fmul double %4, %6
  %i.ds = fneg double %7                          ; 2 uses
  %i.dt = fmul double %3, %i.ds
  %i.du = fmul double %5, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %8, double %i.dr, double %i.du)
  %i.dw = fmul double %4, %i.ds
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dq, double %i.dv)
  store double %i.dx, ptr %12, align 8, !tbaa !10
  %i.dy = icmp ne ptr %15, null                   ; 2 uses
  %or.cond7 = or i1 %i.a, %i.dy
  br i1 %or.cond7, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.dz = fmul double %3, %6
  %i.ea = tail call double @llvm.fmuladd.f64(double %4, double %7, double %i.dz) ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !26
  %i.ed = fsub double %9, %10
  %i.ee = fmul double %i.ed, %i.ec
  %i.ef = fadd double %9, %10
  %i.eg = fmul double %i.ef, %i.ee
  %i.eh = fadd double %5, %8
  %i.ei = fdiv double %i.eg, %i.eh                ; 2 uses
  br i1 %i.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ej = fneg double %i.dq
  %i.ek = fmul double %7, %i.ej
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ei, double %6, double %i.ek)
  %i.em = fmul double %3, %i.el
  %i.en = fdiv double %i.em, %5
  %i.eo = fadd double %i.ea, %i.en
  store double %i.eo, ptr %14, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.dy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ep = fneg double %i.dq
  %i.eq = fmul double %4, %i.ep
  %i.er = tail call double @llvm.fmuladd.f64(double %i.ei, double %3, double %i.eq)
  %i.es = fmul double %6, %i.er
  %i.et = fdiv double %i.es, %8
  %i.eu = fsub double %i.ea, %i.et
  store double %i.eu, ptr %15, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @cbrt(double noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <6 x double> @llvm.fmuladd.v6f64(<6 x double>, <6 x double>, <6 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"geod_geodesic", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !5, i64 72, !5, i64 120, !5, i64 240}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 16}
!15 = !{!11, !9, i64 24}
!16 = !{!11, !9, i64 48}
!17 = !{!11, !9, i64 56}
!18 = !{!11, !9, i64 64}
!19 = !{!6, !6, i64 0}
!20 = !{!"geod_geodesicline", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !5, i64 240, !5, i64 296, !5, i64 352, !5, i64 408, !5, i64 456, !6, i64 504}
!21 = !{!20, !9, i64 88}
!22 = !{!20, !6, i64 504}
!23 = !{!20, !9, i64 8}
!24 = !{!20, !9, i64 40}
!25 = !{!20, !9, i64 48}
!26 = !{!11, !9, i64 32}
!27 = !{!20, !9, i64 136}
!28 = !{!20, !9, i64 96}
!29 = !{!20, !9, i64 104}
!30 = !{!20, !9, i64 160}
!31 = !{!20, !9, i64 168}
!32 = !{!20, !9, i64 112}
!33 = !{!20, !9, i64 176}
!34 = !{!20, !9, i64 200}
!35 = !{!20, !9, i64 184}
!36 = !{!20, !9, i64 208}
!37 = !{!20, !9, i64 192}
!38 = !{!20, !9, i64 216}
!39 = !{!20, !9, i64 224}
!40 = !{!20, !9, i64 232}
!41 = !{!20, !9, i64 64}
!42 = !{!20, !9, i64 56}
!43 = !{!"geod_polygon", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32, !5, i64 48, !6, i64 64, !6, i64 68, !6, i64 72}
!44 = !{!43, !6, i64 64}
!45 = !{!43, !6, i64 68}
!46 = !{!43, !6, i64 72}
!47 = !{!43, !9, i64 0}
!48 = !{!43, !9, i64 16}
!49 = !{!43, !9, i64 8}
!50 = !{!43, !9, i64 24}
!51 = !{!20, !9, i64 0}
!52 = !{!20, !9, i64 16}
!53 = !{!20, !9, i64 24}
!54 = !{!20, !9, i64 72}
!55 = !{!20, !9, i64 32}
!56 = !{!20, !9, i64 80}
!57 = !{!11, !9, i64 40}
end_hunk_0
