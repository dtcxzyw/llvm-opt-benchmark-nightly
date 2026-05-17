inline.NumInlined: 605
inline.NumDeleted: 364
begin_hunk_0_@_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE

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
  %i.d = fdiv double %0, 3.600000e+06
  %i.e = call double @llvm.floor.f64(double %i.d)
  %i.f = call double @fmod(double noundef %i.e, double noundef 2.400000e+01) #19, !tbaa !3
  %i.g = fdiv double %0, 6.000000e+04
  %i.h = call double @llvm.floor.f64(double %i.g)
  %i.i = call double @fmod(double noundef %i.h, double noundef 6.000000e+01) #19, !tbaa !3
  %i.j = fdiv double %0, 1.000000e+03
  %i.k = call double @llvm.floor.f64(double %i.j)
  %i.l = call double @fmod(double noundef %i.k, double noundef 6.000000e+01) #19, !tbaa !3
  %i.m = call double @fmod(double noundef %0, double noundef 1.000000e+03) #19, !tbaa !3
  %i.n = insertelement <4 x double> poison, double %i.m, i64 0
  %i.o = insertelement <4 x double> %i.n, double %i.l, i64 1
  %i.p = insertelement <4 x double> %i.o, double %i.i, i64 2
  %i.q = insertelement <4 x double> %i.p, double %i.f, i64 3 ; 3 uses
  %i.r = fcmp olt <4 x double> %i.q, zeroinitializer
  %i.s = fadd <4 x double> %i.q, <double 1.000000e+03, double 6.000000e+01, double 6.000000e+01, double 2.400000e+01>
  %i.t = select <4 x i1> %i.r, <4 x double> %i.s, <4 x double> %i.q
  %i.u = fptosi <4 x double> %i.t to <4 x i32>    ; 2 uses
  %i.v = fcmp oeq double %1, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.2, ptr %i.w, align 8, !tbaa !26, !alias.scope !40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !40
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %i.u, ptr %i.x, align 8, !tbaa !3, !alias.scope !40
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = fcmp oge double %1, 0.000000e+00
  %i.aa = select i1 %i.z, i8 43, i8 45
  %i.ab = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ac = fdiv double %i.ab, 3.600000e+06
  %i.ad = call double @llvm.floor.f64(double %i.ac)
  %i.ae = call double @fmod(double noundef %i.ad, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.af = fcmp olt double %i.ae, 0.000000e+00
  %i.ag = fadd double %i.ae, 2.400000e+01
  %i.ah = select i1 %i.af, double %i.ag, double %i.ae
  %i.ai = fptosi double %i.ah to i32
  %i.aj = fdiv double %i.ab, 6.000000e+04
  %i.ak = call double @llvm.floor.f64(double %i.aj)
  %i.al = call double @fmod(double noundef %i.ak, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.am = fcmp olt double %i.al, 0.000000e+00
  %i.an = fadd double %i.al, 6.000000e+01
  %i.ao = select i1 %i.am, double %i.an, double %i.al
  %i.ap = fptosi double %i.ao to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.3, ptr %i.aq, align 8, !tbaa !26, !alias.scope !43
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiiciiEEE, i64 16), ptr %5, align 8, !tbaa !22, !alias.scope !43
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.ap, ptr %i.ar, align 8, !tbaa !46, !alias.scope !43
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.ai, ptr %i.as, align 4, !tbaa !48, !alias.scope !43
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.aa, ptr %i.at, align 8, !tbaa !50, !alias.scope !43
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <4 x i32> %i.u, ptr %i.au, align 4, !tbaa !3, !alias.scope !43
  %i.av = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %5) #19 ; 0 uses
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
  %i.d = fdiv double %0, 3.600000e+06
  %i.e = call double @llvm.floor.f64(double %i.d)
  %i.f = call double @fmod(double noundef %i.e, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %5 = fcmp olt double %i.f, 0.000000e+00
  %6 = fadd double %i.f, 2.400000e+01
  %7 = select i1 %5, double %6, double %i.f
  %8 = fptosi double %7 to i32
  %i.g = fdiv double %0, 6.000000e+04
  %i.h = call double @llvm.floor.f64(double %i.g)
  %i.i = call double @fmod(double noundef %i.h, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %9 = fcmp olt double %i.i, 0.000000e+00
  %10 = fadd double %i.i, 6.000000e+01
  %11 = select i1 %9, double %10, double %i.i
  %12 = fptosi double %11 to i32
  %i.j = fdiv double %0, 1.000000e+03
  %i.k = call double @llvm.floor.f64(double %i.j)
  %i.l = call double @fmod(double noundef %i.k, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %13 = fcmp olt double %i.l, 0.000000e+00
  %14 = fadd double %i.l, 6.000000e+01
  %15 = select i1 %13, double %14, double %i.l
  %16 = fptosi double %15 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.5, ptr %i.m, align 8, !tbaa !26, !alias.scope !65
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !65
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %16, ptr %17, align 8, !tbaa !31, !alias.scope !65
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %12, ptr %18, align 4, !tbaa !33, !alias.scope !65
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %8, ptr %19, align 8, !tbaa !35, !alias.scope !65
  %i.n = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
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
  %i.f = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %i.g = fdiv double %i.f, 6.000000e+04
  %i.h = call double @llvm.floor.f64(double %i.g)
  %i.i = call double @fmod(double noundef %i.h, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.j = fcmp olt double %i.i, 0.000000e+00
  %i.k = fadd double %i.i, 6.000000e+01
  %i.l = select i1 %i.j, double %i.k, double %i.i
  %i.m = fptosi double %i.l to i32
  %i.n = fdiv double %i.f, 3.600000e+06
  %i.o = call double @llvm.floor.f64(double %i.n)
  %i.p = call double @fmod(double noundef %i.o, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.q = fcmp olt double %i.p, 0.000000e+00
  %i.r = fadd double %i.p, 2.400000e+01
  %i.s = select i1 %i.q, double %i.r, double %i.p
  %i.t = fptosi double %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.u, align 8, !tbaa !26, !alias.scope !68
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !68
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.m, ptr %i.v, align 8, !tbaa !31, !alias.scope !68
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.t, ptr %i.w, align 4, !tbaa !33, !alias.scope !68
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.e, ptr %i.x, align 8, !tbaa !71, !alias.scope !68
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
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
  %i.aq = fdiv double %0, 3.600000e+06
  %i.ar = call double @llvm.floor.f64(double %i.aq)
  %i.as = call double @fmod(double noundef %i.ar, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %10 = fcmp olt double %i.as, 0.000000e+00
  %11 = fadd double %i.as, 2.400000e+01
  %12 = select i1 %10, double %11, double %i.as
  %13 = fptosi double %12 to i32
  %i.at = fdiv double %0, 6.000000e+04
  %i.au = call double @llvm.floor.f64(double %i.at)
  %i.av = call double @fmod(double noundef %i.au, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %14 = fcmp olt double %i.av, 0.000000e+00
  %15 = fadd double %i.av, 6.000000e+01
  %16 = select i1 %14, double %15, double %i.av
  %17 = fptosi double %16 to i32
  %i.aw = fdiv double %0, 1.000000e+03
  %i.ax = call double @llvm.floor.f64(double %i.aw)
  %i.ay = call double @fmod(double noundef %i.ax, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %18 = fcmp olt double %i.ay, 0.000000e+00
  %19 = fadd double %i.ay, 6.000000e+01
  %20 = select i1 %18, double %19, double %i.ay
  %21 = fptosi double %20 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.5, ptr %i.az, align 8, !tbaa !26, !alias.scope !78
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !78
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %21, ptr %22, align 8, !tbaa !31, !alias.scope !78
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %17, ptr %23, align 4, !tbaa !33, !alias.scope !78
  %24 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %13, ptr %24, align 8, !tbaa !35, !alias.scope !78
  %i.ba = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.bd, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.be = fcmp oge double %1, 0.000000e+00
  %i.bf = select i1 %i.be, i8 43, i8 45
  %i.bg = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %i.bh = fdiv double %i.bg, 6.000000e+04
  %i.bi = call double @llvm.floor.f64(double %i.bh)
  %i.bj = call double @fmod(double noundef %i.bi, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.bk = fcmp olt double %i.bj, 0.000000e+00
  %i.bl = fadd double %i.bj, 6.000000e+01
  %i.bm = select i1 %i.bk, double %i.bl, double %i.bj
  %i.bn = fptosi double %i.bm to i32
  %i.bo = fdiv double %i.bg, 3.600000e+06
  %i.bp = call double @llvm.floor.f64(double %i.bo)
  %i.bq = call double @fmod(double noundef %i.bp, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.br = fcmp olt double %i.bq, 0.000000e+00
  %i.bs = fadd double %i.bq, 2.400000e+01
  %i.bt = select i1 %i.br, double %i.bs, double %i.bq
  %i.bu = fptosi double %i.bt to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.bv, align 8, !tbaa !26, !alias.scope !81
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !81
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.bn, ptr %i.bw, align 8, !tbaa !31, !alias.scope !81
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.bu, ptr %i.bx, align 4, !tbaa !33, !alias.scope !81
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.bf, ptr %i.by, align 8, !tbaa !71, !alias.scope !81
  %i.bz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
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
  %i.af = fdiv double %0, 3.600000e+06
  %i.ag = call double @llvm.floor.f64(double %i.af)
  %i.ah = call double @fmod(double noundef %i.ag, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %7 = fcmp olt double %i.ah, 0.000000e+00
  %8 = fadd double %i.ah, 2.400000e+01
  %9 = select i1 %7, double %8, double %i.ah
  %10 = fptosi double %9 to i32
  %i.ai = fdiv double %0, 6.000000e+04
  %i.aj = call double @llvm.floor.f64(double %i.ai)
  %i.ak = call double @fmod(double noundef %i.aj, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %11 = fcmp olt double %i.ak, 0.000000e+00
  %12 = fadd double %i.ak, 6.000000e+01
  %13 = select i1 %11, double %12, double %i.ak
  %14 = fptosi double %13 to i32
  %i.al = fdiv double %0, 1.000000e+03
  %i.am = call double @llvm.floor.f64(double %i.al)
  %i.an = call double @fmod(double noundef %i.am, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %15 = fcmp olt double %i.an, 0.000000e+00
  %16 = fadd double %i.an, 6.000000e+01
  %17 = select i1 %15, double %16, double %i.an
  %18 = fptosi double %17 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.5, ptr %i.ao, align 8, !tbaa !26, !alias.scope !91
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !91
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %18, ptr %19, align 8, !tbaa !31, !alias.scope !91
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %14, ptr %20, align 4, !tbaa !33, !alias.scope !91
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %10, ptr %21, align 8, !tbaa !35, !alias.scope !91
  %i.ap = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
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
  %i.d = fdiv double %0, 3.600000e+06
  %i.e = call double @llvm.floor.f64(double %i.d)
  %i.f = call double @fmod(double noundef %i.e, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %7 = fcmp olt double %i.f, 0.000000e+00
  %8 = fadd double %i.f, 2.400000e+01
  %9 = select i1 %7, double %8, double %i.f
  %10 = fptosi double %9 to i32
  %i.g = fdiv double %0, 6.000000e+04
  %i.h = call double @llvm.floor.f64(double %i.g)
  %i.i = call double @fmod(double noundef %i.h, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %11 = fcmp olt double %i.i, 0.000000e+00
  %12 = fadd double %i.i, 6.000000e+01
  %13 = select i1 %11, double %12, double %i.i
  %14 = fptosi double %13 to i32
  %i.j = fdiv double %0, 1.000000e+03
  %i.k = call double @llvm.floor.f64(double %i.j)
  %i.l = call double @fmod(double noundef %i.k, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %15 = fcmp olt double %i.l, 0.000000e+00
  %16 = fadd double %i.l, 6.000000e+01
  %17 = select i1 %15, double %16, double %i.l
  %18 = fptosi double %17 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.5, ptr %i.m, align 8, !tbaa !26, !alias.scope !94
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiiiEEE, i64 16), ptr %6, align 8, !tbaa !22, !alias.scope !94
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %18, ptr %19, align 8, !tbaa !31, !alias.scope !94
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %14, ptr %20, align 4, !tbaa !33, !alias.scope !94
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %10, ptr %21, align 8, !tbaa !35, !alias.scope !94
  %i.n = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.q, align 8, !tbaa !24
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #19
  %i.r = fcmp oge double %1, 0.000000e+00
  %i.s = select i1 %i.r, i8 43, i8 45
  %i.t = call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %i.u = fdiv double %i.t, 6.000000e+04
  %i.v = call double @llvm.floor.f64(double %i.u)
  %i.w = call double @fmod(double noundef %i.v, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.x = fcmp olt double %i.w, 0.000000e+00
  %i.y = fadd double %i.w, 6.000000e+01
  %i.z = select i1 %i.x, double %i.y, double %i.w
  %i.aa = fptosi double %i.z to i32
  %i.ab = fdiv double %i.t, 3.600000e+06
  %i.ac = call double @llvm.floor.f64(double %i.ab)
  %i.ad = call double @fmod(double noundef %i.ac, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  %i.af = fadd double %i.ad, 2.400000e+01
  %i.ag = select i1 %i.ae, double %i.af, double %i.ad
  %i.ah = fptosi double %i.ag to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.6, ptr %i.ai, align 8, !tbaa !26, !alias.scope !97
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJciiEEE, i64 16), ptr %4, align 8, !tbaa !22, !alias.scope !97
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.aa, ptr %i.aj, align 8, !tbaa !31, !alias.scope !97
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !33, !alias.scope !97
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.s, ptr %i.al, align 8, !tbaa !71, !alias.scope !97
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #19 ; 0 uses
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
end_hunk_0
