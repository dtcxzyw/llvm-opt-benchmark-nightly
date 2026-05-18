inline.NumInlined: 174
inline.NumDeleted: 56
begin_hunk_0
@_ZN6icu_78L20gCurrencySudMatchTagE = internal constant [17 x i8] c"surroundingMatch\00", align 16
@_ZN6icu_78L21gCurrencyInsertBtnTagE = internal constant [14 x i8] c"insertBetween\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"[:letter:]\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"[:digit:]\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1

@_ZN6icu_7820DecimalFormatSymbolsC1ER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7820DecimalFormatSymbolsC2ER10UErrorCode
@_ZN6icu_7820DecimalFormatSymbolsC1ERKNS_6LocaleER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6icu_7820DecimalFormatSymbolsC2ERKNS_6LocaleER10UErrorCode
@_ZN6icu_7820DecimalFormatSymbolsC1ERKNS_6LocaleERKNS_15NumberingSystemER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN6icu_7820DecimalFormatSymbolsC2ERKNS_6LocaleERKNS_15NumberingSystemER10UErrorCode
@_ZN6icu_7820DecimalFormatSymbolsC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7820DecimalFormatSymbolsC2Ev
@_ZN6icu_7820DecimalFormatSymbolsD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7820DecimalFormatSymbolsD2Ev
@_ZN6icu_7820DecimalFormatSymbolsC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7820DecimalFormatSymbolsC2ERKS0_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN6icu_7820DecimalFormatSymbols16getStaticClassIDEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7820DecimalFormatSymbols16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7820DecimalFormatSymbols17getDynamicClassIDEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7820DecimalFormatSymbols16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820DecimalFormatSymbolsC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2459) initializes((0, 18), (72, 82), (136, 146), (200, 210), (264, 274), (328, 338), (392, 402), (456, 466), (520, 530), (584, 594), (648, 658), (712, 722), (776, 786), (840, 850), (904, 914), (968, 978), (1032, 1042), (1096, 1106), (1160, 1170), (1224, 1234), (1288, 1298), (1352, 1362), (1416, 1426), (1480, 1490), (1544, 1554), (1608, 1618), (1672, 1682), (1736, 1746), (1800, 1810), (1864, 1874)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
.preheader19.preheader:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7820DecimalFormatSymbolsE, i64 16), ptr %0, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.a, align 8
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 2, ptr %i.b, align 8
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 2, ptr %i.c, align 8
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.d, align 8
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 2, ptr %i.e, align 8
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.f, align 8
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i16 2, ptr %i.g, align 8
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i16 2, ptr %i.h, align 8
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.8, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i16 2, ptr %i.i, align 8
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.9, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i16 2, ptr %i.j, align 8
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.10, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 2, ptr %i.k, align 8
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.11, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i16 2, ptr %i.l, align 8
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.12, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i16 2, ptr %i.m, align 8
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.13, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i16 2, ptr %i.n, align 8
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.14, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i16 2, ptr %i.o, align 8
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.15, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i16 2, ptr %i.p, align 8
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.16, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i16 2, ptr %i.q, align 8
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.17, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i16 2, ptr %i.r, align 8
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.18, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i16 2, ptr %i.s, align 8
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.19, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i16 2, ptr %i.t, align 8
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.20, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i16 2, ptr %i.u, align 8
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.21, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store i16 2, ptr %i.v, align 8
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.22, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i16 2, ptr %i.w, align 8
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.23, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i16 2, ptr %i.x, align 8
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.24, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i16 2, ptr %i.y, align 8
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.25, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i16 2, ptr %i.z, align 8
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.26, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i16 2, ptr %i.aa, align 8
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %0, i64 1736
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.27, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1744
  store i16 2, ptr %i.ab, align 8
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.28, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i16 2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1872
  store i16 2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1976
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2016
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store ptr null, ptr %i.ai, align 8
  %.ptr6 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr6, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2072
  store i16 2, ptr %i.aj, align 8
  %.ptr6.1 = getelementptr inbounds nuw i8, ptr %0, i64 2128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr6.1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store i16 2, ptr %i.ak, align 8
  %.ptr6.2 = getelementptr inbounds nuw i8, ptr %0, i64 2192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr6.2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store i16 2, ptr %i.al, align 8
  %.ptr11 = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr11, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2264
  store i16 2, ptr %i.am, align 8
  %.ptr11.1 = getelementptr inbounds nuw i8, ptr %0, i64 2320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr11.1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2328
  store i16 2, ptr %i.an, align 8
  %.ptr11.2 = getelementptr inbounds nuw i8, ptr %0, i64 2384
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr11.2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2392
  store i16 2, ptr %i.ao, align 8
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 2450
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %scevgep, i8 0, i64 9, i1 false)
  tail call void @_ZN6icu_7820DecimalFormatSymbols10initializeERKNS_6LocaleER10UErrorCodeaPKNS_15NumberingSystemE(ptr noundef nonnull align 8 dereferenceable(2459) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 4 dereferenceable(4) %1, i8 noundef signext 1, ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820DecimalFormatSymbols10initializeERKNS_6LocaleER10UErrorCodeaPKNS_15NumberingSystemE(ptr noundef nonnull align 8 dereferenceable(2459) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i8 noundef signext %3, ptr noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %8 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %9 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %10 = alloca %"struct.icu_78::(anonymous namespace)::DecFmtSymDataSink", align 8 ; 13 uses
  %11 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [4 x i16], align 2                ; 4 uses
  %15 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %16 = alloca %"struct.icu_78::(anonymous namespace)::CurrencySpacingSink", align 8 ; 8 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7820DecimalFormatSymbols10initializeEv(ptr noundef nonnull align 8 dereferenceable(2459) %0)
  %i.e = icmp eq ptr %4, null
  br i1 %i.e, label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEE12adoptInsteadEPS1_.exit, label %bb.c

_ZN6icu_7812LocalPointerINS_15NumberingSystemEE12adoptInsteadEPS1_.exit: ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_7815NumberingSystem14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #11 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_15NumberingSystemEE12adoptInsteadEPS1_.exit, %bb.b
  %.sroa.0103.0 = phi ptr [ %i.f, %_ZN6icu_7812LocalPointerINS_15NumberingSystemEE12adoptInsteadEPS1_.exit ], [ null, %bb.b ] ; 3 uses
  %.0 = phi ptr [ %i.f, %_ZN6icu_7812LocalPointerINS_15NumberingSystemEE12adoptInsteadEPS1_.exit ], [ %4, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %2, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i32 @_ZNK6icu_7815NumberingSystem8getRadixEv(ptr noundef nonnull align 8 dereferenceable(86) %.0) #11
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef signext i8 @_ZNK6icu_7815NumberingSystem13isAlgorithmicEv(ptr noundef nonnull align 8 dereferenceable(86) %.0) #11
  %.not75 = icmp eq i8 %i.k, 0
  br i1 %.not75, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @_ZNK6icu_7815NumberingSystem7getNameEv(ptr noundef nonnull align 8 dereferenceable(86) %.0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.m = load ptr, ptr %.0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(86) %.0) #11
  %i.p = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0) #11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.q) #11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load i16, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp slt i16 %i.s, 0
  %i.u = ashr i16 %i.s, 5
  %i.v = sext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.x = load i32, ptr %i.w, align 4
  %i.y = select i1 %i.t, i32 %i.x, i32 %i.v
  %i.z = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i32 noundef 0, i32 noundef %i.y, i32 noundef %i.p) #11 ; 0 uses
  %i.aa = icmp ult i32 %i.p, 65536
  %i.ab = select i1 %i.aa, i32 1, i32 2           ; 2 uses
  %i.ac = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.ab) #11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ad) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.af = load i16, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = select i1 %i.ag, i32 %i.ak, i32 %i.ai
  %i.am = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i32 noundef 0, i32 noundef %i.al, i32 noundef %i.ac) #11 ; 0 uses
  %i.an = icmp ult i32 %i.ac, 65536
  %i.ao = select i1 %i.an, i32 1, i32 2
  %i.ap = add nuw nsw i32 %i.ao, %i.ab            ; 2 uses
  %i.aq = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.ap) #11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ar) #11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.at = load i16, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1236
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = select i1 %i.au, i32 %i.ay, i32 %i.aw
  %i.ba = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef 0, i32 noundef %i.az, i32 noundef %i.aq) #11 ; 0 uses
  %i.bb = icmp ult i32 %i.aq, 65536
  %i.bc = select i1 %i.bb, i32 1, i32 2
  %i.bd = add nuw nsw i32 %i.bc, %i.ap            ; 2 uses
  %i.be = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.bd) #11 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bf) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bh = load i16, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp slt i16 %i.bh, 0
  %i.bj = ashr i16 %i.bh, 5
  %i.bk = sext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1300
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = select i1 %i.bi, i32 %i.bm, i32 %i.bk
  %i.bo = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i32 noundef 0, i32 noundef %i.bn, i32 noundef %i.be) #11 ; 0 uses
  %i.bp = icmp ult i32 %i.be, 65536
  %i.bq = select i1 %i.bp, i32 1, i32 2
  %i.br = add nuw nsw i32 %i.bq, %i.bd            ; 2 uses
  %i.bs = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.br) #11 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bt) #11
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.bv = load i16, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp slt i16 %i.bv, 0
  %i.bx = ashr i16 %i.bv, 5
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = select i1 %i.bw, i32 %i.ca, i32 %i.by
  %i.cc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, i32 noundef 0, i32 noundef %i.cb, i32 noundef %i.bs) #11 ; 0 uses
  %i.cd = icmp ult i32 %i.bs, 65536
  %i.ce = select i1 %i.cd, i32 1, i32 2
  %i.cf = add nuw nsw i32 %i.ce, %i.br            ; 2 uses
  %i.cg = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.cf) #11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ch) #11
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.cj = load i16, ptr %i.ci, align 8            ; 2 uses
  %i.ck = icmp slt i16 %i.cj, 0
  %i.cl = ashr i16 %i.cj, 5
  %i.cm = sext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = select i1 %i.ck, i32 %i.co, i32 %i.cm
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.ch, i32 noundef 0, i32 noundef %i.cp, i32 noundef %i.cg) #11 ; 0 uses
  %i.cr = icmp ult i32 %i.cg, 65536
  %i.cs = select i1 %i.cr, i32 1, i32 2
  %i.ct = add nuw nsw i32 %i.cs, %i.cf            ; 2 uses
  %i.cu = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.ct) #11 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cv) #11
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.cx = load i16, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp slt i16 %i.cx, 0
  %i.cz = ashr i16 %i.cx, 5
  %i.da = sext i16 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1492
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = select i1 %i.cy, i32 %i.dc, i32 %i.da
  %i.de = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, i32 noundef 0, i32 noundef %i.dd, i32 noundef %i.cu) #11 ; 0 uses
  %i.df = icmp ult i32 %i.cu, 65536
  %i.dg = select i1 %i.df, i32 1, i32 2
  %i.dh = add nuw nsw i32 %i.dg, %i.ct            ; 2 uses
  %i.di = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.dh) #11 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dj) #11
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.dl = load i16, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp slt i16 %i.dl, 0
  %i.dn = ashr i16 %i.dl, 5
  %i.do = sext i16 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = select i1 %i.dm, i32 %i.dq, i32 %i.do
  %i.ds = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, i32 noundef 0, i32 noundef %i.dr, i32 noundef %i.di) #11 ; 0 uses
  %i.dt = icmp ult i32 %i.di, 65536
  %i.du = select i1 %i.dt, i32 1, i32 2
  %i.dv = add nuw nsw i32 %i.du, %i.dh            ; 2 uses
  %i.dw = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.dv) #11 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dx) #11
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.dz = load i16, ptr %i.dy, align 8            ; 2 uses
  %i.ea = icmp slt i16 %i.dz, 0
  %i.eb = ashr i16 %i.dz, 5
  %i.ec = sext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1620
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = select i1 %i.ea, i32 %i.ee, i32 %i.ec
  %i.eg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, i32 noundef 0, i32 noundef %i.ef, i32 noundef %i.dw) #11 ; 0 uses
  %i.eh = icmp ult i32 %i.dw, 65536
  %i.ei = select i1 %i.eh, i32 1, i32 2
  %i.ej = add nuw nsw i32 %i.ei, %i.dv
  %i.ek = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.ej) #11
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.el) #11
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.en = load i16, ptr %i.em, align 8            ; 2 uses
  %i.eo = icmp slt i16 %i.en, 0
  %i.ep = ashr i16 %i.en, 5
  %i.eq = sext i16 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1684
  %i.es = load i32, ptr %i.er, align 4
  %i.et = select i1 %i.eo, i32 %i.es, i32 %i.eq
  %i.eu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %i.el, i32 noundef 0, i32 noundef %i.et, i32 noundef %i.ek) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.063 = phi ptr [ %i.l, %bb.f ], [ @_ZN6icu_78L5gLatnE, %bb.e ], [ @_ZN6icu_78L5gLatnE, %bb.d ], [ @_ZN6icu_78L5gLatnE, %bb.c ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2450
  %i.ew = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ev, ptr noundef nonnull dereferenceable(1) %.063) #11 ; 0 uses
  %i.ex = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #11 ; 3 uses
  %i.ey = call ptr @ures_open_78(ptr noundef null, ptr noundef %i.ex, ptr noundef nonnull %2) #11 ; 5 uses
  %i.ez = call ptr @ures_getByKeyWithFallback_78(ptr noundef %i.ey, ptr noundef nonnull @_ZN6icu_78L15gNumberElementsE, ptr noundef null, ptr noundef nonnull %2) #11 ; 4 uses
  %i.fa = load i32, ptr %2, align 4
  %i.fb = icmp slt i32 %i.fa, 1
  br i1 %i.fb, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not84 = icmp eq i8 %3, 0
  br i1 %.not84, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -127, ptr %2, align 4
  call void @_ZN6icu_7820DecimalFormatSymbols10initializeEv(ptr noundef nonnull align 8 dereferenceable(2459) %0)
  br label %bb.aj

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.fc = call ptr @ures_getLocaleByType_78(ptr noundef %i.ez, i32 noundef 0, ptr noundef nonnull %2) #11
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %i.fc, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.fe = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fd, ptr noundef nonnull align 8 dereferenceable(40) %8) #11 ; 0 uses
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ff = call ptr @ures_getLocaleByType_78(ptr noundef %i.ez, i32 noundef 1, ptr noundef nonnull %2) #11
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %i.ff, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.fh = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull align 8 dereferenceable(40) %9) #11 ; 0 uses
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_117DecFmtSymDataSinkE, i64 16), ptr %10, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %0, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.fj, i8 0, i64 29, i1 false)
  %i.fk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.063, ptr noundef nonnull dereferenceable(5) @_ZN6icu_78L5gLatnE) #12
  %.not77 = icmp eq i32 %i.fk, 0
  br i1 %.not77, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 13 ; 2 uses
  store ptr %i.fl, ptr %11, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 40, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i8 0, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i32 0, ptr %i.fo, align 8
  store i8 0, ptr %i.fl, align 1
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull @_ZN6icu_78L15gNumberElementsE) #11
  %i.fp = load ptr, ptr %12, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %11, ptr noundef %i.fp, i32 noundef %i.fr, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %i.ft = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.fs, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull %.063) #11
  %i.fu = load ptr, ptr %13, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ft, ptr noundef %i.fu, i32 noundef %i.fw, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %i.fy = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.fx, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull @_ZN6icu_78L8gSymbolsE) #11
  %i.fz = load ptr, ptr %14, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gb = load i32, ptr %i.ga, align 8
  %i.gc = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.fy, ptr noundef %i.fz, i32 noundef %i.gb, ptr noundef nonnull align 4 dereferenceable(4) %2) #11 ; 0 uses
  %i.gd = load ptr, ptr %11, align 8
  call void @ures_getAllItemsWithFallback_78(ptr noundef %i.ey, ptr noundef %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %i.ge = load i32, ptr %2, align 4               ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 2
  br i1 %i.gf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %2, align 4
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.gg = icmp slt i32 %i.ge, 1
  br i1 %i.gg, label %.critedge, label %bb.o

.critedge:                                        ; preds = %bb.m, %bb.l
  %i.gh = load i8, ptr %i.fn, align 4
  %.not.i.i.i = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.gi = load ptr, ptr %11, align 8
  call void @uprv_free_78(ptr noundef %i.gi) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %17 = load <26 x i8>, ptr %i.fj, align 8
  %.fr = freeze <26 x i8> %17
  %18 = icmp eq <26 x i8> %.fr, zeroinitializer
  %19 = bitcast <26 x i1> %18 to i26
  %i.gj = icmp ne i26 %19, 0
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.gk = load i8, ptr %i.fn, align 4
  %.not.i.i.i86 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i86, label %_ZN6icu_7810CharStringD2Ev.exit87, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gl = load ptr, ptr %11, align 8
  call void @uprv_free_78(ptr noundef %i.gl) #11
  br label %_ZN6icu_7810CharStringD2Ev.exit87

_ZN6icu_7810CharStringD2Ev.exit87:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ai

bb.q:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.j
  %.not.i = phi i1 [ %i.gj, %_ZN6icu_7810CharStringD2Ev.exit ], [ true, %bb.j ]
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 26
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 33
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 42
  %i.gp = load i8, ptr %i.go, align 2
  %.not.26.i = icmp eq i8 %i.gp, 0
  %or.cond60.i = select i1 %.not.i, i1 true, i1 %.not.26.i
  %i.gq = getelementptr inbounds nuw i8, ptr %10, i64 43
  %i.gr = load i8, ptr %i.gq, align 1
  %.not.27.i = icmp eq i8 %i.gr, 0
  %or.cond62.i = select i1 %or.cond60.i, i1 true, i1 %.not.27.i
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.gt = load i8, ptr %i.gs, align 4
  %.not.28.i = icmp eq i8 %i.gt, 0
  %or.cond64.i = select i1 %or.cond62.i, i1 true, i1 %.not.28.i
  br i1 %or.cond64.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ures_getAllItemsWithFallback_78(ptr noundef %i.ey, ptr noundef nonnull @_ZN6icu_78L26gNumberElementsLatnSymbolsE, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %i.gu = load i32, ptr %2, align 4
  %i.gv = icmp slt i32 %i.gu, 1
  br i1 %i.gv, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gw = load i8, ptr %i.gm, align 2
  %.not.i88 = icmp eq i8 %i.gw, 0
  br i1 %.not.i88, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gy = load ptr, ptr %i.fi, align 8, !nonnull !5, !align !6
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 648
  %i.ha = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gz, ptr noundef nonnull align 8 dereferenceable(64) %i.gx) #11 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hb = load i8, ptr %i.gn, align 1
  %.not3.i = icmp eq i8 %i.hb, 0
  br i1 %.not3.i, label %bb.v, label %_ZN6icu_7812_GLOBAL__N_117DecFmtSymDataSink32resolveMissingMonetarySeparatorsEPKNS_13UnicodeStringE.exit

bb.v:                                             ; preds = %bb.u
  %i.hc = load ptr, ptr %i.fi, align 8, !nonnull !5, !align !6
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 1096
  %i.hf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.he, ptr noundef nonnull align 8 dereferenceable(64) %i.hd) #11 ; 0 uses
  br label %_ZN6icu_7812_GLOBAL__N_117DecFmtSymDataSink32resolveMissingMonetarySeparatorsEPKNS_13UnicodeStringE.exit

