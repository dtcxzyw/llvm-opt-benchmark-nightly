inline.NumInlined: 217
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7828TimeZoneGenericNameMatchInfo13getTimeZoneIDEiRNS_13UnicodeStringE:bb.a

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #4

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7818GNameSearchHandlerC2Ej(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 12), (16, 28)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7818GNameSearchHandlerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7818GNameSearchHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7818GNameSearchHandlerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_7830TextTrieMapSearchResultHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7830TextTrieMapSearchResultHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7818GNameSearchHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7818GNameSearchHandlerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7818GNameSearchHandlerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #16, !inline_history !6
  br label %_ZN6icu_7818GNameSearchHandlerD2Ev.exit

_ZN6icu_7818GNameSearchHandlerD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_7830TextTrieMapSearchResultHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(28) %0) #16, !inline_history !6
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7818GNameSearchHandler11handleMatchEiPKNS_13CharacterNodeER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread63

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %.lr.ph, label %_ZNK6icu_7813CharacterNode11countValuesEv.exit

_ZNK6icu_7813CharacterNode11countValuesEv.exit:   ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.thread63

.lr.ph:                                           ; preds = %bb.c, %_ZNK6icu_7813CharacterNode11countValuesEv.exit
  %i.i = phi i32 [ %i.g, %_ZNK6icu_7813CharacterNode11countValuesEv.exit ], [ 1, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge48
  %.03464 = phi i32 [ 0, %.lr.ph ], [ %i.am, %.critedge48 ] ; 2 uses
  %i.m = load i8, ptr %i.d, align 2
  %.not.i49 = icmp eq i8 %i.m, 0
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
  br i1 %.not.i49, label %_ZNK6icu_7813CharacterNode8getValueEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i32 noundef %.03464) #16
  br label %_ZNK6icu_7813CharacterNode8getValueEi.exit

_ZNK6icu_7813CharacterNode8getValueEi.exit:       ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = icmp eq ptr %.0.i, null
  br i1 %i.p, label %.thread63, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7813CharacterNode8getValueEi.exit
  %i.q = load i32, ptr %.0.i, align 8
  %i.r = load i32, ptr %i.j, align 8
  %i.s = and i32 %i.r, %i.q
  %.not44 = icmp eq i32 %i.s, 0
  br i1 %.not44, label %.critedge48, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #16 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %3, align 4
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.thread63, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %3, align 4
  br label %.thread63

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.h
  tail call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull @uprv_free_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %.pre = load i32, ptr %3, align 4
  %i.z = icmp slt i32 %.pre, 1
  br i1 %i.z, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.critedge

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  store ptr %i.v, ptr %i.k, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, %bb.g
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @uprv_malloc_78(i64 noundef 16) #17 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %3, align 4
  br label %.thread63

bb.m:                                             ; preds = %bb.k
  store ptr %.0.i, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %i.k, align 8
  tail call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  %i.af = load i32, ptr %3, align 4
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.n, label %.thread63

bb.n:                                             ; preds = %bb.m
  %i.ah = load i32, ptr %i.l, align 8
  %i.ai = icmp sgt i32 %1, %i.ah
  br i1 %i.ai, label %bb.o, label %.critedge48

bb.o:                                             ; preds = %bb.n
  store i32 %1, ptr %i.l, align 8
  br label %.critedge48

.critedge:                                        ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.aj = load ptr, ptr %i.v, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #16, !inline_history !7
  br label %.thread63

.critedge48:                                      ; preds = %bb.o, %bb.n, %bb.f
  %i.am = add nuw nsw i32 %.03464, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %i.i
  br i1 %exitcond.not, label %.thread63, label %bb.d, !llvm.loop !8

