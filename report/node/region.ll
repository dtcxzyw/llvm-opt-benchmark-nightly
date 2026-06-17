inline.NumInlined: 383
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.3, [32 x i8] }
%struct.anon.3 = type { i16, i32, i32, ptr }
%"class.icu_78::Char16Ptr" = type { ptr }
%"class.icu_78::UVector" = type { %"class.icu_78::UObject", i32, i32, ptr, ptr, ptr }

@_ZZN6icu_7821RegionNameEnumeration16getStaticClassIDEvE7classID = internal global i8 0, align 1
@_ZN6icu_78L10allRegionsE = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"territory\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"supplementalData\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"codeMappings\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"idValidity\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"regular\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"macroregion\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"territoryContainment\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"001\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"grouping\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@_ZN6icu_78L8WORLD_IDE = internal constant [4 x i16] [i16 48, i16 48, i16 49, i16 0], align 2
@_ZN6icu_78L17UNKNOWN_REGION_IDE = internal constant [3 x i16] [i16 90, i16 90, i16 0], align 2
@_ZN6icu_78L26OUTLYING_OCEANIA_REGION_IDE = internal constant [3 x i16] [i16 81, i16 79, i16 0], align 2
@.str.14 = private unnamed_addr constant [19 x i8] c"containedGroupings\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@_ZN6icu_78L16availableRegionsE = internal unnamed_addr global [7 x ptr] zeroinitializer, align 16
@_ZN6icu_78L14numericCodeMapE = internal unnamed_addr global ptr null, align 8
@_ZN6icu_78L11regionIDMapE = internal unnamed_addr global ptr null, align 8
@_ZN6icu_78L13regionAliasesE = internal unnamed_addr global ptr null, align 8
@_ZTVN6icu_786RegionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6icu_786RegionE, ptr @_ZN6icu_786RegionD2Ev, ptr @_ZN6icu_786RegionD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv] }, align 8
@_ZTVN6icu_7821RegionNameEnumerationE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN6icu_7821RegionNameEnumerationE, ptr @_ZN6icu_7821RegionNameEnumerationD2Ev, ptr @_ZN6icu_7821RegionNameEnumerationD0Ev, ptr @_ZNK6icu_7821RegionNameEnumeration17getDynamicClassIDEv, ptr @_ZNK6icu_7817StringEnumeration5cloneEv, ptr @_ZNK6icu_7821RegionNameEnumeration5countER10UErrorCode, ptr @_ZN6icu_7817StringEnumeration4nextEPiR10UErrorCode, ptr @_ZN6icu_7817StringEnumeration5unextEPiR10UErrorCode, ptr @_ZN6icu_7821RegionNameEnumeration5snextER10UErrorCode, ptr @_ZN6icu_7821RegionNameEnumeration5resetER10UErrorCode, ptr @_ZNK6icu_7817StringEnumerationeqERKS0_, ptr @_ZNK6icu_7817StringEnumerationneERKS0_] }, align 8
@_ZTIN6icu_786RegionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_786RegionE, ptr @_ZTIN6icu_787UObjectE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_786RegionE = dso_local constant [17 x i8] c"N6icu_786RegionE\00", align 1
@_ZTIN6icu_787UObjectE = external constant ptr
@_ZTIN6icu_7821RegionNameEnumerationE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7821RegionNameEnumerationE, ptr @_ZTIN6icu_7817StringEnumerationE }, align 8
@_ZTSN6icu_7821RegionNameEnumerationE = dso_local constant [33 x i8] c"N6icu_7821RegionNameEnumerationE\00", align 1
@_ZTIN6icu_7817StringEnumerationE = external constant ptr
@_ZTVN6icu_7813UnicodeStringE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZN6icu_78L19gRegionDataInitOnceE = internal global { { i32 }, i32 } zeroinitializer, align 4

@_ZN6icu_786RegionC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_786RegionC2Ev
@_ZN6icu_786RegionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_786RegionD2Ev
@_ZN6icu_7821RegionNameEnumerationC1EPNS_7UVectorER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6icu_7821RegionNameEnumerationC2EPNS_7UVectorER10UErrorCode
@_ZN6icu_7821RegionNameEnumerationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7821RegionNameEnumerationD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN6icu_7821RegionNameEnumeration16getStaticClassIDEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7821RegionNameEnumeration16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7821RegionNameEnumeration17getDynamicClassIDEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7821RegionNameEnumeration16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786Region14loadRegionDataER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %1 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %i.l = alloca [6 x i16], align 2                ; 6 uses
  %12 = alloca %"class.icu_78::Char16Ptr", align 8 ; 3 uses
  %13 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %i.m = alloca [6 x i16], align 2                ; 6 uses
  %14 = alloca %"class.icu_78::Char16Ptr", align 8 ; 3 uses
  %15 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %17 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %19 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %20 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %21 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %23 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %24 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %25 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %26 = alloca %"class.icu_78::UnicodeString", align 8 ; 17 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = tail call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull %0) #11 ; 39 uses
  %i.s = tail call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull %0) #11 ; 24 uses
  %i.t = tail call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull %0) #11 ; 24 uses
  %i.u = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #11 ; 7 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %i.v, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  tail call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef nonnull align 4 dereferenceable(4) %0) #11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %0, align 4
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %.thread, %bb.b, %bb.c
  %i.y = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #11 ; 7 uses
  %i.z = icmp eq ptr %i.y, null                   ; 2 uses
  br i1 %i.z, label %bb.d, label %.thread637

