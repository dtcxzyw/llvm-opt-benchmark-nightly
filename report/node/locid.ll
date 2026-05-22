inline.NumInlined: 889
inline.NumDeleted: 255
begin_hunk_0_@_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode:bb.a
  %.0 = phi ptr [ null, %bb.e ], [ %i.d, %bb.c ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

declare noundef ptr @_ZN6icu_7817StringEnumeration5unextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6icu_7818KeywordEnumeration5snextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1) #22
  %i.h = load i32, ptr %i.a, align 4
  %i.i = call noundef ptr @_ZN6icu_7817StringEnumeration8setCharsEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7818KeywordEnumeration5resetER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %spec.select.i = select i1 %i.e, ptr @.str, ptr %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %spec.select.i, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationeqERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationneERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6icu_7825UnicodeKeywordEnumeration5countER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %spec.select.i = select i1 %i.e, ptr @.str, ptr %i.d ; 2 uses
  %i.f = load i8, ptr %spec.select.i, align 1
  %.not1012 = icmp eq i8 %i.f, 0
  br i1 %.not1012, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.b ]
  %.0813 = phi ptr [ %i.k, %.lr.ph ], [ %spec.select.i, %bb.b ] ; 3 uses
  %i.g = tail call ptr @uloc_toUnicodeLocaleKey_78(ptr noundef nonnull %.0813) #22
  %.not11 = icmp ne ptr %i.g, null
  %i.h = zext i1 %.not11 to i32
  %spec.select = add nuw nsw i32 %.014, %i.h      ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0813) #24
  %i.j = getelementptr i8, ptr %.0813, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 1        ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %.not10 = icmp eq i8 %i.l, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %.lr.ph ]
  ret i32 %.09
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6icu_7825UnicodeKeywordEnumeration4nextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not9.i = icmp eq i8 %i.e, 0
  br i1 %.not9.i, label %._crit_edge, label %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit

_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit: ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #24
  %i.g = shl i64 %i.f, 32
  %sext.i = add i64 %i.g, 4294967296
  %i.h = ashr exact i64 %sext.i, 32
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  store ptr %i.i, ptr %i.c, align 8
  %.pre = load i32, ptr %2, align 4
  %i.j = icmp slt i32 %.pre, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25
  %.01528 = phi ptr [ %i.d, %.lr.ph ], [ %i.q, %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25 ]
  %i.l = tail call ptr @uloc_toUnicodeLocaleKey_78(ptr noundef nonnull %.01528) #22 ; 4 uses
  %.not20 = icmp eq ptr %i.l, null
  br i1 %.not20, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not21 = icmp eq ptr %1, null
  br i1 %.not21, label %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #24
  %i.n = trunc i64 %i.m to i32
  br label %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread.sink.split

bb.f:                                             ; preds = %bb.c
  %i.o = load i32, ptr %2, align 4
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.r = load i8, ptr %i.q, align 1
  %.not9.i22 = icmp eq i8 %i.r, 0
  br i1 %.not9.i22, label %._crit_edge, label %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25

_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25: ; preds = %bb.g
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #24
  %i.t = shl i64 %i.s, 32
  %sext.i23 = add i64 %i.t, 4294967296
  %i.u = ashr exact i64 %sext.i23, 32
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.k, align 8
  %.pre30 = load i32, ptr %2, align 4
  %i.w = icmp slt i32 %.pre30, 1
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.f, %bb.g, %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25, %bb.a, %bb.b, %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread, label %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread.sink.split

_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread.sink.split: ; preds = %._crit_edge, %bb.e
  %.sink = phi i32 [ %i.n, %bb.e ], [ 0, %._crit_edge ]
  %.2.ph = phi ptr [ %i.l, %bb.e ], [ null, %._crit_edge ]
  store i32 %.sink, ptr %1, align 4
  br label %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread

_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread: ; preds = %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread.sink.split, %bb.d, %._crit_edge
  %.2 = phi ptr [ null, %._crit_edge ], [ %i.l, %bb.d ], [ %.2.ph, %_ZN6icu_7818KeywordEnumeration4nextEPiR10UErrorCode.exit25.thread.sink.split ]
  ret ptr %.2
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @umtx_lock_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #3

