inline.NumInlined: 824
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.c, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %5, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.l, i8 0, i64 65, i1 false)
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(137) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  tail call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef null, i32 noundef 0, i32 noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator10setDecimalERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.c = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator10getDecimalEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432
  ret ptr %i.a
}

declare void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatE16UDateFormatStyleRKNS_13UnicodeStringER10UErrorCode.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.c = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4240 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.f = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d) #25 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4304 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.i = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #25 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4368 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatE16UDateFormatStyleRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 3
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  %i.g = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #25 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = load atomic i8, ptr @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #25
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.12, ptr %1, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, i8 noundef signext 1, ptr noundef nonnull align 8 %1, i32 noundef -1) #25
  %i.d = load ptr, ptr %1, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #25, !srcloc !24
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7813UnicodeStringD1Ev, ptr nonnull @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #25
  br label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit

_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4304
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret ptr %i.f
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar25getCalendarTypeFromLocaleERKNS_6LocaleEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7820DecimalFormatSymbolsC1ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2459), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator22addPatternWithSkeletonERKNS_13UnicodeStringES3_aRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcher14getBasePatternERNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = and i16 %i.b, 30
  %storemerge.i = select i1 %.not.i, i16 %i.d, i16 2
  store i16 %storemerge.i, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7810PatternMap25getPatternFromBasePatternERKNS_13UnicodeStringERa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2              ; 4 uses
  %i.o = add i16 %i.n, -65
  %or.cond.i = icmp ult i16 %i.o, 26
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.p = zext nneg i16 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = add nuw nsw i64 %i.p, 4294967231
  %4 = and i64 %3, 4294967295
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %4
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.s = add i16 %i.n, -97
  %or.cond5.i = icmp ult i16 %i.s, 26
  br i1 %or.cond5.i, label %bb.d, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i16 %i.n to i64
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -560
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

_ZNK6icu_7810PatternMap9getHeaderEDs.exit:        ; preds = %bb.b, %bb.d
  %.0.in.i = phi ptr [ %i.r, %bb.b ], [ %i.v, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 2 uses
  %i.w = icmp eq ptr %.0.i, null
  br i1 %i.w, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit, %bb.g
  %.0 = phi ptr [ %i.ba, %bb.g ], [ %.0.i, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ] ; 7 uses
  %i.x = load i16, ptr %i.a, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.z = load i16, ptr %i.y, align 8              ; 4 uses
  %i.aa = and i16 %i.z, 1
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ab = trunc i16 %i.x to i8
  %i.ac = and i8 %i.ab, 1
  %i.ad = xor i8 %i.ac, 1
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

.sink.split.i.i.i:                                ; preds = %.preheader
  %i.ae = icmp slt i16 %i.z, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = ashr i16 %i.z, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = select i1 %i.ae, i32 %i.ag, i32 %i.ai   ; 2 uses
  %i.ak = icmp slt i16 %i.x, 0
  %i.al = load i32, ptr %i.f, align 4
  %i.am = ashr i16 %i.x, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = select i1 %i.ak, i32 %i.al, i32 %i.an
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 0)
  %.010.i.i = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.ap = and i16 %i.z, 2
  %.not.i.i.i14 = icmp eq i16 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 18
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = select i1 %.not.i.i.i14, ptr %i.as, ptr %i.aq
  %i.au = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ao, ptr noundef %i.at, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i) #25
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.e, %.sink.split.i.i.i
  %.0.i.i13 = phi i8 [ %i.ad, %bb.e ], [ %i.au, %.sink.split.i.i.i ]
  %i.av = icmp eq i8 %.0.i.i13, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.ax = load i8, ptr %i.aw, align 8
  store i8 %i.ax, ptr %2, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 80
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader, !llvm.loop !72

