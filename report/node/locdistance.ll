inline.NumInlined: 49
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.icu_78::LSR" = type <{ ptr, ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.icu_78::BytesTrie" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

@_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Latn\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@_ZN6icu_7812_GLOBAL__N_19gInitOnceE = internal global { { i32 }, i32 } zeroinitializer, align 4

@_ZN6icu_7814LocaleDistanceC1ERKNS_18LocaleDistanceDataERKNS_13LikelySubtagsE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6icu_7814LocaleDistanceC2ERKNS_18LocaleDistanceDataERKNS_13LikelySubtagsE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814LocaleDistance18initLocaleDistanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_7813LikelySubtags12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) #6 ; 4 uses
  %i.b = load i32, ptr %0, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %3 = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.e = load ptr, ptr %i.d, align 8
  %4 = load <2 x ptr>, ptr %1, align 8
  %5 = insertelement <4 x ptr> poison, ptr %3, i64 2
  %6 = insertelement <4 x ptr> %5, ptr %i.e, i64 3
  %7 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> %6, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.fr = freeze <4 x ptr> %8
  %9 = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %10 = bitcast <4 x i1> %9 to i4
  %i.f = icmp eq i4 %10, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #6 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE, align 8
  store i32 7, ptr %0, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN6icu_7814LocaleDistanceC2ERKNS_18LocaleDistanceDataERKNS_13LikelySubtagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(352) %i.a)
  store ptr %i.g, ptr @_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE, align 8
  tail call void @ucln_common_registerCleanup_78(i32 noundef 11, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_17cleanupEv) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN6icu_7813LikelySubtags12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

declare void @ucln_common_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext i8 @_ZN6icu_7812_GLOBAL__N_17cleanupEv() #0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.c) #6
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE, align 8
  store atomic i32 0, ptr @_ZN6icu_7812_GLOBAL__N_19gInitOnceE seq_cst, align 4
  ret i8 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7814LocaleDistance12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_19gInitOnceE acquire, align 4
  %.not11.i = icmp eq i32 %i.c, 2
  br i1 %.not11.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_19gInitOnceE) #6
  %.not12.i = icmp eq i8 %i.d, 0
  br i1 %.not12.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZN6icu_7813LikelySubtags12getSingletonER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) #6 ; 4 uses
  %i.f = load i32, ptr %0, align 4                ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN6icu_7814LocaleDistance18initLocaleDistanceER10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %1 = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %3 = load ptr, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.i = load ptr, ptr %i.h, align 8
  %4 = load <2 x ptr>, ptr %1, align 8
  %5 = insertelement <4 x ptr> poison, ptr %3, i64 2
  %6 = insertelement <4 x ptr> %5, ptr %i.i, i64 3
  %7 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> %6, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.fr = freeze <4 x ptr> %8
  %9 = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %10 = bitcast <4 x i1> %9 to i4
  %i.j = icmp eq i4 %10, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %0, align 4
  br label %_ZN6icu_7814LocaleDistance18initLocaleDistanceER10UErrorCode.exit

bb.g:                                             ; preds = %bb.e
  %i.k = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #6 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr @_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE, align 8
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7814LocaleDistance18initLocaleDistanceER10UErrorCode.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN6icu_7814LocaleDistanceC2ERKNS_18LocaleDistanceDataERKNS_13LikelySubtagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(352) %i.e)
  store ptr %i.k, ptr @_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE, align 8
  tail call void @ucln_common_registerCleanup_78(i32 noundef 11, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_17cleanupEv) #6
  %.pre = load i32, ptr %0, align 4
  br label %_ZN6icu_7814LocaleDistance18initLocaleDistanceER10UErrorCode.exit

