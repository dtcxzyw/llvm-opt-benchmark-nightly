Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geodsigntest?download=true
inline.NumInlined: 458
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@main:bb.a
  %i.ayu = load double, ptr %i.dl, align 8, !tbaa !10
  %i.ayv = fcmp une double %i.ayu, -1.800000e+02
  %i.ayw = or i1 %i.ayv, %i.ayt
  %i.ayx = zext i1 %i.ayw to i32
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
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.j = fmul double %1, %1                       ; 6 uses
  %i.k = fadd double %i.j, 4.000000e+00
  %i.l = fsub double 6.000000e+00, %i.j
  %i.m = fmul double %1, %i.j                     ; 2 uses
  %i.n = fmul double %1, %i.m                     ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.j, i64 0 ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.q = fmul double %1, %i.n                     ; 2 uses
  %i.r = fmul double %1, %i.q                     ; 2 uses
  %i.s = insertelement <2 x double> <double -9.000000e+00, double poison>, double %i.l, i64 1
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.s, <2 x double> <double 6.400000e+01, double -1.600000e+01>) ; 2 uses
  %i.u = insertelement <2 x double> %i.t, double 3.000000e+00, i64 1
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.p, <2 x double> <double -1.280000e+02, double -5.000000e+00>)
  %i.w = insertelement <2 x double> %i.o, double %i.n, i64 1 ; 3 uses
  %i.x = fmul <2 x double> %i.w, %i.v
  %i.y = fmul double %i.r, -7.000000e+00
  %i.z = extractelement <2 x double> %i.t, i64 1
  %i.aa = fmul double %1, %i.z
  %i.ab = fmul <2 x double> %i.x, <double f0x3F40000000000000, double f0x3F60000000000000> ; 5 uses
  %i.ac = fmul double %i.y, f0x3F40000000000000   ; 3 uses
  %i.ad = fmul double %i.aa, 3.125000e-02         ; 3 uses
  store double %i.ad, ptr %i.e, align 8, !tbaa !10
  %i.ae = extractelement <2 x double> %i.ab, i64 0
  store double %i.ae, ptr %i.f, align 8, !tbaa !10
  %i.af = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.j, i64 0 ; 2 uses
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> <double 9.000000e+00, double 0.000000e+00>, <2 x double> <double -1.600000e+01, double -7.000000e+00>)
  %i.ah = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.q, i64 1 ; 2 uses
  %i.aj = fmul <2 x double> %i.ai, %i.ag
  %i.ak = fdiv <2 x double> %i.aj, <double 7.680000e+02, double 1.280000e+03> ; 6 uses
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> %i.ab, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.al, ptr %i.g, align 8, !tbaa !10
  %i.am = extractelement <2 x double> %i.ak, i64 1
  store double %i.am, ptr %i.h, align 8, !tbaa !10
  store double %i.ac, ptr %i.i, align 8, !tbaa !10
  %i.an = insertelement <2 x double> poison, double %i.k, i64 0
  %17 = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ao = fadd double %i.j, 2.000000e+00
  %i.ap = insertelement <2 x double> <double -1.100000e+01, double poison>, double %i.ao, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.ap, <2 x double> <double -2.800000e+01, double 1.600000e+01>) ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.p, <2 x double> <double 6.400000e+01, double -1.920000e+02>)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.p, <2 x double> zeroinitializer)
  %i.au = fmul <2 x double> %i.at, splat (double 3.906250e-03) ; 2 uses
  %i.av = fadd <2 x double> %i.au, %17
  %i.aw = fsub <2 x double> %i.au, %17
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <2 x i32> <i32 0, i32 3>
  %i.ay = fdiv <2 x double> %i.ax, %i.d           ; 3 uses
  %i.az = insertelement <2 x double> %i.w, double -0.000000e+00, i64 1
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> <double 3.500000e+01, double 0.000000e+00>, <2 x double> <double 6.400000e+01, double 7.000000e+00>)
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.p, <2 x double> <double 3.840000e+02, double 3.500000e+01>)
  %i.bc = fmul <2 x double> %i.w, %i.bb
  %i.bd = fmul double %i.r, 7.700000e+01
  %i.be = extractelement <2 x double> %i.aq, i64 1
  %i.bf = fmul double %1, %i.be
  %i.bg = fmul double %i.bf, 3.125000e-02         ; 2 uses
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> <double 1.500000e+01, double 0.000000e+00>, <2 x double> <double 8.000000e+01, double 6.300000e+01>)
  %i.bi = fmul <2 x double> %i.ai, %i.bh
  %i.bj = fmul <2 x double> %i.bc, <double f0x3F40000000000000, double f0x3F60000000000000> ; 3 uses
  %i.bk = fdiv <2 x double> %i.bi, <double 7.680000e+02, double 1.280000e+03> ; 4 uses
  %i.bl = fmul double %i.bd, f0x3F40000000000000  ; 2 uses
  %shift = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ay, %shift
  %i.bm = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bn = fadd <2 x double> %i.ay, splat (double 1.000000e+00) ; 4 uses
  br i1 %.not115, label %.preheader.preheader, label %SinCosSeries.exit