declare void @uhash_close_78(ptr noundef) local_unnamed_addr #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare void @umtx_unlock_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::StringByteSink", align 8 ; 6 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::Locale", align 8   ; 5 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %14 = alloca %"class.icu_78::Locale", align 8   ; 10 uses
  %15 = alloca %"class.icu_78::LocaleBuilder", align 8 ; 5 uses
  %16 = alloca %"class.icu_78::StringPiece", align 8 ; 8 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 8 uses
  %18 = alloca %"class.icu_78::LocalPointer.45", align 8 ; 11 uses
  %19 = alloca %"class.icu_78::UniqueCharStrings", align 8 ; 21 uses
  %20 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %21 = alloca %"class.icu_78::UVector", align 8  ; 10 uses
  %22 = alloca %"class.icu_78::Locale", align 8   ; 9 uses
  %23 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %24 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %25 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %26 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812_GLOBAL__N_19AliasData9singletonER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_19AliasData9gInitOnceE acquire, align 4
  %.not11.i.i = icmp eq i32 %i.c, 2
  br i1 %.not11.i.i, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_19AliasData9gInitOnceE) #22
  %.not12.i.i = icmp eq i8 %i.d, 0
  br i1 %.not12.i.i, label %bb.cm, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ucln_common_registerCleanup_78(i32 noundef 7, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_19AliasData7cleanupEv) #22
  %i.e = load i32, ptr %3, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %_ZN6icu_7812_GLOBAL__N_19AliasData8loadDataER10UErrorCode.exit.i

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 3 uses
  %i.h = tail call ptr @ures_getByKey_78(ptr noundef %i.g, ptr noundef nonnull @.str.183, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 7 uses
  %i.i = tail call ptr @ures_getByKey_78(ptr noundef %i.h, ptr noundef nonnull @.str.184, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 5 uses
  %i.j = tail call ptr @ures_getByKey_78(ptr noundef %i.h, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 5 uses
  %i.k = tail call ptr @ures_getByKey_78(ptr noundef %i.h, ptr noundef nonnull @.str.186, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 5 uses
  %i.l = tail call ptr @ures_getByKey_78(ptr noundef %i.h, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 5 uses
  %i.m = tail call ptr @ures_getByKey_78(ptr noundef %i.h, ptr noundef nonnull @.str.188, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 5 uses
  %i.n = load i32, ptr %3, align 4
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.ce

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 21 uses
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 3 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %19, i64 112
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %19, i64 104
  store i32 8, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %19, i64 108 ; 2 uses
  store i8 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 176 ; 12 uses
  store i8 0, ptr %i.v, align 8
  %i.w = call ptr @uhash_init_78(ptr noundef nonnull align 8 dereferenceable(177) %19, ptr noundef nonnull @uhash_hashUChars_78, ptr noundef nonnull @uhash_compareUChars_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  %i.x = load i32, ptr %3, align 4
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.g, label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #22 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %_ZN6icu_7817UniqueCharStringsC2ER10UErrorCode.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.p, align 8
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i

_ZN6icu_7817UniqueCharStringsC2ER10UErrorCode.exit.i.i.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 13 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 40, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i32 0, ptr %i.ae, align 8
  store i8 0, ptr %i.ab, align 1
  store ptr %i.z, ptr %i.p, align 8
  %.pr.i.i.i = load i32, ptr %3, align 4
  %i.af = icmp slt i32 %.pr.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i

bb.i:                                             ; preds = %_ZN6icu_7817UniqueCharStringsC2ER10UErrorCode.exit.i.i.i
  %i.ag = call i32 @ures_getSize_78(ptr noundef %i.i) #22 ; 21 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = call noalias ptr @uprv_malloc_78(i64 noundef %i.aj) #26 ; 20 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  call void @uprv_free_78(ptr noundef null) #22
  %i.al = shl nuw nsw i64 %i.ai, 2
  %i.am = call noalias ptr @uprv_malloc_78(i64 noundef %i.al) #26 ; 19 uses
  %.not.i40.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i40.i.i.i.i.i, label %bb.m, label %_ZN6icu_7811LocalMemoryIiE22allocateInsteadAndCopyEii.exit.i.i.i.i.i

_ZN6icu_7811LocalMemoryIiE22allocateInsteadAndCopyEii.exit.i.i.i.i.i: ; preds = %bb.l
  call void @uprv_free_78(ptr noundef null) #22
  %i.an = load i32, ptr %3, align 4
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6icu_7811LocalMemoryIiE22allocateInsteadAndCopyEii.exit.i.i.i.i.i, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.i.i.i.i.i ], [ 0, %_ZN6icu_7811LocalMemoryIiE22allocateInsteadAndCopyEii.exit.i.i.i.i.i ] ; 3 uses
  %i.ap = call signext i8 @ures_hasNext_78(ptr noundef %i.i) #22
  %.not36.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not36.i.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder17readLanguageAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = call ptr @ures_getNextResource_78(ptr noundef %i.i, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 6 uses
  %i.ar = call ptr @ures_getKey_78(ptr noundef %i.aq) #22
  %i.as = call ptr @ures_getStringByKey_78(ptr noundef %i.aq, ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 4 uses
  %i.at = load i32, ptr %3, align 4
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.o, label %.critedge.critedge.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i.i.i
  store ptr %i.ar, ptr %i.av, align 8
  %i.aw = load i8, ptr %i.v, align 8, !range !17, !noundef !18
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 30, ptr %3, align 4
  br label %_ZN6icu_7817UniqueCharStrings3addEPKDsR10UErrorCode.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ay = call i32 @uhash_geti_78(ptr noundef nonnull align 8 dereferenceable(177) %19, ptr noundef %i.as) #22 ; 2 uses
  %.not15.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not15.i.i.i.i.i.i, label %bb.r, label %_ZN6icu_7817UniqueCharStrings3addEPKDsR10UErrorCode.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.p, align 8
  %i.ba = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.az, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  %i.bb = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = call i32 @u_strlen_78(ptr noundef %i.as) #22
  %i.bf = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.bb, ptr noundef %i.as, i32 noundef %i.be, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  %i.bg = call i32 @uhash_puti_78(ptr noundef nonnull align 8 dereferenceable(177) %19, ptr noundef %i.as, i32 noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  br label %_ZN6icu_7817UniqueCharStrings3addEPKDsR10UErrorCode.exit.i.i.i.i.i

_ZN6icu_7817UniqueCharStrings3addEPKDsR10UErrorCode.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.1.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.q ], [ -1, %bb.p ], [ %i.bd, %bb.r ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.i.i.i.i
  store i32 %.1.i.i.i.i.i.i, ptr %i.bh, align 4
  %.not.i42.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i42.i.i.i.i.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN6icu_7817UniqueCharStrings3addEPKDsR10UErrorCode.exit.i.i.i.i.i
  call void @ures_close_78(ptr noundef nonnull %i.aq) #22
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.i.i.i.i.i

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.i.i.i.i.i: ; preds = %bb.s, %_ZN6icu_7817UniqueCharStrings3addEPKDsR10UErrorCode.exit.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1
  %i.bi = load i32, ptr %3, align 4
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

.critedge.critedge.i.i.i.i.i:                     ; preds = %bb.n
  %.not.i43.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i43.i.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.critedge.critedge.i.i.i.i.i
  call void @ures_close_78(ptr noundef nonnull %i.aq) #22
  br label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder17readLanguageAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder17readLanguageAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.t
  %.pr76.pr.i.i.i = load i32, ptr %3, align 4
  %i.bk = icmp slt i32 %.pr76.pr.i.i.i, 1
  br i1 %i.bk, label %bb.u, label %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder18readTerritoryAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i

bb.u:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_116AliasDataBuilder17readLanguageAliasEP15UResourceBundlePNS_17UniqueCharStringsERNS_11LocalMemoryIPKcEERNS6_IiEERiR10UErrorCode.exit.i.i.i
  %i.bl = call i32 @ures_getSize_78(ptr noundef %i.j) #22 ; 15 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = call noalias ptr @uprv_malloc_78(i64 noundef %i.bo) #26 ; 14 uses
  %.not.i.i.i79.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i79.i.i.i, label %bb.w, label %bb.x
end_hunk_0
begin_hunk_1_@_ZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCode:bb.a
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %.0.i.i.i124, ptr %i.mj, align 8
  %i.mk = load i8, ptr %.0.i.i.i124, align 1
  %.not171 = icmp eq i8 %i.mk, 0
  %spec.store.select169 = select i1 %.not171, ptr null, ptr %.0.i.i.i124
  store ptr %spec.store.select169, ptr %i.mj, align 8
  %i.ml = load i8, ptr %i.lw, align 8
  switch i8 %i.ml, label %bb.dc [
    i8 0, label %_ZNK6icu_786Locale10getVariantEv.exit
    i8 1, label %bb.cy
    i8 2, label %bb.cz
  ]

bb.cy:                                            ; preds = %_ZNK6icu_786Locale10getCountryEv.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.mn = load i8, ptr %i.mm, align 2             ; 2 uses
  %i.mo = icmp eq i8 %i.mn, 0
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.mq = zext i8 %i.mn to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mq
  %i.ms = select i1 %i.mo, ptr @.str, ptr %i.mr
  br label %_ZNK6icu_786Locale10getVariantEv.exit

bb.cz:                                            ; preds = %_ZNK6icu_786Locale10getCountryEv.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8            ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load i32, ptr %i.mv, align 8            ; 2 uses
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %_ZNK6icu_786Locale10getVariantEv.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %bb.db, label %_ZNK6icu_786Locale4Heap5Alloc11getBaseNameEv.exit.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %i.nd = icmp eq ptr %i.nc, null
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.nd, ptr @.str, ptr %i.nc ; 2 uses
  %i.ne = load i8, ptr %spec.select.i.i.i.i.i.i.i.i, align 1
  %.not.not.i.i.i.i.i.i.i = icmp eq i8 %i.ne, 64
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.not.i.i.i.i.i.i.i, ptr @.str, ptr %spec.select.i.i.i.i.i.i.i.i
  br label %_ZNK6icu_786Locale4Heap5Alloc11getBaseNameEv.exit.i.i.i.i.i.i

_ZNK6icu_786Locale4Heap5Alloc11getBaseNameEv.exit.i.i.i.i.i.i: ; preds = %bb.db, %bb.da
  %.1.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %bb.db ], [ %i.mz, %bb.da ]
  %i.nf = sext i32 %i.mw to i64
  %i.ng = getelementptr inbounds i8, ptr %.1.i.i.i.i.i.i.i, i64 %i.nf
  br label %_ZNK6icu_786Locale10getVariantEv.exit

bb.dc:                                            ; preds = %_ZNK6icu_786Locale10getCountryEv.exit
  call void @abort() #23
  unreachable

_ZNK6icu_786Locale10getVariantEv.exit:            ; preds = %_ZNK6icu_786Locale10getCountryEv.exit, %bb.cy, %bb.cz, %_ZNK6icu_786Locale4Heap5Alloc11getBaseNameEv.exit.i.i.i.i.i.i
  %.0.i.i.i125 = phi ptr [ @.str, %_ZNK6icu_786Locale10getCountryEv.exit ], [ %i.ms, %bb.cy ], [ %i.ng, %_ZNK6icu_786Locale4Heap5Alloc11getBaseNameEv.exit.i.i.i.i.i.i ], [ @.str, %bb.cz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.nh = getelementptr inbounds nuw i8, ptr %20, i64 13 ; 2 uses
  store ptr %i.nh, ptr %20, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 40, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 2 uses
  store i8 0, ptr %i.nj, align 4
  %i.nk = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  store i32 0, ptr %i.nk, align 8
  store i8 0, ptr %i.nh, align 1
  %i.nl = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %20, ptr noundef %.0.i.i.i125, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  %i.nm = load i32, ptr %i.nk, align 8
  %.not172 = icmp eq i32 %i.nm, 0
  br i1 %.not172, label %bb.dl, label %bb.dd

bb.dd:                                            ; preds = %_ZNK6icu_786Locale10getVariantEv.exit
  %i.nn = load i32, ptr %3, align 4
  %i.no = icmp slt i32 %i.nn, 1
  br i1 %i.no, label %bb.de, label %bb.ga

bb.de:                                            ; preds = %bb.dd
  %i.np = load ptr, ptr %20, align 8              ; 4 uses
  %i.nq = call ptr @T_CString_toLowerCase_78(ptr noundef %i.np) #22 ; 0 uses
  %i.nr = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.np, i32 noundef 95) #24 ; 2 uses
  %.not101219 = icmp eq ptr %i.nr, null
  %i.ns = load i32, ptr %3, align 4
  %i.nt = icmp sgt i32 %i.ns, 0
  %or.cond190220 = select i1 %.not101219, i1 true, i1 %i.nt
  br i1 %or.cond190220, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.de
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %.lr.ph, %bb.di
  %i.nv = phi ptr [ %i.nr, %.lr.ph ], [ %i.oa, %bb.di ] ; 2 uses
  %.087221 = phi ptr [ %i.np, %.lr.ph ], [ %i.nz, %bb.di ] ; 3 uses
  store i8 0, ptr %i.nv, align 1
  %i.nw = load i8, ptr %.087221, align 1
  %.not105 = icmp eq i8 %i.nw, 0
  br i1 %.not105, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nx = call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.nu, ptr noundef nonnull %.087221, i32 noundef 0) #22
  %i.ny = icmp slt i32 %i.nx, 0
  br i1 %i.ny, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.nu, ptr noundef nonnull %.087221, ptr noundef nonnull align 4 dereferenceable(4) %3) #22
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 1 ; 3 uses
  %i.oa = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.nz, i32 noundef 95) #24 ; 2 uses
  %.not101 = icmp eq ptr %i.oa, null
  %i.ob = load i32, ptr %3, align 4
  %i.oc = icmp sgt i32 %i.ob, 0
  %or.cond190 = select i1 %.not101, i1 true, i1 %i.oc
  br i1 %or.cond190, label %.critedge, label %bb.df, !llvm.loop !33

.critedge:                                        ; preds = %bb.di, %bb.de
  %.087.lcssa = phi ptr [ %i.np, %bb.de ], [ %i.nz, %bb.di ] ; 3 uses
  %i.od = load i8, ptr %.087.lcssa, align 1
  %.not103 = icmp eq i8 %i.od, 0
  br i1 %.not103, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %.critedge
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.of = call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.oe, ptr noundef nonnull %.087.lcssa, i32 noundef 0) #22
  %i.og = icmp slt i32 %i.of, 0
  br i1 %i.og, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.oe, ptr noundef nonnull %.087.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %3) #22
  br label %bb.dl

bb.dl:                                            ; preds = %.critedge, %bb.dj, %bb.dk, %_ZNK6icu_786Locale10getVariantEv.exit
  %i.oh = load i32, ptr %3, align 4
  %i.oi = icmp slt i32 %i.oh, 1
  br i1 %i.oi, label %bb.dm, label %bb.ga

bb.dm:                                            ; preds = %bb.dl
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  call void @_ZN6icu_787UVector4sortEPFi8UElementS1_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.oj, ptr noundef nonnull @"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCodeEN3$_08__invokeE8UElementSA_", ptr noundef nonnull align 4 dereferenceable(4) %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull @"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCodeEN3$_18__invokeEPv", ptr noundef null, i32 noundef 10, ptr noundef nonnull align 4 dereferenceable(4) %3) #22
  %i.ok = load i32, ptr %3, align 4
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.thread, label %.lr.ph224

.lr.ph224:                                        ; preds = %bb.dm
  %i.om = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %14, i64 27
  %i.oq = getelementptr inbounds nuw i8, ptr %14, i64 18
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br label %bb.dn

bb.dn:                                            ; preds = %.lr.ph224, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit
  %.088222 = phi i32 [ 0, %.lr.ph224 ], [ %i.sb, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit ] ; 2 uses
  %i.os = call fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer15replaceLanguageEbbbRNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.os, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ot = call fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer15replaceLanguageEbbbRNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.ot, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ou = call fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer15replaceLanguageEbbbRNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.ou, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ov = call fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer15replaceLanguageEbbbRNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.ov, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ow = call fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer15replaceLanguageEbbbRNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.ow, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.ox = load i32, ptr %3, align 4               ; 2 uses
  %i.oy = icmp slt i32 %i.ox, 1
  br i1 %i.oy, label %bb.dt, label %.critedge194

bb.dt:                                            ; preds = %bb.ds
  %i.oz = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %thread-pre-split.thread, label %bb.du

thread-pre-split.thread:                          ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.el

bb.du:                                            ; preds = %bb.dt
  %i.pb = load ptr, ptr %i.lr, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = call noundef ptr @uhash_get_78(ptr noundef %i.pd, ptr noundef nonnull %i.oz) #22 ; 6 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %thread-pre-split, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pg = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.pe, i32 noundef 32) #24, !inline_history !34 ; 2 uses
  %.not40.i = icmp eq ptr %i.pg, null
  br i1 %.not40.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer16replaceTerritoryERNS_7UVectorER10UErrorCode.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN6icu_7813LocaleBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #22, !inline_history !34
  %i.ph = load ptr, ptr %0, align 8               ; 2 uses
  %i.pi = icmp eq ptr %i.ph, null
  %spec.select.i = select i1 %i.pi, ptr @.str.190, ptr %i.ph
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull %spec.select.i) #22, !inline_history !34
  %i.pj = load ptr, ptr %16, align 8
  %i.pk = load i32, ptr %i.om, align 8
  %i.pl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder11setLanguageENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr %i.pj, i32 %i.pk) #22, !inline_history !34
  %i.pm = load ptr, ptr %i.me, align 8
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef %i.pm) #22, !inline_history !34
  %i.pn = load ptr, ptr %17, align 8
  %i.po = load i32, ptr %i.on, align 8
  %i.pp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder9setScriptENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48) %i.pl, ptr %i.pn, i32 %i.po) #22, !inline_history !34
  call void @_ZN6icu_7813LocaleBuilder5buildER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %i.pp, ptr noundef nonnull align 4 dereferenceable(4) %3) #22, !inline_history !34
  call void @_ZN6icu_7813LocaleBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #22, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN6icu_786Locale16addLikelySubtagsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 4 dereferenceable(4) %3), !inline_history !34
  %i.pq = load i8, ptr %i.oo, align 8
  switch i8 %i.pq, label %bb.dz [
    i8 0, label %_ZNK6icu_786Locale10getCountryEv.exit138
    i8 1, label %bb.dx
    i8 2, label %bb.dy
  ]

