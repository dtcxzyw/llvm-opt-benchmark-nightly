inline.NumInlined: 443
inline.NumDeleted: 154
begin_hunk_0_@_ZN6icu_7813DecimalFormatC2ERKS0_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 1064
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 1112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl30PropertiesAffixPatternProviderE, i64 16), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 1120
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 1128
  store i16 2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 1184
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 1192
  store i16 2, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1248
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 1256
  store i16 2, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 1312
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 1320
  store i16 2, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 1378
  store i8 1, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1384
  tail call void @_ZN6icu_786number4impl31CurrencyPluralInfoAffixProviderC2Ev(ptr noundef nonnull align 8 dereferenceable(2185) %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 3576
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 3584
  tail call void @_ZN6icu_786number4impl23DecimalFormatPropertiesC1Ev(ptr noundef nonnull align 8 dereferenceable(757) %i.ba) #13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 4344
  store i8 0, ptr %i.bb, align 8
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %i.bc = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 2464) #13 ; 3 uses
  %.not = icmp eq ptr %i.bc, null                 ; 2 uses
  br i1 %.not, label %.thread7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 312
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(136) %1) #13
  tail call void @_ZN6icu_7820DecimalFormatSymbolsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(2459) %i.bc, ptr noundef nonnull align 8 dereferenceable(2459) %i.bg) #13
  br label %.thread7

.thread7:                                         ; preds = %bb.c, %bb.d
  %i.bh = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread7
  %i.bj = load ptr, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(2459) %i.bh) #13, !inline_history !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread7
  store ptr %i.bc, ptr %i.k, align 8
  br i1 %.not, label %bb.g, label %_ZN6icu_7812LocalPointerIKNS_20DecimalFormatSymbolsEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6icu_786number4impl19DecimalFormatFieldsD2Ev(ptr noundef nonnull align 8 dereferenceable(4354) %i.bm) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bm) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.b, align 8
  br label %bb.j

_ZN6icu_7812LocalPointerIKNS_20DecimalFormatSymbolsEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit: ; preds = %bb.f
  call void @_ZN6icu_7813DecimalFormat5touchER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7812LocalPointerIKNS_20DecimalFormatSymbolsEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.a, %bb.j
  ret void
}

declare void @_ZN6icu_7812NumberFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZN6icu_7813DecimalFormataSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(757) ptr @_ZN6icu_786number4impl23DecimalFormatPropertiesaSERKS2_(ptr noundef nonnull align 8 dereferenceable(757) %i.j, ptr noundef nonnull align 8 dereferenceable(757) %i.i) ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3584
  tail call void @_ZN6icu_786number4impl23DecimalFormatProperties5clearEv(ptr noundef nonnull align 8 dereferenceable(757) %i.m) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %i.n = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 2464) #13 ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6icu_786number4impl19DecimalFormatFieldsD2Ev(ptr noundef nonnull align 8 dereferenceable(4354) %i.o) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.o) #13
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(136) %1) #13
  tail call void @_ZN6icu_7820DecimalFormatSymbolsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(2459) %i.n, ptr noundef nonnull align 8 dereferenceable(2459) %i.t) #13
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 768 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(2459) %i.w) #13, !inline_history !10
  br label %.thread13

.thread13:                                        ; preds = %bb.h, %bb.g
  store ptr %i.n, ptr %i.v, align 8
  call void @_ZN6icu_7813DecimalFormat5touchER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN6icu_7812LocalPointerINS_20DecimalFormatSymbolsEED2Ev.exit

bb.i:                                             ; preds = %bb.e, %bb.f
  store ptr null, ptr %i.c, align 8
  br label %_ZN6icu_7812LocalPointerINS_20DecimalFormatSymbolsEED2Ev.exit

_ZN6icu_7812LocalPointerINS_20DecimalFormatSymbolsEED2Ev.exit: ; preds = %bb.i, %.thread13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.a, %_ZN6icu_7812LocalPointerINS_20DecimalFormatSymbolsEED2Ev.exit
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(757) ptr @_ZN6icu_786number4impl23DecimalFormatPropertiesaSERKS2_(ptr noundef nonnull align 8 dereferenceable(757) %0, ptr noundef nonnull align 8 dereferenceable(757) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !11, !noundef !15 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  store i8 %i.a, ptr %0, align 8
  br i1 %i.b, label %_ZN6icu_786number4impl13NullableValueI19UNumberCompactStyleEaSERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  br label %_ZN6icu_786number4impl13NullableValueI19UNumberCompactStyleEaSERKS4_.exit

_ZN6icu_786number4impl13NullableValueI19UNumberCompactStyleEaSERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !11, !noundef !15 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  store i8 %i.h, ptr %i.f, align 8
  br i1 %i.i, label %_ZN6icu_786number4impl13NullableValueINS_12CurrencyUnitEEaSERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_786number4impl13NullableValueI19UNumberCompactStyleEaSERKS4_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = tail call noundef nonnull align 8 dereferenceable(28) ptr @_ZN6icu_7812CurrencyUnitaSERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(28) %i.j) #13 ; 0 uses
  br label %_ZN6icu_786number4impl13NullableValueINS_12CurrencyUnitEEaSERKS4_.exit

_ZN6icu_786number4impl13NullableValueINS_12CurrencyUnitEEaSERKS4_.exit: ; preds = %_ZN6icu_786number4impl13NullableValueI19UNumberCompactStyleEaSERKS4_.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %0, %1
  %2 = load ptr, ptr %i.n, align 8
  %.not7.i = icmp eq ptr %2, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %_ZN6icu_786number4impl25CurrencyPluralInfoWrapperaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_786number4impl13NullableValueINS_12CurrencyUnitEEaSERKS4_.exit
  %i.o = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.n, align 8
  tail call void @_ZN6icu_7818CurrencyPluralInfoC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.o, ptr noundef nonnull align 8 dereferenceable(36) %i.q) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN6icu_7812LocalPointerINS_18CurrencyPluralInfoEE12adoptInsteadEPS1_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(36) %i.r) #13, !inline_history !20
  br label %_ZN6icu_7812LocalPointerINS_18CurrencyPluralInfoEE12adoptInsteadEPS1_.exit.i