_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread: ; preds = %bb.g, %bb.a, %bb.c, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit, %bb.f
  %.010 = phi ptr [ null, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ], [ %i.ay, %bb.f ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ]
  ret ptr %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #13 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.e = load i8, ptr %i.d, align 1
  %.not.1.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.1.i.i, label %bb.e, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.g = load i8, ptr %i.f, align 2
  %.not.2.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.2.i.i, label %bb.f, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 123
  %i.i = load i8, ptr %i.h, align 1
  %.not.3.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.3.i.i, label %bb.g, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.k = load i8, ptr %i.j, align 4
  %.not.4.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.4.i.i, label %bb.h, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.m = load i8, ptr %i.l, align 1
  %.not.5.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.5.i.i, label %bb.i, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.o = load i8, ptr %i.n, align 2
  %.not.6.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.6.i.i, label %bb.j, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.q = load i8, ptr %i.p, align 1
  %.not.7.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.7.i.i, label %bb.k, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load i8, ptr %i.r, align 8
  %.not.8.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.8.i.i, label %bb.l, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.u = load i8, ptr %i.t, align 1
  %.not.9.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.9.i.i, label %bb.m, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.w = load i8, ptr %i.v, align 2
  %.not.10.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.10.i.i, label %bb.n, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.y = load i8, ptr %i.x, align 1
  %.not.11.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.11.i.i, label %bb.o, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aa = load i8, ptr %i.z, align 4
  %.not.12.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.12.i.i, label %bb.p, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.ac = load i8, ptr %i.ab, align 1
  %.not.13.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.13.i.i, label %bb.q, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 134
  %i.ae = load i8, ptr %i.ad, align 2
  %.not.14.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.14.i.i, label %bb.r, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.ag = load i8, ptr %i.af, align 1
  %.not.15.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.15.i.i, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit:    ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.lcssa.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ], [ 13, %bb.p ], [ 14, %bb.q ], [ 15, %bb.r ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa.i.i
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i16                    ; 4 uses
  %i.ak = add nsw i16 %i.aj, -65
  %or.cond.i = icmp ult i16 %i.ak, 26
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit
  %i.al = zext nneg i16 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = add nuw nsw i64 %i.al, 4294967231
  %4 = and i64 %3, 4294967295
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %4
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

bb.t:                                             ; preds = %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit
  %i.ao = add nsw i16 %i.aj, -97
  %or.cond5.i = icmp ult i16 %i.ao, 26
  br i1 %or.cond5.i, label %bb.u, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ap = zext nneg i16 %i.aj to i64
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -560
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

_ZNK6icu_7810PatternMap9getHeaderEDs.exit:        ; preds = %bb.s, %bb.u
  %.0.in.i = phi ptr [ %i.an, %bb.s ], [ %i.ar, %bb.u ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %i.as = icmp eq ptr %.0.i, null
  br i1 %i.as, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us
  %.021.us = phi ptr [ %i.bk, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us ], [ %.0.i, %.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.021.us, i64 72
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ay = load i128, ptr %i.ax, align 1
  %i.az = load i128, ptr %i.a, align 1
  %i.ba = icmp ne i128 %i.ay, %i.az
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us:      ; preds = %.preheader.split.us
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.be = load i128, ptr %i.bd, align 1
  %i.bf = load i128, ptr %i.b, align 1
  %i.bg = icmp ne i128 %i.be, %i.bf
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.thread41, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us: ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us, %.preheader.split.us
  %i.bj = getelementptr inbounds nuw i8, ptr %.021.us, i64 152
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not27.us = icmp eq ptr %i.bk, null
  br i1 %.not27.us, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader.split.us, !llvm.loop !73

.preheader.split:                                 ; preds = %.preheader, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread
  %.021 = phi ptr [ %i.cd, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread ], [ %.0.i, %.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.021, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load i128, ptr %i.bn, align 1
  %i.bp = load i128, ptr %i.at, align 1
  %i.bq = icmp ne i128 %i.bo, %i.bp
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.v, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

bb.v:                                             ; preds = %.preheader.split
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.bu = load i128, ptr %i.bt, align 1
  %i.bv = load i128, ptr %i.au, align 1
  %i.bw = icmp ne i128 %i.bu, %i.bv
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.w, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %.021, i64 144
  %i.ca = load i8, ptr %i.bz, align 8
  %.not26 = icmp eq i8 %i.ca, 0
  br i1 %.not26, label %.thread41, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.bm, ptr %2, align 8
  br label %.thread41

.thread41:                                        ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us, %bb.w, %bb.x
  %.02147 = phi ptr [ %.021, %bb.x ], [ %.021, %bb.w ], [ %.021.us, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.02147, i64 80
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread:  ; preds = %.preheader.split, %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.021, i64 152
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not27 = icmp eq ptr %i.cd, null
  br i1 %.not27, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader.split, !llvm.loop !73

_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread: ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us, %bb.r, %bb.t, %.thread41, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %.2 = phi ptr [ %i.cb, %.thread41 ], [ null, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ], [ null, %bb.r ], [ null, %bb.t ], [ null, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us ], [ null, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810PatternMap3addERKNS_13UnicodeStringERKNS_11PtnSkeletonES3_aR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(425) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not96 = icmp eq i32 %i.h, 0
  br i1 %.not96, label %.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2              ; 4 uses
  store i32 0, ptr %5, align 4
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = add i16 %i.n, -65
  %or.cond = icmp ult i16 %i.p, 26
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.q = add i16 %i.n, -97
  %or.cond6 = icmp ult i16 %i.q, 26
  br i1 %or.cond6, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  store i32 65567, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.c:                                             ; preds = %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.sink110 = phi i64 [ -512, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -560, %bb.b ]
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %.sink110
  %.051 = load ptr, ptr %i.s, align 8             ; 3 uses
  %cond = icmp eq ptr %.051, null
  br i1 %cond, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 160) #25 ; 11 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %5, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_787PtnElemE, i64 16), ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 3 uses
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %3) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  store ptr null, ptr %i.aa, align 8
  %.pre97 = load i32, ptr %5, align 4
  %i.ab = icmp slt i32 %.pre97, 1
  br i1 %i.ab, label %bb.g, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit
  %i.ac = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 144) #25 ; 10 uses
  %i.ad = icmp eq ptr %i.ac, null                 ; 2 uses
  br i1 %i.ad, label %.thread90, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.al, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store i8 %i.ap, ptr %i.aq, align 8
  %i.ar = load i32, ptr %5, align 4
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.i

.thread90:                                        ; preds = %bb.g
  %i.at = load i32, ptr %5, align 4
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread90, %bb.h
  %i.av = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(137) %i.av) #25, !inline_history !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.ac, ptr %i.y, align 8
  br i1 %i.ad, label %bb.l, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.h
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(137) %i.ac) #25
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.k, %bb.m
  %.pr = load i32, ptr %5, align 4
  %i.ba = icmp slt i32 %.pr, 1
  br i1 %i.ba, label %bb.n, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.n:                                             ; preds = %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i8 %4, ptr %i.bb, align 8
  %i.bc = icmp samesign ugt i16 %i.n, 96
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = add nuw nsw i64 %i.o, 4294967225
  %7 = and i64 %6, 4294967295
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %7
  store ptr %i.t, ptr %i.be, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %i.r, i64 -512
  store ptr %i.t, ptr %i.bf, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.q:                                             ; preds = %bb.c
  %i.bg = tail call noundef ptr @_ZN6icu_7810PatternMap16getDuplicateElemERKNS_13UnicodeStringERKNS_11PtnSkeletonEPNS_7PtnElemE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef nonnull %.051) ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.q, %.preheader
  %.052 = phi ptr [ %i.bj, %.preheader ], [ %.051, %bb.q ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.052, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.r, label %.preheader, !llvm.loop !74

bb.r:                                             ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %.052, i64 152 ; 2 uses
  %i.bl = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 160) #25 ; 10 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.s, label %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %5, align 4
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67: ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_787PtnElemE, i64 16), ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 3 uses
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %3) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  store ptr null, ptr %i.bs, align 8
  %.pre = load i32, ptr %5, align 4
  %i.bt = icmp slt i32 %.pre, 1
  br i1 %i.bt, label %bb.u, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread

bb.u:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67
  %i.bu = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 144) #25 ; 10 uses
  %i.bv = icmp eq ptr %i.bu, null                 ; 2 uses
  br i1 %i.bv, label %.thread94, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bz, i64 64, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ca, i64 16, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cc, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cd, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  store i8 %i.ch, ptr %i.ci, align 8
  %i.cj = load i32, ptr %5, align 4
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %bb.w

.thread94:                                        ; preds = %bb.u
  %i.cl = load i32, ptr %5, align 4
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread, label %bb.w

bb.w:                                             ; preds = %.thread94, %bb.v
  %i.cn = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(137) %i.cn) #25, !inline_history !12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.bu, ptr %i.bq, align 8
  br i1 %i.bv, label %bb.z, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68

bb.z:                                             ; preds = %bb.y
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread

bb.aa:                                            ; preds = %bb.v
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(137) %i.bu) #25
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68: ; preds = %bb.y, %bb.aa
  %.pr108 = load i32, ptr %5, align 4
  %i.cs = icmp slt i32 %.pr108, 1
  br i1 %i.cs, label %.critedge65, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread

.critedge65:                                      ; preds = %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store i8 %4, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69, label %bb.ab

bb.ab:                                            ; preds = %.critedge65
  %i.cw = load ptr, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(160) %i.cu) #25, !inline_history !13
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69: ; preds = %bb.ab, %.critedge65
  store ptr %i.bl, ptr %i.bk, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread: ; preds = %bb.z, %.thread94, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68, %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67
  %i.cz = load ptr, ptr %i.bl, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(160) %i.bl) #25, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.ac:                                            ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dd = load i8, ptr %i.dc, align 8
  %.not61 = icmp eq i8 %i.dd, 0
  br i1 %.not61, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.df = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.de, ptr noundef nonnull align 8 dereferenceable(64) %3) #25 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  store i8 %4, ptr %i.dg, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread: ; preds = %bb.l, %.thread90, %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.dh = load ptr, ptr %i.t, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(160) %i.t) #25, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70: ; preds = %bb.f, %bb.e, %bb.t, %bb.s, %bb.o, %bb.p, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread, %bb.ad, %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69, %bb.ac, %.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 17) i32 @_ZNK6icu_7824DateTimePatternGenerator21getAppendFormatNumberEPKc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.16, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.17, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.18, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.19, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.20, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.21, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.22, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.h

