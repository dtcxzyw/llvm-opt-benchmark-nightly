inline.NumInlined: 205
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6icu_788numparse4impl13SymbolMatcher6getSetEv
declare noundef ptr @_ZNK6icu_788numparse4impl13SymbolMatcher6getSetEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse9minusSignEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::MinusSignMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  call void @_ZN6icu_788numparse4impl16MinusSignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c, i1 noundef zeroext true) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.l, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse8plusSignEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::PlusSignMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  call void @_ZN6icu_788numparse4impl15PlusSignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c, i1 noundef zeroext true) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.l, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse17approximatelySignEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::ApproximatelySignMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  call void @_ZN6icu_788numparse4impl24ApproximatelySignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c, i1 noundef zeroext true) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i8, ptr %i.k, align 8, !range !7, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.l, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse7percentEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::PercentMatcher", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  call void @_ZN6icu_788numparse4impl14PercentMatcherC1ERKNS_20DecimalFormatSymbolsE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.i, ptr %i.j, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse8permilleEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::PermilleMatcher", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6
  call void @_ZN6icu_788numparse4impl15PermilleMatcherC1ERKNS_20DecimalFormatSymbolsE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.i, ptr %i.j, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #15
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse8currencyER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1376) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::numparse::impl::CombinedCurrencyMatcher", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i32, ptr %i.e, align 8
  call void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherC1ERKNS_6number4impl15CurrencySymbolsERKNS_20DecimalFormatSymbolsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(856) %2, ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(2459) %i.d, i32 noundef %i.f, ptr noundef nonnull align 4 dereferenceable(4) %1) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.h = call noundef nonnull align 8 dereferenceable(856) ptr @_ZN6icu_788numparse4impl23CombinedCurrencyMatcheraSEOS2_(ptr noundef nonnull align 8 dereferenceable(856) %i.g, ptr noundef nonnull align 8 dereferenceable(856) %2) #15
  call void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(856) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.h
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse20nextCodePointMatcherEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1376) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.e = call noundef ptr @_ZN6icu_7810MemoryPoolINS_8numparse4impl16CodePointMatcherELi8EE6createIJRiEEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp slt i32 %i.b, %i.e
  br i1 %.not, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i32 %i.b, 1                  ; 3 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %bb.c, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.k)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.f)
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.m = sext i32 %.1.i to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.l, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef %i.l) #15
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.c, align 8
  store i32 %i.f, ptr %i.d, align 8
  store i8 1, ptr %i.o, align 4
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit: ; preds = %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i, %bb.c, %bb.b, %bb.a
  %i.q = load i32, ptr %i.a, align 8              ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.a, align 8
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.s
  store ptr %1, ptr %i.u, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not.i = icmp slt i32 %i.b, %i.e
  br i1 %.not.i, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i32 %i.b, 1                  ; 3 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %bb.c, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.k)
  %.1.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.f)
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.m = sext i32 %.1.i.i to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.l, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef %i.l) #15
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i: ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.c, align 8
  store i32 %i.f, ptr %i.d, align 8
  store i8 1, ptr %i.o, align 4
  br label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit

_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i
  %i.q = load i32, ptr %i.a, align 8              ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.a, align 8
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.s
  store ptr %1, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder5buildER10UErrorCode(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::numparse::impl::AffixPatternMatcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  tail call void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.c) #15
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6icu_788numparse4impl19AffixPatternMatcherE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6icu_788numparse4impl20CompactUnicodeStringILi4EEC2ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouseC2EPKNS1_26AffixTokenMatcherSetupDataE(ptr noundef nonnull align 8 dereferenceable(1376) initializes((0, 26), (96, 114), (184, 202), (272, 290), (352, 370), (432, 440), (448, 458), (512, 522), (584, 594), (648, 658), (712, 722), (776, 786), (840, 850), (904, 914), (968, 978), (1032, 1042), (1096, 1106), (1160, 1170)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl16MinusSignMatcherE, i64 16), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 2, ptr %i.f, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl15PlusSignMatcherE, i64 16), ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i16 2, ptr %i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl24ApproximatelySignMatcherE, i64 16), ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 2, ptr %i.l, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl14PercentMatcherE, i64 16), ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i16 2, ptr %i.o, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl15PermilleMatcherE, i64 16), ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl23CombinedCurrencyMatcherE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i16 2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i16 2, ptr %i.t, align 8
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i16 2, ptr %i.u, align 8
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 2, ptr %i.v, align 8
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i16 2, ptr %i.w, align 8
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i16 2, ptr %i.x, align 8
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i16 2, ptr %i.y, align 8
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i16 2, ptr %i.z, align 8
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i16 2, ptr %i.aa, align 8
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i16 2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i16 2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i16 2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1237 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i32 40, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i8 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 0, ptr %i.ak, align 8
  store i8 0, ptr %i.ah, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i32 8, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1308
  store i8 0, ptr %i.ap, align 4
  ret void
}