bb.dx:                                            ; preds = %bb.dw
  br label %_ZNK6icu_786Locale10getCountryEv.exit138

bb.dy:                                            ; preds = %bb.dw
  br label %_ZNK6icu_786Locale10getCountryEv.exit138

bb.dz:                                            ; preds = %bb.dw
  call void @abort() #23
  unreachable

_ZNK6icu_786Locale10getCountryEv.exit138:         ; preds = %bb.dw, %bb.dx, %bb.dy
  %.0.i.i.i137 = phi ptr [ %i.op, %bb.dy ], [ %i.oq, %bb.dx ], [ @.str, %bb.dw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr null, ptr %18, align 8
  %i.pr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i137) #24, !inline_history !34 ; 2 uses
  %.not42.i = icmp eq i64 %i.pr, 0
  br i1 %.not42.i, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %_ZNK6icu_786Locale10getCountryEv.exit138
  %i.ps = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.pe, ptr noundef nonnull dereferenceable(1) %.0.i.i.i137) #24, !inline_history !34 ; 2 uses
  %.not43.i = icmp eq ptr %i.ps, null
  br i1 %.not43.i, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pt = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #22, !inline_history !34 ; 8 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pv = trunc i64 %i.pr to i32
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 13 ; 2 uses
  store ptr %i.pw, ptr %i.pt, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store i32 40, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store i8 0, ptr %i.py, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pt, i64 56
  store i32 0, ptr %i.pz, align 8
  store i8 0, ptr %i.pw, align 1
  %i.qa = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.pt, ptr noundef nonnull %i.ps, i32 noundef %i.pv, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  call void @_ZN6icu_7812LocalPointerINS_10CharStringEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.pt, ptr noundef nonnull align 4 dereferenceable(4) %3), !inline_history !34
  %.pre = load ptr, ptr %18, align 8
  %i.qb = icmp ne ptr %.pre, null
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ea, %_ZNK6icu_786Locale10getCountryEv.exit138
  %.not173 = phi i1 [ %i.qb, %bb.ed ], [ false, %bb.ea ], [ false, %_ZNK6icu_786Locale10getCountryEv.exit138 ]
  %i.qc = load i32, ptr %3, align 4               ; 2 uses
  %i.qd = icmp sgt i32 %i.qc, 0
  %or.cond192 = select i1 %.not173, i1 true, i1 %i.qd
  br i1 %or.cond192, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qe = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #22, !inline_history !34 ; 8 uses
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qg = ptrtoint ptr %i.pg to i64
  %i.qh = ptrtoint ptr %i.pe to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = trunc i64 %i.qi to i32
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 13 ; 2 uses
  store ptr %i.qk, ptr %i.qe, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store i32 40, ptr %i.ql, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  store i8 0, ptr %i.qm, align 4
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 56
  store i32 0, ptr %i.qn, align 8
  store i8 0, ptr %i.qk, align 1
  %i.qo = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.qe, ptr noundef nonnull %i.pe, i32 noundef %i.qj, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  call void @_ZN6icu_7812LocalPointerINS_10CharStringEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.qe, ptr noundef nonnull align 4 dereferenceable(4) %3), !inline_history !34
  %.pre262 = load i32, ptr %3, align 4
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ee
  %i.qp = phi i32 [ %.pre262, %bb.eh ], [ %i.qc, %bb.ee ]
  %i.qq = icmp slt i32 %i.qp, 1
  br i1 %i.qq, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.qr = load ptr, ptr %18, align 8              ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8
  store ptr null, ptr %18, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull %i.qr, ptr noundef nonnull align 4 dereferenceable(4) %3) #22, !inline_history !34
  %i.qt = load i32, ptr %3, align 4
  %i.qu = icmp slt i32 %i.qt, 1
  call void @_ZN6icu_7812LocalPointerINS_10CharStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #22, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN6icu_786LocaleD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #22, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %i.qu, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer16replaceTerritoryERNS_7UVectorER10UErrorCode.exit, label %thread-pre-split

