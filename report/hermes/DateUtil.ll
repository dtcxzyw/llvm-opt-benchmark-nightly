inline.NumInlined: 605
inline.NumDeleted: 364
begin_hunk_0_@_ZN6hermes2vm8makeTimeEdddd:bb.a
  %i.l = tail call double @llvm.trunc.f64(double %3)
  %i.m = fmul nnan double %i.j, 6.000000e+04
  %i.n = tail call double @llvm.fmuladd.f64(double %i.i, double 3.600000e+06, double %i.m)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.k, double 1.000000e+03, double %i.n)
  %i.p = fadd double %i.l, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.p, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm7makeDayEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp one double %i.c, +inf
  %or.cond = and i1 %i.b, %i.d
  %i.e = tail call double @llvm.fabs.f64(double %2)
  %i.f = fcmp one double %i.e, +inf
  %or.cond18 = and i1 %or.cond, %i.f
  br i1 %or.cond18, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.trunc.f64(double %0)
  %i.h = tail call double @llvm.trunc.f64(double %1) ; 2 uses
  %i.i = tail call double @llvm.trunc.f64(double %2)
  %i.j = fdiv double %i.h, 1.200000e+01
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fadd double %i.g, %i.k                   ; 7 uses
  %i.m = frem double %i.h, 1.200000e+01           ; 3 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = fadd double %i.m, 1.200000e+01
  %i.p = select i1 %i.n, double %i.o, double %i.m
  %i.q = tail call noundef double @fmod(double noundef %i.l, double noundef 4.000000e+00) #19, !tbaa !3
  %i.r = fcmp une double %i.q, 0.000000e+00
  br i1 %i.r, label %_ZN6hermes2vmL10isLeapYearEd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef double @fmod(double noundef %i.l, double noundef 1.000000e+02) #19, !tbaa !3
  %i.t = fcmp une double %i.s, 0.000000e+00
  br i1 %i.t, label %_ZN6hermes2vmL10isLeapYearEd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef double @fmod(double noundef %i.l, double noundef 4.000000e+02) #19, !tbaa !3
  %i.v = fcmp oeq double %i.u, 0.000000e+00
  %i.w = select i1 %i.v, ptr @_ZZN6hermes2vmL12dayFromMonthEjbE13leapYearTable, ptr @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable
  br label %_ZN6hermes2vmL10isLeapYearEd.exit

