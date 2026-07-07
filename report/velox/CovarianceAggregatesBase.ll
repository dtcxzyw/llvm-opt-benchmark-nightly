inline.NumInlined: 101
inline.NumDeleted: 37
begin_hunk_0_@_ZN8facebook5velox9functions9aggregate16CovarAccumulator6updateEdd
define void @_ZN8facebook5velox9functions9aggregate16CovarAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16
  %i.b = add nsw i64 %i.a, 1                      ; 2 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = sitofp i64 %i.b to double
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !22 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1
  %i.h = fsub <2 x double> %i.g, %i.e             ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.c, align 8, !tbaa !22
  %i.m = extractelement <2 x double> %i.l, i64 1
  %i.n = fsub double %2, %i.m
  %i.o = extractelement <2 x double> %i.h, i64 0
  %i.p = fmul double %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !19
  %i.s = fadd double %i.r, %i.p
  store double %i.s, ptr %i.q, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %0, align 8, !tbaa !16
  store double %2, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.f, align 8, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.b, %1                     ; 2 uses
  %i.h = sitofp i64 %i.b to double
  %i.i = sitofp i64 %1 to double                  ; 2 uses
  %i.j = sitofp i64 %i.g to double                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !19
  %i.m = load <2 x double>, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.n = insertelement <2 x double> poison, double %2, i64 0
  %i.o = insertelement <2 x double> %i.n, double %3, i64 1
  %i.p = fsub <2 x double> %i.o, %i.m             ; 3 uses
  %shift = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.p, %shift
  %i.q = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.r = fmul double %i.q, %i.h
  %i.s = fmul double %i.r, %i.i
  %i.t = fdiv double %i.s, %i.j
  %i.u = fadd double %4, %i.t
  %i.v = fadd double %i.l, %i.u
  store double %i.v, ptr %i.k, align 8, !tbaa !19
  %i.w = insertelement <2 x double> poison, double %i.i, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.p, %i.x
  %i.z = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.m, %i.ab
  store <2 x double> %i.ac, ptr %i.d, align 8, !tbaa !22
  store i64 %i.g, ptr %0, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate15RegrAccumulator3m2XEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !23
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate15RegrAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !16
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !16
  %i.d = sitofp i64 %i.c to double
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.a, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = fsub <2 x double> %i.g, %i.l
  %i.o = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = load <2 x double>, ptr %i.m, align 8, !tbaa !22
  %i.s = fadd <2 x double> %i.r, %i.q
  store <2 x double> %i.s, ptr %i.m, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN8facebook5velox9functions9aggregate15RegrAccumulator5mergeEldddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !16
  store double %2, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.g, align 8, !tbaa !19
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.h = sitofp i64 %i.b to double                ; 2 uses
  %i.i = add nsw i64 %i.b, %1                     ; 2 uses
  %i.j = sitofp i64 %i.i to double                ; 2 uses
  %i.k = fdiv double %i.h, %i.j
  %i.l = sitofp i64 %1 to double
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load double, ptr %i.m, align 8, !tbaa !20 ; 3 uses
  %i.q = fsub double %i.p, %2
  %i.r = tail call noundef double @pow(double noundef %i.q, double noundef 2.000000e+00) #12, !tbaa !3
  %i.s = fsub double %2, %i.p                     ; 2 uses
  %i.t = load double, ptr %i.n, align 8, !tbaa !21 ; 2 uses
  %i.u = fsub double %3, %i.t                     ; 2 uses
  %i.v = fmul double %i.s, %i.u
  %i.w = fmul double %i.v, %i.h
  %i.x = load <2 x double>, ptr %i.o, align 8, !tbaa !22
  %i.y = insertelement <4 x double> poison, double %i.s, i64 0
  %i.z = insertelement <4 x double> %i.y, double %i.u, i64 1
  %i.aa = insertelement <4 x double> %i.z, double %i.w, i64 2
  %i.ab = insertelement <4 x double> %i.aa, double %i.k, i64 3
  %i.ac = insertelement <4 x double> poison, double %i.l, i64 0
  %i.ad = shufflevector <4 x double> %i.ac, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ae = fmul <4 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = insertelement <4 x double> poison, double %i.j, i64 0
  %i.ag = insertelement <4 x double> %i.af, double %i.r, i64 1
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ai = fdiv <4 x double> %i.ae, %i.ah
  %i.aj = fmul <4 x double> %i.ae, %i.ah
  %i.ak = shufflevector <4 x double> %i.ai, <4 x double> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.al = insertelement <4 x double> <double -0.000000e+00, double -0.000000e+00, double poison, double poison>, double %4, i64 2
  %i.am = insertelement <4 x double> %i.al, double %5, i64 3
  %i.an = fadd <4 x double> %i.am, %i.ak
  %i.ao = insertelement <4 x double> poison, double %i.p, i64 0
  %i.ap = insertelement <4 x double> %i.ao, double %i.t, i64 1
  %i.aq = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x double> %i.ap, <4 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.as = fadd <4 x double> %i.ar, %i.an
  store <4 x double> %i.as, ptr %i.m, align 8, !tbaa !22
  store i64 %i.i, ptr %0, align 8, !tbaa !16
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK8facebook5velox9functions9aggregate23ExtendedRegrAccumulator3m2YEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load double, ptr %i.a, align 8, !tbaa !25
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate23ExtendedRegrAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !16
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !16
  %i.d = sitofp i64 %i.c to double
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 3 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.a, align 8, !tbaa !22
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %4 = fsub <2 x double> %i.g, %i.l               ; 2 uses
  %5 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %7 = fmul <2 x double> %5, %6
  %8 = load <2 x double>, ptr %3, align 8, !tbaa !22
  %9 = fadd <2 x double> %8, %7
  store <2 x double> %9, ptr %3, align 8, !tbaa !22
  %foldExtExtBinop = fmul <2 x double> %i.h, %4
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %12 = load double, ptr %11, align 8, !tbaa !25
  %13 = fadd double %10, %12
  store double %13, ptr %11, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN8facebook5velox9functions9aggregate23ExtendedRegrAccumulator5mergeElddddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !16
  store double %2, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.h, align 8, !tbaa !19
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.i = sitofp i64 %i.b to double                ; 2 uses
  %i.j = add nsw i64 %i.b, %1                     ; 2 uses
  %i.k = sitofp i64 %i.j to double                ; 2 uses
  %i.l = fdiv double %i.i, %i.k                   ; 2 uses
  %i.m = sitofp i64 %1 to double                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load double, ptr %i.n, align 8, !tbaa !20 ; 3 uses
  %i.s = fsub double %i.r, %2
  %i.t = tail call noundef double @pow(double noundef %i.s, double noundef 2.000000e+00) #12, !tbaa !3
  %i.u = load double, ptr %i.o, align 8, !tbaa !21 ; 3 uses
  %i.v = fsub double %i.u, %3
  %i.w = tail call noundef double @pow(double noundef %i.v, double noundef 2.000000e+00) #12, !tbaa !3
  %i.x = fsub double %2, %i.r                     ; 2 uses
  %i.y = fsub double %3, %i.u                     ; 2 uses
  %i.z = fmul double %i.x, %i.y
  %i.aa = fmul double %i.z, %i.i
  %i.ab = fmul double %i.l, %i.m
  %i.ac = insertelement <4 x double> poison, double %i.x, i64 0
  %i.ad = insertelement <4 x double> %i.ac, double %i.y, i64 1
  %i.ae = insertelement <4 x double> %i.ad, double %i.aa, i64 2
  %i.af = insertelement <4 x double> %i.ae, double %i.l, i64 3
  %i.ag = insertelement <4 x double> poison, double %i.m, i64 0
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ai = fmul <4 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = fmul double %i.ab, %i.w
  %i.ak = fadd double %6, %i.aj
  %i.al = load double, ptr %i.p, align 8, !tbaa !25
  %i.am = fadd double %i.al, %i.ak
  store double %i.am, ptr %i.p, align 8, !tbaa !25
  %i.an = load <2 x double>, ptr %i.q, align 8, !tbaa !22
  %i.ao = insertelement <4 x double> poison, double %i.k, i64 0
  %i.ap = insertelement <4 x double> %i.ao, double %i.t, i64 1
  %i.aq = shufflevector <4 x double> %i.ap, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ar = fdiv <4 x double> %i.ai, %i.aq
  %i.as = fmul <4 x double> %i.ai, %i.aq
  %i.at = shufflevector <4 x double> %i.ar, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.au = insertelement <4 x double> <double -0.000000e+00, double -0.000000e+00, double poison, double poison>, double %4, i64 2
  %i.av = insertelement <4 x double> %i.au, double %5, i64 3
  %i.aw = fadd <4 x double> %i.av, %i.at
  %i.ax = insertelement <4 x double> poison, double %i.r, i64 0
  %i.ay = insertelement <4 x double> %i.ax, double %i.u, i64 1
  %i.az = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bb = fadd <4 x double> %i.ba, %i.aw
  store <4 x double> %i.bb, ptr %i.n, align 8, !tbaa !22
  store i64 %i.j, ptr %0, align 8, !tbaa !16
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions9aggregate22CovarIntermediateInput9mergeIntoERNS2_16CovarAccumulatorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef %2) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.g, i32 noundef %2) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef double %i.p(ptr noundef nonnull align 8 dereferenceable(136) %i.m, i32 noundef %2) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef double %i.v(ptr noundef nonnull align 8 dereferenceable(136) %i.s, i32 noundef %2) ; 2 uses
  %i.x = icmp eq i64 %i.e, 0
  br i1 %i.x, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.e, ptr %1, align 8, !tbaa !16
  store double %i.k, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.q, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.w, ptr %i.ac, align 8, !tbaa !19
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = add nsw i64 %i.y, %i.e                  ; 2 uses
  %i.ae = sitofp i64 %i.y to double
  %i.af = sitofp i64 %i.e to double               ; 2 uses
  %i.ag = sitofp i64 %i.ad to double              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !19
  %i.aj = load <2 x double>, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.k, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.q, i64 1
  %i.am = fsub <2 x double> %i.al, %i.aj          ; 3 uses
  %shift = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.am, %shift
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ao = fmul double %i.an, %i.ae
  %i.ap = fmul double %i.ao, %i.af
  %i.aq = fdiv double %i.ap, %i.ag
  %i.ar = fadd double %i.w, %i.aq
  %i.as = fadd double %i.ai, %i.ar
  store double %i.as, ptr %i.ah, align 8, !tbaa !19
  %i.at = insertelement <2 x double> poison, double %i.af, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %i.am, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x double> %i.av, %i.ax
  %i.az = fadd <2 x double> %i.aj, %i.ay
  store <2 x double> %i.az, ptr %i.aa, align 8, !tbaa !22
  store i64 %i.ad, ptr %1, align 8, !tbaa !16
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox9functions9aggregate23CovarIntermediateResult3setEiRKNS2_16CovarAccumulatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !16
  %i.b = load ptr, ptr %0, align 8, !tbaa !36
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  store i64 %i.a, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c
  store double %i.f, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.c
  store double %i.k, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.c
  store double %i.p, ptr %i.s, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate15CorrAccumulator6updateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !16
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !16
  %i.d = sitofp i64 %i.c to double
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
  %i.h = fsub <2 x double> %i.g, %i.e             ; 3 uses
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %i.a, align 8, !tbaa !22
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %4 = fsub <2 x double> %i.g, %i.l               ; 2 uses
  %5 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %7 = fmul <2 x double> %5, %6
  %8 = load <2 x double>, ptr %3, align 8, !tbaa !22
  %9 = fadd <2 x double> %8, %7
  store <2 x double> %9, ptr %3, align 8, !tbaa !22
  %foldExtExtBinop = fmul <2 x double> %i.h, %4
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %12 = load double, ptr %11, align 8, !tbaa !44
  %13 = fadd double %10, %12
  store double %13, ptr %11, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !16
  store double %2, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.h, align 8, !tbaa !19
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