bb.ek:                                            ; preds = %bb.ei
  call void @_ZN6icu_7812LocalPointerINS_10CharStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #22, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN6icu_786LocaleD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #22, !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %thread-pre-split

_ZN6icu_7812_GLOBAL__N_113AliasReplacer16replaceTerritoryERNS_7UVectorER10UErrorCode.exit: ; preds = %bb.dv, %bb.ej
  %.132.i = phi ptr [ %i.qs, %bb.ej ], [ %i.pe, %bb.dv ]
  store ptr %.132.i, ptr %i.mj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit

thread-pre-split:                                 ; preds = %bb.ek, %bb.ej, %bb.du
  %.val.pr.pr = load i32, ptr %3, align 4         ; 2 uses
  %i.qv = icmp slt i32 %.val.pr.pr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br i1 %i.qv, label %bb.el, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.thread

bb.el:                                            ; preds = %thread-pre-split.thread, %thread-pre-split
  %.val.pr347 = phi i32 [ %i.ox, %thread-pre-split.thread ], [ %.val.pr.pr, %thread-pre-split ]
  %i.qw = load ptr, ptr %i.me, align 8            ; 2 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.qy = load ptr, ptr %i.lr, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = call noundef ptr @uhash_get_78(ptr noundef %i.ra, ptr noundef nonnull %i.qw) #22 ; 2 uses
  %.not.i126 = icmp eq ptr %i.rb, null
  br i1 %.not.i126, label %._crit_edge263, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer13replaceScriptER10UErrorCode.exit