.thread637:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  tail call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef nonnull align 4 dereferenceable(4) %0) #11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit378

bb.d:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.aa = load i32, ptr %0, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit378, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit378

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit378: ; preds = %.thread637, %bb.d, %bb.e
  %i.ac = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #11 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %.thread639

.thread639:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit378
  tail call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef nonnull align 4 dereferenceable(4) %0) #11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380

bb.f:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit378
  %i.ae = load i32, ptr %0, align 4
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380: ; preds = %.thread639, %bb.f, %bb.g
  store ptr %i.ac, ptr @_ZN6icu_78L10allRegionsE, align 8
  %i.ag = tail call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %0) #11 ; 3 uses
  %i.ah = tail call ptr @ures_getByKey_78(ptr noundef %i.ag, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef nonnull %0) #11 ; 3 uses
  %i.ai = tail call ptr @ures_getByKey_78(ptr noundef %i.ah, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef nonnull %0) #11 ; 4 uses
  %i.aj = tail call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #11 ; 5 uses
  %i.ak = tail call ptr @ures_getByKey_78(ptr noundef %i.aj, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef nonnull %0) #11 ; 4 uses
  %i.al = tail call ptr @ures_getByKey_78(ptr noundef %i.aj, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef nonnull %0) #11 ; 3 uses
  %i.am = tail call ptr @ures_getByKey_78(ptr noundef %i.al, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef nonnull %0) #11 ; 5 uses
  %i.an = tail call ptr @ures_getByKey_78(ptr noundef %i.am, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef nonnull %0) #11 ; 4 uses
  %i.ao = tail call ptr @ures_getByKey_78(ptr noundef %i.am, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull %0) #11 ; 4 uses
  %i.ap = tail call ptr @ures_getByKey_78(ptr noundef %i.am, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef nonnull %0) #11 ; 4 uses
  %i.aq = tail call ptr @ures_getByKey_78(ptr noundef %i.aj, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef nonnull %0) #11 ; 7 uses
  %i.ar = tail call ptr @ures_getByKey_78(ptr noundef %i.aq, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef nonnull %0) #11 ; 4 uses
  %i.as = tail call ptr @ures_getByKey_78(ptr noundef %i.aq, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef nonnull %0) #11 ; 4 uses
  tail call void @ucln_i18n_registerCleanup_78(i32 noundef 34, ptr noundef nonnull @_ZL14region_cleanupv) #11
  %i.at = load i32, ptr %0, align 4
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.h, label %_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401

bb.h:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380
  %i.av = tail call ptr @uhash_setValueDeleter_78(ptr noundef %i.r, ptr noundef nonnull @uprv_deleteUObject_78) #11 ; 0 uses
  %i.aw = tail call ptr @uhash_setKeyDeleter_78(ptr noundef %i.t, ptr noundef nonnull @uprv_deleteUObject_78) #11 ; 0 uses
  %i.ax = load i32, ptr %0, align 4
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401, label %.lr.ph720

.lr.ph720:                                        ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 10
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph720, %.critedge12
  %i.bd = call signext i8 @ures_hasNext_78(ptr noundef %i.an) #11
  %.not315 = icmp eq i8 %i.bd, 0
  br i1 %.not315, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %11, align 8, !alias.scope !5
  store i16 2, ptr %i.az, align 8, !alias.scope !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11, !noalias !5
  store i32 0, ptr %i.k, align 4, !noalias !5
  %i.be = call ptr @ures_getNextString_78(ptr noundef %i.an, ptr noundef nonnull %i.k, ptr noundef null, ptr noundef nonnull %0) #11, !noalias !5 ; 2 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.be) #11, !noalias !5, !srcloc !8
  %i.bf = load i32, ptr %0, align 4, !noalias !5
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.be, ptr %10, align 8, !noalias !5
  %i.bh = load i32, ptr %i.k, align 4, !noalias !5
  %i.bi = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 noundef signext 1, ptr noundef nonnull %10, i32 noundef %i.bh) #11 ; 0 uses
  %i.bj = load ptr, ptr %10, align 8, !noalias !5
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bj) #11, !srcloc !8
  br label %_ZN6icu_7825ures_getNextUnicodeStringEP15UResourceBundlePPKcP10UErrorCode.exit

bb.l:                                             ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %11) #11
  br label %_ZN6icu_7825ures_getNextUnicodeStringEP15UResourceBundlePPKcP10UErrorCode.exit

_ZN6icu_7825ures_getNextUnicodeStringEP15UResourceBundlePPKcP10UErrorCode.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11, !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bk = load i16, ptr %i.az, align 8            ; 2 uses
  %i.bl = icmp slt i16 %i.bk, 0
  %i.bm = ashr i16 %i.bk, 5
  %i.bn = sext i16 %i.bm to i32
  %i.bo = load i32, ptr %i.ba, align 4
  %i.bp = select i1 %i.bl, i32 %i.bo, i32 %i.bn
  %i.bq = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %11, i16 noundef zeroext 126, i32 noundef 0, i32 noundef %i.bp) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  store ptr %i.l, ptr %12, align 8
  %i.br = call noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %12, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(4) %0) #11 ; 0 uses
  %i.bs = load ptr, ptr %12, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bs) #11, !srcloc !9
  %i.bt = icmp sgt i32 %i.bq, 0
  br i1 %i.bt, label %bb.m, label %bb.t