_ZN6icu_7812_GLOBAL__N_117DecFmtSymDataSink32resolveMissingMonetarySeparatorsEPKNS_13UnicodeStringE.exit: ; preds = %bb.u, %bb.v
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.hh = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.hg, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81 = icmp eq i32 %i.hh, 1
  br i1 %.not81, label %.thread, label %.thread109

.thread:                                          ; preds = %_ZN6icu_7812_GLOBAL__N_117DecFmtSymDataSink32resolveMissingMonetarySeparatorsEPKNS_13UnicodeStringE.exit
  %i.hi = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hg, i32 noundef 0) #11 ; 10 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.hk = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.hj, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.1 = icmp eq i32 %i.hk, 1
  br i1 %.not81.1, label %bb.w, label %.thread109

bb.w:                                             ; preds = %.thread
  %i.hl = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hj, i32 noundef 0) #11
  %i.hm = add nsw i32 %i.hi, 1
  %.not82.1 = icmp eq i32 %i.hl, %i.hm
  br i1 %.not82.1, label %.thread.1, label %.thread109

.thread.1:                                        ; preds = %bb.w
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.ho = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.hn, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.2 = icmp eq i32 %i.ho, 1
  br i1 %.not81.2, label %bb.x, label %.thread109

bb.x:                                             ; preds = %.thread.1
  %i.hp = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hn, i32 noundef 0) #11
  %i.hq = add nsw i32 %i.hi, 2
  %.not82.2 = icmp eq i32 %i.hp, %i.hq
  br i1 %.not82.2, label %.thread.2, label %.thread109