._crit_edge263:                                   ; preds = %bb.em
  %.val121.pre = load i32, ptr %3, align 4
  br label %bb.en

_ZN6icu_7812_GLOBAL__N_113AliasReplacer13replaceScriptER10UErrorCode.exit: ; preds = %bb.em
  store ptr %i.rb, ptr %i.me, align 8
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit

.critedge194:                                     ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.thread

bb.en:                                            ; preds = %._crit_edge263, %bb.el
  %.val121 = phi i32 [ %.val121.pre, %._crit_edge263 ], [ %.val.pr347, %bb.el ] ; 2 uses
  %i.rc = icmp slt i32 %.val121, 1
  %i.rd = load i32, ptr %i.or, align 8
  %i.re = icmp sgt i32 %i.rd, 0
  %or.cond235 = select i1 %i.rc, i1 %i.re, i1 false
  br i1 %or.cond235, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread

.lr.ph.i:                                         ; preds = %bb.en, %bb.er
  %.01913.i = phi i32 [ %i.ry, %bb.er ], [ 0, %bb.en ] ; 3 uses
  %i.rf = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.oj, i32 noundef %.01913.i) #22 ; 4 uses
  %i.rg = load ptr, ptr %i.lr, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = call noundef ptr @uhash_get_78(ptr noundef %i.ri, ptr noundef %i.rf) #22 ; 3 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i
  %i.rl = icmp eq ptr %i.rf, null
  br i1 %i.rl, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i

_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i: ; preds = %bb.eo
  %i.rm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.rf, ptr noundef nonnull readonly dereferenceable(1) %i.rj) #24
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %bb.er, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i

_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i: ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i, %bb.eo
  call void @_ZN6icu_787UVector12setElementAtEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.oj, ptr noundef nonnull %i.rj, i32 noundef %.01913.i) #22
  %i.ro = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.rf, ptr noundef nonnull dereferenceable(7) @.str.191) #24
  %i.rp = icmp eq i32 %i.ro, 0
  %i.rq = load i32, ptr %i.or, align 8
  %i.rr = icmp sgt i32 %i.rq, 0
  %or.cond.i = select i1 %i.rp, i1 %i.rr, i1 false
  br i1 %or.cond.i, label %.lr.ph15.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit

.lr.ph15.i:                                       ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i, %bb.eq
  %.014.i = phi i32 [ %i.rv, %bb.eq ], [ 0, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i ] ; 3 uses
  %i.rs = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.oj, i32 noundef %.014.i) #22
  %i.rt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.rs, ptr noundef nonnull dereferenceable(8) @.str.192) #24
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.lr.ph15.i
  call void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.oj, i32 noundef %.014.i) #22
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph15.i
  %i.rv = add nuw nsw i32 %.014.i, 1              ; 2 uses
  %i.rw = load i32, ptr %i.or, align 8
  %i.rx = icmp slt i32 %i.rv, %i.rw
  br i1 %i.rx, label %.lr.ph15.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit, !llvm.loop !35

bb.er:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i, %.lr.ph.i
  %i.ry = add nuw nsw i32 %.01913.i, 1            ; 2 uses
  %i.rz = load i32, ptr %i.or, align 8
  %i.sa = icmp slt i32 %i.ry, %i.rz
  br i1 %i.sa, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.loopexit, !llvm.loop !36

_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit: ; preds = %bb.eq, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer13replaceScriptER10UErrorCode.exit, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer16replaceTerritoryERNS_7UVectorER10UErrorCode.exit, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn
  %i.sb = add nuw nsw i32 %.088222, 1
  %i.sc = load i32, ptr %3, align 4
  %i.sd = icmp sgt i32 %i.sc, 0
  br i1 %i.sd, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.thread, label %bb.dn, !llvm.loop !37

_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.loopexit: ; preds = %bb.er
  %.pre265 = load i32, ptr %3, align 4
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread

_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread: ; preds = %bb.en, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.loopexit
  %i.se = phi i32 [ %.pre265, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.loopexit ], [ %.val121, %bb.en ]
  %i.sf = icmp slt i32 %i.se, 1
  br i1 %i.sf, label %bb.es, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.thread

bb.es:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread
  %i.sg = load i8, ptr %i.lw, align 8
  switch i8 %i.sg, label %bb.ev [
    i8 0, label %_ZNK6icu_786Locale7getNameEv.exit
    i8 1, label %bb.et
    i8 2, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 23
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.eu:                                            ; preds = %bb.es
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8            ; 2 uses
  %i.sm = icmp eq ptr %i.sl, null
  %spec.select.i.i.i.i.i.i.i128 = select i1 %i.sm, ptr @.str, ptr %i.sl
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.ev:                                            ; preds = %bb.es
  call void @abort() #23
  unreachable

_ZNK6icu_786Locale7getNameEv.exit:                ; preds = %bb.es, %bb.et, %bb.eu
  %.0.i.i.i129 = phi ptr [ %spec.select.i.i.i.i.i.i.i128, %bb.eu ], [ %i.sh, %bb.et ], [ @.str, %bb.es ] ; 2 uses
  %i.sn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i129) #22
  %i.so = call ptr @locale_getKeywordsStart_78(i64 %i.sn, ptr nonnull %.0.i.i.i129) #22 ; 5 uses
  %i.sp = icmp eq i32 %.088222, 0
  br i1 %i.sp, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZNK6icu_786Locale7getNameEv.exit
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.sr = load i32, ptr %i.sq, align 8
  %i.ss = icmp slt i32 %i.sr, 2
  %i.st = icmp eq ptr %i.so, null
  %or.cond = select i1 %i.ss, i1 %i.st, i1 false
  br i1 %or.cond, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZNK6icu_786Locale7getNameEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.su = load i32, ptr %3, align 4
  %i.sv = icmp slt i32 %i.su, 1
  br i1 %i.sv, label %bb.ey, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14outputToStringERNS_10CharStringER10UErrorCode.exit

bb.ey:                                            ; preds = %bb.ex
  %i.sw = load ptr, ptr %0, align 8
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %i.sw) #22, !inline_history !38
  %i.sx = load ptr, ptr %5, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.sz = load i32, ptr %i.sy, align 8
  %i.ta = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %i.sx, i32 noundef %i.sz, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  %i.tb = load ptr, ptr %i.me, align 8            ; 2 uses
  %.not.i148 = icmp eq ptr %i.tb, null
  br i1 %.not.i148, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149.thread, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149: ; preds = %bb.ey
  %i.tc = load i8, ptr %i.tb, align 1
  %.not174 = icmp eq i8 %i.tc, 0
  br i1 %.not174, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149.thread, label %bb.ez

bb.ez:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149
  %i.td = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %2, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %3) #22, !inline_history !38
  %i.te = load ptr, ptr %i.me, align 8
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef %i.te) #22, !inline_history !38
  %i.tf = load ptr, ptr %6, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.th = load i32, ptr %i.tg, align 8
  %i.ti = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.td, ptr noundef %i.tf, i32 noundef %i.th, ptr noundef nonnull align 4 dereferenceable(4) %3) #22 ; 0 uses
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149.thread

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149.thread: ; preds = %bb.ey, %bb.ez, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149
  %i.tj = load ptr, ptr %i.mj, align 8            ; 2 uses
  %.not.i146 = icmp eq ptr %i.tj, null
  br i1 %.not.i146, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit147.thread, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit147

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit147: ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit149.thread
  %i.tk = load i8, ptr %i.tj, align 1
  %.not175 = icmp eq i8 %i.tk, 0
  br i1 %.not175, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit147.thread, label %bb.fa

bb.fa:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit147
  %i.tl = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %2, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %3) #22, !inline_history !38
  %i.tm = load ptr, ptr %i.mj, align 8
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef %i.tm) #22, !inline_history !38
  %i.tn = load ptr, ptr %7, align 8
