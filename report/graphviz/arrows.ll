Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/arrows?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@arrow_length_normal:bb.a
  %.sroa.0.0.copyload = load double, ptr %i.f, align 16, !tbaa !47
  %i.g = fsub double %.sroa.011.0.copyload, %.sroa.0.0.copyload
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fsub double %.sroa.3.0.copyload, %.sroa.412.0.copyload
  %i.j = fmul double %i.d, %i.i
  %i.k = fdiv double %i.j, %i.h
  %i.l = fmul double %2, 5.000000e-01
  %i.m = fmul double %2, %i.d
  %i.n = fdiv double %i.m, %i.k
  %i.o = and i32 %3, 32
  %.not = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not, double %i.l, double %i.n
  %i.q = fsub double %i.d, %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret double %i.q
}

; Function Attrs: nounwind uwtable
define internal { double, double } @arrow_type_crow(ptr noundef %0, double %1, double %2, double %3, double %4, double noundef %5, double noundef %6, i32 noundef %7) #0 {
bb.a:
  %8 = alloca [9 x %struct.pointf_s], align 16    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.a = call fastcc { double, double } @arrow_type_crow0(double %1, double %2, double %3, double %4, double noundef %5, double noundef %6, i32 noundef %7, ptr noundef %8)
  %i.b = and i32 %7, 64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %8, i64 noundef 5, i32 noundef 1) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %7, 128
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 5, i32 noundef 1) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %8, i64 noundef 8, i32 noundef 1) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret { double, double } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal double @arrow_length_crow(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3) #8 {
bb.a:
  %4 = alloca [9 x %struct.pointf_s], align 16    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = fmul double %0, %1
  %i.b = fmul double %i.a, 1.000000e+01
  %i.c = call fastcc { double, double } @arrow_type_crow0(double 0.000000e+00, double 0.000000e+00, double %i.b, double 0.000000e+00, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4)
  %i.d = extractvalue { double, double } %i.c, 0  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.014.0.copyload = load double, ptr %i.e, align 16, !tbaa !47 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !47
  %.sroa.011.0.copyload = load double, ptr %4, align 16, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.0.0.copyload = load double, ptr %i.f, align 16, !tbaa !47
  %i.g = fsub double %.sroa.014.0.copyload, %.sroa.0.0.copyload
  %i.h = fsub double %i.d, %i.g                   ; 2 uses
  %i.i = fsub double %.sroa.014.0.copyload, %.sroa.011.0.copyload
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fsub double %.sroa.3.0.copyload, %.sroa.5.0.copyload
  %i.l = fmul double %i.k, %i.h
  %i.m = fdiv double %i.l, %i.j
  %i.n = fmul double %2, 5.000000e-01
  %i.o = fmul double %2, %i.h
  %i.p = fdiv double %i.o, %i.m
  %i.q = and i32 %3, 32
  %.not = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not, double %i.p, double %i.n
  %i.s = fsub double %i.d, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret double %i.s
}