.thread.2:                                        ; preds = %bb.x
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.hs = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.hr, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.3 = icmp eq i32 %i.hs, 1
  br i1 %.not81.3, label %bb.y, label %.thread109

bb.y:                                             ; preds = %.thread.2
  %i.ht = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hr, i32 noundef 0) #11
  %i.hu = add nsw i32 %i.hi, 3
  %.not82.3 = icmp eq i32 %i.ht, %i.hu
  br i1 %.not82.3, label %.thread.3, label %.thread109

.thread.3:                                        ; preds = %bb.y
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.hw = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.hv, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.4 = icmp eq i32 %i.hw, 1
  br i1 %.not81.4, label %bb.z, label %.thread109

bb.z:                                             ; preds = %.thread.3
  %i.hx = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hv, i32 noundef 0) #11
  %i.hy = add nsw i32 %i.hi, 4
  %.not82.4 = icmp eq i32 %i.hx, %i.hy
  br i1 %.not82.4, label %.thread.4, label %.thread109

.thread.4:                                        ; preds = %bb.z
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.ia = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.hz, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.5 = icmp eq i32 %i.ia, 1
  br i1 %.not81.5, label %bb.aa, label %.thread109

bb.aa:                                            ; preds = %.thread.4
  %i.ib = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hz, i32 noundef 0) #11
  %i.ic = add nsw i32 %i.hi, 5
  %.not82.5 = icmp eq i32 %i.ib, %i.ic
  br i1 %.not82.5, label %.thread.5, label %.thread109