end_hunk_1
begin_hunk_2_@_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode:bb.a
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %1) #22
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %2) #22
  %i.a = load ptr, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = load ptr, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8
  call void @_ZN6icu_786Locale15setKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.a, i32 %i.c, ptr %i.d, i32 %i.f, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6icu_7812_GLOBAL__N_113AliasReplacer28replaceTransformedExtensionsERNS_10CharStringES3_R10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::StringByteSink", align 8 ; 6 uses
  %4 = alloca %"class.icu_78::Locale", align 8    ; 16 uses
  %5 = alloca %"class.icu_78::LocaleBuilder", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %7 = alloca %"class.icu_78::UVector", align 8   ; 12 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %9 = alloca %"class.std::optional", align 8     ; 6 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8
  %i.e = load ptr, ptr %0, align 8                ; 4 uses
  %i.f = tail call noundef ptr @_Z21ultag_getTKeyStart_78PKc(ptr noundef %i.e) #22 ; 5 uses
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %i.f, null
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = xor i64 %i.j, -1
  %i.l = add i64 %i.i, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = select i1 %i.h, i32 %i.d, i32 %i.m       ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6icu_7813LocaleBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #22
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder14setLanguageTagENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %i.e, i32 %i.n) #22
  call void @_ZN6icu_7813LocaleBuilder5buildER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  call void @_ZN6icu_7813LocaleBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN6icu_786Locale12canonicalizeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.q = load i32, ptr %2, align 4, !noalias !46
  %i.r = icmp slt i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.s, ptr %6, align 8, !alias.scope !46
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.t, align 8, !alias.scope !46
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.u, align 4, !alias.scope !46
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 0, ptr %i.v, align 8, !alias.scope !46
  store i8 0, ptr %i.s, align 1, !alias.scope !46
  br i1 %i.r, label %bb.e, label %_ZNK6icu_786Locale13toLanguageTagINS_10CharStringEEET_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !46
  call void @_ZN6icu_7818CharStringByteSinkC2EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 %6) #22
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINS_10CharStringEEE, i64 16), ptr %3, align 8, !noalias !46
  %i.w = load i32, ptr %2, align 4, !noalias !46
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %_ZNK6icu_786Locale13toLanguageTagERNS_8ByteSinkER10UErrorCode.exit.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i8, ptr %i.y, align 8, !noalias !46
  switch i8 %i.z, label %bb.j [
    i8 0, label %bb.g
    i8 2, label %bb.i
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %2, align 4, !noalias !46
  br label %_ZNK6icu_786Locale13toLanguageTagERNS_8ByteSinkER10UErrorCode.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 23
  br label %_ZNK6icu_786Locale7getNameEv.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.af, ptr @.str, ptr %i.ae
  br label %_ZNK6icu_786Locale7getNameEv.exit.i.i

bb.j:                                             ; preds = %bb.f
  call void @abort() #23
  unreachable

_ZNK6icu_786Locale7getNameEv.exit.i.i:            ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.i ], [ %i.aa, %bb.h ]
  call void @_Z24ulocimp_toLanguageTag_78PKcRN6icu_788ByteSinkEbR10UErrorCode(ptr noundef nonnull %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  br label %_ZNK6icu_786Locale13toLanguageTagERNS_8ByteSinkER10UErrorCode.exit.i

_ZNK6icu_786Locale13toLanguageTagERNS_8ByteSinkER10UErrorCode.exit.i: ; preds = %_ZNK6icu_786Locale7getNameEv.exit.i.i, %bb.g, %bb.e
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !46
  br label %_ZNK6icu_786Locale13toLanguageTagINS_10CharStringEEET_R10UErrorCode.exit

_ZNK6icu_786Locale13toLanguageTagINS_10CharStringEEET_R10UErrorCode.exit: ; preds = %bb.d, %_ZNK6icu_786Locale13toLanguageTagERNS_8ByteSinkER10UErrorCode.exit.i
  %i.ag = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 8 dereferenceable(60) %6) #22 ; 0 uses
  %i.ah = load i8, ptr %i.u, align 4
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK6icu_786Locale13toLanguageTagINS_10CharStringEEET_R10UErrorCode.exit
  %i.ai = load ptr, ptr %6, align 8
  call void @uprv_free_78(ptr noundef %i.ai) #22
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZNK6icu_786Locale13toLanguageTagINS_10CharStringEEET_R10UErrorCode.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.aj = load i32, ptr %2, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.al = load ptr, ptr %1, align 8
  %i.am = call ptr @T_CString_toLowerCase_78(ptr noundef %i.al) #22 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %4, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i8, ptr %i.an, align 8
  %i.ap = icmp eq i8 %i.ao, 2
  br i1 %i.ap, label %bb.m, label %_ZN6icu_786LocaleD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN6icu_786LocaleD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.au) #22, !inline_history !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.aw) #22, !inline_history !7
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ar) #22, !inline_history !7
  br label %_ZN6icu_786LocaleD2Ev.exit

_ZN6icu_786LocaleD2Ev.exit:                       ; preds = %bb.l, %bb.m, %bb.n
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #22, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZN6icu_786LocaleD2Ev.exit, %bb.c
  %.not79 = icmp eq ptr %i.f, null
  br i1 %.not79, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  %i.ax = load i32, ptr %2, align 4
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %.preheader, label %.critedge88

.preheader:                                       ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.t
  %.064 = phi ptr [ %i.bc, %bb.t ], [ %i.f, %.preheader ] ; 2 uses
  %i.ba = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.064, i32 noundef 45) #24 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.thread9, label %bb.q

.thread9:                                         ; preds = %bb.p
  store i32 1, ptr %2, align 4
  br label %.critedge88

bb.q:                                             ; preds = %bb.p
  %i.bc = call noundef ptr @_Z21ultag_getTKeyStart_78PKc(ptr noundef nonnull %i.ba) #22 ; 3 uses
  %.not81 = icmp eq ptr %i.bc, null               ; 2 uses
  br i1 %.not81, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -1
  store i8 0, ptr %i.bd, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = load i32, ptr %i.az, align 8
  call void @_ZN6icu_787UVector15insertElementAtEPviR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %.064, i32 noundef %i.be, ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  %i.bf = load i32, ptr %2, align 4
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %bb.t, label %.critedge88

bb.t:                                             ; preds = %bb.s
  br i1 %.not81, label %bb.u, label %bb.p, !llvm.loop !49

bb.u:                                             ; preds = %bb.t
  call void @_ZN6icu_787UVector4sortEPFi8UElementS1_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull @"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer28replaceTransformedExtensionsERNS_10CharStringES3_R10UErrorCodeEN3$_08__invokeE8UElementS7_", ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  %i.bh = load i32, ptr %i.az, align 8
  %.not85.not13 = icmp sgt i32 %i.bh, 0
  br i1 %.not85.not13, label %.lr.ph, label %.critedge90.a

