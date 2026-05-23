inline.NumInlined: 605
inline.NumDeleted: 364
begin_hunk_0_@_ZN6hermes2vm6detail14equivalentTimeEl:bb.a
  %i.t = mul nsw i32 %i.q, 1461
  %i.u = add nsw i32 %i.p, %i.t
  %.recomposed21 = srem i32 %.recomposed20, 1461  ; 2 uses
  %i.v = sdiv i32 %.recomposed21, 365             ; 3 uses
  %.recomposed22 = srem i32 %.recomposed21, 365
  %i.w = add nsw i32 %i.s, %i.v                   ; 3 uses
  %i.x = mul nsw i32 %i.v, 365
  %i.y = add nsw i32 %i.u, %i.x                   ; 3 uses
  %i.z = add nsw i32 %i.w, -1970
  %or.cond.i = icmp ult i32 %i.z, 68
  br i1 %or.cond.i, label %_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = add nsw i32 %i.y, 4                     ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sdiv i32 %i.aa, 7                       ; 2 uses
  %.sext.i.i.i = sext i32 %i.ac to i64
  %i.ad = icmp slt i32 %i.y, -4
  %i.ae = mul nsw i64 %.sext.i.i.i, 7
  %.not.i.i.i.i = icmp ne i64 %i.ae, %i.ab
  %or.cond.not.i.i.i.i = select i1 %i.ad, i1 %.not.i.i.i.i, i1 false
  %i.af = sext i1 %or.cond.not.i.i.i.i to i32
  %.0.i.i.i.i = add nsw i32 %i.ac, %i.af
  %.neg.i.i.i = mul nsw i32 %.0.i.i.i.i, -7
  %i.ag = add i32 %.neg.i.i.i, %i.aa
  %i.ah = and i32 %i.v, 3
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i

bb.c:                                             ; preds = %bb.b
  %i.ai = srem i32 %i.w, 100
  %.not3.i.i = icmp ne i32 %i.ai, 0
  %i.aj = srem i32 %i.w, 400
  %.not4.i.i = icmp eq i32 %i.aj, 0
  %or.cond13.i = or i1 %.not3.i.i, %.not4.i.i
  %spec.select.i = select i1 %or.cond13.i, i32 2012, i32 2006
  br label %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i

_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i:     ; preds = %bb.c, %bb.b
  %i.ak = phi i32 [ 2006, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.al = mul nsw i32 %i.ag, 12
  %i.am = srem i32 %i.al, 28
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = trunc i32 %i.an to i8
  %.lhs.trunc.i = add nsw i8 %i.ao, 42
  %i.ap = srem i8 %.lhs.trunc.i, 28
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr @_ZN6hermes2vmL26epochDaysForYear2006To2033E, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  br label %_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit

_ZN6hermes2vmL25equivalentYearAsEpochDaysEii.exit: ; preds = %bb.a, %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i
  %.0.i2 = phi i32 [ %i.as, %_ZN6hermes2vmL10isLeapYearEi.exit.thread11.i ], [ %i.y, %bb.a ]
  %.neg = mul i64 %.0.i, -86400
  %i.at = add i64 %.neg, %0
  %i.au = add nsw i32 %.recomposed22, %.0.i2
  %i.av = sitofp i32 %i.au to double
  %i.aw = sitofp i64 %i.at to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double 8.640000e+04, double %i.aw)
  %i.ay = fptosi double %i.ax to i32
  ret i32 %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm9localTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(793) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793) %1, double noundef %0, i8 noundef signext 1) #19
  %i.d = fadd double %0, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.d, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

declare noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793), double noundef, i8 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN6hermes2vm7utcTimeEdRNS0_20LocalTimeOffsetCacheE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(793) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef double @_ZN6hermes2vm20LocalTimeOffsetCache18getLocalTimeOffsetEdNS0_8TimeTypeE(ptr noundef nonnull align 8 dereferenceable(793) %1, double noundef %0, i8 noundef signext 0) #19
  %i.d = fsub double %0, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.d, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm12hourFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 3.600000e+06
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = tail call double @fmod(double noundef %i.b, double noundef 2.400000e+01) #19, !tbaa !3 ; 3 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
  %i.e = fadd double %i.c, 2.400000e+01
  %i.f = select i1 %i.d, double %i.e, double %i.c
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm11minFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 6.000000e+04
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = tail call double @fmod(double noundef %i.b, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
  %i.e = fadd double %i.c, 6.000000e+01
  %i.f = select i1 %i.d, double %i.e, double %i.c
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm11secFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fdiv double %0, 1.000000e+03
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = tail call double @fmod(double noundef %i.b, double noundef 6.000000e+01) #19, !tbaa !3 ; 3 uses
  %i.d = fcmp olt double %i.c, 0.000000e+00
  %i.e = fadd double %i.c, 6.000000e+01
  %i.f = select i1 %i.d, double %i.e, double %i.c
  ret double %i.f
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define hidden noundef double @_ZN6hermes2vm10msFromTimeEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call double @fmod(double noundef %0, double noundef 1.000000e+03) #19, !tbaa !3 ; 3 uses
  %i.b = fcmp olt double %i.a, 0.000000e+00
  %i.c = fadd double %i.a, 1.000000e+03
  %i.d = select i1 %i.b, double %i.c, double %i.a
  ret double %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN6hermes2vm8makeTimeEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp one double %i.c, +inf
  %or.cond = and i1 %i.b, %i.d
  %i.e = tail call double @llvm.fabs.f64(double %2)
  %i.f = fcmp one double %i.e, +inf
  %or.cond15 = and i1 %or.cond, %i.f
  %i.g = tail call double @llvm.fabs.f64(double %3)
  %i.h = fcmp one double %i.g, +inf
  %or.cond17 = and i1 %or.cond15, %i.h
  br i1 %or.cond17, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call double @llvm.trunc.f64(double %0)
  %i.j = tail call nnan ninf double @llvm.trunc.f64(double %1)
  %i.k = tail call double @llvm.trunc.f64(double %2)
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

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
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
  %i.m = frem nnan double %i.h, 1.200000e+01      ; 3 uses
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
end_hunk_0