.thread.5:                                        ; preds = %bb.aa
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 2 uses
  %i.ie = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.id, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.6 = icmp eq i32 %i.ie, 1
  br i1 %.not81.6, label %bb.ab, label %.thread109

bb.ab:                                            ; preds = %.thread.5
  %i.if = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.id, i32 noundef 0) #11
  %i.ig = add nsw i32 %i.hi, 6
  %.not82.6 = icmp eq i32 %i.if, %i.ig
  br i1 %.not82.6, label %.thread.6, label %.thread109

.thread.6:                                        ; preds = %bb.ab
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.ii = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.ih, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.7 = icmp eq i32 %i.ii, 1
  br i1 %.not81.7, label %bb.ac, label %.thread109

bb.ac:                                            ; preds = %.thread.6
  %i.ij = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ih, i32 noundef 0) #11
  %i.ik = add nsw i32 %i.hi, 7
  %.not82.7 = icmp eq i32 %i.ij, %i.ik
  br i1 %.not82.7, label %.thread.7, label %.thread109

.thread.7:                                        ; preds = %bb.ac
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.im = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.il, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.8 = icmp eq i32 %i.im, 1
  br i1 %.not81.8, label %bb.ad, label %.thread109

bb.ad:                                            ; preds = %.thread.7
  %i.in = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.il, i32 noundef 0) #11
  %i.io = add nsw i32 %i.hi, 8
  %.not82.8 = icmp eq i32 %i.in, %i.io
  br i1 %.not82.8, label %.thread.8, label %.thread109