bb.m:                                             ; preds = %_ZN6icu_7825ures_getNextUnicodeStringEP15UResourceBundlePPKcP10UErrorCode.exit
  %i.bu = add nuw nsw i32 %i.bq, 1                ; 2 uses
  %i.bv = load i16, ptr %i.az, align 8            ; 3 uses
  %i.bw = icmp slt i16 %i.bv, 0
  %i.bx = ashr i16 %i.bv, 5
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i32, ptr %i.ba, align 4
  %i.ca = select i1 %i.bw, i32 %i.bz, i32 %i.by
  %i.cb = icmp ult i32 %i.bu, %i.ca
  br i1 %i.cb, label %bb.n, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.n:                                             ; preds = %bb.m
  %i.cc = and i16 %i.bv, 2
  %.not.i.i.i = icmp eq i16 %i.cc, 0
  %i.cd = load ptr, ptr %i.bc, align 8
  %i.ce = select i1 %.not.i.i.i, ptr %i.cd, ptr %i.bb
  %i.cf = zext nneg i32 %i.bu to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.m, %bb.n
  %.0.i.i = phi i16 [ %i.ch, %bb.n ], [ -1, %bb.m ]
  %i.ci = zext nneg i32 %i.bq to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ci ; 2 uses
  store i16 0, ptr %i.cj, align 2
  %i.ck = getelementptr i8, ptr %i.cj, i64 -2     ; 3 uses
  %i.cl = load i32, ptr %0, align 4
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.critedge12, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.pre = load i16, ptr %i.ck, align 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  %i.cn = phi i16 [ %.pre, %.lr.ph.preheader ], [ %i.da, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit ]
  %.not362 = icmp ugt i16 %i.cn, %.0.i.i
  br i1 %.not362, label %.critedge12, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.co = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #11 ; 5 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i16 2, ptr %i.cq, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i64 [ 0, %bb.p ], [ %i.cu, %bb.q ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.0.i.i.i.i
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = icmp eq i16 %i.cs, 0
  %i.cu = add i64 %.0.i.i.i.i, 1
  br i1 %i.ct, label %.thread641, label %bb.q, !llvm.loop !10

.thread641:                                       ; preds = %bb.q
  %i.cv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 %.0.i.i.i.i, ptr nonnull align 2 dereferenceable(12) %i.l) #11 ; 0 uses
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.r:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN6icu_786Region14loadRegionDataER10UErrorCode:bb.a
  %i.pu = load i32, ptr %i.c, align 4, !noalias !42
  %i.pv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %20, i8 noundef signext 1, ptr noundef nonnull %3, i32 noundef %i.pu) #11 ; 0 uses
  %i.pw = load ptr, ptr %3, align 8, !noalias !42
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.pw) #11, !srcloc !8
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit434

bb.da:                                            ; preds = %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit433
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %20) #11
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit434

_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit434: ; preds = %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %21, align 8, !alias.scope !45
  store i16 2, ptr %i.pc, align 8, !alias.scope !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !45
  store i32 0, ptr %i.b, align 4, !noalias !45
  %i.px = call ptr @ures_getStringByIndex_78(ptr noundef %i.pe, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #11, !noalias !45 ; 2 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.px) #11, !noalias !45, !srcloc !8
  %i.py = load i32, ptr %0, align 4, !noalias !45
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit434
  store ptr %i.px, ptr %2, align 8, !noalias !45
  %i.qa = load i32, ptr %i.b, align 4, !noalias !45
  %i.qb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %21, i8 noundef signext 1, ptr noundef nonnull %2, i32 noundef %i.qa) #11 ; 0 uses
  %i.qc = load ptr, ptr %2, align 8, !noalias !45
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.qc) #11, !srcloc !8
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit435

bb.dc:                                            ; preds = %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit434
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %21) #11
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit435

_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit435: ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.qd = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef nonnull %19) #11 ; 4 uses
  %.not352 = icmp eq ptr %i.qd, null
  br i1 %.not352, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  store i32 0, ptr %i.p, align 4
  %i.qe = call noundef i32 @_ZN6icu_7811ICU_Utility17parseAsciiIntegerERKNS_13UnicodeStringERi(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.p) #11 ; 2 uses
  %i.qf = load i32, ptr %i.p, align 4
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 80
  store i32 %i.qe, ptr %i.qh, align 8
  %i.qi = call ptr @uhash_iput_78(ptr noundef %i.s, i32 noundef %i.qe, ptr noundef nonnull %i.qd, ptr noundef nonnull %0) #11 ; 0 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.qj = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #11 ; 3 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %bb.dg, label %.thread682

.thread682:                                       ; preds = %bb.df
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.qj, ptr noundef nonnull align 8 dereferenceable(64) %21) #11
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit438

bb.dg:                                            ; preds = %bb.df
  %i.ql = load i32, ptr %0, align 4
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit438, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit438

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit438: ; preds = %bb.dh, %bb.dg, %.thread682
  %i.qn = call ptr @uhash_put_78(ptr noundef %i.t, ptr noundef %i.qj, ptr noundef nonnull %i.qd, ptr noundef nonnull %0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  br label %bb.di

bb.di:                                            ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit438, %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit435
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %21) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.cv, %bb.cu, %bb.ct
  call void @ures_close_78(ptr noundef %i.pe) #11
  %i.qo = load i32, ptr %0, align 4
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.critedge31, label %bb.cs, !llvm.loop !48

