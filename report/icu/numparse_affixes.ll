inline.NumInlined: 205
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK6icu_788numparse4impl13SymbolMatcher6getSetEv
declare noundef ptr @_ZNK6icu_788numparse4impl13SymbolMatcher6getSetEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse9minusSignEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::MinusSignMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53, !nonnull !29, !align !30
  call void @_ZN6icu_788numparse4impl16MinusSignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #17 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i8, ptr %i.k, align 8, !tbaa !59, !range !60, !noundef !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.l, ptr %i.m, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8, !tbaa !8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #17
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse8plusSignEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::PlusSignMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53, !nonnull !29, !align !30
  call void @_ZN6icu_788numparse4impl15PlusSignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #17 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i8, ptr %i.k, align 8, !tbaa !61, !range !60, !noundef !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.l, ptr %i.m, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8, !tbaa !8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #17
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse17approximatelySignEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::ApproximatelySignMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53, !nonnull !29, !align !30
  call void @_ZN6icu_788numparse4impl24ApproximatelySignMatcherC1ERKNS_20DecimalFormatSymbolsEb(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #17 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i8, ptr %i.k, align 8, !tbaa !62, !range !60, !noundef !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.l, ptr %i.m, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8, !tbaa !8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #17
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse7percentEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::PercentMatcher", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53, !nonnull !29, !align !30
  call void @_ZN6icu_788numparse4impl14PercentMatcherC1ERKNS_20DecimalFormatSymbolsE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #17 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8, !tbaa !8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #17
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse8permilleEv(ptr noundef nonnull align 8 dereferenceable(1376) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::numparse::impl::PermilleMatcher", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53, !nonnull !29, !align !30
  call void @_ZN6icu_788numparse4impl15PermilleMatcherC1ERKNS_20DecimalFormatSymbolsE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(2459) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #17 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl13SymbolMatcherE, i64 16), ptr %1, align 8, !tbaa !8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #17
  call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse8currencyER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1376) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::numparse::impl::CombinedCurrencyMatcher", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63, !nonnull !29, !align !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53, !nonnull !29, !align !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  call void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherC1ERKNS_6number4impl15CurrencySymbolsERKNS_20DecimalFormatSymbolsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(856) %2, ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(2459) %i.d, i32 noundef %i.f, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.h = call noundef nonnull align 8 dereferenceable(856) ptr @_ZN6icu_788numparse4impl23CombinedCurrencyMatcheraSEOS2_(ptr noundef nonnull align 8 dereferenceable(856) %i.g, ptr noundef nonnull align 8 dereferenceable(856) %2) #17
  call void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(856) dereferenceable(856) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.h
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouse20nextCodePointMatcherEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1376) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !65
  %i.b = load i32, ptr %2, align 4, !tbaa !66
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.e = call noundef ptr @_ZN6icu_7810MemoryPoolINS_8numparse4impl16CodePointMatcherELi8EE6createIJRiEEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %.not = icmp slt i32 %i.b, %i.e
  br i1 %.not, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %bb.c, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8, !tbaa !15
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.k)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.f)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.m = sext i32 %.1.i to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.l, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !16
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef %i.l)
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.c, align 8, !tbaa !10
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  store i8 1, ptr %i.o, align 4, !tbaa !16
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE6resizeEii.exit: ; preds = %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i, %bb.c, %bb.b, %bb.a
  %i.q = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !17
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.s
  store ptr %1, ptr %i.u, align 8, !tbaa !68
  ret void
}

; Function Attrs: uwtable
define void @_ZThn8_N6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %.not.i = icmp slt i32 %i.b, %i.e
  br i1 %.not.i, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1                      ; 3 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %bb.c, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #19 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 8, !tbaa !15
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.k)
  %.1.i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.f)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.m = sext i32 %.1.i.i to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.l, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uprv_free_78(ptr noundef %i.l)
  br label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i: ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.c, align 8, !tbaa !10
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  store i8 1, ptr %i.o, align 4, !tbaa !16
  br label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit

_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder10addMatcherERNS1_18NumberParseMatcherE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EE12releaseArrayEv.exit.i.i
  %i.q = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !17
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.s
  store ptr %1, ptr %i.u, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::numparse::impl::AffixPatternMatcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70, !nonnull !29, !align !30
  tail call void @_ZN6icu_788numparse4impl19AffixPatternMatcherC1ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEiRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_788numparse4impl26AffixTokenMatcherWarehouseC2EPKNS1_26AffixTokenMatcherSetupDataE(ptr noundef nonnull align 8 dereferenceable(1376) initializes((0, 26), (96, 114), (184, 202), (272, 290), (352, 370), (432, 440), (448, 458), (512, 522), (584, 594), (648, 658), (712, 722), (776, 786), (840, 850), (904, 914), (968, 978), (1032, 1042), (1096, 1106), (1160, 1170)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.c, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl16MinusSignMatcherE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 2, ptr %i.f, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl15PlusSignMatcherE, i64 16), ptr %i.d, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i16 2, ptr %i.i, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl24ApproximatelySignMatcherE, i64 16), ptr %i.g, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 2, ptr %i.l, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl14PercentMatcherE, i64 16), ptr %i.j, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.n, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i16 2, ptr %i.o, align 8, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_788numparse4impl15PermilleMatcherE, i64 16), ptr %i.m, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl23CombinedCurrencyMatcherE, i64 16), ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i16 2, ptr %i.r, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i16 2, ptr %i.t, align 8, !tbaa !71
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i16 2, ptr %i.u, align 8, !tbaa !71
  %.ptr.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1.i, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 2, ptr %i.v, align 8, !tbaa !71
  %.ptr.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i16 2, ptr %i.w, align 8, !tbaa !71
  %.ptr.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3.i, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i16 2, ptr %i.x, align 8, !tbaa !71
  %.ptr.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.4.i, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i16 2, ptr %i.y, align 8, !tbaa !71
  %.ptr.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.5.i, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i16 2, ptr %i.z, align 8, !tbaa !71
  %.ptr.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.6.i, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i16 2, ptr %i.aa, align 8, !tbaa !71
  %.ptr.ptr.7.i = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.7.i, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i16 2, ptr %i.ab, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ac, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i16 2, ptr %i.ad, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i16 2, ptr %i.af, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1237 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i32 40, ptr %i.ai, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i8 0, ptr %i.aj, align 4, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 0, ptr %i.ak, align 8, !tbaa !75
  store i8 0, ptr %i.ah, align 1, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i32 0, ptr %i.al, align 8, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr %i.an, ptr %i.am, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store i32 8, ptr %i.ao, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1308
  store i8 0, ptr %i.ap, align 4, !tbaa !79
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788numparse4impl23CombinedCurrencyMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(856) dereferenceable(856) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl23CombinedCurrencyMatcherE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.b = load i8, ptr %i.a, align 4, !tbaa !74
  %.not.i.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  invoke void @uprv_free_78(ptr noundef %i.d)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.h) #17
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1) #17
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.1) #17
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.2) #17
  %.ptr1.3 = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.3) #17
  %.ptr1.4 = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.4) #17
  %.ptr1.5 = getelementptr inbounds nuw i8, ptr %0, i64 280
end_hunk_0
begin_hunk_1_@_ZNK6icu_788numparse4impl16CodePointMatcher5matchERNS_13StringSegmentERNS1_12ParsedNumberER10UErrorCode:bb.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813StringSegment23adjustOffsetByCodePointEv(ptr noundef nonnull align 8 dereferenceable(17) %1)
  tail call void @_ZN6icu_788numparse4impl12ParsedNumber16setCharsConsumedERKNS_13StringSegmentE(ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

declare noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #3

declare void @_ZN6icu_7813StringSegment23adjustOffsetByCodePointEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #3

declare void @_ZN6icu_788numparse4impl12ParsedNumber16setCharsConsumedERKNS_13StringSegmentE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788numparse4impl16CodePointMatcher9smokeTestERKNS_13StringSegmentE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithEi(ptr noundef nonnull align 8 dereferenceable(17) %1, i32 noundef %i.b)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_788numparse4impl16CodePointMatcher8toStringEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !71
  %i.b = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 11, ptr nonnull @.str)
          to label %_ZN6icu_7813UnicodeStringC2IA12_DsvEERKT_.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #17
  resume { ptr, i32 } %i.c

_ZN6icu_7813UnicodeStringC2IA12_DsvEERKT_.exit:   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788numparse4impl19AffixPatternMatcher16fromAffixPatternERKNS_13UnicodeStringERNS1_26AffixTokenMatcherWarehouseEiPbR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::numparse::impl::AffixPatternMatcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1376) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::numparse::impl::AffixPatternMatcherBuilder", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !71
  %i.c = icmp ugt i16 %i.b, 31
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %4, align 1, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6icu_788numparse4impl19AffixPatternMatcherE, i64 16), ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 4, ptr %i.f, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.g, align 4, !tbaa !91
  store i16 0, ptr %i.e, align 2, !tbaa !92
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %4, align 1, !tbaa !86
  %i.h = and i32 %3, 512
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81, !nonnull !29, !align !30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderC1ERKNS_13UnicodeStringERNS1_26AffixTokenMatcherWarehouseEPNS1_17IgnorablesMatcherE(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1376) %2, ptr noundef %.0)
  invoke void @_ZN6icu_786number4impl10AffixUtils19iterateWithConsumerERKNS_13UnicodeStringERNS1_13TokenConsumerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17, !noalias !94
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70, !noalias !94, !nonnull !29, !align !30
  invoke void @_ZN6icu_788numparse4impl19AffixPatternMatcherC1ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEiRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder5buildER10UErrorCode.exit unwind label %bb.i

_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder5buildER10UErrorCode.exit: ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 16), ptr %6, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 64), ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.s = load i8, ptr %i.r, align 4, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder5buildER10UErrorCode.exit
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.t)
          to label %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit unwind label %bb.h, !inline_history !97

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #18, !inline_history !97
  unreachable