.thread.8:                                        ; preds = %bb.ad
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.iq = call noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64) %i.ip, i32 noundef 0, i32 noundef 2147483647) #11
  %.not81.9 = icmp eq i32 %i.iq, 1
  br i1 %.not81.9, label %bb.ae, label %.thread109

bb.ae:                                            ; preds = %.thread.8
  %i.ir = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ip, i32 noundef 0) #11
  %i.is = add nsw i32 %i.hi, 9
  %.not82.9 = icmp eq i32 %i.ir, %i.is
  %spec.select = select i1 %.not82.9, i32 %i.hi, i32 -1
  br label %.thread109

.thread109:                                       ; preds = %bb.ae, %.thread.8, %bb.ad, %.thread.7, %bb.ac, %.thread.6, %bb.ab, %.thread.5, %bb.aa, %.thread.4, %bb.z, %.thread.3, %bb.y, %.thread.2, %bb.x, %.thread.1, %bb.w, %.thread, %_ZN6icu_7812_GLOBAL__N_117DecFmtSymDataSink32resolveMissingMonetarySeparatorsEPKNS_13UnicodeStringE.exit
  %.4 = phi i32 [ -1, %bb.ac ], [ -1, %bb.ab ], [ -1, %_ZN6icu_7812_GLOBAL__N_117DecFmtSymDataSink32resolveMissingMonetarySeparatorsEPKNS_13UnicodeStringE.exit ], [ -1, %.thread ], [ -1, %bb.w ], [ %spec.select, %bb.ae ], [ -1, %.thread.1 ], [ -1, %bb.x ], [ -1, %.thread.8 ], [ -1, %.thread.2 ], [ -1, %bb.y ], [ -1, %.thread.6 ], [ -1, %.thread.3 ], [ -1, %bb.z ], [ -1, %bb.ad ], [ -1, %.thread.4 ], [ -1, %bb.aa ], [ -1, %.thread.7 ], [ -1, %.thread.5 ]
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 %.4, ptr %i.it, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %15, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i16 2, ptr %i.iu, align 8
  %i.iv = call i32 @ucurr_forLocale_78(ptr noundef %i.ex, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a) #11
  %i.iw = load i32, ptr %i.a, align 4
  %i.ix = icmp slt i32 %i.iw, 1
  %i.iy = icmp eq i32 %i.iv, 3
  %or.cond = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread109
  call void @_ZN6icu_7820DecimalFormatSymbols11setCurrencyEPKDsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2459) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread109, %bb.af
  %i.iz = call ptr @ures_open_78(ptr noundef nonnull @.str, ptr noundef %i.ex, ptr noundef nonnull %2) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_119CurrencySpacingSinkE, i64 16), ptr %16, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store ptr %0, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store i8 0, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 17 ; 2 uses
  store i8 0, ptr %i.jc, align 1
  call void @ures_getAllItemsWithFallback_78(ptr noundef %i.iz, ptr noundef nonnull @_ZN6icu_78L19gCurrencySpacingTagE, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(4) %2) #11
  %i.jd = load i8, ptr %i.jb, align 8
  %.not.i89 = icmp eq i8 %i.jd, 0
  %i.je = load i8, ptr %i.jc, align 1
  %.not9.i = icmp eq i8 %i.je, 0
  %or.cond.i = select i1 %.not.i89, i1 true, i1 %.not9.i
end_hunk_0