.critedge31:                                      ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.cs, %bb.dj, %.critedge22, %.critedge26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %22, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i16 2, ptr %i.qq, align 8
  %i.qr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %22, i64 3, ptr nonnull @_ZN6icu_78L8WORLD_IDE) #11 ; 0 uses
  %i.qs = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef nonnull %22) #11 ; 2 uses
  %.not337 = icmp eq ptr %i.qs, null
  br i1 %.not337, label %_ZN6icu_7813UnicodeStringC2IA3_DsvEERKT_.exit, label %bb.dk

bb.dk:                                            ; preds = %.critedge31
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 84
  store i32 2, ptr %i.qt, align 4
  br label %_ZN6icu_7813UnicodeStringC2IA3_DsvEERKT_.exit

_ZN6icu_7813UnicodeStringC2IA3_DsvEERKT_.exit:    ; preds = %bb.dk, %.critedge31
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %23, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i16 2, ptr %i.qu, align 8
  %i.qv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %23, i64 2, ptr nonnull @_ZN6icu_78L17UNKNOWN_REGION_IDE) #11 ; 0 uses
  %i.qw = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef nonnull %23) #11 ; 2 uses
  %.not338 = icmp eq ptr %i.qw, null
  br i1 %.not338, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZN6icu_7813UnicodeStringC2IA3_DsvEERKT_.exit
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 84
  store i32 0, ptr %i.qx, align 4
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZN6icu_7813UnicodeStringC2IA3_DsvEERKT_.exit
  %i.qy = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 8
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph751, label %.preheader

.preheader:                                       ; preds = %bb.do, %bb.dm
  %i.rb = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 8
  %i.rd = icmp sgt i32 %i.rc, 0
  br i1 %i.rd, label %.lr.ph753, label %._crit_edge754

.lr.ph751:                                        ; preds = %bb.dm, %bb.do
  %.0271749 = phi i32 [ %i.rh, %bb.do ], [ 0, %bb.dm ] ; 2 uses
  %i.re = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i32 noundef %.0271749) #11
  %i.rf = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef %i.re) #11 ; 2 uses
  %.not350 = icmp eq ptr %i.rf, null
  br i1 %.not350, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph751
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 84
  store i32 3, ptr %i.rg, align 4
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph751, %bb.dn
  %i.rh = add nuw nsw i32 %.0271749, 1            ; 2 uses
  %i.ri = load i32, ptr %i.qy, align 8
  %i.rj = icmp slt i32 %i.rh, %i.ri
  br i1 %i.rj, label %.lr.ph751, label %.preheader, !llvm.loop !49

._crit_edge754:                                   ; preds = %bb.dq, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %24, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i16 2, ptr %i.rk, align 8
  %i.rl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %24, i64 2, ptr nonnull @_ZN6icu_78L26OUTLYING_OCEANIA_REGION_IDE) #11 ; 0 uses
  %i.rm = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef nonnull %24) #11 ; 2 uses
  %.not339 = icmp eq ptr %i.rm, null
  br i1 %.not339, label %bb.ds, label %bb.dr

.lr.ph753:                                        ; preds = %.preheader, %bb.dq
  %.0270752 = phi i32 [ %i.rq, %bb.dq ], [ 0, %.preheader ] ; 2 uses
  %i.rn = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i32 noundef %.0270752) #11
  %i.ro = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef %i.rn) #11 ; 2 uses
  %.not349 = icmp eq ptr %i.ro, null
  br i1 %.not349, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph753
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 84
  store i32 5, ptr %i.rp, align 4
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph753, %bb.dp
  %i.rq = add nuw nsw i32 %.0270752, 1            ; 2 uses
  %i.rr = load i32, ptr %i.rb, align 8
  %i.rs = icmp slt i32 %i.rq, %i.rr
  br i1 %i.rs, label %.lr.ph753, label %._crit_edge754, !llvm.loop !50

bb.dr:                                            ; preds = %._crit_edge754
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rm, i64 84
  store i32 4, ptr %i.rt, align 4
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge754
  %i.ru = call signext i8 @ures_hasNext_78(ptr noundef %i.aq) #11
  %.not340759 = icmp eq i8 %i.ru, 0
  br i1 %.not340759, label %._crit_edge762, label %.lr.ph761

.lr.ph761:                                        ; preds = %bb.ds
  %i.rv = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  br label %bb.dt

bb.dt:                                            ; preds = %.lr.ph761, %.backedge
  %i.rw = call ptr @ures_getNextResource_78(ptr noundef %i.aq, ptr noundef null, ptr noundef nonnull %0) #11 ; 10 uses
  %i.rx = load i32, ptr %0, align 4
  %i.ry = icmp slt i32 %i.rx, 1
  br i1 %i.ry, label %bb.du, label %bb.el

bb.du:                                            ; preds = %bb.dt
  %i.rz = call ptr @ures_getKey_78(ptr noundef %i.rw) #11 ; 3 uses
  %i.sa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.rz, ptr noundef nonnull dereferenceable(19) @.str.14) #12
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %27, label %bb.dv, !llvm.loop !51