_ZN6icu_7812LocalPointerINS_18CurrencyPluralInfoEE12adoptInsteadEPS1_.exit.i: ; preds = %bb.g, %bb.f
  store ptr %i.o, ptr %i.m, align 8
  br label %_ZN6icu_786number4impl25CurrencyPluralInfoWrapperaSERKS2_.exit

_ZN6icu_786number4impl25CurrencyPluralInfoWrapperaSERKS2_.exit: ; preds = %_ZN6icu_786number4impl13NullableValueINS_12CurrencyUnitEEaSERKS4_.exit, %_ZN6icu_7812LocalPointerINS_18CurrencyPluralInfoEE12adoptInsteadEPS1_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load i8, ptr %i.x, align 8, !range !11, !noundef !15 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  store i8 %i.y, ptr %i.w, align 8
  br i1 %i.z, label %_ZN6icu_786number4impl13NullableValueI14UCurrencyUsageEaSERKS4_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_786number4impl25CurrencyPluralInfoWrapperaSERKS2_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ab, ptr %i.ac, align 4
  br label %_ZN6icu_786number4impl13NullableValueI14UCurrencyUsageEaSERKS4_.exit

_ZN6icu_786number4impl13NullableValueI14UCurrencyUsageEaSERKS4_.exit: ; preds = %_ZN6icu_786number4impl25CurrencyPluralInfoWrapperaSERKS2_.exit, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ah = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ag) #13 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ak = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %i.aj) #13 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.an = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %i.am) #13 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #13 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.at = load i8, ptr %i.as, align 8, !range !11, !noundef !15 ; 2 uses
  %i.au = trunc nuw i8 %i.at to i1
  store i8 %i.at, ptr %i.ar, align 8
  br i1 %i.au, label %_ZN6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_786number4impl13NullableValueI14UCurrencyUsageEaSERKS4_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 %i.aw, ptr %i.ax, align 4
  br label %_ZN6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEaSERKS4_.exit

_ZN6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEaSERKS4_.exit: ; preds = %_ZN6icu_786number4impl13NullableValueI14UCurrencyUsageEaSERKS4_.exit, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ba = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.az) #13 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.bd = load i16, ptr %i.bc, align 8
  store i16 %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.bg = load i8, ptr %i.bf, align 4, !range !11, !noundef !15 ; 2 uses
  %i.bh = trunc nuw i8 %i.bg to i1
  store i8 %i.bg, ptr %i.be, align 4
  br i1 %i.bh, label %_ZN6icu_786number4impl13NullableValueINS1_9ParseModeEEaSERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEaSERKS4_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 %i.bj, ptr %i.bk, align 8
  br label %_ZN6icu_786number4impl13NullableValueINS1_9ParseModeEEaSERKS4_.exit

_ZN6icu_786number4impl13NullableValueINS1_9ParseModeEEaSERKS4_.exit: ; preds = %_ZN6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEaSERKS4_.exit, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.bn = load i64, ptr %i.bm, align 4
  store i64 %i.bn, ptr %i.bl, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noundef nonnull align 8 dereferenceable(64) %i.bp) #13 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bt = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %i.bs) #13 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.bw = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %i.bv) #13 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.bz = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull align 8 dereferenceable(64) %i.by) #13 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.cb = load double, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 736
  store double %i.cb, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.cf = load i8, ptr %i.ce, align 8, !range !11, !noundef !15 ; 2 uses
  %i.cg = trunc nuw i8 %i.cf to i1
  store i8 %i.cf, ptr %i.cd, align 8
  br i1 %i.cg, label %_ZN6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEaSERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_786number4impl13NullableValueINS1_9ParseModeEEaSERKS4_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 %i.ci, ptr %i.cj, align 4
  br label %_ZN6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEaSERKS4_.exit

_ZN6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEaSERKS4_.exit: ; preds = %_ZN6icu_786number4impl13NullableValueINS1_9ParseModeEEaSERKS4_.exit, %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 752
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ck, ptr noundef nonnull align 8 dereferenceable(5) %i.cl, i64 5, i1 false)
  ret ptr %0
}

declare void @_ZN6icu_786number4impl23DecimalFormatProperties5clearEv(ptr noundef nonnull align 8 dereferenceable(757)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813DecimalFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 600) (i8, ptr @_ZTVN6icu_7813DecimalFormatE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  %i.e = atomicrmw xchg ptr %i.d, ptr null seq_cst, align 8 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(5408) %i.e) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1096
  %i.l = atomicrmw xchg ptr %i.k, ptr null seq_cst, align 8 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(5408) %i.l) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6icu_786number4impl19DecimalFormatFieldsD2Ev(ptr noundef nonnull align 8 dereferenceable(4354) %i.q) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.q) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  tail call void @_ZN6icu_7812NumberFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7812NumberFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813DecimalFormatD0Ev(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 600) (i8, ptr @_ZTVN6icu_7813DecimalFormatE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7813DecimalFormatD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  %i.e = atomicrmw xchg ptr %i.d, ptr null seq_cst, align 8 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(5408) %i.e) #13, !inline_history !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1096
  %i.l = atomicrmw xchg ptr %i.k, ptr null seq_cst, align 8 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(5408) %i.l) #13, !inline_history !21
  br label %bb.f

end_hunk_0