declare void @_ZN6icu_788numparse4impl16MinusSignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef nonnull align 8 dereferenceable(2459), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN6icu_788numparse4impl15PlusSignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef nonnull align 8 dereferenceable(2459), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN6icu_788numparse4impl24ApproximatelySignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef nonnull align 8 dereferenceable(2459), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN6icu_788numparse4impl14PercentMatcherC1ERKNS_20DecimalFormatSymbolsE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(2459)) unnamed_addr #2

declare void @_ZN6icu_788numparse4impl15PermilleMatcherC1ERKNS_20DecimalFormatSymbolsE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(2459)) unnamed_addr #2

declare void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherC1ERKNS_6number4impl15CurrencySymbolsERKNS_20DecimalFormatSymbolsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(856), ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(2459), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(856) ptr @_ZN6icu_788numparse4impl23CombinedCurrencyMatcheraSEOS2_(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull align 8 dereferenceable(856) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #15 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h) #15 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = load i8, ptr %i.j, align 8, !range !7, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.o = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.n) #15 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.r = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.q) #15 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7810MemoryPoolINS_8numparse4impl16CodePointMatcherELi8EE6createIJRiEEEPS3_DpOT_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_788numparse4impl26AffixTokenMatcherWarehouse22hasEmptyCurrencySymbolEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1376) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_786number4impl15CurrencySymbols22hasEmptyCurrencySymbolEv(ptr noundef nonnull align 8 dereferenceable(232) %i.b) #15
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZNK6icu_786number4impl15CurrencySymbols22hasEmptyCurrencySymbolEv(ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_788numparse4impl16CodePointMatcherC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl16CodePointMatcherE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_788numparse4impl16CodePointMatcher5matchERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithEi(ptr noundef nonnull align 8 dereferenceable(17) %1, i32 noundef %i.b) #15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813StringSegment23adjustOffsetByCodePointEv(ptr noundef nonnull align 8 dereferenceable(17) %1) #15
  tail call void @_ZN6icu_788numparse4impl12ParsedNumber16setCharsConsumedERKNS_13StringSegmentE(ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(17) %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

declare noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813StringSegment23adjustOffsetByCodePointEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #2

declare void @_ZN6icu_788numparse4impl12ParsedNumber16setCharsConsumedERKNS_13StringSegmentE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_788numparse4impl16CodePointMatcher9smokeTestERKNS_13StringSegmentE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithEi(ptr noundef nonnull align 8 dereferenceable(17) %1, i32 noundef %i.b) #15
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_788numparse4impl16CodePointMatcher8toStringEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
_ZN6icu_7813UnicodeStringC2IA12_DsvEERKT_.exit:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 11, ptr nonnull @.str) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl19AffixPatternMatcher16fromAffixPatternERKNS_13UnicodeStringERNS1_26AffixTokenMatcherWarehouseEiPbR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::numparse::impl::AffixPatternMatcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1376) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::numparse::impl::AffixPatternMatcherBuilder", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp ugt i16 %i.b, 31
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %4, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #15
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6icu_788numparse4impl19AffixPatternMatcherE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.g, align 4
  store i16 0, ptr %i.e, align 2
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %4, align 1
  %i.h = and i32 %3, 512
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 16), ptr %6, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 64), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  store i8 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %.0, ptr %i.u, align 8
  call void @_ZN6icu_786number4impl10AffixUtils19iterateWithConsumerERKNS_13UnicodeStringERNS1_13TokenConsumerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %5) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.v = load i32, ptr %i.q, align 8, !noalias !8
  %i.w = load ptr, ptr %i.s, align 8, !noalias !8, !nonnull !5, !align !6
  call void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i32 noundef %i.v) #15
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6icu_788numparse4impl19AffixPatternMatcherE, i64 16), ptr %0, align 8, !alias.scope !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN6icu_788numparse4impl20CompactUnicodeStringILi4EEC2ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %5)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 16), ptr %6, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 64), ptr %i.l, align 8
  %i.y = load i8, ptr %i.p, align 4
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.m, align 8
  call void @uprv_free_78(ptr noundef %i.z) #15, !inline_history !11
  br label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit

_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit: ; preds = %bb.e, %bb.f
  call void @_ZN6icu_786number4impl13TokenConsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %6) #15, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.g

bb.g:                                             ; preds = %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_ZN6icu_786number4impl10AffixUtils19iterateWithConsumerERKNS_13UnicodeStringERNS1_13TokenConsumerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i8, ptr %i.b, align 4
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @uprv_free_78(ptr noundef %i.e) #15
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_786number4impl13TokenConsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl19AffixPatternMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEiRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) #15
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6icu_788numparse4impl19AffixPatternMatcherE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6icu_788numparse4impl20CompactUnicodeStringILi4EEC2ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