bb.dv:                                            ; preds = %bb.du
  %i.sc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.rz, ptr noundef nonnull dereferenceable(11) @.str.15) #12
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %27, label %bb.dw, !llvm.loop !51

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull %i.rz, i32 noundef -1, i32 noundef 0) #11
  %i.se = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef nonnull %25) #11
  %.fr767 = freeze ptr %i.se                      ; 4 uses
  %i.sf = call i32 @ures_getSize_78(ptr noundef %i.rw) #11
  %.not348755 = icmp sgt i32 %i.sf, 0
  br i1 %.not348755, label %.lr.ph758, label %.critedge376

.lr.ph758:                                        ; preds = %bb.dw
  %.not = icmp eq ptr %.fr767, null
  %i.sg = getelementptr inbounds nuw i8, ptr %.fr767, i64 96 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.fr767, i64 84
  br i1 %.not, label %.lr.ph758.split.us, label %.lr.ph758.split

.lr.ph758.split.us:                               ; preds = %.lr.ph758, %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443.us
  %.0266756.us = phi i32 [ %i.sp, %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443.us ], [ 0, %.lr.ph758 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %26, align 8, !alias.scope !52
  store i16 2, ptr %i.rv, align 8, !alias.scope !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !52
  store i32 0, ptr %i.a, align 4, !noalias !52
  %i.si = call ptr @ures_getStringByIndex_78(ptr noundef %i.rw, i32 noundef %.0266756.us, ptr noundef nonnull %i.a, ptr noundef nonnull %0) #11, !noalias !52 ; 2 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.si) #11, !noalias !52, !srcloc !8
  %i.sj = load i32, ptr %0, align 4, !noalias !52
  %i.sk = icmp sgt i32 %i.sj, 0
  br i1 %i.sk, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph758.split.us
  store ptr %i.si, ptr %1, align 8, !noalias !52
  %i.sl = load i32, ptr %i.a, align 4, !noalias !52
  %i.sm = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %26, i8 noundef signext 1, ptr noundef nonnull %1, i32 noundef %i.sl) #11 ; 0 uses
  %i.sn = load ptr, ptr %1, align 8, !noalias !52
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.sn) #11, !srcloc !8
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443.us

bb.dy:                                            ; preds = %.lr.ph758.split.us
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %26) #11
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443.us

_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443.us: ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.so = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef nonnull %26) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #11
  %i.sp = add nuw nsw i32 %.0266756.us, 1         ; 2 uses
  %i.sq = call i32 @ures_getSize_78(ptr noundef %i.rw) #11
  %.not348.us = icmp slt i32 %i.sp, %i.sq
  br i1 %.not348.us, label %.lr.ph758.split.us, label %.critedge376, !llvm.loop !55

.lr.ph758.split:                                  ; preds = %.lr.ph758, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit449
  %.0266756 = phi i32 [ %i.tw, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit449 ], [ 0, %.lr.ph758 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %26, align 8, !alias.scope !52
  store i16 2, ptr %i.rv, align 8, !alias.scope !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !52
  store i32 0, ptr %i.a, align 4, !noalias !52
  %i.sr = call ptr @ures_getStringByIndex_78(ptr noundef %i.rw, i32 noundef %.0266756, ptr noundef nonnull %i.a, ptr noundef nonnull %0) #11, !noalias !52 ; 2 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.sr) #11, !noalias !52, !srcloc !8
  %i.ss = load i32, ptr %0, align 4, !noalias !52
  %i.st = icmp sgt i32 %i.ss, 0
  br i1 %i.st, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph758.split
  store ptr %i.sr, ptr %1, align 8, !noalias !52
  %i.su = load i32, ptr %i.a, align 4, !noalias !52
  %i.sv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %26, i8 noundef signext 1, ptr noundef nonnull %1, i32 noundef %i.su) #11 ; 0 uses
  %i.sw = load ptr, ptr %1, align 8, !noalias !52
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.sw) #11, !srcloc !8
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443

bb.ea:                                            ; preds = %.lr.ph758.split
  call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %26) #11
  br label %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443

_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443: ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.sx = call ptr @uhash_get_78(ptr noundef %i.r, ptr noundef nonnull %26) #11 ; 3 uses
  %.not768 = icmp eq ptr %i.sx, null
  br i1 %.not768, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit449, label %bb.eb

bb.eb:                                            ; preds = %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443
  %i.sy = load ptr, ptr %i.sg, align 8
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.ta = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #11 ; 3 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %bb.ed, label %.thread684

.thread684:                                       ; preds = %bb.ec
  call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ta, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef nonnull align 4 dereferenceable(4) %0) #11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit446

bb.ed:                                            ; preds = %bb.ec
  %i.tc = load i32, ptr %0, align 4
  %i.td = icmp sgt i32 %i.tc, 0
  br i1 %i.td, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit446, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit446

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit446: ; preds = %bb.ee, %bb.ed, %.thread684
  store ptr %i.ta, ptr %i.sg, align 8
  %i.te = load i32, ptr %0, align 4
  %i.tf = icmp slt i32 %i.te, 1
  br i1 %i.tf, label %bb.ef, label %.loopexit

bb.ef:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit446, %bb.eb
  %i.tg = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #11 ; 7 uses
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %bb.eg, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit448