end_hunk_0
begin_hunk_1_@_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7812DistanceInfo5setToERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = sext i8 %i.d to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = icmp sgt i8 %i.h, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.e, ptr %i.a, align 2
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext range(i16 -128, 128) i16 @_ZNK6icu_7814SkeletonFields12getFieldCharEi(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i16
  ret i16 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.012 = phi i32 [ %i.c, %.preheader ], [ 0, %bb.a ]
  %.0711 = phi i32 [ %i.b, %.preheader ], [ %1, %bb.a ]
  %i.b = ashr i32 %.0711, 1                       ; 2 uses
  %i.c = add nuw nsw i32 %.012, 1                 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !67

bb.b:                                             ; preds = %.preheader
  %i.d = tail call i32 @llvm.umin.i32(i32 %i.c, i32 16)
  %.08 = add nsw i32 %i.d, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %.08, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter16formatAndReplaceEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #25 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  br label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit

_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call noundef i32 @uhash_puti_78(ptr noundef %i.c, ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7824DateTimePatternGenerator20isAvailableFormatSetERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 @uhash_geti_78(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.e = icmp eq i32 %i.d, 1
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7824DateTimePatternGenerator12getSkeletonsER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #25 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %1, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @_ZN6icu_7821DTSkeletonEnumerationC2ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(425) %i.k, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.pre = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %bb.g, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #25, !inline_history !76
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit, %bb.g, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ %i.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit ], [ null, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator21getPatternForSkeletonERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4512
  br label %bb.m

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n
  %i.r = load i16, ptr %i.q, align 2              ; 4 uses
  %i.s = add i16 %i.r, -65
  %or.cond.i = icmp ult i16 %i.s, 26
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.t = zext nneg i16 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %3 = add nuw nsw i64 %i.t, 4294967231
  %4 = and i64 %3, 4294967295
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %4
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.w = add i16 %i.r, -97
  %or.cond5.i = icmp ult i16 %i.w, 26
  br i1 %or.cond5.i, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.x = zext nneg i16 %i.r to i64
  %i.y = getelementptr [8 x i8], ptr %i.l, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -560
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

_ZNK6icu_7810PatternMap9getHeaderEDs.exit:        ; preds = %bb.c, %bb.e
  %.0.in.i = phi ptr [ %i.v, %bb.c ], [ %i.z, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 2 uses
  %.not17 = icmp eq ptr %.0.i, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %.018 = phi ptr [ %.0.i, %.lr.ph ], [ %i.bp, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %.018, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !alias.scope !77
  store i16 2, ptr %i.aa, align 8, !alias.scope !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.ai = load i8, ptr %i.ah, align 8, !noalias !77
  %.not.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i16, ptr %i.aa, align 8, !alias.scope !77 ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.ab, align 4, !alias.scope !77
  %i.ao = select i1 %i.ak, i32 %i.an, i32 %i.am
  %i.ap = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.ao) #25 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.h, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.ap, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit:     ; preds = %bb.f, %bb.g, %bb.h
  %i.as = load i16, ptr %i.aa, align 8            ; 3 uses
  %i.at = and i16 %i.as, 1
  %.not.i10 = icmp eq i16 %i.at, 0
  br i1 %.not.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit
  %i.au = load i16, ptr %i.a, align 8
  %i.av = trunc i16 %i.au to i1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %i.av, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit
  %i.aw = icmp slt i16 %i.as, 0
  %i.ax = ashr i16 %i.as, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ab, align 4
  %i.ba = select i1 %i.aw, i32 %i.az, i32 %i.ay   ; 2 uses
  %i.bb = load i16, ptr %i.a, align 8             ; 4 uses
  %i.bc = icmp slt i16 %i.bb, 0
  %i.bd = ashr i16 %i.bb, 5
  %i.be = sext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.f, align 4
  %i.bg = select i1 %i.bc, i32 %i.bf, i32 %i.be
  %i.bh = and i16 %i.bb, 1
  %.not9.i = icmp eq i16 %i.bh, 0
  %i.bi = icmp eq i32 %i.ba, %i.bg
  %or.cond.i12 = and i1 %.not9.i, %i.bi
  br i1 %or.cond.i12, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.l

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.j
  %i.bj = and i16 %i.bb, 2
  %.not.i.i.i13 = icmp eq i16 %i.bj, 0
  %i.bk = load ptr, ptr %i.o, align 8
  %i.bl = select i1 %.not.i.i.i13, ptr %i.bk, ptr %i.n
  %i.bm = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.bl, i32 noundef %i.ba) #25
  %.not15 = icmp eq i8 %i.bm, 0
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.not15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.018, i64 80
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.018, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.l, %bb.d, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4512
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.k, %bb.b
  %.09 = phi ptr [ %i.j, %bb.b ], [ %i.bn, %bb.k ], [ %i.bq, %._crit_edge ]
  ret ptr %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK6icu_7810PatternMap9getHeaderEDs(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, i16 noundef zeroext %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = add i16 %1, -65
  %or.cond = icmp ult i16 %i.a, 26
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = add nuw nsw i64 %i.b, 4294967231
  %3 = and i64 %2, 4294967295
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = add i16 %1, -97
  %or.cond5 = icmp ult i16 %i.e, 26
  br i1 %or.cond5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i16 %1 to i64
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -560
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0.in = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.013 = phi ptr [ %.0, %bb.e ], [ null, %bb.c ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7824DateTimePatternGenerator16getBaseSkeletonsER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #25 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %1, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @_ZN6icu_7821DTSkeletonEnumerationC2ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(425) %i.k, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.pre = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %bb.g, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #25, !inline_history !76
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit, %bb.g, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ %i.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit ], [ null, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7824DateTimePatternGenerator13getRedundantsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %3 = alloca %"class.icu_78::DateTimeMatcher", align 16 ; 10 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #25 ; 13 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  tail call void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.f) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7822DTRedundantEnumerationE, i64 16), ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr null, ptr %i.i, align 8
  %.pr = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %.pr, 1
  br i1 %i.j, label %bb.f, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread118

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread

_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread:   ; preds = %bb.e
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.f:                                             ; preds = %.thread
  %i.m = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #25 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.p, i8 0, i64 65, i1 false)
  %i.q = load i32, ptr %1, align 4
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread108

.thread.i:                                        ; preds = %bb.f
  %i.s = load i32, ptr %1, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread118, label %bb.h

bb.h:                                             ; preds = %.thread.i
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread118

_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit: ; preds = %bb.g
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(152) %i.m) #25
  %.pre = load i32, ptr %1, align 4
  %i.u = icmp slt i32 %.pre, 1
  br i1 %i.u, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread108, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread118

_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread108: ; preds = %bb.g, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit
  %.sroa.16.0110 = phi ptr [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit ], [ %i.m, %bb.g ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread108
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.16.0110, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.16.0110, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.16.0110, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.16.0110, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.16.0110, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.16.0110, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4496 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i.lr.ph, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
  %.sroa.941.083131 = phi ptr [ null, %.preheader.i.lr.ph ], [ %.sroa.941.2.ph, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0 ] ; 3 uses
  %.sroa.4.085130 = phi i32 [ 0, %.preheader.i.lr.ph ], [ %.sroa.4.3.lcssa, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0 ] ; 3 uses
  %i.ap = sext i32 %.sroa.4.085130 to i64         ; 4 uses
  %.not.peel.i = icmp eq ptr %.sroa.941.083131, null ; 2 uses
  br i1 %.not.peel.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.preheader.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.941.083131, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not10.peel.i = icmp eq ptr %i.ar, null
  br i1 %.not10.peel.i, label %.backedge.peel.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.preheader.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ap
  %i.at = load ptr, ptr %i.as, align 8
  %.not9.peel.i = icmp eq ptr %i.at, null
  br i1 %.not9.peel.i, label %.backedge.peel.i, label %.lr.ph.i

.backedge.peel.i:                                 ; preds = %bb.j, %bb.i
  %indvars.iv.next.peel.i = add nsw i64 %i.ap, 1  ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv.next.peel.i, 52
  br i1 %exitcond.peel.not.i, label %.loopexit, label %.lr.ph.peel.next.i
end_hunk_1