.preheader.preheader:                             ; preds = %bb.a
  %i.bo = fneg <2 x double> %i.bj
  %i.bp = insertelement <2 x double> poison, double %7, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %4, i64 1 ; 3 uses
  %i.br = insertelement <2 x double> poison, double %6, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %3, i64 1 ; 3 uses
  %i.bt = fsub <2 x double> %i.bq, %i.bs
  %i.bu = fadd <2 x double> %i.bs, %i.bq
  %i.bv = fmul <2 x double> %i.bs, splat (double 2.000000e+00)
  %i.bw = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bo
  %i.by = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ab, <2 x double> %i.bx) ; 2 uses
  %i.ca = insertelement <2 x double> %i.bk, double %i.bl, i64 0
  %i.cb = fneg <2 x double> %i.ca
  %i.cc = fmul <2 x double> %i.bw, %i.cb
  %i.cd = insertelement <2 x double> %i.ak, double %i.ac, i64 0
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.cd, <2 x double> %i.cc) ; 2 uses
  %i.cf = insertelement <2 x double> %i.bk, double %i.bg, i64 1
  %i.cg = fneg <2 x double> %i.cf
  %i.ch = fmul <2 x double> %i.bw, %i.cg
  %i.ci = insertelement <2 x double> %i.ak, double %i.ad, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ci, <2 x double> %i.ch) ; 2 uses
  %i.ck = fmul <2 x double> %i.bt, splat (double 2.000000e+00)
  %i.cl = fmul <2 x double> %i.bu, %i.ck          ; 6 uses
  %i.cm = fmul <2 x double> %i.cl, zeroinitializer
  %i.cn = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fadd <2 x double> %i.cm, %i.cn          ; 2 uses
  %i.cp = fmul <2 x double> %i.cl, %i.co
  %i.cq = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fadd <2 x double> %i.cq, %i.cp          ; 2 uses
  %i.cs = fneg <2 x double> %i.co
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cr, <2 x double> %i.cs)
  %i.cu = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fadd <2 x double> %i.ct, %i.cu          ; 2 uses
  %i.cw = fneg <2 x double> %i.cr
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cv, <2 x double> %i.cw)
  %i.cy = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fadd <2 x double> %i.cy, %i.cx          ; 2 uses
  %i.da = fneg <2 x double> %i.cv
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cz, <2 x double> %i.da)
  %i.dc = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fadd <2 x double> %i.db, %i.dc
  %i.de = fneg <2 x double> %i.cz
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.dd, <2 x double> %i.de)
  %i.dg = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = fadd <2 x double> %i.dg, %i.df
  %i.di = fmul <2 x double> %i.bv, %i.bq
  %i.dj = fmul <2 x double> %i.di, %i.dh          ; 2 uses
  %shift186 = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187 = fsub <2 x double> %i.dj, %shift186
  %i.dk = extractelement <2 x double> %foldExtExtBinop187, i64 0
  br label %bb.b

