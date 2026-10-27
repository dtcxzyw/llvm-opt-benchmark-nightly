Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/numparse_affixes?download=true
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
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #15
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
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #15
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
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #15
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
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #15
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
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #15
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
  call void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(856) dereferenceable(856) %2) #15
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
  %i.f = shl nuw nsw i32 %i.b, 1                  ; 2 uses
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
  %.1.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.k)
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
  %i.f = shl nuw nsw i32 %i.b, 1                  ; 2 uses
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
  %.1.i.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.k)
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
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.u = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.t) #15 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.x = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #15 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.aa = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.z) #15 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ad = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.ac) #15 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 536
end_hunk_0