_ZN6hermes2vmL10isLeapYearEd.exit:                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ @_ZZN6hermes2vmL12dayFromMonthEjbE13leapYearTable, %bb.c ], [ @_ZZN6hermes2vmL12dayFromMonthEjbE13standardTable, %bb.b ], [ %i.w, %bb.d ]
  %i.x = fadd double %i.l, -1.970000e+03
  %i.y = fadd double %i.l, -1.969000e+03
  %i.z = fmul double %i.y, 2.500000e-01
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double 3.650000e+02, double %i.aa)
  %i.ac = fadd double %i.l, -1.901000e+03
  %i.ad = fdiv double %i.ac, 1.000000e+02
  %i.ae = tail call double @llvm.floor.f64(double %i.ad)
  %i.af = fsub double %i.ab, %i.ae
  %i.ag = fadd double %i.l, -1.601000e+03
  %i.ah = fdiv double %i.ag, 4.000000e+02
  %i.ai = tail call double @llvm.floor.f64(double %i.ah)
  %i.aj = fadd double %i.ai, %i.af
  %i.ak = fmul double %i.aj, 8.640000e+07
  %i.al = fdiv double %i.ak, 8.640000e+07
  %i.am = tail call double @llvm.floor.f64(double %i.al)
  %i.an = fptoui double %i.p to i32
  %i.ao = zext i32 %i.an to i64
  %.in.i = getelementptr inbounds nuw [2 x i8], ptr %.0.i, i64 %i.ao
  %i.ap = load i16, ptr %.in.i, align 2, !tbaa !10
  %i.aq = uitofp i16 %i.ap to double
  %i.ar = fadd double %i.am, %i.aq
  %i.as = fadd double %i.i, %i.ar
  %i.at = fadd double %i.as, -1.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEd.exit
  %.0 = phi double [ %i.at, %_ZN6hermes2vmL10isLeapYearEd.exit ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm8makeDateEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp one double %i.c, +inf
  %or.cond = and i1 %i.b, %i.d
  %i.e = fmul double %0, 8.640000e+07
  %i.f = fadd double %i.e, %1
  %.0 = select i1 %or.cond, double %i.f, double +qnan
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm8timeClipEd(double noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = fcmp ogt double %i.a, 8.640000e+15
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.trunc.f64(double %0)
  %i.e = fadd double %i.d, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.e, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15dateToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  %5 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0)
  %i.e = fptosi double %i.d to i32                ; 3 uses
  %i.f = call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.g = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.h = call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0)
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %or.cond = icmp ugt i32 %i.e, 9999
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str, ptr %i.j, align 8, !tbaa !26, !alias.scope !28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !28
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.i, ptr %i.k, align 8, !tbaa !31, !alias.scope !28
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.g, ptr %i.l, align 4, !tbaa !33, !alias.scope !28
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.e, ptr %i.m, align 8, !tbaa !35, !alias.scope !28
  %i.n = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.1, ptr %i.o, align 8, !tbaa !26, !alias.scope !37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %5, align 8, !tbaa !22, !alias.scope !37
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.i, ptr %i.p, align 8, !tbaa !31, !alias.scope !37
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.g, ptr %i.q, align 4, !tbaa !33, !alias.scope !37
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.e, ptr %i.r, align 8, !tbaa !35, !alias.scope !37
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %5) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm15timeToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 10 uses
  %4 = alloca %"class.llvh::format_object.5", align 8 ; 6 uses
  %5 = alloca %"class.llvh::format_object.12", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %6 = insertelement <2 x double> poison, double %0, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fdiv <2 x double> %7, <double 3.600000e+06, double 6.000000e+04>
  %9 = call <2 x double> @llvm.floor.v2f64(<2 x double> %8) ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %11 = call double @fmod(double noundef %10, double noundef 2.400000e+01) #19, !tbaa !3
  %12 = extractelement <2 x double> %9, i64 1
  %i.d = call double @fmod(double noundef %12, double noundef 6.000000e+01) #19, !tbaa !3
  %i.e = fdiv double %0, 1.000000e+03
  %i.f = call double @llvm.floor.f64(double %i.e)
  %i.g = call double @fmod(double noundef %i.f, double noundef 6.000000e+01) #19, !tbaa !3
  %i.h = call double @fmod(double noundef %0, double noundef 1.000000e+03) #19, !tbaa !3
  %i.i = insertelement <4 x double> poison, double %i.h, i64 0
  %i.j = insertelement <4 x double> %i.i, double %i.g, i64 1
  %i.k = insertelement <4 x double> %i.j, double %i.d, i64 2
  %i.l = insertelement <4 x double> %i.k, double %11, i64 3 ; 3 uses
  %i.m = fcmp olt <4 x double> %i.l, zeroinitializer
  %i.n = fadd <4 x double> %i.l, <double 1.000000e+03, double 6.000000e+01, double 6.000000e+01, double 2.400000e+01>
  %i.o = select <4 x i1> %i.m, <4 x double> %i.n, <4 x double> %i.l
  %i.p = fptosi <4 x double> %i.o to <4 x i32>    ; 2 uses
  %i.q = fcmp oeq double %1, 0.000000e+00
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.2, ptr %i.r, align 8, !tbaa !26, !alias.scope !40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %i.p, ptr %i.s, align 8, !tbaa !3, !alias.scope !40
  %i.t = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = fcmp oge double %1, 0.000000e+00
  %i.v = select i1 %i.u, i8 43, i8 45
  %i.w = call noundef double @llvm.fabs.f64(double %1)
  %13 = insertelement <2 x double> poison, double %i.w, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x double> %14, <double 3.600000e+06, double 6.000000e+04>
  %16 = call <2 x double> @llvm.floor.v2f64(<2 x double> %15) ; 2 uses
  %17 = extractelement <2 x double> %16, i64 0
  %i.x = call double @fmod(double noundef %17, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.y = fcmp olt double %i.x, 0.000000e+00
  %i.z = fadd double %i.x, 2.400000e+01
  %i.aa = select i1 %i.y, double %i.z, double %i.x
  %i.ab = fptosi double %i.aa to i32
  %18 = extractelement <2 x double> %16, i64 1
  %i.ac = call double @fmod(double noundef %18, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  %i.ae = fadd double %i.ac, 6.000000e+01
  %i.af = select i1 %i.ad, double %i.ae, double %i.ac
  %i.ag = fptosi double %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.3, ptr %i.ah, align 8, !tbaa !26, !alias.scope !43
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiiciiEEE, i64 16), ptr %5, align 8, !tbaa !22, !alias.scope !43
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ag, ptr %i.ai, align 8, !tbaa !46, !alias.scope !43
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.ab, ptr %i.aj, align 4, !tbaa !48, !alias.scope !43
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.v, ptr %i.ak, align 8, !tbaa !50, !alias.scope !43
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <4 x i32> %i.p, ptr %i.al, align 4, !tbaa !3, !alias.scope !43
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %5) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm19datetimeToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN6hermes2vm15dateToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double poison, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %.not.i.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i.i, label %_ZN6hermes2vmL19datetimeToISOStringEddRN4llvh15SmallVectorImplIcEEc.exit, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 1) #19
  %.pre.i.i = load i32, ptr %i.a, align 8, !tbaa !52
  br label %_ZN6hermes2vmL19datetimeToISOStringEddRN4llvh15SmallVectorImplIcEEc.exit