; Function Attrs: nounwind uwtable
define internal { double, double } @arrow_type_tee(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double noundef %6, i32 noundef %7) #0 {
bb.a:
  %8 = alloca [4 x %struct.pointf_s], align 16    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.a = fadd double %1, %3                       ; 2 uses
  %i.b = fadd double %2, %4                       ; 2 uses
  %i.c = insertelement <2 x double> poison, double %3, i64 0
  %i.d = insertelement <2 x double> %i.c, double %4, i64 1 ; 4 uses
  %i.e = insertelement <2 x double> poison, double %1, i64 0
  %i.f = insertelement <2 x double> %i.e, double %2, i64 1 ; 4 uses
  %i.g = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> splat (double 2.000000e-01), <2 x double> %i.f) ; 2 uses
  %i.h = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> splat (double 6.000000e-01), <2 x double> %i.f) ; 2 uses
  %i.i = tail call double @hypot(double noundef %3, double noundef %4) #11 ; 2 uses
  %i.j = fmul double %6, 5.000000e-01
  %i.k = tail call double @llvm.fmuladd.f64(double %i.i, double -2.000000e-01, double %i.j) ; 2 uses
  %i.l = fcmp ogt double %i.i, 0.000000e+00
  %i.m = fcmp ogt double %i.k, 0.000000e+00
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = fneg <2 x double> %i.d                   ; 3 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = extractelement <2 x double> %i.n, i64 1
  %i.q = tail call double @hypot(double noundef %i.o, double noundef %i.p) #11
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.n, %i.s
  %i.u = insertelement <2 x double> poison, double %i.k, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t             ; 5 uses
  %i.x = fsub <2 x double> %i.f, %i.w
  %i.y = extractelement <2 x double> %i.w, i64 0
  %i.z = extractelement <2 x double> %i.w, i64 1
  %i.aa = fsub <2 x double> %i.g, %i.w
  %i.ab = fsub <2 x double> %i.h, %i.w
  %i.ac = fsub double %i.a, %i.y
  %i.ad = fsub double %i.b, %i.z
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.075.0 = phi double [ %i.ac, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.5.0 = phi double [ %i.ad, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.ae = phi <2 x double> [ %i.x, %bb.b ], [ %i.f, %bb.a ]
  %i.af = phi <2 x double> [ %i.aa, %bb.b ], [ %i.g, %bb.a ] ; 4 uses
  %i.ag = phi <2 x double> [ %i.ab, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.ah = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ai = fsub <2 x double> %i.af, %i.ah
  %i.aj = fadd <2 x double> %i.af, %i.ah
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ak, ptr %8, align 16, !tbaa !47
  %i.al = extractelement <2 x double> %i.af, i64 0 ; 3 uses
  %i.am = fadd double %4, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store double %i.am, ptr %i.an, align 16, !tbaa !51
  %i.ao = extractelement <2 x double> %i.af, i64 1 ; 3 uses
  %i.ap = fsub double %i.ao, %3
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store double %i.ap, ptr %i.aq, align 8, !tbaa !52
  %i.ar = fadd <2 x double> %i.ag, %i.ah
  %i.as = fsub <2 x double> %i.ag, %i.ah
  %i.at = shufflevector <2 x double> %i.ar, <2 x double> %i.as, <2 x i32> <i32 0, i32 3>
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 40
  store <2 x double> %i.at, ptr %i.au, align 16, !tbaa !47
  %i.aw = extractelement <2 x double> %i.ag, i64 0 ; 3 uses
  %i.ax = fsub double %i.aw, %4
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store double %i.ax, ptr %i.ay, align 16, !tbaa !51
  %i.az = extractelement <2 x double> %i.ag, i64 1 ; 3 uses
  %i.ba = fadd double %3, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store double %i.ba, ptr %i.bb, align 8, !tbaa !52
  %i.bc = and i32 %7, 64
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.al, ptr %8, align 16, !tbaa !47
  store double %i.ao, ptr %i.bd, align 8, !tbaa !47
  store double %i.aw, ptr %i.ay, align 16, !tbaa !47
  store double %i.az, ptr %i.bb, align 8, !tbaa !47
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.be = and i32 %7, 128
  %.not76 = icmp eq i32 %i.be, 0
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.al, ptr %i.an, align 16, !tbaa !47
  store double %i.ao, ptr %i.aq, align 8, !tbaa !47
  store double %i.aw, ptr %i.au, align 16, !tbaa !47
  store double %i.az, ptr %i.av, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %8, i64 noundef 4, i32 noundef 1) #11
  store <2 x double> %i.ae, ptr %8, align 16, !tbaa !47
  store double %.sroa.075.0, ptr %i.an, align 16, !tbaa !47
  store double %.sroa.5.0, ptr %i.aq, align 8, !tbaa !47
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %8, i64 noundef 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.075.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal double @arrow_length_tee(double noundef %0, double noundef %1, double noundef %2, i32 %3) #9 {
bb.a:
  %i.a = fmul double %0, %1
  %4 = insertelement <2 x double> poison, double %i.a, i64 0
  %5 = insertelement <2 x double> %4, double %2, i64 1
  %6 = fmul <2 x double> %5, <double 1.000000e+01, double 5.000000e-01> ; 4 uses
  %i.b = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.b, <2 x double> <double -4.000000e-01, double -2.000000e-01>, <2 x double> %7) ; 3 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = fcmp ogt double %9, 0.000000e+00
  %i.c = extractelement <2 x double> %6, i64 0
  %foldExtExtBinop = fadd <2 x double> %6, %8
  %shift = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop16 = fadd <2 x double> %shift, %foldExtExtBinop
  %11 = extractelement <2 x double> %foldExtExtBinop16, i64 0
  %.1 = select i1 %10, double %11, double %i.c
  ret double %.1
}

