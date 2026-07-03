inline.NumInlined: 115
inline.NumDeleted: 47
begin_hunk_0_@_ZN6icu_7815NumberingSystem20createInstanceByNameEPKcR10UErrorCode:bb.a
  %i.t = call noundef ptr @_ZN6icu_7815NumberingSystem14createInstanceEiaRKNS_13UnicodeStringER10UErrorCode(i32 noundef %i.m, i8 noundef signext %i.s, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 8 uses
  %i.u = icmp ne ptr %i.t, null
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEEC2EPS1_R10UErrorCode.exit, label %_ZN6icu_7815NumberingSystem7setNameEPKc.exit.thread

_ZN6icu_7815NumberingSystem7setNameEPKc.exit.thread: ; preds = %bb.f
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit

_ZN6icu_7812LocalPointerINS_15NumberingSystemEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.f
  %i.x = icmp slt i32 %i.v, 1
  br i1 %i.x, label %bb.g, label %_ZN6icu_7815NumberingSystem7setNameEPKc.exit

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_15NumberingSystemEEC2EPS1_R10UErrorCode.exit
  %i.y = icmp eq ptr %0, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 77 ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.z, align 1
  br label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull readonly dereferenceable(1) %0, i64 noundef 8) #12 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 85
  store i8 0, ptr %i.ab, align 1
  br label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit

_ZN6icu_7815NumberingSystem7setNameEPKc.exit:     ; preds = %_ZN6icu_7812LocalPointerINS_15NumberingSystemEEC2EPS1_R10UErrorCode.exit
  %i.ac = icmp eq ptr %i.t, null
  br i1 %i.ac, label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7815NumberingSystem7setNameEPKc.exit
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(86) %i.t) #12, !inline_history !6
  br label %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit

_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit: ; preds = %_ZN6icu_7815NumberingSystem7setNameEPKc.exit.thread, %bb.i, %bb.h, %bb.j, %_ZN6icu_7815NumberingSystem7setNameEPKc.exit, %bb.d, %bb.e
  %.1 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.j ], [ null, %_ZN6icu_7815NumberingSystem7setNameEPKc.exit ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ null, %_ZN6icu_7815NumberingSystem7setNameEPKc.exit.thread ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit
  call void @ures_close_78(ptr noundef nonnull %i.d) #12
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_15NumberingSystemEED2Ev.exit, %bb.k
  %.not.i21 = icmp eq ptr %i.c, null
  br i1 %.not.i21, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit22, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  call void @ures_close_78(ptr noundef nonnull %i.c) #12
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit22

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit22: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.l
  %.not.i23 = icmp eq ptr %i.b, null
  br i1 %.not.i23, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit24, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit22
  call void @ures_close_78(ptr noundef nonnull %i.b) #12
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit24

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit24: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit22, %bb.m
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7815NumberingSystem14createInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #12
  %i.b = tail call noundef ptr @_ZN6icu_7815NumberingSystem14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %0)
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() local_unnamed_addr #3