SinCosSeries.exit:                                ; preds = %bb.a
  %i.dl = insertelement <2 x double> poison, double %7, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %4, i64 1 ; 3 uses
  %i.dn = insertelement <2 x double> poison, double %6, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %3, i64 1 ; 3 uses
  %i.dp = fsub <2 x double> %i.dm, %i.do
  %i.dq = fadd <2 x double> %i.do, %i.dm
  %i.dr = fmul <2 x double> %i.do, splat (double 2.000000e+00)
  %i.ds = fmul <2 x double> %i.dp, splat (double 2.000000e+00)
  %i.dt = fmul <2 x double> %i.dq, %i.ds          ; 11 uses
  %i.du = fmul <2 x double> %i.dt, zeroinitializer ; 2 uses
  %i.dv = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fadd <2 x double> %i.du, %i.dw          ; 2 uses
  %i.dy = fmul <2 x double> %i.dt, %i.dx
  %i.dz = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = fadd <2 x double> %i.dz, %i.dy          ; 2 uses
  %i.eb = fneg <2 x double> %i.dx
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.ea, <2 x double> %i.eb)
  %i.ed = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = fadd <2 x double> %i.ec, %i.ed          ; 2 uses
  %i.ef = fneg <2 x double> %i.ea
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.ee, <2 x double> %i.ef)
  %i.eh = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fadd <2 x double> %i.eh, %i.eg          ; 2 uses
  %i.ej = fneg <2 x double> %i.ee
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.ei, <2 x double> %i.ej)
  %i.el = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fadd <2 x double> %i.ek, %i.el
  %i.en = fneg <2 x double> %i.ei
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.em, <2 x double> %i.en)
  %i.ep = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fadd <2 x double> %i.eq, %i.eo
  %i.es = fmul <2 x double> %i.dr, %i.dm          ; 2 uses
  %i.et = fmul <2 x double> %i.es, %i.er          ; 2 uses
  %shift189 = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop190 = fsub <2 x double> %i.et, %shift189
  %i.eu = extractelement <2 x double> %foldExtExtBinop190, i64 0 ; 2 uses
  %i.ev = fadd double %2, %i.eu
  %i.ew = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.ex = fmul double %i.ew, %i.ev
  store double %i.ex, ptr %11, align 8, !tbaa !10
  %i.ey = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fadd <2 x double> %i.du, %i.ez          ; 2 uses
  %i.fb = fmul <2 x double> %i.dt, %i.fa
  %i.fc = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = fadd <2 x double> %i.fc, %i.fb          ; 2 uses
  %i.fe = fneg <2 x double> %i.fa
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.fd, <2 x double> %i.fe)
  %i.fg = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = fadd <2 x double> %i.ff, %i.fg          ; 2 uses
  %i.fi = fneg <2 x double> %i.fd
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.fh, <2 x double> %i.fi)
  %i.fk = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fadd <2 x double> %i.fk, %i.fj          ; 2 uses
  %i.fm = fneg <2 x double> %i.fh
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.fl, <2 x double> %i.fm)
  %i.fo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fadd <2 x double> %i.fn, %i.fo
  %i.fq = fneg <2 x double> %i.fl
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.fp, <2 x double> %i.fq)
  %i.fs = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = fadd <2 x double> %i.ft, %i.fr
  %i.fv = fmul <2 x double> %i.es, %i.fu          ; 2 uses
  %shift192 = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop193 = fsub <2 x double> %i.fv, %shift192
  %i.fw = extractelement <2 x double> %foldExtExtBinop193, i64 0
  %i.fx = fneg double %i.fw
  %i.fy = extractelement <2 x double> %i.bn, i64 1
  %i.fz = fmul double %i.fy, %i.fx
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.eu, double %i.fz)
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %SinCosSeries.exit
  %.sink = phi double [ %i.dk, %.preheader.preheader ], [ %i.ga, %SinCosSeries.exit ]
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.bm, double %2, double %.sink) ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.bm, ptr %13, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.gc = fmul double %4, %6
  %i.gd = fneg double %7                          ; 2 uses
  %i.ge = fmul double %3, %i.gd
  %i.gf = fmul double %5, %i.ge
  %i.gg = tail call double @llvm.fmuladd.f64(double %8, double %i.gc, double %i.gf)
  %i.gh = fmul double %4, %i.gd
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gb, double %i.gg)
  store double %i.gi, ptr %12, align 8, !tbaa !10
  %i.gj = icmp ne ptr %15, null                   ; 2 uses
  %or.cond7 = or i1 %i.a, %i.gj
  br i1 %or.cond7, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.gk = fmul double %3, %6
  %i.gl = tail call double @llvm.fmuladd.f64(double %4, double %7, double %i.gk) ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !26
  %i.go = fsub double %9, %10
  %i.gp = fmul double %i.go, %i.gn
  %i.gq = fadd double %9, %10
  %i.gr = fmul double %i.gq, %i.gp
  %i.gs = fadd double %5, %8
  %i.gt = fdiv double %i.gr, %i.gs                ; 2 uses
  br i1 %i.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gu = fneg double %i.gb
  %i.gv = fmul double %7, %i.gu
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gt, double %6, double %i.gv)
  %i.gx = fmul double %3, %i.gw
  %i.gy = fdiv double %i.gx, %5
  %i.gz = fadd double %i.gl, %i.gy
  store double %i.gz, ptr %14, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.gj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_0