; Function Attrs: nounwind uwtable
define internal { double, double } @arrow_type_box(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double noundef %6, i32 noundef %7) #0 {
bb.a:
  %8 = alloca [4 x %struct.pointf_s], align 16    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.a = insertelement <2 x double> poison, double %4, i64 0
  %i.b = insertelement <2 x double> %i.a, double %3, i64 1 ; 2 uses
  %i.c = fmul <2 x double> %i.b, <double -4.000000e-01, double 4.000000e-01> ; 4 uses
  %i.d = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.e = insertelement <2 x double> poison, double %1, i64 0
  %i.f = insertelement <2 x double> %i.e, double %2, i64 1 ; 2 uses
  %i.g = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> splat (double 8.000000e-01), <2 x double> %i.f)
  %i.h = fcmp une double %3, 0.000000e+00
  %i.i = fcmp une double %4, 0.000000e+00
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = insertelement <2 x double> poison, double %3, i64 0
  %i.k = insertelement <2 x double> %i.j, double %4, i64 1
  %i.l = fneg <2 x double> %i.k                   ; 3 uses
  %i.m = extractelement <2 x double> %i.l, i64 0
  %i.n = extractelement <2 x double> %i.l, i64 1
  %i.o = tail call double @hypot(double noundef %i.m, double noundef %i.n) #11
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.l, %i.q
  %i.s = fmul double %6, 5.000000e-01
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.w = phi <2 x double> [ %i.v, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = fsub double %1, %i.x                     ; 4 uses
  %i.z = extractelement <2 x double> %i.w, i64 1
  %i.aa = fsub double %2, %i.z                    ; 4 uses
  %i.ab = extractelement <2 x double> %i.c, i64 0 ; 2 uses
  %i.ac = fadd double %i.ab, %i.y
  store double %i.ac, ptr %8, align 16, !tbaa !51
  %i.ad = extractelement <2 x double> %i.c, i64 1 ; 2 uses
  %i.ae = fadd double %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store double %i.ae, ptr %i.af, align 8, !tbaa !52
  %i.ag = fsub double %i.y, %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store double %i.ag, ptr %i.ah, align 16, !tbaa !51
  %i.ai = fsub double %i.aa, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store double %i.ai, ptr %i.aj, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.am = fsub <2 x double> %i.g, %i.w            ; 8 uses
  %i.an = fsub <2 x double> %i.am, %i.c
  store <2 x double> %i.an, ptr %i.ak, align 16, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.ap = fadd <2 x double> %i.c, %i.am
  store <2 x double> %i.ap, ptr %i.ao, align 16, !tbaa !47
  %i.aq = and i32 %7, 64
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 56
  store double %i.y, ptr %8, align 16, !tbaa !47
  store double %i.aa, ptr %i.af, align 8, !tbaa !47
  %i.as = extractelement <2 x double> %i.am, i64 0
  store double %i.as, ptr %i.ao, align 16, !tbaa !47
  %i.at = extractelement <2 x double> %i.am, i64 1
  store double %i.at, ptr %i.ar, align 8, !tbaa !47
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.au = and i32 %7, 128
  %.not62 = icmp eq i32 %i.au, 0
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.y, ptr %i.ah, align 16, !tbaa !47
  store double %i.aa, ptr %i.aj, align 8, !tbaa !47
  %i.av = extractelement <2 x double> %i.am, i64 0
  store double %i.av, ptr %i.ak, align 16, !tbaa !47
  %i.aw = extractelement <2 x double> %i.am, i64 1
  store double %i.aw, ptr %i.al, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.ax = insertelement <2 x double> poison, double %3, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %4, i64 1
  %i.az = fadd <2 x double> %i.f, %i.ay
  %i.ba = lshr i32 %7, 4
  %.lobit = and i32 %i.ba, 1
  %i.bb = xor i32 %.lobit, 1
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %8, i64 noundef 4, i32 noundef %i.bb) #11
  %i.bc = extractelement <2 x double> %i.am, i64 0
  store double %i.bc, ptr %8, align 16, !tbaa !47
  %i.bd = extractelement <2 x double> %i.am, i64 1
  store double %i.bd, ptr %i.af, align 8, !tbaa !47
  %i.be = fsub <2 x double> %i.az, %i.w           ; 3 uses
  store <2 x double> %i.be, ptr %i.ah, align 16, !tbaa !47
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %8, i64 noundef 2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bf, 0
  %i.bg = extractelement <2 x double> %i.be, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bg, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @arrow_length_box(double noundef %0, double noundef %1, double noundef %2, i32 %3) #9 {