declare ptr @ures_openDirect_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ures_getInt_78(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815NumberingSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(86) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7815NumberingSystemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #12
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815NumberingSystemD0Ev(ptr noundef nonnull align 8 dereferenceable(86) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7815NumberingSystemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #12, !inline_history !12
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(86) %0) #12, !inline_history !12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_7815NumberingSystem8getRadixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(86) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7815NumberingSystem14getDescriptionEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(86) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a) #12
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7815NumberingSystem7getNameEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(86) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 77
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext i8 @_ZNK6icu_7815NumberingSystem13isAlgorithmicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(86) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4
  ret i8 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @numSysCleanup_78() #1 {
bb.a:
  %i.a = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_112gNumsysNamesE, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @_ZN6icu_7812_GLOBAL__N_112gNumsysNamesE, align 8
  store atomic i32 0, ptr @_ZN6icu_7812_GLOBAL__N_115gNumSysInitOnceE seq_cst, align 4
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @initNumsysNames_78(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  tail call void @ucln_i18n_registerCleanup_78(i32 noundef 36, ptr noundef nonnull @numSysCleanup_78) #12
  %i.b = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #12 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.a
  tail call void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %0) #12
  %.pre = load i32, ptr %0, align 4
  %i.f = icmp slt i32 %.pre, 1
  br i1 %i.f, label %bb.d, label %.thread42

bb.d:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  %i.g = call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.h = call ptr @ures_getByKey_78(ptr noundef %i.g, ptr noundef nonnull @.str.2, ptr noundef %i.g, ptr noundef nonnull %i.a) #12 ; 4 uses
  %i.i = load i32, ptr %i.a, align 4              ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.preheader, label %.thread47

.thread47:                                        ; preds = %bb.d
  %i.k = icmp eq i32 %i.i, 7
  %. = select i1 %i.k, i32 7, i32 2
  store i32 %., ptr %0, align 4
  call void @ures_close_78(ptr noundef %i.h) #12
  br label %.thread42.sink.split

.preheader:                                       ; preds = %bb.d, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %1 = call signext i8 @ures_hasNext_78(ptr noundef %i.h) #12
  %.not22 = icmp eq i8 %1, 0
  br i1 %.not22, label %.critedge, label %.preheader.a

.preheader.a:                                     ; preds = %.preheader
  %i.l = load i32, ptr %0, align 4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader.a
  %i.n = call ptr @ures_getNextResource_78(ptr noundef %i.h, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 3 uses
  %i.o = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.o, 7                     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %0, align 4
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = call ptr @ures_getKey_78(ptr noundef %i.n) #12
  %i.q = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #12 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %.thread33

.thread33:                                        ; preds = %bb.g
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef %i.p, i32 noundef -1, i32 noundef 0) #12
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %0, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.i, %bb.h, %.thread33
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %0) #12
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, %bb.f
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ures_close_78(ptr noundef nonnull %i.n) #12
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.j, %bb.k
  br i1 %.not, label %.critedge, label %.preheader

.critedge:                                        ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %.preheader, %.preheader.a
  call void @ures_close_78(ptr noundef %i.h) #12
  %i.u = load i32, ptr %0, align 4
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.thread42.sink.split, label %.thread45

.thread45:                                        ; preds = %.critedge
  store ptr %i.b, ptr @_ZN6icu_7812_GLOBAL__N_112gNumsysNamesE, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.thread42.sink.split:                             ; preds = %.critedge, %.thread47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread42

.thread42:                                        ; preds = %.thread42.sink.split, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #12, !inline_history !13
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.b, %bb.c, %.thread45, %.thread42
  ret void
}

declare void @ucln_i18n_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uprv_deleteUObject_78(ptr noundef) #3

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @ures_close_78(ptr noundef) local_unnamed_addr #3

declare signext i8 @ures_hasNext_78(ptr noundef) local_unnamed_addr #3

declare ptr @ures_getNextResource_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ures_getKey_78(ptr noundef) local_unnamed_addr #3

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7815NumberingSystem17getAvailableNamesER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_115gNumSysInitOnceE acquire, align 4
  %.not11.i = icmp eq i32 %i.c, 2
  br i1 %.not11.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_115gNumSysInitOnceE) #12
  %.not12.i = icmp eq i8 %i.d, 0
  br i1 %.not12.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @initNumsysNames_78(ptr noundef nonnull align 4 dereferenceable(4) %0) #12, !inline_history !14
  %i.e = load i32, ptr %0, align 4
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_115gNumSysInitOnceE, i64 4), align 4
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_115gNumSysInitOnceE) #12
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_7812_GLOBAL__N_115gNumSysInitOnceE, i64 4), align 4 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.f, ptr %0, align 4
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %i.h = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 120) #12 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  tail call void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.h) #12
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7821NumsysNameEnumerationE, i64 16), ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i32 0, ptr %i.j, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.g:                                             ; preds = %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  %i.k = load i32, ptr %0, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 7, ptr %0, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.h, %bb.g, %.thread
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7821NumsysNameEnumerationC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #12
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7821NumsysNameEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4
  ret void
}

declare void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7821NumsysNameEnumeration5snextER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  %i.c = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_112gNumsysNamesE, align 8 ; 3 uses
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.f, 1
  store i32 %i.j, ptr %i.e, align 4
  %i.k = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef %i.f) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7821NumsysNameEnumeration5resetER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((116, 120)) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK6icu_7821NumsysNameEnumeration5countER10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_112gNumsysNamesE, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: nounwind
declare void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7821NumsysNameEnumerationD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7821NumsysNameEnumerationD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

declare noundef ptr @_ZNK6icu_7817StringEnumeration5cloneEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #3

declare noundef ptr @_ZN6icu_7817StringEnumeration4nextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare noundef ptr @_ZN6icu_7817StringEnumeration5unextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationeqERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationneERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3
end_hunk_0