_ZN6icu_7814LocaleDistance18initLocaleDistanceER10UErrorCode.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.m = phi i32 [ %i.f, %bb.d ], [ 2, %bb.f ], [ 7, %bb.h ], [ %.pre, %bb.i ]
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_19gInitOnceE, i64 4), align 4
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_19gInitOnceE) #6
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_19gInitOnceE, i64 4), align 4 ; 2 uses
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.n, ptr %0, align 4
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %_ZN6icu_7814LocaleDistance18initLocaleDistanceER10UErrorCode.exit, %bb.j, %bb.k
  %i.p = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_115gLocaleDistanceE, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  %.0 = phi ptr [ %i.p, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814LocaleDistanceC2ERKNS_18LocaleDistanceDataERKNS_13LikelySubtagsE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 36), (40, 84)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(352) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.icu_78::LSR", align 8      ; 11 uses
  %4 = alloca %"struct.icu_78::LSR", align 8      ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 4
  store i32 %i.v, ptr %i.s, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ab = load ptr, ptr %i.t, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  store i32 %i.ad, ptr %i.aa, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.t, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  store i32 %i.ah, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store ptr @.str, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = tail call noundef i32 @_ZN6icu_783LSR14indexForRegionEPKc(ptr noundef nonnull @.str.2) #6
  store i32 %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 7, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr @.str, ptr %4, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.3, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr null, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.at = tail call noundef i32 @_ZN6icu_783LSR14indexForRegionEPKc(ptr noundef nonnull @.str.3) #6
  store i32 %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 7, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %4, ptr %i.a, align 8
  %i.aw = call noundef i32 @_ZNK6icu_7814LocaleDistance23getBestIndexAndDistanceERKNS_3LSREPPS2_ii20ULocMatchFavorSubtag18ULocMatchDirection(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 400, i32 noundef 0, i32 noundef 0)
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = and i32 %i.ax, 127
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.ay, ptr %i.az, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ba = load ptr, ptr %i.ar, align 8
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZN6icu_783LSRD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_783LSR11deleteOwnedEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #6
  br label %_ZN6icu_783LSRD2Ev.exit

_ZN6icu_783LSRD2Ev.exit:                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.bb = load ptr, ptr %i.ak, align 8
  %.not.i11 = icmp eq ptr %i.bb, null
  br i1 %.not.i11, label %_ZN6icu_783LSRD2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_783LSRD2Ev.exit
  call void @_ZN6icu_783LSR11deleteOwnedEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #6
  br label %_ZN6icu_783LSRD2Ev.exit12

_ZN6icu_783LSRD2Ev.exit12:                        ; preds = %_ZN6icu_783LSRD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7814LocaleDistance23getBestIndexAndDistanceERKNS_3LSREPPS2_ii20ULocMatchFavorSubtag18ULocMatchDirection(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.icu_78::BytesTrie", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  store ptr null, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %i.h, align 8
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.c
  %.021.i = phi i8 [ %i.o, %bb.c ], [ %i.l, %bb.a ] ; 2 uses
  %.018.i = phi ptr [ %i.n, %bb.c ], [ %i.k, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i
  %i.p = or i8 %.021.i, -128
  %i.q = zext i8 %i.p to i32
  %i.r = call noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %7, i32 noundef %i.q) #6
  %i.s = and i32 %i.r, 1
  %.not24.i = icmp eq i32 %i.s, 0
  br i1 %.not24.i, label %_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit.thread, label %_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit

bb.c:                                             ; preds = %.preheader.i
  %i.t = zext i8 %.021.i to i32
  %i.u = call noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %7, i32 noundef %i.t) #6
  %.not25.i = trunc i32 %i.u to i1
  br i1 %.not25.i, label %.preheader.i, label %_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit.thread, !llvm.loop !5

_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit: ; preds = %bb.b
  %i.v = icmp sgt i32 %3, 1
  br i1 %i.v, label %_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit.thread.thread, label %_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit.thread

_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit.thread.thread: ; preds = %_ZN6icu_7814LocaleDistance8trieNextERNS_9BytesTrieEPKcb.exit
  %i.w = load i32, ptr %i.h, align 8
  %i.x = add nsw i32 %i.w, 2
  %i.y = zext i32 %i.x to i64
  %i.z = shl i64 %i.y, 59
  %i.aa = load ptr, ptr %i.f, align 8
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
end_hunk_0