.lr.ph:                                           ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.ab
  %.06314 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.ab ] ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 8
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %1, i8 noundef signext 45, ptr noundef nonnull align 4 dereferenceable(4) %2) #22 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bo = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %.06314) #22 ; 4 uses
  %i.bp = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bo, i32 noundef 45) #24 ; 3 uses
  %.not84 = icmp eq ptr %i.bp, null
  br i1 %.not84, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 4 uses
  store i8 0, ptr %i.bp, align 1
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %i.bo) #22
  %i.br = load ptr, ptr %8, align 8
  %i.bs = load i32, ptr %i.bj, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef %i.br, i32 noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %2) #22
  %i.bu = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.bt, i8 noundef signext 45, ptr noundef nonnull align 4 dereferenceable(4) %2) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #22
  %i.bw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bq) #22
  call void @_Z20ulocimp_toBcpType_78St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %9, i64 %i.bv, ptr nonnull %i.bo, i64 %i.bw, ptr nonnull %i.bq) #22
  %i.bx = load i8, ptr %i.bk, align 8, !range !17, !noundef !18
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload = load i64, ptr %9, align 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bq) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload, %bb.z ], [ %i.bq, %bb.aa ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.z ], [ %i.bz, %bb.aa ]
  %i.ca = trunc i64 %.sroa.0.0 to i32
  %i.cb = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef %.sroa.3.0, i32 noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %2) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cc = add nuw nsw i32 %.06314, 1              ; 2 uses
  %i.cd = load i32, ptr %i.az, align 8
  %.not85.not = icmp slt i32 %i.cc, %i.cd
  br i1 %.not85.not, label %bb.v, label %.critedge90.a, !llvm.loop !50

bb.ac:                                            ; preds = %bb.x
  store i32 1, ptr %2, align 4
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ag

.critedge90.a:                                    ; preds = %bb.ab, %bb.u
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge90.a, %.thread
  %i.ce = load i32, ptr %2, align 4
  %i.cf = icmp slt i32 %i.ce, 1
  br label %bb.ag

.critedge:                                        ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %4, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = icmp eq i8 %i.ch, 2
  br i1 %i.ci, label %bb.ae, label %_ZN6icu_786LocaleD2Ev.exit91

bb.ae:                                            ; preds = %.critedge
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN6icu_786LocaleD2Ev.exit91, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.cn) #22, !inline_history !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.cp) #22, !inline_history !7
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ck) #22, !inline_history !7
  br label %_ZN6icu_786LocaleD2Ev.exit91

_ZN6icu_786LocaleD2Ev.exit91:                     ; preds = %.critedge, %bb.ae, %bb.af
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #22, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ag

.critedge88:                                      ; preds = %bb.s, %bb.o, %.thread9
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %_ZN6icu_786LocaleD2Ev.exit91, %.critedge88, %bb.ad, %bb.a
  %.10 = phi i1 [ false, %bb.a ], [ %i.cf, %bb.ad ], [ false, %.critedge88 ], [ false, %bb.ac ], [ false, %_ZN6icu_786LocaleD2Ev.exit91 ]
  ret i1 %.10
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext i8 @_ZN6icu_7812_GLOBAL__N_19AliasData7cleanupEv() #0 align 2 {
bb.a:
  store atomic i32 0, ptr @_ZN6icu_7812_GLOBAL__N_19AliasData9gInitOnceE seq_cst, align 4
  %i.a = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_19AliasData10gSingletonE, align 8 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN6icu_7812_GLOBAL__N_19AliasDataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = load i8, ptr %i.f, align 4
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8
  tail call void @uprv_free_78(ptr noundef %i.h) #22
  br label %_ZN6icu_7810CharStringD2Ev.exit.i

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.d, %bb.c
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.d) #22
  br label %_ZN6icu_7812_GLOBAL__N_19AliasDataD2Ev.exit

_ZN6icu_7812_GLOBAL__N_19AliasDataD2Ev.exit:      ; preds = %bb.b, %_ZN6icu_7810CharStringD2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @uhash_close_78(ptr noundef %i.j) #22
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @uhash_close_78(ptr noundef %i.l) #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @uhash_close_78(ptr noundef %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @uhash_close_78(ptr noundef %i.p) #22
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @uhash_close_78(ptr noundef %i.r) #22
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_19AliasDataD2Ev.exit, %bb.a
  ret i8 1
}

declare ptr @ures_openDirect_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uhash_init_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uhash_hashUChars_78(ptr) #2

declare signext i8 @uhash_compareUChars_78(ptr, ptr) #2

declare signext i8 @uhash_compareLong_78(ptr, ptr) #2

declare i32 @ures_getSize_78(ptr noundef) local_unnamed_addr #2

declare signext i8 @ures_hasNext_78(ptr noundef) local_unnamed_addr #2

declare ptr @ures_getNextResource_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getKey_78(ptr noundef) local_unnamed_addr #2

declare ptr @ures_getStringByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #19

declare i32 @uhash_geti_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare i32 @uhash_puti_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uhash_openSize_78(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ures_close_78(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCodeEN3$_08__invokeE8UElementSA_"(ptr readonly captures(none) %0, ptr readonly captures(none) %1) #18 align 2 {
bb.a:
  %i.a = tail call noundef i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #24
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCodeEN3$_18__invokeEPv"(ptr noundef %0) #14 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCodeENK3$_1clEPv.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.d) #22
  br label %_ZN6icu_7810CharStringD2Ev.exit.i

_ZN6icu_7810CharStringD2Ev.exit.i:                ; preds = %bb.c, %bb.b
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #22
  br label %"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCodeENK3$_1clEPv.exit"

"_ZZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCodeENK3$_1clEPv.exit": ; preds = %bb.a, %_ZN6icu_7810CharStringD2Ev.exit.i
  ret void
}

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_787UVector12setElementAtEPvi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7812LocalPointerINS_10CharStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i8, ptr %i.c, align 4
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8
  tail call void @uprv_free_78(ptr noundef %i.e) #22
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN6icu_7813LocaleBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder11setLanguageENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i32) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder9setScriptENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i32) local_unnamed_addr #2

declare void @_ZN6icu_7813LocaleBuilder5buildER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::Locale") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813LocaleBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7812LocalPointerINS_10CharStringEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i8, ptr %i.e, align 4
  %.not.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.d
end_hunk_2