bb.eg:                                            ; preds = %bb.ef
  %i.ti = load i32, ptr %0, align 4
  %i.tj = icmp sgt i32 %i.ti, 0
  br i1 %i.tj, label %.loopexit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  store i32 7, ptr %0, align 4
  br label %.loopexit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit448: ; preds = %bb.ef
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.tg, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  store i16 2, ptr %i.tk, align 8
  %.pre789 = load i32, ptr %0, align 4
  %i.tl = icmp slt i32 %.pre789, 1
  br i1 %i.tl, label %bb.ei, label %.critedge374

bb.ei:                                            ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit448
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.tn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.tg, ptr noundef nonnull align 8 dereferenceable(64) %i.tm) #11 ; 0 uses
  %i.to = load ptr, ptr %i.sg, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.to, ptr noundef nonnull %i.tg, ptr noundef nonnull align 4 dereferenceable(4) %0) #11
  %i.tp = load i32, ptr %0, align 4
  %i.tq = icmp slt i32 %i.tp, 1
  br i1 %i.tq, label %bb.ej, label %.loopexit

bb.ej:                                            ; preds = %bb.ei
  %i.tr = load i32, ptr %i.sh, align 4
  %.not347 = icmp eq i32 %i.tr, 5
  br i1 %.not347, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit449, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sx, i64 88
  store ptr %.fr767, ptr %i.ts, align 8
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit449

.critedge374:                                     ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit448
  %i.tt = load ptr, ptr %i.tg, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8
  call void %i.tv(ptr noundef nonnull align 8 dereferenceable(64) %i.tg) #11, !inline_history !37
  br label %.loopexit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit449: ; preds = %bb.ej, %bb.ek, %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #11
  %i.tw = add nuw nsw i32 %.0266756, 1            ; 2 uses
  %i.tx = call i32 @ures_getSize_78(ptr noundef %i.rw) #11
  %.not348 = icmp slt i32 %i.tw, %i.tx
  br i1 %.not348, label %.lr.ph758.split, label %.critedge376, !llvm.loop !55

.critedge376:                                     ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit449, %_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode.exit443.us, %bb.dw
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %25) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br label %27

.loopexit:                                        ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit446, %bb.ei, %bb.eg, %bb.eh, %.critedge374
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %25) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br label %bb.el

27:                                               ; preds = %bb.du, %bb.dv, %.critedge376
  %.not.i451.jt0 = icmp eq ptr %i.rw, null
  br i1 %.not.i451.jt0, label %.backedge, label %bb.em

bb.el:                                            ; preds = %bb.dt, %.loopexit
  %.not.i451 = icmp eq ptr %i.rw, null
  br i1 %.not.i451, label %.loopexit711, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit452

bb.em:                                            ; preds = %27
  call void @ures_close_78(ptr noundef nonnull %i.rw) #11
  br label %.backedge

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit452: ; preds = %bb.el
  call void @ures_close_78(ptr noundef nonnull %i.rw) #11
  br label %.loopexit711

.backedge:                                        ; preds = %27, %bb.em
  %i.ty = call signext i8 @ures_hasNext_78(ptr noundef %i.aq) #11
  %.not340 = icmp eq i8 %i.ty, 0
  br i1 %.not340, label %._crit_edge762, label %bb.dt, !llvm.loop !51

._crit_edge762:                                   ; preds = %.backedge, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #11
  store i32 -1, ptr %i.q, align 4
  %i.tz = call ptr @uhash_nextElement_78(ptr noundef %i.r, ptr noundef nonnull %i.q) #11 ; 2 uses
  %.not341763 = icmp eq ptr %i.tz, null
  br i1 %.not341763, label %._crit_edge766, label %.lr.ph765

.lr.ph765:                                        ; preds = %._crit_edge762, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458
  %i.ua = phi ptr [ %i.vd, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458 ], [ %i.tz, %._crit_edge762 ]
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8            ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 84 ; 3 uses
  %i.ue = load i32, ptr %i.ud, align 4
  %i.uf = zext i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L16availableRegionsE, i64 %i.uf
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %bb.en, label %bb.eq

bb.en:                                            ; preds = %.lr.ph765
  %i.uj = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #11 ; 3 uses
  %i.uk = icmp eq ptr %i.uj, null
  br i1 %i.uk, label %bb.eo, label %.thread689

.thread689:                                       ; preds = %bb.en
  call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.uj, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef nonnull align 4 dereferenceable(4) %0) #11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit455

bb.eo:                                            ; preds = %bb.en
  %i.ul = load i32, ptr %0, align 4
  %i.um = icmp sgt i32 %i.ul, 0
  br i1 %i.um, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit455, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit455

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit455: ; preds = %bb.ep, %bb.eo, %.thread689
  %i.un = load i32, ptr %i.ud, align 4
  %i.uo = zext i32 %i.un to i64
  %i.up = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L16availableRegionsE, i64 %i.uo
  store ptr %i.uj, ptr %i.up, align 8
  br label %bb.eq

bb.eq:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit455, %.lr.ph765
  %i.uq = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #11 ; 5 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %bb.er, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit457