bb.d:                                             ; preds = %bb.b
  %i.i = sitofp i64 %i.b to double                ; 2 uses
  %i.j = add nsw i64 %i.b, %1                     ; 2 uses
  %i.k = sitofp i64 %i.j to double                ; 2 uses
  %i.l = fdiv double %i.i, %i.k                   ; 2 uses
  %i.m = sitofp i64 %1 to double                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load double, ptr %i.n, align 8, !tbaa !20 ; 3 uses
  %i.s = fsub double %i.r, %2
  %i.t = tail call noundef double @pow(double noundef %i.s, double noundef 2.000000e+00) #12, !tbaa !3
  %i.u = load double, ptr %i.o, align 8, !tbaa !21 ; 3 uses
  %i.v = fsub double %i.u, %3
  %i.w = tail call noundef double @pow(double noundef %i.v, double noundef 2.000000e+00) #12, !tbaa !3
  %i.x = fsub double %2, %i.r                     ; 2 uses
  %i.y = fsub double %3, %i.u                     ; 2 uses
  %i.z = fmul double %i.x, %i.y
  %i.aa = fmul double %i.z, %i.i
  %i.ab = fmul double %i.l, %i.m
  %i.ac = insertelement <4 x double> poison, double %i.x, i64 0
  %i.ad = insertelement <4 x double> %i.ac, double %i.y, i64 1
  %i.ae = insertelement <4 x double> %i.ad, double %i.aa, i64 2
  %i.af = insertelement <4 x double> %i.ae, double %i.l, i64 3
  %i.ag = insertelement <4 x double> poison, double %i.m, i64 0
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ai = fmul <4 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = fmul double %i.ab, %i.w
  %i.ak = fadd double %6, %i.aj
  %i.al = load double, ptr %i.p, align 8, !tbaa !44
  %i.am = fadd double %i.al, %i.ak
  store double %i.am, ptr %i.p, align 8, !tbaa !44
  %i.an = load <2 x double>, ptr %i.q, align 8, !tbaa !22
  %i.ao = insertelement <4 x double> poison, double %i.k, i64 0
  %i.ap = insertelement <4 x double> %i.ao, double %i.t, i64 1
  %i.aq = shufflevector <4 x double> %i.ap, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ar = fdiv <4 x double> %i.ai, %i.aq
  %i.as = fmul <4 x double> %i.ai, %i.aq
  %i.at = shufflevector <4 x double> %i.ar, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.au = insertelement <4 x double> <double -0.000000e+00, double -0.000000e+00, double poison, double poison>, double %4, i64 2
  %i.av = insertelement <4 x double> %i.au, double %5, i64 3
  %i.aw = fadd <4 x double> %i.av, %i.at
  %i.ax = insertelement <4 x double> poison, double %i.r, i64 0
  %i.ay = insertelement <4 x double> %i.ax, double %i.u, i64 1
  %i.az = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bb = fadd <4 x double> %i.ba, %i.aw
  store <4 x double> %i.bb, ptr %i.n, align 8, !tbaa !22
  store i64 %i.j, ptr %0, align 8, !tbaa !16
  br label %_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit

_ZN8facebook5velox9functions9aggregate16CovarAccumulator5mergeElddd.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions9aggregate21CorrIntermediateInput9mergeIntoERNS2_15CorrAccumulatorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef %2) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(136) %i.g, i32 noundef %2) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef double %i.p(ptr noundef nonnull align 8 dereferenceable(136) %i.m, i32 noundef %2) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef double %i.v(ptr noundef nonnull align 8 dereferenceable(136) %i.s, i32 noundef %2) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 384
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef double %i.ab(ptr noundef nonnull align 8 dereferenceable(136) %i.y, i32 noundef %2) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 384
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef double %i.ah(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, i32 noundef %2) ; 2 uses
  %i.aj = icmp eq i64 %i.e, 0
  br i1 %i.aj, label %_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = load i64, ptr %1, align 8, !tbaa !16    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ac, ptr %i.am, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.ai, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %1, align 8, !tbaa !16
  store double %i.k, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.q, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.w, ptr %i.aq, align 8, !tbaa !19
  br label %_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.ar = sitofp i64 %i.ak to double              ; 2 uses
  %i.as = add nsw i64 %i.ak, %i.e                 ; 2 uses
  %i.at = sitofp i64 %i.as to double              ; 3 uses
  %i.au = sitofp i64 %i.e to double               ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %i.ax = fsub double %i.aw, %i.k
  %i.ay = tail call noundef double @pow(double noundef %i.ax, double noundef 2.000000e+00) #12, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bb = fsub double %i.ba, %i.q
  %i.bc = tail call noundef double @pow(double noundef %i.bb, double noundef 2.000000e+00) #12, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !44
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %4 = fdiv double %i.ar, %i.at
  %5 = fmul double %4, %i.au                      ; 2 uses
  %i.bf = fmul double %5, %i.bc
  %6 = fadd double %i.ai, %i.bf
  %7 = fadd double %i.be, %6
  store double %7, ptr %i.bd, align 8, !tbaa !44
  %i.bg = fmul double %5, %i.ay
  %8 = insertelement <2 x double> poison, double %i.w, i64 0
  %9 = insertelement <2 x double> %8, double %i.ac, i64 1
  %10 = load <2 x double>, ptr %3, align 8, !tbaa !22
  %11 = insertelement <2 x double> poison, double %i.k, i64 0
  %12 = insertelement <2 x double> %11, double %i.q, i64 1
  %13 = insertelement <2 x double> poison, double %i.aw, i64 0
  %14 = insertelement <2 x double> %13, double %i.ba, i64 1 ; 2 uses
  %15 = fsub <2 x double> %12, %14                ; 3 uses
  %shift = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %15, %shift
  %16 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %17 = fmul double %16, %i.ar
  %i.bh = fmul double %17, %i.au
  %i.bi = fdiv double %i.bh, %i.at
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bg, i64 1
  %18 = fadd <2 x double> %9, %i.bk
  %19 = fadd <2 x double> %10, %18
  store <2 x double> %19, ptr %3, align 8, !tbaa !22
  %20 = insertelement <2 x double> poison, double %i.au, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x double> %15, %21
  %23 = insertelement <2 x double> poison, double %i.at, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fdiv <2 x double> %22, %24
  %26 = fadd <2 x double> %14, %25                ; 2 uses
  %27 = extractelement <2 x double> %26, i64 0
  store double %27, ptr %i.av, align 8, !tbaa !20
  %28 = extractelement <2 x double> %26, i64 1
  store double %28, ptr %i.az, align 8, !tbaa !21
  store i64 %i.as, ptr %1, align 8, !tbaa !16
  br label %_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd.exit