_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit: ; preds = %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilder5buildER10UErrorCode.exit, %bb.g
  call void @_ZN6icu_786number4impl13TokenConsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %6) #17, !inline_history !97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %i.w

bb.j:                                             ; preds = %_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN6icu_786number4impl10AffixUtils19iterateWithConsumerERKNS_13UnicodeStringERNS1_13TokenConsumerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788numparse4impl26AffixPatternMatcherBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788numparse4impl26AffixPatternMatcherBuilderE, i64 64), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i8, ptr %i.b, align 4, !tbaa !16
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.e)
          to label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_786number4impl13TokenConsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788numparse4impl19AffixPatternMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEiRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEi(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6icu_788numparse4impl19AffixPatternMatcherE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN6icu_788numparse4impl20CompactUnicodeStringILi4EEC2ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788numparse4impl18ArraySeriesMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) #17
  resume { ptr, i32 } %i.b
}

declare void @_ZN6icu_788numparse4impl18ArraySeriesMatcherC2ERNS_15MaybeStackArrayIPKNS1_18NumberParseMatcherELi3EEEi(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_788numparse4impl20CompactUnicodeStringILi4EEC2ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 14
  store ptr %i.k, ptr %0, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 4, ptr %i.l, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i8 0, ptr %i.m, align 4, !tbaa !91
  %i.n = icmp slt i32 %i.j, 1
  %i.o = icmp sgt i32 %i.h, 3
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.b, label %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.p = shl nuw i32 %i.i, 1
  %i.q = zext i32 %i.p to i64
  %i.r = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.q) #19
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.s = load i8, ptr %i.m, align 4, !tbaa !91
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !87
  invoke void @uprv_free_78(ptr noundef %i.t)
          to label %_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i unwind label %bb.e

_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i: ; preds = %bb.d, %bb.c
  store ptr %i.r, ptr %0, align 8, !tbaa !87
  store i32 %i.i, ptr %i.l, align 8, !tbaa !90
  store i8 1, ptr %i.m, align 4, !tbaa !91
  br label %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7815MaybeStackArrayIDsLi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(22) dereferenceable(22) %0) #17
  resume { ptr, i32 } %i.u

_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit: ; preds = %bb.a, %.noexc.i, %_ZN6icu_7815MaybeStackArrayIDsLi4EE12releaseArrayEv.exit.i.i
  %i.v = load i32, ptr %2, align 4, !tbaa !66
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !87
  %i.y = load i16, ptr %i.a, align 8, !tbaa !71   ; 4 uses
  %i.z = and i16 %i.y, 17
  %.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = and i16 %i.y, 2
  %.not2.i = icmp eq i16 %i.aa, 0
  br i1 %.not2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.ad, %bb.i ], [ %i.ab, %bb.h ], [ null, %bb.f ]
  %i.ae = icmp slt i16 %i.y, 0
  %i.af = ashr i16 %i.y, 5
  %i.ag = sext i16 %i.af to i32
  %i.ah = load i32, ptr %i.f, align 4
  %i.ai = select i1 %i.ae, i32 %i.ah, i32 %i.ag
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 2 %.0.i, i64 %i.ak, i1 false)
  %i.al = load i16, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.f, align 4
  %i.aq = select i1 %i.am, i32 %i.ap, i32 %i.ao
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %0, align 8, !tbaa !87
  %i.at = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.ar
  store i16 0, ptr %i.at, align 2, !tbaa !92
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIDsLi4EEC2Ei10UErrorCode.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788numparse4impl18ArraySeriesMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6icu_788numparse4impl18ArraySeriesMatcherE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !16
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.d)
          to label %_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable

_ZN6icu_7815MaybeStackArrayIPKNS_8numparse4impl18NumberParseMatcherELi3EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_788numparse4impl19AffixPatternMatcher10getPatternEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !98
  store ptr %i.b, ptr %2, align 8, !tbaa !101, !noalias !98
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef -1)
          to label %_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EE22toAliasedUnicodeStringEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %2, align 8, !tbaa !101, !noalias !98
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #17, !srcloc !103
  resume { ptr, i32 } %i.c

_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EE22toAliasedUnicodeStringEv.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !101, !noalias !98
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.e) #17, !srcloc !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788numparse4impl19AffixPatternMatchereqERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EEeqERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EEeqERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %3 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !87, !noalias !104
  store ptr %i.a, ptr %3, align 8, !tbaa !101, !noalias !104
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext 1, ptr noundef nonnull align 8 %3, i32 noundef -1)
          to label %_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EE22toAliasedUnicodeStringEv.exit unwind label %bb.b

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !101, !noalias !104
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.c) #17, !srcloc !103
  br label %common.resume

_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EE22toAliasedUnicodeStringEv.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !101, !noalias !104
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #17, !srcloc !103
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.e = load ptr, ptr %1, align 8, !tbaa !87, !noalias !107
  store ptr %i.e, ptr %2, align 8, !tbaa !101, !noalias !107
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef -1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_788numparse4impl20CompactUnicodeStringILi4EE22toAliasedUnicodeStringEv.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !101, !noalias !107
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.g) #17, !srcloc !103
  br label %.body

end_hunk_1