_ZN6hermes2vmL19datetimeToISOStringEddRN4llvh15SmallVectorImplIcEEc.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %2, align 8, !tbaa !56
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 84, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  tail call void @_ZN6hermes2vm15timeToISOStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm22datetimeToLocaleStringEdRN4llvh15SmallVectorImplIDsEE(double noundef %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN6hermes16platform_unicode10dateFormatEdbbRN4llvh15SmallVectorImplIDsEE(double noundef %0, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 1 %1) #19
  ret void
}

declare void @_ZN6hermes16platform_unicode10dateFormatEdbbRN4llvh15SmallVectorImplIDsEE(double noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 1) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18dateToLocaleStringEdRN4llvh15SmallVectorImplIDsEE(double noundef %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN6hermes16platform_unicode10dateFormatEdbbRN4llvh15SmallVectorImplIDsEE(double noundef %0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 1 %1) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18timeToLocaleStringEdRN4llvh15SmallVectorImplIDsEE(double noundef %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN6hermes16platform_unicode10dateFormatEdbbRN4llvh15SmallVectorImplIDsEE(double noundef %0, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 1 %1) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm10dateStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object.26", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0)
  %i.e = call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.f = call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0)
  %i.g = fdiv double %0, 8.640000e+07
  %i.h = call noundef double @llvm.floor.f64(double %i.g)
  %i.i = fadd double %i.h, 4.000000e+00
  %i.j = call double @fmod(double noundef %i.i, double noundef 7.000000e+00) #19, !tbaa !3 ; 3 uses
  %i.k = fcmp olt double %i.j, 0.000000e+00
  %i.l = fadd double %i.j, 7.000000e+00
  %i.m = select i1 %i.k, double %i.l, double %i.j
  %i.n = fptosi double %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr @_ZN6hermes2vmL12weekdayNamesE, i64 %i.o
  %i.q = zext nneg i32 %i.e to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vmL10monthNamesE, i64 %i.q
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.4, ptr %i.s, align 8, !tbaa !26, !alias.scope !57
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJPKcS2_iiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !57
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.f, i64 1
  %i.w = fptosi <2 x double> %i.v to <2 x i32>
  store <2 x i32> %i.w, ptr %i.t, align 8, !tbaa !3, !alias.scope !57
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !60, !noalias !57
  store ptr %i.y, ptr %i.x, align 8, !tbaa !61, !alias.scope !57
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !60, !noalias !57
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !63, !alias.scope !57
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm10timeStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %5 = insertelement <2 x double> poison, double %0, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %6, <double 3.600000e+06, double 6.000000e+04>
  %8 = call <2 x double> @llvm.floor.v2f64(<2 x double> %7) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %i.d = call double @fmod(double noundef %9, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  %i.f = fadd double %i.d, 2.400000e+01
  %i.g = select i1 %i.e, double %i.f, double %i.d
  %i.h = fptosi double %i.g to i32
  %10 = extractelement <2 x double> %8, i64 1
  %i.i = call double @fmod(double noundef %10, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.j = fcmp olt double %i.i, 0.000000e+00
  %i.k = fadd double %i.i, 6.000000e+01
  %i.l = select i1 %i.j, double %i.k, double %i.i
  %i.m = fptosi double %i.l to i32
  %i.n = fdiv double %0, 1.000000e+03
  %i.o = call double @llvm.floor.f64(double %i.n)
  %i.p = call double @fmod(double noundef %i.o, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.q = fcmp olt double %i.p, 0.000000e+00
  %i.r = fadd double %i.p, 6.000000e+01
  %i.s = select i1 %i.q, double %i.r, double %i.p
  %i.t = fptosi double %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.5, ptr %i.u, align 8, !tbaa !26, !alias.scope !65
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !65
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.t, ptr %i.v, align 8, !tbaa !31, !alias.scope !65
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.m, ptr %i.w, align 4, !tbaa !33, !alias.scope !65
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.h, ptr %i.x, align 8, !tbaa !35, !alias.scope !65
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm14timeZoneStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object.32", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = fcmp oge double %1, 0.000000e+00
  %i.e = select i1 %i.d, i8 43, i8 45
  %i.f = call noundef double @llvm.fabs.f64(double %1)
  %5 = insertelement <2 x double> poison, double %i.f, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %6, <double 6.000000e+04, double 3.600000e+06>
  %8 = call <2 x double> @llvm.floor.v2f64(<2 x double> %7) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %i.g = call double @fmod(double noundef %9, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.h = fcmp olt double %i.g, 0.000000e+00
  %i.i = fadd double %i.g, 6.000000e+01
  %i.j = select i1 %i.h, double %i.i, double %i.g
  %i.k = fptosi double %i.j to i32
  %10 = extractelement <2 x double> %8, i64 1
  %i.l = call double @fmod(double noundef %10, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  %i.n = fadd double %i.l, 2.400000e+01
  %i.o = select i1 %i.m, double %i.n, double %i.l
  %i.p = fptosi double %i.o to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.q, align 8, !tbaa !26, !alias.scope !68
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !68
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.k, ptr %i.r, align 8, !tbaa !31, !alias.scope !68
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.p, ptr %i.s, align 4, !tbaa !33, !alias.scope !68
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.e, ptr %i.t, align 8, !tbaa !71, !alias.scope !68
  %i.u = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm14dateTimeStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object.32", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %6 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  %7 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %8 = alloca %"class.llvh::format_object.26", align 8 ; 8 uses
  %9 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %9, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %2, ptr %i.f, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.g = call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0)
  %i.h = call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.i = call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0)
  %i.j = fdiv double %0, 8.640000e+07
  %i.k = call noundef double @llvm.floor.f64(double %i.j)
  %i.l = fadd double %i.k, 4.000000e+00
  %i.m = call double @fmod(double noundef %i.l, double noundef 7.000000e+00) #19, !tbaa !3 ; 3 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %i.o = fadd double %i.m, 7.000000e+00
  %i.p = select i1 %i.n, double %i.o, double %i.m
  %i.q = fptosi double %i.p to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @_ZN6hermes2vmL12weekdayNamesE, i64 %i.r
  %i.t = zext nneg i32 %i.h to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vmL10monthNamesE, i64 %i.t
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.4, ptr %i.v, align 8, !tbaa !26, !alias.scope !73
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJPKcS2_iiEEE, i64 16), ptr %8, align 8, !tbaa !22, !alias.scope !73
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = insertelement <2 x double> poison, double %i.g, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.i, i64 1
  %i.z = fptosi <2 x double> %i.y to <2 x i32>
  store <2 x i32> %i.z, ptr %i.w, align 8, !tbaa !3, !alias.scope !73
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !60, !noalias !73
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !61, !alias.scope !73
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !60, !noalias !73
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !63, !alias.scope !73
  %i.ae = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull @.str.7, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 32, ptr %i.ai, align 1
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !77
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %2, ptr %i.ap, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %17 = fcmp oge double %1, 0.000000e+00
  %18 = select i1 %17, i8 43, i8 45
  %i.aq = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %19 = insertelement <4 x double> poison, double %0, i64 0
  %20 = insertelement <4 x double> %19, double %i.aq, i64 1
  %21 = shufflevector <4 x double> %20, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %22 = fdiv <4 x double> %21, <double 3.600000e+06, double 6.000000e+04, double 1.000000e+03, double 6.000000e+04>
  %23 = call <4 x double> @llvm.floor.v4f64(<4 x double> %22) ; 4 uses
  %24 = extractelement <4 x double> %23, i64 0
  %i.ar = call double @fmod(double noundef %24, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  %i.at = fadd double %i.ar, 2.400000e+01
  %i.au = select i1 %i.as, double %i.at, double %i.ar
  %i.av = fptosi double %i.au to i32
  %25 = extractelement <4 x double> %23, i64 1
  %i.aw = call double @fmod(double noundef %25, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.ax = fcmp olt double %i.aw, 0.000000e+00
  %i.ay = fadd double %i.aw, 6.000000e+01
  %i.az = select i1 %i.ax, double %i.ay, double %i.aw
  %i.ba = fptosi double %i.az to i32
  %26 = extractelement <4 x double> %23, i64 2
  %27 = call double @fmod(double noundef %26, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %28 = fcmp olt double %27, 0.000000e+00
  %29 = fadd double %27, 6.000000e+01
  %30 = select i1 %28, double %29, double %27
  %31 = fptosi double %30 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr @.str.5, ptr %10, align 8, !tbaa !26, !alias.scope !78
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !78
  store i32 %31, ptr %11, align 8, !tbaa !31, !alias.scope !78
  store i32 %i.ba, ptr %12, align 4, !tbaa !33, !alias.scope !78
  store i32 %i.av, ptr %13, align 8, !tbaa !35, !alias.scope !78
  %i.bb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 1, ptr %14, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  store ptr %2, ptr %16, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %32 = extractelement <4 x double> %23, i64 3
  %i.bc = call double @fmod(double noundef %32, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.bd = fcmp olt double %i.bc, 0.000000e+00
  %i.be = fadd double %i.bc, 6.000000e+01
  %i.bf = select i1 %i.bd, double %i.be, double %i.bc
  %i.bg = fptosi double %i.bf to i32
  %i.bh = fdiv double %i.aq, 3.600000e+06
  %i.bi = call double @llvm.floor.f64(double %i.bh)
  %i.bj = call double @fmod(double noundef %i.bi, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.bk = fcmp olt double %i.bj, 0.000000e+00
  %i.bl = fadd double %i.bj, 2.400000e+01
  %i.bm = select i1 %i.bk, double %i.bl, double %i.bj
  %i.bn = fptosi double %i.bm to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.bo, align 8, !tbaa !26, !alias.scope !81
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !81
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.bg, ptr %i.bp, align 8, !tbaa !31, !alias.scope !81
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !33, !alias.scope !81
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %18, ptr %i.br, align 8, !tbaa !71, !alias.scope !81
  %i.bs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17dateTimeUTCStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %6 = alloca %"class.llvh::format_object.38", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.d = call noundef double @_ZN6hermes2vm12yearFromTimeEd(double noundef %0)
  %i.e = fptosi double %i.d to i32
  %i.f = call noundef i32 @_ZN6hermes2vm13monthFromTimeEd(double noundef %0)
  %i.g = call noundef double @_ZN6hermes2vm12dateFromTimeEd(double noundef %0)
  %i.h = fptosi double %i.g to i32
  %i.i = fdiv double %0, 8.640000e+07
  %i.j = call noundef double @llvm.floor.f64(double %i.i)
  %i.k = fadd double %i.j, 4.000000e+00
  %i.l = call double @fmod(double noundef %i.k, double noundef 7.000000e+00) #19, !tbaa !3 ; 3 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  %i.n = fadd double %i.l, 7.000000e+00
  %i.o = select i1 %i.m, double %i.n, double %i.l
  %i.p = fptosi double %i.o to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @_ZN6hermes2vmL12weekdayNamesE, i64 %i.q
  %i.s = zext nneg i32 %i.f to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vmL10monthNamesE, i64 %i.s
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.8, ptr %i.u, align 8, !tbaa !26, !alias.scope !84
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJPKciS2_iEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !84
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.e, ptr %i.v, align 8, !tbaa !87, !alias.scope !84
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !60, !noalias !84
  store ptr %i.x, ptr %i.w, align 8, !tbaa !89, !alias.scope !84
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.h, ptr %i.y, align 8, !tbaa !33, !alias.scope !84
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !60, !noalias !84
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !63, !alias.scope !84
  %i.ab = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.ac, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.ae, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %7 = insertelement <2 x double> poison, double %0, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = fdiv <2 x double> %8, <double 3.600000e+06, double 6.000000e+04>
  %10 = call <2 x double> @llvm.floor.v2f64(<2 x double> %9) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %i.af = call double @fmod(double noundef %11, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.ag = fcmp olt double %i.af, 0.000000e+00
  %i.ah = fadd double %i.af, 2.400000e+01
  %i.ai = select i1 %i.ag, double %i.ah, double %i.af
  %i.aj = fptosi double %i.ai to i32
  %12 = extractelement <2 x double> %10, i64 1
  %i.ak = call double @fmod(double noundef %12, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  %i.am = fadd double %i.ak, 6.000000e+01
  %i.an = select i1 %i.al, double %i.am, double %i.ak
  %i.ao = fptosi double %i.an to i32
  %i.ap = fdiv double %0, 1.000000e+03
  %i.aq = call double @llvm.floor.f64(double %i.ap)
  %i.ar = call double @fmod(double noundef %i.aq, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  %i.at = fadd double %i.ar, 6.000000e+01
  %i.au = select i1 %i.as, double %i.at, double %i.ar
  %i.av = fptosi double %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.5, ptr %i.aw, align 8, !tbaa !26, !alias.scope !91
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !91
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !31, !alias.scope !91
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ao, ptr %i.ay, align 4, !tbaa !33, !alias.scope !91
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.aj, ptr %i.az, align 8, !tbaa !35, !alias.scope !91
  %i.ba = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm12timeTZStringEddRN4llvh15SmallVectorImplIcEE(double noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %4 = alloca %"class.llvh::format_object.32", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %6 = alloca %"class.llvh::format_object", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %14 = fcmp oge double %1, 0.000000e+00
  %15 = select i1 %14, i8 43, i8 45
  %i.d = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %16 = insertelement <4 x double> poison, double %0, i64 0
  %17 = insertelement <4 x double> %16, double %i.d, i64 1
  %18 = shufflevector <4 x double> %17, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %19 = fdiv <4 x double> %18, <double 3.600000e+06, double 6.000000e+04, double 1.000000e+03, double 6.000000e+04>
  %20 = call <4 x double> @llvm.floor.v4f64(<4 x double> %19) ; 4 uses
  %21 = extractelement <4 x double> %20, i64 0
  %i.e = call double @fmod(double noundef %21, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.f = fcmp olt double %i.e, 0.000000e+00
  %i.g = fadd double %i.e, 2.400000e+01
  %i.h = select i1 %i.f, double %i.g, double %i.e
  %i.i = fptosi double %i.h to i32
  %22 = extractelement <4 x double> %20, i64 1
  %i.j = call double @fmod(double noundef %22, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.k = fcmp olt double %i.j, 0.000000e+00
  %i.l = fadd double %i.j, 6.000000e+01
  %i.m = select i1 %i.k, double %i.l, double %i.j
  %i.n = fptosi double %i.m to i32
  %23 = extractelement <4 x double> %20, i64 2
  %24 = call double @fmod(double noundef %23, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %25 = fcmp olt double %24, 0.000000e+00
  %26 = fadd double %24, 6.000000e+01
  %27 = select i1 %25, double %26, double %24
  %28 = fptosi double %27 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr @.str.5, ptr %7, align 8, !tbaa !26, !alias.scope !94
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !94
  store i32 %28, ptr %8, align 8, !tbaa !31, !alias.scope !94
  store i32 %i.n, ptr %9, align 4, !tbaa !33, !alias.scope !94
  store i32 %i.i, ptr %10, align 8, !tbaa !35, !alias.scope !94
  %i.o = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 1, ptr %11, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  store ptr %2, ptr %13, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %29 = extractelement <4 x double> %20, i64 3
  %i.p = call double @fmod(double noundef %29, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.q = fcmp olt double %i.p, 0.000000e+00
  %i.r = fadd double %i.p, 6.000000e+01
  %i.s = select i1 %i.q, double %i.r, double %i.p
  %i.t = fptosi double %i.s to i32
  %i.u = fdiv double %i.d, 3.600000e+06
  %i.v = call double @llvm.floor.f64(double %i.u)
  %i.w = call double @fmod(double noundef %i.v, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.x = fcmp olt double %i.w, 0.000000e+00
  %i.y = fadd double %i.w, 2.400000e+01
  %i.z = select i1 %i.x, double %i.y, double %i.w
  %i.aa = fptosi double %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.ab, align 8, !tbaa !26, !alias.scope !97
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !97
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.t, ptr %i.ac, align 8, !tbaa !31, !alias.scope !97
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !33, !alias.scope !97
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %15, ptr %i.ae, align 8, !tbaa !71, !alias.scope !97
  %i.af = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm9parseDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheE(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(793) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::StringView", align 8 ; 23 uses
  %4 = alloca %"class.hermes::vm::StringView", align 8 ; 23 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.hermes::vm::StringView::const_iterator", align 8 ; 43 uses
  %6 = alloca %class.anon.75, align 8             ; 7 uses
  %7 = alloca %class.anon.76, align 8             ; 7 uses
  %8 = alloca %"class.llvh::ArrayRef", align 8    ; 29 uses
  %9 = alloca %"class.llvh::ArrayRef", align 8    ; 37 uses
  %10 = alloca %"class.hermes::vm::StringView::const_iterator", align 8 ; 51 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %.sroa.5.8.extract.trunc.i = trunc i64 %1 to i32 ; 5 uses
  %.sroa.8.8.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.q = icmp slt i32 %.sroa.5.8.extract.trunc.i, 0 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.r = and i32 %.sroa.5.8.extract.trunc.i, 1073741824
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %0, align 8, !tbaa !12
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr                 ; 10 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp ugt i32 %i.u, 150994943
  br i1 %i.v, label %bb.d, label %bb.e, !prof !100

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.u, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %.not.i1.i.i = icmp samesign ult i32 %.sroa.5.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i.i2.i.i = load i64, ptr %0, align 8, !tbaa !12
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i2.i.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 150994943
  br i1 %i.ai, label %bb.t, label %bb.k, !prof !100

bb.k:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i.i3.i.i = and i32 %i.ah, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i.i, label %bb.u [
    i32 117440512, label %.thread
    i32 50331648, label %.thread99
  ]

.thread:                                          ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.ak = and i64 %1, 1073741823                  ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store ptr null, ptr %10, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i57.i

.thread99:                                        ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ao = and i64 %1, 1073741823                  ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  store ptr null, ptr %10, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i57.i

bb.l:                                             ; preds = %bb.b
  %i.ar = and i64 %1, 1073741823                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %10, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.at, align 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i67.i

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.0.i.sink.i.i.ph.i = phi ptr [ %i.ae, %bb.h ], [ %i.z, %bb.g ], [ %i.y, %bb.f ], [ %i.x, %bb.d ]
  %i.au = and i64 %1, 1073741823                  ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph.i, i64 %i.au ; 5 uses
  store ptr %i.av, ptr %10, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store ptr null, ptr %i.aw, align 8
  %i.ax = load i32, ptr %i.t, align 4             ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 150994943
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !100

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !101
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i67.i

bb.o:                                             ; preds = %bb.m
  %.mask.i.i.i.i.i.i.i.i.i.i66.i = and i32 %i.ax, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i66.i, label %bb.r [
    i32 134217728, label %bb.p
    i32 67108864, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i67.i

bb.q:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i67.i

bb.r:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i69.i = load i64, ptr %i.bd, align 8, !tbaa !12
  %i.be = and i64 %.sroa.0.0.copyload.i.i.i2.i.i69.i, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i67.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i67.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.l
  %i.bi = phi ptr [ %i.at, %bb.l ], [ %i.aw, %bb.n ], [ %i.aw, %bb.p ], [ %i.aw, %bb.q ], [ %i.aw, %bb.r ]
  %i.bj = phi ptr [ %i.as, %bb.l ], [ %i.av, %bb.n ], [ %i.av, %bb.p ], [ %i.av, %bb.q ], [ %i.av, %bb.r ]
  %i.bk = phi i64 [ %i.ar, %bb.l ], [ %i.au, %bb.n ], [ %i.au, %bb.p ], [ %i.au, %bb.q ], [ %i.au, %bb.r ]
  %.0.i.sink.i.i68.i = phi ptr [ %0, %bb.l ], [ %i.ba, %bb.n ], [ %i.bb, %bb.p ], [ %i.bc, %bb.q ], [ %i.bh, %bb.r ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i68.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.8.8.extract.shift.i
  br label %_ZNK6hermes2vm10StringView3endEv.exit.i

bb.s:                                             ; preds = %bb.i
  %i.bn = and i64 %1, 1073741823                  ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn ; 2 uses
  store ptr null, ptr %10, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i57.i

bb.t:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !104 ; 2 uses
  %i.bs = and i64 %1, 1073741823                  ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  store ptr null, ptr %10, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i57.i

bb.u:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i2.i5.i.i = load i64, ptr %i.bv, align 8, !tbaa !12
  %i.bw = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i.i, 281474976710655
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
end_hunk_0
begin_hunk_1_@"_ZZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEENK3$_2clEDs":bb.a
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ac, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.o [
    i32 117440512, label %bb.m
    i32 50331648, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.o:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.ai, align 8, !tbaa !12
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !104
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.i
  %.0.i.sink.i4.i = phi ptr [ %i.z, %bb.i ], [ %i.af, %bb.k ], [ %i.ag, %bb.m ], [ %i.ah, %bb.n ], [ %i.am, %bb.o ]
  %i.an = and i32 %i.b, 1073741823
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !120
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.as
  br label %_ZNK6hermes2vm10StringView3endEv.exit

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  %.sroa.3.0.i = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ %i.at, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.y, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ]
  %i.au = load ptr, ptr %.0.val, align 8, !tbaa !111 ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.au, null
  br i1 %.not.i.i2, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit: ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !113 ; 3 uses
  %.not3 = icmp eq ptr %i.aw, %.sroa.3.0.i
  br i1 %.not3, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread: ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %.not = icmp eq ptr %i.au, %.sroa.0.0.i
  br i1 %.not, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !108
  %i.ay = icmp eq i16 %i.ax, %0
  br i1 %i.ay, label %bb.p, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread
  %i.az = load i8, ptr %i.au, align 1, !tbaa !110
  %i.ba = sext i8 %i.az to i16
  %i.bb = icmp eq i16 %0, %i.ba
  br i1 %i.bb, label %.thread2, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

.thread2:                                         ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.bc, ptr %.0.val, align 8, !tbaa !111
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.p:                                             ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !113
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

_ZN6hermes2vm10StringView14const_iteratorppEv.exit: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread, %bb.p, %.thread2, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %.0 = phi i1 [ false, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.thread ], [ true, %bb.p ], [ false, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit ], [ true, %.thread2 ], [ false, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread ], [ false, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #16

declare void @_ZN4llvh18format_object_base4homeEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJiiiEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = load i32, ptr %i.d, align 8, !tbaa !3
  %i.j = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.i) #19
  ret i32 %i.j
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJiiiiEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = load i32, ptr %i.d, align 8, !tbaa !3
  %i.l = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.k) #19
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJiiiiciiEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !110
  %i.o = sext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = load i32, ptr %i.d, align 8, !tbaa !3
  %i.s = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.r) #19
  ret i32 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJPKcS2_iiEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = load i32, ptr %i.d, align 8, !tbaa !3
  %i.l = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.k) #19
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJciiEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !110
  %i.g = sext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = load i32, ptr %i.d, align 8, !tbaa !3
  %i.k = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.j) #19
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJPKciS2_iEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.k = load i32, ptr %i.d, align 8, !tbaa !3
  %i.l = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, ptr noundef %i.f, i32 noundef %i.h, ptr noundef %i.j, i32 noundef %i.k) #19
  ret i32 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.floor.v4f64(<4 x double>) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!15, !13, i64 40}
!15 = !{!"_ZTS2tm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !13, i64 40, !16, i64 48}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!15, !4, i64 32}
!19 = !{!20, !21, i64 32}
!20 = !{!"_ZTSN4llvh11raw_ostreamE", !16, i64 8, !16, i64 16, !16, i64 24, !21, i64 32}
!21 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN4llvh15SmallVectorImplIcEE", !17, i64 0}
!26 = !{!27, !16, i64 8}
!27 = !{!"_ZTSN4llvh18format_object_baseE", !16, i64 8}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!30 = distinct !{!30, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!31 = !{!32, !4, i64 0}
!32 = !{!"_ZTSSt10_Head_baseILm2EiLb0EE", !4, i64 0}
!33 = !{!34, !4, i64 0}
!34 = !{!"_ZTSSt10_Head_baseILm1EiLb0EE", !4, i64 0}
!35 = !{!36, !4, i64 0}
!36 = !{!"_ZTSSt10_Head_baseILm0EiLb0EE", !4, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!39 = distinct !{!39, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4llvh6formatIJiiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!42 = distinct !{!42, !"_ZN4llvh6formatIJiiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4llvh6formatIJiiiiciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!45 = distinct !{!45, !"_ZN4llvh6formatIJiiiiciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!46 = !{!47, !4, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm6EiLb0EE", !4, i64 0}
!48 = !{!49, !4, i64 0}
!49 = !{!"_ZTSSt10_Head_baseILm5EiLb0EE", !4, i64 0}
!50 = !{!51, !5, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm4EcLb0EE", !5, i64 0}
!52 = !{!53, !4, i64 8}
!53 = !{!"_ZTSN4llvh15SmallVectorBaseE", !17, i64 0, !4, i64 8, !4, i64 12}
!54 = !{!53, !4, i64 12}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!53, !17, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN4llvh6formatIJPKcS2_iiEEENS_13format_objectIJDpT_EEES2_DpRKS4_: argument 0"}
!59 = distinct !{!59, !"_ZN4llvh6formatIJPKcS2_iiEEENS_13format_objectIJDpT_EEES2_DpRKS4_"}
!60 = !{!16, !16, i64 0}
!61 = !{!62, !16, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm1EPKcLb0EE", !16, i64 0}
!63 = !{!64, !16, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !16, i64 0}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!67 = distinct !{!67, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN4llvh6formatIJciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!70 = distinct !{!70, !"_ZN4llvh6formatIJciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!71 = !{!72, !5, i64 0}
!72 = !{!"_ZTSSt10_Head_baseILm0EcLb0EE", !5, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN4llvh6formatIJPKcS2_iiEEENS_13format_objectIJDpT_EEES2_DpRKS4_: argument 0"}
!75 = distinct !{!75, !"_ZN4llvh6formatIJPKcS2_iiEEENS_13format_objectIJDpT_EEES2_DpRKS4_"}
!76 = !{!20, !16, i64 16}
!77 = !{!20, !16, i64 24}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!80 = distinct !{!80, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN4llvh6formatIJciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!83 = distinct !{!83, !"_ZN4llvh6formatIJciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4llvh6formatIJPKciS2_iEEENS_13format_objectIJDpT_EEES2_DpRKS4_: argument 0"}
!86 = distinct !{!86, !"_ZN4llvh6formatIJPKciS2_iEEENS_13format_objectIJDpT_EEES2_DpRKS4_"}
!87 = !{!88, !4, i64 0}
!88 = !{!"_ZTSSt10_Head_baseILm3EiLb0EE", !4, i64 0}
!89 = !{!90, !16, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm2EPKcLb0EE", !16, i64 0}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!93 = distinct !{!93, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!96 = distinct !{!96, !"_ZN4llvh6formatIJiiiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4llvh6formatIJciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!99 = distinct !{!99, !"_ZN4llvh6formatIJciiEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!101 = !{!102, !16, i64 0}
!102 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !103, i64 0, !13, i64 8, !5, i64 16}
!103 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!104 = !{!105, !107, i64 0}
!105 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE", !106, i64 0, !13, i64 8, !5, i64 16}
!106 = !{!"_ZTSNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE12_Alloc_hiderE", !107, i64 0}
!107 = !{!"p1 char16_t", !17, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"char16_t", !5, i64 0}
!110 = !{!5, !5, i64 0}
!111 = !{!112, !16, i64 0}
!112 = !{!"_ZTSN6hermes2vm10StringView14const_iteratorE", !16, i64 0, !107, i64 8}
!113 = !{!112, !107, i64 8}
!114 = distinct !{!114, !8}
!115 = !{i64 0, i64 8, !110, i64 8, i64 4, !110, i64 12, i64 4, !3}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTSN6hermes2vm10StringViewE", !17, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"p1 _ZTSN6hermes2vm10StringView14const_iteratorE", !17, i64 0}
!120 = !{!121, !4, i64 12}
!121 = !{!"_ZTSN6hermes2vm10StringViewE", !5, i64 0, !4, i64 8, !4, i64 11, !4, i64 11, !4, i64 12}
!122 = distinct !{!122, !8}
!123 = distinct !{!123, !8}
!124 = !{!125, !4, i64 8}
!125 = !{!"_ZTSZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEE7KnownTZ", !16, i64 0, !4, i64 8}
!126 = distinct !{!126, !8}
!127 = distinct !{!127, !8}
!128 = !{!129, !129, i64 0}
!129 = !{!"long long", !5, i64 0}
!130 = !{!131, !119, i64 16}
!131 = !{!"_ZTSZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEE3$_0", !117, i64 0, !117, i64 8, !119, i64 16}
!132 = !{}
!133 = !{i64 8}
!134 = !{!131, !117, i64 0}
!135 = !{!131, !117, i64 8}
!136 = distinct !{!136, !8}
!137 = distinct !{!137, !8}
!138 = distinct !{!138, !8, !139}
!139 = !{!"llvm.loop.peeled.count", i32 1}
!140 = !{!141, !119, i64 16}
!141 = !{!"_ZTSZN6hermes2vmL11parseESDateENS0_10StringViewERNS0_20LocalTimeOffsetCacheEE3$_1", !117, i64 0, !117, i64 8, !119, i64 16}
!142 = !{!141, !117, i64 0}
!143 = !{!141, !117, i64 8}
!144 = distinct !{!144, !8}
end_hunk_1