_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox9functions9aggregate22CorrIntermediateResult3setEiRKNS2_15CorrAccumulatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !16
  %i.b = load ptr, ptr %0, align 8, !tbaa !36
  %i.c = sext i32 %1 to i64                       ; 6 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  store i64 %i.a, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c
  store double %i.f, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.c
  store double %i.k, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.c
  store double %i.p, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.c
  store double %i.u, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.c
  store double %i.z, ptr %i.ac, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #6 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #6 align 2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !13, i64 8}
!16 = !{!17, !13, i64 0}
!17 = !{!"_ZTSN8facebook5velox9functions9aggregate16CovarAccumulatorE", !13, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!18 = !{!"double", !5, i64 0}
!19 = !{!17, !18, i64 24}
!20 = !{!17, !18, i64 8}
!21 = !{!17, !18, i64 16}
!22 = !{!18, !18, i64 0}
!23 = !{!24, !18, i64 32}
!24 = !{!"_ZTSN8facebook5velox9functions9aggregate15RegrAccumulatorE", !17, i64 0, !18, i64 32}
!25 = !{!26, !18, i64 40}
!26 = !{!"_ZTSN8facebook5velox9functions9aggregate23ExtendedRegrAccumulatorE", !24, i64 0, !18, i64 40}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSN8facebook5velox9functions9aggregate22CovarIntermediateInputE", !29, i64 0, !30, i64 8, !30, i64 16, !30, i64 24}
!29 = !{!"p1 _ZTSN8facebook5velox12SimpleVectorIlEE", !10, i64 0}
!30 = !{!"p1 _ZTSN8facebook5velox12SimpleVectorIdEE", !10, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !6, i64 0}
!33 = !{!28, !30, i64 8}
!34 = !{!28, !30, i64 16}
!35 = !{!28, !30, i64 24}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN8facebook5velox9functions9aggregate23CovarIntermediateResultE", !38, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!38 = !{!"p1 long", !10, i64 0}
!39 = !{!"p1 double", !10, i64 0}
!40 = !{!13, !13, i64 0}
!41 = !{!37, !39, i64 8}
!42 = !{!37, !39, i64 16}
!43 = !{!37, !39, i64 24}
!44 = !{!45, !18, i64 40}
!45 = !{!"_ZTSN8facebook5velox9functions9aggregate15CorrAccumulatorE", !17, i64 0, !18, i64 32, !18, i64 40}
!46 = !{!45, !18, i64 32}
!47 = !{!48, !30, i64 32}
!48 = !{!"_ZTSN8facebook5velox9functions9aggregate21CorrIntermediateInputE", !28, i64 0, !30, i64 32, !30, i64 40}
!49 = !{!48, !30, i64 40}
!50 = !{!51, !39, i64 32}
!51 = !{!"_ZTSN8facebook5velox9functions9aggregate22CorrIntermediateResultE", !37, i64 0, !39, i64 32, !39, i64 40}
!52 = !{!51, !39, i64 40}
end_hunk_0