declare void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEi(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_788numparse4impl20CompactUnicodeStringILi4EEC2ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = load i32, ptr %2, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 14
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 4, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i8 0, ptr %i.m, align 4
  %i.n = icmp slt i32 %i.j, 1
  %i.o = icmp sgt i32 %i.h, 3
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.b, label %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.p = shl nuw i32 %i.i, 1
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.q) #17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.m, align 4
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.t) #15
  br label %_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i

_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i: ; preds = %bb.d, %bb.c
  store ptr %i.r, ptr %0, align 8
  store i32 %i.i, ptr %i.l, align 8
  store i8 1, ptr %i.m, align 4
  br label %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit

_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit: ; preds = %bb.a, %bb.b, %_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i
  %i.u = load i32, ptr %2, align 4
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit
  %i.w = load ptr, ptr %0, align 8
  %i.x = load i16, ptr %i.a, align 8              ; 4 uses
  %i.y = and i16 %i.x, 17
  %.not.i = icmp eq i16 %i.y, 0
  br i1 %.not.i, label %bb.f, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.f:                                             ; preds = %bb.e
  %i.z = and i16 %i.x, 2
  %.not2.i = icmp eq i16 %i.z, 0
  br i1 %.not2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ac, %bb.h ], [ %i.aa, %bb.g ], [ null, %bb.e ]
  %i.ad = icmp slt i16 %i.x, 0
  %i.ae = ashr i16 %i.x, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.f, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.w, ptr align 2 %.0.i, i64 %i.aj, i1 false)
  %i.ak = load i16, ptr %i.a, align 8             ; 2 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.f, align 4
  %i.ap = select i1 %i.al, i32 %i.ao, i32 %i.an
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.aq
  store i16 0, ptr %i.as, align 2
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_788numparse4impl19AffixPatternMatcher10getPatternEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = load ptr, ptr %i.a, align 8, !noalias !12
  store ptr %i.b, ptr %2, align 8, !noalias !12
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 1, ptr noundef nonnull %2, i32 noundef -1) #15
  %i.c = load ptr, ptr %2, align 8, !noalias !12
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.c) #15, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_788numparse4impl19AffixPatternMatchereqERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EEeqERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EEeqERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %3 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %0, align 8, !noalias !16
  store ptr %i.a, ptr %3, align 8, !noalias !16
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext 1, ptr noundef nonnull %3, i32 noundef -1) #15
  %i.b = load ptr, ptr %3, align 8, !noalias !16
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.b) #15, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr %1, align 8, !noalias !19
  store ptr %i.c, ptr %2, align 8, !noalias !19
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 1, ptr noundef nonnull %2, i32 noundef -1) #15
  %i.d = load ptr, ptr %2, align 8, !noalias !19
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #15, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i16, ptr %i.e, align 8              ; 3 uses
  %i.g = and i16 %i.f, 1
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i16, ptr %i.h, align 8
  %i.j = trunc i16 %i.i to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp slt i16 %i.f, 0
  %i.l = ashr i16 %i.f, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i16, ptr %i.q, align 8              ; 4 uses
  %i.s = icmp slt i16 %i.r, 0
  %i.t = ashr i16 %i.r, 5
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = select i1 %i.s, i32 %i.w, i32 %i.u
  %i.y = and i16 %i.r, 1
  %.not9.i = icmp eq i16 %i.y, 0
  %i.z = icmp eq i32 %i.p, %i.x
  %or.cond.i = and i1 %.not9.i, %i.z
  br i1 %or.cond.i, label %bb.d, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = and i16 %i.r, 2
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %.not.i.i.i, ptr %i.ad, ptr %i.ab
  %i.af = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.ae, i32 noundef %i.p) #15
  %i.ag = icmp ne i8 %i.af, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.j, %bb.b ], [ %i.ag, %bb.d ], [ false, %bb.c ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788numparse4impl21AffixMatcherWarehouseC2EPNS1_26AffixTokenMatcherWarehouseE(ptr noundef nonnull align 8 dereferenceable(1544) initializes((0, 8), (32, 40), (64, 72), (96, 104), (128, 136), (160, 168), (192, 200), (224, 232), (256, 264), (288, 296), (320, 328), (352, 360), (384, 392), (416, 424), (448, 456), (480, 488), (512, 520), (544, 552)) %0, ptr noundef %1) unnamed_addr #1 align 2 {
.preheader.preheader:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl12AffixMatcherE, i64 16), ptr %0, align 8
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl12AffixMatcherE, i64 16), ptr %.ptr.1, align 8
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl12AffixMatcherE, i64 16), ptr %.ptr.2, align 8
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl12AffixMatcherE, i64 16), ptr %.ptr.3, align 8
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl12AffixMatcherE, i64 16), ptr %.ptr.4, align 8
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 160
end_hunk_1