.thread63:                                        ; preds = %bb.m, %_ZNK6icu_7813CharacterNode8getValueEi.exit, %.critedge48, %bb.i, %bb.j, %_ZNK6icu_7813CharacterNode11countValuesEv.exit, %bb.b, %bb.l, %.critedge, %bb.a
  %.7 = phi i8 [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %.critedge ], [ 0, %bb.i ], [ 1, %bb.b ], [ 1, %_ZNK6icu_7813CharacterNode11countValuesEv.exit ], [ 0, %bb.j ], [ 0, %bb.m ], [ 1, %.critedge48 ], [ 1, %_ZNK6icu_7813CharacterNode8getValueEi.exit ]
  ret i8 %.7
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #5

declare void @uprv_free_78(ptr noundef) #4

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN6icu_7818GNameSearchHandler10getMatchesERi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %1, align 4
  store ptr null, ptr %i.a, align 8
  store i32 0, ptr %i.c, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788TZGNCoreC2ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788TZGNCoreE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  tail call void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i16 noundef zeroext 0) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i16 noundef zeroext 0) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN6icu_7812ZNStringPoolC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZN6icu_7811TextTrieMapC1EaPFvPvE(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 noundef signext 1, ptr noundef nonnull @_ZN6icu_78L15deleteGNameInfoEPv) #16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.i, align 8
  tail call void @_ZN6icu_788TZGNCore10initializeERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare void @_ZN6icu_7812ZNStringPoolC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_78L15deleteGNameInfoEPv(ptr noundef %0) #1 {
bb.a:
  tail call void @uprv_free_78(ptr noundef %0) #16
  ret void
}

declare void @_ZN6icu_7811TextTrieMapC1EaPFvPvE(ptr noundef nonnull align 8 dereferenceable(56), i8 noundef signext, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788TZGNCore10initializeERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %8 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6icu_7813TimeZoneNames14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = load i32, ptr %2, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr @_ZN6icu_78L17gDefRegionPatternE, ptr %4, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext 1, ptr noundef nonnull align 8 %4, i32 noundef -1) #16
  %i.h = load ptr, ptr %4, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #16, !srcloc !5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr @_ZN6icu_78L19gDefFallbackPatternE, ptr %6, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 1, ptr noundef nonnull align 8 %6, i32 noundef -1) #16
  %i.i = load ptr, ptr %6, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.i) #16, !srcloc !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.j = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #16
  %i.k = call ptr @ures_open_78(ptr noundef nonnull @.str, ptr noundef %i.j, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.l = call ptr @ures_getByKeyWithFallback_78(ptr noundef %i.k, ptr noundef nonnull @_ZN6icu_78L12gZoneStringsE, ptr noundef %i.k, ptr noundef nonnull %i.a) #16 ; 3 uses
  %i.m = load i32, ptr %i.a, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.l, ptr noundef nonnull @_ZN6icu_78L16gRegionFormatTagE, ptr noundef null, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @u_strlen_78(ptr noundef %i.o) #16
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i16, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = select i1 %i.v, i32 %i.z, i32 %i.x
  %i.ab = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.aa, ptr noundef %i.o, i32 noundef 0, i32 noundef -1) #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store i32 0, ptr %i.a, align 4
  %i.ac = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.l, ptr noundef nonnull @_ZN6icu_78L18gFallbackFormatTagE, ptr noundef null, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = call i32 @u_strlen_78(ptr noundef %i.ac) #16
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i16, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = select i1 %i.aj, i32 %i.an, i32 %i.al
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.ao, ptr noundef %i.ac, i32 noundef 0, i32 noundef -1) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.c
  call void @ures_close_78(ptr noundef %i.l) #16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.at = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %2) #16 ; 0 uses
  %i.au = load i32, ptr %2, align 4
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ax, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #16, !inline_history !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN6icu_788TZGNCore7cleanupEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #16, !inline_history !10
  br label %_ZN6icu_788TZGNCore7cleanupEv.exit

_ZN6icu_788TZGNCore7cleanupEv.exit:               ; preds = %bb.m, %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