bb.er:                                            ; preds = %bb.eq
  %i.us = load i32, ptr %0, align 4
  %i.ut = icmp sgt i32 %i.us, 0
  br i1 %i.ut, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit457: ; preds = %bb.eq
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.uq, ptr noundef nonnull align 8 dereferenceable(64) %i.uu) #11
  %.pre790 = load i32, ptr %0, align 4
  %i.uv = icmp slt i32 %.pre790, 1
  br i1 %i.uv, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458, label %bb.et

bb.et:                                            ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit457
  %i.uw = load ptr, ptr %i.uq, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr noundef nonnull align 8 dereferenceable(64) %i.uq) #11, !inline_history !37
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit457
  %i.uz = load i32, ptr %i.ud, align 4
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L16availableRegionsE, i64 %i.va
  %i.vc = load ptr, ptr %i.vb, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.vc, ptr noundef nonnull %i.uq, ptr noundef nonnull align 4 dereferenceable(4) %0) #11
  %i.vd = call ptr @uhash_nextElement_78(ptr noundef %i.r, ptr noundef nonnull %i.q) #11 ; 2 uses
  %.not341 = icmp eq ptr %i.vd, null
  br i1 %.not341, label %._crit_edge766, label %.lr.ph765

._crit_edge766:                                   ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458, %._crit_edge762
  store ptr %i.s, ptr @_ZN6icu_78L14numericCodeMapE, align 8
  store ptr %i.r, ptr @_ZN6icu_78L11regionIDMapE, align 8
  store ptr %i.t, ptr @_ZN6icu_78L13regionAliasesE, align 8
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread: ; preds = %bb.er, %bb.es, %bb.et, %._crit_edge766
  %.sroa.0608.0 = phi ptr [ null, %._crit_edge766 ], [ %i.t, %bb.et ], [ %i.t, %bb.es ], [ %i.t, %bb.er ]
  %.sroa.0613.0 = phi ptr [ null, %._crit_edge766 ], [ %i.s, %bb.et ], [ %i.s, %bb.es ], [ %i.s, %bb.er ]
  %.sroa.0618.0 = phi ptr [ null, %._crit_edge766 ], [ %i.r, %bb.et ], [ %i.r, %bb.es ], [ %i.r, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  br label %.loopexit711

.loopexit711:                                     ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit452, %bb.el, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread
  %.sroa.0608.1 = phi ptr [ %.sroa.0608.0, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread ], [ %i.t, %bb.el ], [ %i.t, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit452 ]
  %.sroa.0613.1 = phi ptr [ %.sroa.0613.0, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread ], [ %i.s, %bb.el ], [ %i.s, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit452 ]
  %.sroa.0618.1 = phi ptr [ %.sroa.0618.0, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit458.thread ], [ %i.r, %bb.el ], [ %i.r, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit452 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  br label %_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401

.critedge372:                                     ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit417, %bb.ca, %bb.cb, %bb.cf
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br i1 %i.kt, label %_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401, label %bb.eu

bb.eu:                                            ; preds = %.critedge372
  %i.ve = load ptr, ptr %i.ks, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8
  call void %i.vg(ptr noundef nonnull align 8 dereferenceable(64) %i.ks) #11, !inline_history !37
  br label %_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401

_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401: ; preds = %.critedge12, %.critedge16, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit398, %bb.at, %bb.au, %bb.av, %bb.h, %.critedge, %.critedge14, %.critedge18, %.critedge372, %bb.eu, %.critedge368, %.loopexit711, %.critedge20, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380
  %.sroa.0608.2 = phi ptr [ %i.t, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380 ], [ %.sroa.0608.1, %.loopexit711 ], [ %i.t, %bb.at ], [ %i.t, %.critedge20 ], [ %i.t, %.critedge368 ], [ %i.t, %bb.eu ], [ %i.t, %.critedge372 ], [ %i.t, %.critedge18 ], [ %i.t, %bb.au ], [ %i.t, %.critedge14 ], [ %i.t, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit398 ], [ %i.t, %.critedge ], [ %i.t, %.critedge16 ], [ %i.t, %bb.h ], [ %i.t, %bb.av ], [ %i.t, %.critedge12 ] ; 2 uses
  %.sroa.0613.2 = phi ptr [ %i.s, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380 ], [ %.sroa.0613.1, %.loopexit711 ], [ %i.s, %bb.at ], [ %i.s, %.critedge20 ], [ %i.s, %.critedge368 ], [ %i.s, %bb.eu ], [ %i.s, %.critedge372 ], [ %i.s, %.critedge18 ], [ %i.s, %bb.au ], [ %i.s, %.critedge14 ], [ %i.s, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit398 ], [ %i.s, %.critedge ], [ %i.s, %.critedge16 ], [ %i.s, %bb.h ], [ %i.s, %bb.av ], [ %i.s, %.critedge12 ] ; 2 uses
  %.sroa.0618.2 = phi ptr [ %i.r, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit380 ], [ %.sroa.0618.1, %.loopexit711 ], [ %i.r, %bb.at ], [ %i.r, %.critedge20 ], [ %i.r, %.critedge368 ], [ %i.r, %bb.eu ], [ %i.r, %.critedge372 ], [ %i.r, %.critedge18 ], [ %i.r, %bb.au ], [ %i.r, %.critedge14 ], [ %i.r, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit398 ], [ %i.r, %.critedge ], [ %i.r, %.critedge16 ], [ %i.r, %bb.h ], [ %i.r, %bb.av ], [ %i.r, %.critedge12 ] ; 2 uses
  %.not.i462 = icmp eq ptr %i.as, null
  br i1 %.not.i462, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit463, label %bb.ev

bb.ev:                                            ; preds = %_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401
  call void @ures_close_78(ptr noundef nonnull %i.as) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit463

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit463: ; preds = %_ZN6icu_7812LocalPointerINS_6RegionEED2Ev.exit401, %bb.ev
  %.not.i464 = icmp eq ptr %i.ar, null
  br i1 %.not.i464, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit465, label %bb.ew

bb.ew:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit463
  call void @ures_close_78(ptr noundef nonnull %i.ar) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit465

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit465: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit463, %bb.ew
  %.not.i466 = icmp eq ptr %i.aq, null
  br i1 %.not.i466, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit467, label %bb.ex

bb.ex:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit465
  call void @ures_close_78(ptr noundef nonnull %i.aq) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit467

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit467: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit465, %bb.ex
  %.not.i468 = icmp eq ptr %i.ap, null
  br i1 %.not.i468, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit469, label %bb.ey

bb.ey:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit467
  call void @ures_close_78(ptr noundef nonnull %i.ap) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit469

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit469: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit467, %bb.ey
  %.not.i470 = icmp eq ptr %i.ao, null
  br i1 %.not.i470, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit471, label %bb.ez

bb.ez:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit469
  call void @ures_close_78(ptr noundef nonnull %i.ao) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit471

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit471: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit469, %bb.ez
  %.not.i472 = icmp eq ptr %i.an, null
  br i1 %.not.i472, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit473, label %bb.fa

bb.fa:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit471
  call void @ures_close_78(ptr noundef nonnull %i.an) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit473

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit473: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit471, %bb.fa
  %.not.i474 = icmp eq ptr %i.am, null
  br i1 %.not.i474, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit475, label %bb.fb

bb.fb:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit473
  call void @ures_close_78(ptr noundef nonnull %i.am) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit475

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit475: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit473, %bb.fb
  %.not.i476 = icmp eq ptr %i.al, null
  br i1 %.not.i476, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit477, label %bb.fc

bb.fc:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit475
  call void @ures_close_78(ptr noundef nonnull %i.al) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit477

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit477: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit475, %bb.fc
  %.not.i478 = icmp eq ptr %i.ak, null
  br i1 %.not.i478, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit479, label %bb.fd

bb.fd:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit477
  call void @ures_close_78(ptr noundef nonnull %i.ak) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit479

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit479: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit477, %bb.fd
  %.not.i480 = icmp eq ptr %i.aj, null
  br i1 %.not.i480, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit481, label %bb.fe

bb.fe:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit479
  call void @ures_close_78(ptr noundef nonnull %i.aj) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit481

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit481: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit479, %bb.fe
  %.not.i482 = icmp eq ptr %i.ai, null
  br i1 %.not.i482, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit483, label %bb.ff

bb.ff:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit481
  call void @ures_close_78(ptr noundef nonnull %i.ai) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit483

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit483: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit481, %bb.ff
  %.not.i484 = icmp eq ptr %i.ah, null
  br i1 %.not.i484, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit485, label %bb.fg

bb.fg:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit483
  call void @ures_close_78(ptr noundef nonnull %i.ah) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit485

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit485: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit483, %bb.fg
  %.not.i486 = icmp eq ptr %i.ag, null
  br i1 %.not.i486, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit488, label %bb.fh

bb.fh:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit485
  call void @ures_close_78(ptr noundef nonnull %i.ag) #11
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit488

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit488: ; preds = %bb.fh, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit485
  br i1 %i.z, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit489, label %bb.fi

bb.fi:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit488
  %i.vh = load ptr, ptr %i.y, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8
  call void %i.vj(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #11, !inline_history !56
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit489

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit489: ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit488, %bb.fi
  br i1 %i.v, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit490, label %bb.fj

bb.fj:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit489
  %i.vk = load ptr, ptr %i.u, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #11, !inline_history !56
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit490

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit490: ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit489, %bb.fj
  %.not.i491 = icmp eq ptr %.sroa.0608.2, null
  br i1 %.not.i491, label %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit490
  call void @uhash_close_78(ptr noundef nonnull %.sroa.0608.2) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit490, %bb.fk
  %.not.i492 = icmp eq ptr %.sroa.0613.2, null
  br i1 %.not.i492, label %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit493, label %bb.fl

bb.fl:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit
  call void @uhash_close_78(ptr noundef nonnull %.sroa.0613.2) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit493

_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit493: ; preds = %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit, %bb.fl
  %.not.i494 = icmp eq ptr %.sroa.0618.2, null
  br i1 %.not.i494, label %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit495, label %bb.fm

bb.fm:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit493
  call void @uhash_close_78(ptr noundef nonnull %.sroa.0618.2) #11
  br label %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit495

_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit495: ; preds = %_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev.exit493, %bb.fm
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @uhash_open_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @uhash_hashUnicodeString_78(ptr) #3

declare signext i8 @uhash_compareUnicodeString_78(ptr, ptr) #3

declare i32 @uhash_hashLong_78(ptr) #3

declare signext i8 @uhash_compareLong_78(ptr, ptr) #3

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #4

declare void @uprv_deleteUObject_78(ptr noundef) #3

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare ptr @ures_openDirect_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ucln_i18n_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #3
end_hunk_1