bb.a:
  %i.a = fmul double %0, %1
  %i.b = fmul double %2, 5.000000e-01
  %i.c = tail call double @llvm.fmuladd.f64(double %i.a, double 1.000000e+01, double %i.b)
  ret double %i.c
}

; Function Attrs: nounwind uwtable
define internal { double, double } @arrow_type_diamond(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double noundef %6, i32 noundef %7) #0 {
bb.a:
  %8 = alloca %struct.triangle, align 16          ; 4 uses
  %9 = alloca [5 x %struct.pointf_s], align 16    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.a = insertelement <2 x double> poison, double %4, i64 0
  %i.b = insertelement <2 x double> %i.a, double %3, i64 1 ; 2 uses
  %i.c = fdiv <2 x double> %i.b, <double -3.000000e+00, double 3.000000e+00> ; 4 uses
  %i.d = fmul double %3, -5.000000e-01            ; 2 uses
  %i.e = fmul double %4, -5.000000e-01            ; 2 uses
  %i.f = extractelement <2 x double> %i.c, i64 0  ; 2 uses
  %i.g = fsub double %i.d, %i.f
  %i.h = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  %i.i = fsub double %i.e, %i.h
  %i.j = fadd double %i.d, %i.f
  %i.k = fadd double %i.h, %i.e
  %i.l = and i32 %7, 128
  %.not.i = icmp eq i32 %i.l, 0                   ; 3 uses
  %.sroa.026.0.i = select i1 %.not.i, double %i.g, double 0.000000e+00
  %.sroa.528.0.i = select i1 %.not.i, double %i.i, double 0.000000e+00
  %i.m = and i32 %7, 64
  %.not83.i = icmp eq i32 %i.m, 0                 ; 3 uses
  %.sroa.523.0.i = select i1 %.not83.i, double %i.k, double 0.000000e+00
  %.sroa.021.0.i = select i1 %.not83.i, double %i.j, double 0.000000e+00
  %i.n = fadd double %2, %4
  %i.o = fadd double %1, %3
  %i.p = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.q = fmul <2 x double> %i.p, splat (double 5.000000e-01)
  %i.r = fneg double %3
  %i.s = fneg double %4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call fastcc void @miter_shape(ptr dead_on_unwind noalias writable align 8 %8, double %.sroa.026.0.i, double %.sroa.528.0.i, double %i.r, double %i.s, double %.sroa.021.0.i, double %.sroa.523.0.i, double noundef %6)
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %.sroa.781.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = insertelement <2 x double> poison, double %1, i64 0
  %i.w = insertelement <2 x double> %i.v, double %2, i64 1 ; 2 uses
  %i.x = fadd <2 x double> %i.w, %i.q
  %i.y = load <2 x double>, ptr %8, align 16, !tbaa !47
  %i.z = fadd <2 x double> %i.p, %i.y             ; 4 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0 ; 2 uses
  %i.ab = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ac = fsub <2 x double> %i.x, %i.z            ; 2 uses
  %i.ad = fsub double %i.o, %i.aa                 ; 2 uses
  %i.ae = fsub double %i.n, %i.ab                 ; 2 uses
  store double %i.ad, ptr %i.t, align 16, !tbaa !47
  store double %i.ae, ptr %.sroa.781.0..sroa_idx.i, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !50
  %i.af = fadd <2 x double> %i.c, %i.ac
  store <2 x double> %i.af, ptr %i.u, align 16, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ah = fsub <2 x double> %i.w, %i.z
  store <2 x double> %i.ah, ptr %i.ag, align 16, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.aj = fsub <2 x double> %i.ac, %i.c
  store <2 x double> %i.aj, ptr %i.ai, align 16, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.ak = lshr i32 %7, 4
  %.lobit = and i32 %i.ak, 1
  %i.al = xor i32 %.lobit, 1                      ; 3 uses
  br i1 %.not83.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.ag, i64 noundef 3, i32 noundef %i.al) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 3, i32 noundef %i.al) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 4, i32 noundef %i.al) #11
  br label %bb.f
end_hunk_0
