Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/alphaindex?download=true
inline.NumInlined: 328
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7815AlphabeticIndex17addIndexExemplarsERKNS_6LocaleER10UErrorCode:bb.a
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %3, i32 noundef 97, i32 noundef 122) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = call noundef signext i8 @_ZNK6icu_7810UnicodeSet12containsNoneEii(ptr noundef nonnull align 8 dereferenceable(200) %3, i32 noundef 44032, i32 noundef 55203) #13
  %.not.i19.not = icmp eq i8 %i.q, 0
  br i1 %.not.i19.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEii(ptr noundef nonnull align 8 dereferenceable(200) %3, i32 noundef 44032, i32 noundef 55203) #13
  %i.s = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.r, i32 noundef 44032) #13
  %i.t = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.s, i32 noundef 45208) #13
  %i.u = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.t, i32 noundef 45796) #13
  %i.v = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.u, i32 noundef 46972) #13
  %i.w = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.v, i32 noundef 47560) #13
  %i.x = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.w, i32 noundef 48148) #13
  %i.y = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.x, i32 noundef 49324) #13
  %i.z = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.y, i32 noundef 50500) #13
  %i.aa = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.z, i32 noundef 51088) #13
  %i.ab = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.aa, i32 noundef 52264) #13
  %i.ac = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ab, i32 noundef 52852) #13
  %i.ad = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, i32 noundef 53440) #13
  %i.ae = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ad, i32 noundef 54028) #13
  %i.af = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ae, i32 noundef 54616) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = call noundef signext i8 @_ZNK6icu_7810UnicodeSet12containsNoneEii(ptr noundef nonnull align 8 dereferenceable(200) %3, i32 noundef 4608, i32 noundef 4991) #13
  %.not.i20.not = icmp eq i8 %i.ag, 0
  br i1 %.not.i20.not, label %_ZN6icu_7813UnicodeStringC2IA47_DsvEERKT_.exit, label %bb.k

_ZN6icu_7813UnicodeStringC2IA47_DsvEERKT_.exit:   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.ah, align 8
  %i.ai = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 46, ptr nonnull @.str) #13 ; 0 uses
  call void @_ZN6icu_7810UnicodeSetC1ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.aj = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9retainAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %3) #13 ; 0 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEii(ptr noundef nonnull align 8 dereferenceable(200) %3, i32 noundef 4608, i32 noundef 4991) #13
  %i.al = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.ak, ptr noundef nonnull align 8 dereferenceable(200) %4) #13 ; 0 uses
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA47_DsvEERKT_.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN6icu_7818UnicodeSetIteratorC1ERKNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(200) %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.am, align 8
  %i.an = call noundef signext i8 @_ZN6icu_7818UnicodeSetIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  %.not1824 = icmp eq i8 %i.an, 0
  br i1 %.not1824, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7818UnicodeSetIterator9getStringEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  %i.aq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #13 ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toUpperERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(40) %1) #13 ; 0 uses
  %i.as = load ptr, ptr %i.ao, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %7) #13 ; 0 uses
  %i.au = call noundef signext i8 @_ZN6icu_7818UnicodeSetIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  %.not18 = icmp eq i8 %i.au, 0
  br i1 %.not18, label %._crit_edge, label %bb.l, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.l, %bb.k
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN6icu_7818UnicodeSetIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %._crit_edge, %bb.c
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.not.i21 = icmp eq ptr %i.b, null
  br i1 %.not.i21, label %_ZN6icu_788internal16LocalOpenPointerI11ULocaleDataXadL_Z17ulocdata_close_78EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ulocdata_close_78(ptr noundef nonnull %i.b) #13
  br label %_ZN6icu_788internal16LocalOpenPointerI11ULocaleDataXadL_Z17ulocdata_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI11ULocaleDataXadL_Z17ulocdata_close_78EEED2Ev.exit: ; preds = %bb.n, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7815AlphabeticIndex19buildImmutableIndexER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr @_ZNK6icu_7817RuleBasedCollator5cloneEv(ptr noundef nonnull align 8 dereferenceable(88) %i.e) #13 ; 4 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %.not28 = icmp eq ptr %i.f, null                ; 2 uses
  %or.cond = or i1 %.not, %.not28
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #13 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread

.thread:                                          ; preds = %bb.c
  store i32 7, ptr %1, align 4
  br label %bb.e

_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread: ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex14ImmutableIndexE, i64 16), ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.j, align 8
  br label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  store i32 7, ptr %1, align 4
  br i1 %.not28, label %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  tail call void @_ZN6icu_7817RuleBasedCollatorD1Ev(ptr noundef nonnull align 8 dead_on_return(85) dereferenceable(88) %i.f) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #13
  br label %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit: ; preds = %bb.d, %bb.e
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #13, !inline_history !13
  br label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit

_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit: ; preds = %bb.f, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.g, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread ], [ null, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit ], [ null, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.icu_78::UVector", align 8   ; 8 uses
  %3 = alloca %"class.icu_78::UVector64", align 8 ; 10 uses
  %i.f = alloca [26 x ptr], align 16              ; 30 uses
  %i.g = alloca [26 x ptr], align 16              ; 30 uses
  %4 = alloca %"class.icu_78::LocalPointer.7", align 8 ; 22 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.h = call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  call void @_ZNK6icu_7815AlphabeticIndex10initLabelsERNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.cr

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6icu_789UVector64C1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef i32 @_ZNK6icu_7817RuleBasedCollator12getAttributeE13UColAttributeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.l, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.n = icmp eq i32 %i.m, 20
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = call noundef i32 @_ZNK6icu_7817RuleBasedCollator14getVariableTopER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0150 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.f, i8 0, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.g, i8 0, i64 208, i1 false)
  %i.q = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 40 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %1, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit244, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit244

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.d
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %.pre = load i32, ptr %1, align 4
  %i.u = icmp slt i32 %.pre, 1
  br i1 %i.u, label %bb.g, label %.thread485

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.v = call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.w = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 11 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %1, align 4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.thread493, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 7, ptr %1, align 4
  br label %.thread493

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit: ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(400) %0) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex6BucketE, i64 16), ptr %i.w, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ad) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.ae) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store i32 -1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr null, ptr %i.ak, align 8
  store ptr %i.w, ptr %4, align 8
  %.pre399 = load i32, ptr %1, align 4
  %i.al = icmp slt i32 %.pre399, 1
  br i1 %i.al, label %bb.j, label %.thread474

bb.j:                                             ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull %i.w, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.am = load i32, ptr %1, align 4
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.k, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i16 2, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %.not199374 = icmp sgt i32 %i.ar, 0
  br i1 %.not199374, label %.lr.ph381, label %.thread343.thread

.lr.ph381:                                        ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph381, %.thread315
  %.0135380 = phi i32 [ 0, %.lr.ph381 ], [ %i.jr, %.thread315 ] ; 2 uses
  %.0136379 = phi ptr [ %i.ap, %.lr.ph381 ], [ %.1137, %.thread315 ] ; 3 uses
  %.0138378 = phi i32 [ -1, %.lr.ph381 ], [ %.2140, %.thread315 ] ; 2 uses
  %.0142377 = phi i8 [ 0, %.lr.ph381 ], [ %.1143, %.thread315 ] ; 6 uses
  %.0146375 = phi i8 [ 0, %.lr.ph381 ], [ %.4.ph, %.thread315 ] ; 5 uses
  %i.ax = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %.0135380) #13 ; 23 uses
  %i.ay = load ptr, ptr %i.k, align 8
  %i.az = call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %.0136379, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %.preheader364.preheader, label %.critedge211

.preheader364.preheader:                          ; preds = %bb.l
  %i.bb = load ptr, ptr %i.as, align 8
  %i.bc = add nsw i32 %.0138378, 1                ; 3 uses
  %i.bd = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i32 noundef %i.bc) #13 ; 2 uses
  %i.be = load ptr, ptr %i.k, align 8
  %i.bf = call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.critedge211, label %.preheader364

.preheader364:                                    ; preds = %.preheader364.preheader, %.preheader364
  %.1139 = phi i32 [ %i.bi, %.preheader364 ], [ %i.bc, %.preheader364.preheader ]
  %i.bh = load ptr, ptr %i.as, align 8
  %i.bi = add nsw i32 %.1139, 1                   ; 4 uses
  %i.bj = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i32 noundef %i.bi) #13 ; 3 uses
  %i.bk = load ptr, ptr %i.k, align 8
  %i.bl = call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.loopexit398, label %.preheader364, !llvm.loop !14

.loopexit398:                                     ; preds = %.preheader364
  %i.bn = load i32, ptr %i.at, align 8
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.m, label %.critedge211

bb.m:                                             ; preds = %.loopexit398
  %i.bp = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 11 uses
  %i.bq = icmp eq ptr %i.bp, null                 ; 2 uses
  br i1 %i.bq, label %.thread282, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(64) ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(400) %0) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex6BucketE, i64 16), ptr %i.bp, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %i.bu) #13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %.0136379) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  store i32 2, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  store i32 -1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  store ptr null, ptr %i.ca, align 8
  %i.cb = load i32, ptr %1, align 4
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.s, label %bb.o

.thread282:                                       ; preds = %bb.m
  %i.cd = load i32, ptr %1, align 4
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit, label %bb.o

bb.o:                                             ; preds = %.thread282, %bb.n
  %i.cf = load ptr, ptr %4, align 8               ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(168) %i.cf) #13, !inline_history !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.bp, ptr %4, align 8
  br i1 %i.bq, label %bb.r, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit

bb.r:                                             ; preds = %bb.q
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit

bb.s:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr %i.bp, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(168) %i.bp) #13, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit: ; preds = %.thread282, %bb.q, %bb.r, %bb.s
  %i.cn = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.co = load i32, ptr %1, align 4
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %.critedge211, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.critedge211:                                     ; preds = %.preheader364.preheader, %.loopexit398, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit, %bb.l
  %.2140 = phi i32 [ %.0138378, %bb.l ], [ %i.bi, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit ], [ %i.bi, %.loopexit398 ], [ %i.bc, %.preheader364.preheader ]
  %.1137 = phi ptr [ %.0136379, %bb.l ], [ %i.bj, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit ], [ %i.bj, %.loopexit398 ], [ %i.bd, %.preheader364.preheader ] ; 2 uses
  %i.cq = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 11 uses
  %i.cr = icmp eq ptr %i.cq, null                 ; 2 uses
  br i1 %i.cr, label %.thread284, label %bb.t

bb.t:                                             ; preds = %.critedge211
  %i.cs = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not.i = icmp eq i8 %i.cs, 0
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %.not.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 8            ; 3 uses
  %i.cv = icmp slt i16 %i.cu, 0
  %i.cw = ashr i16 %i.cu, 5
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = select i1 %i.cv, i32 %i.cz, i32 %i.cx
  %i.db = icmp ugt i32 %i.da, 1
  br i1 %i.db, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.u
  %i.dc = and i16 %i.cu, 2
  %.not.i.i.i.i = icmp eq i16 %i.dc, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = select i1 %.not.i.i.i.i, ptr %i.df, ptr %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2            ; 4 uses
  %i.dj = add i16 %i.di, -10241
  %or.cond.i220 = icmp ult i16 %i.dj, 255
  br i1 %or.cond.i220, label %bb.v, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

bb.v:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.dk = trunc i16 %i.di to i8                   ; 3 uses
  %i.dl = urem i8 %i.dk, 10
  %i.dm = udiv i8 %i.dk, 10
  %i.dn = or disjoint i8 %i.dl, 48
  %i.do = zext nneg i8 %i.dn to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.do, ptr %i.e, align 2
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %i.dp = load i16, ptr %i.ao, align 8            ; 2 uses
  %i.dq = icmp slt i16 %i.dp, 0
  %i.dr = ashr i16 %i.dp, 5
  %i.ds = sext i16 %i.dr to i32
  %i.dt = load i32, ptr %i.au, align 4
  %i.du = select i1 %i.dq, i32 %i.dt, i32 %i.ds
  %i.dv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.du, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dw = icmp samesign ugt i16 %i.di, 10249
  br i1 %i.dw, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dx = urem i8 %i.dm, 10
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = zext nneg i8 %i.dy to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.dz, ptr %i.d, align 2
  %i.ea = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.eb = icmp samesign ugt i16 %i.di, 10339
  br i1 %i.eb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = udiv i8 %i.dk, 100
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = zext nneg i8 %i.ed to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ee, ptr %i.c, align 2
  %i.ef = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 21123, ptr %i.b, align 2
  %i.eg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.u
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #13
  %.pre.i.i = load i16, ptr %i.ct, align 8        ; 2 uses
  %i.eh = icmp slt i16 %.pre.i.i, 0
  %i.ei = ashr i16 %.pre.i.i, 5
  %i.ej = sext i16 %i.ei to i32
  %i.ek = load i32, ptr %i.cy, align 4
  %i.el = select i1 %i.eh, i32 %i.ek, i32 %i.ej   ; 2 uses
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.el, i32 1) ; 2 uses
  %i.em = load i16, ptr %i.ao, align 8            ; 2 uses
  %i.en = icmp slt i16 %i.em, 0
  %i.eo = ashr i16 %i.em, 5
  %i.ep = sext i16 %i.eo to i32
  %i.eq = load i32, ptr %i.au, align 4
  %i.er = select i1 %i.en, i32 %i.eq, i32 %i.ep
  %i.es = sub nsw i32 %i.el, %spec.select.i.i
  %i.et = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef %spec.select.i.i, i32 noundef %i.es) #13
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.y, %bb.t
  %.1.i = phi ptr [ %i.ax, %bb.t ], [ %i.eg, %bb.y ], [ %i.et, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex6BucketE, i64 16), ptr %i.cq, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, ptr noundef nonnull align 8 dereferenceable(64) %.1.i) #13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cq, i64 136
  store i32 0, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cq, i64 144
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cq, i64 152
  store i32 -1, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cq, i64 160
  store ptr null, ptr %i.ez, align 8
  %i.fa = load i32, ptr %1, align 4
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %bb.ae, label %bb.aa

.thread284:                                       ; preds = %.critedge211
  %i.fc = load i32, ptr %1, align 4
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221, label %bb.aa

bb.aa:                                            ; preds = %.thread284, %bb.z
  %i.fe = load ptr, ptr %4, align 8               ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.fe, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(168) %i.fe) #13, !inline_history !16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.cq, ptr %4, align 8
  br i1 %i.cr, label %bb.ad, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221

bb.ad:                                            ; preds = %bb.ac
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221

bb.ae:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %i.cq, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(168) %i.cq) #13, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221: ; preds = %.thread284, %bb.ac, %bb.ad, %bb.ae
  %i.fm = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef %i.fm, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.fn = load i32, ptr %1, align 4
  %i.fo = icmp slt i32 %i.fn, 1
  br i1 %i.fo, label %bb.af, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.af:                                            ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.fq = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.fr = icmp slt i16 %i.fq, 0
  %i.fs = ashr i16 %i.fq, 5
  %i.ft = sext i16 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = select i1 %i.fr, i32 %i.fv, i32 %i.ft
  switch i32 %i.fw, label %.thread295 [
    i32 1, label %_ZNK6icu_7813UnicodeString6charAtEi.exit
    i32 2, label %bb.ah
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.af
  %i.fx = and i16 %i.fq, 2
  %.not.i.i.i = icmp eq i16 %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = select i1 %.not.i.i.i, ptr %i.ga, ptr %i.fy
  %i.gc = load i16, ptr %i.gb, align 2            ; 2 uses
  %i.gd = add i16 %i.gc, -65
  %or.cond = icmp ult i16 %i.gd, 26
  br i1 %or.cond, label %bb.ag, label %.thread295

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %7 = zext nneg i16 %i.gc to i64
  %i.ge = load i32, ptr %i.at, align 8
  %i.gf = add nsw i32 %i.ge, -1
  %i.gg = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.gf) #13
  %i.gh = add nuw nsw i64 %7, 4294967231
  %i.gi = and i64 %i.gh, 4294967295
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gi
  store ptr %i.gg, ptr %8, align 8
  br label %.thread295

bb.ah:                                            ; preds = %bb.af
  %i.gj = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not190 = icmp eq i8 %i.gj, 0
  br i1 %.not190, label %.thread297, label %bb.ai

.thread297:                                       ; preds = %bb.ah
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread295

bb.ai:                                            ; preds = %bb.ah
  %i.gk = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.gl = icmp slt i16 %i.gk, 0
  %i.gm = ashr i16 %i.gk, 5
  %i.gn = sext i16 %i.gm to i32
  %i.go = load i32, ptr %i.fu, align 4
  %i.gp = select i1 %i.gl, i32 %i.go, i32 %i.gn
  %i.gq = icmp ugt i32 %i.gp, 1
  br i1 %i.gq, label %bb.aj, label %.thread461

.thread461:                                       ; preds = %bb.ai
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread295

bb.aj:                                            ; preds = %bb.ai
  %i.gr = and i16 %i.gk, 2
  %.not.i.i.i223 = icmp eq i16 %i.gr, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = select i1 %.not.i.i.i223, ptr %i.gu, ptr %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.gx = load i16, ptr %i.gw, align 2            ; 2 uses
  %i.gy = add i16 %i.gx, -65
  %spec.select = icmp ult i16 %i.gy, 26
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %spec.select, label %bb.ak, label %.thread295

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load i32, ptr %i.at, align 8
  %i.ha = add nsw i32 %i.gz, -1
  %i.hb = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.ha) #13
  %i.hc = zext nneg i16 %i.gx to i64
  %i.hd = getelementptr [8 x i8], ptr %i.g, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -520
  store ptr %i.hb, ptr %i.he, align 8
  br label %.thread295

.thread295:                                       ; preds = %.thread461, %bb.af, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %.thread297, %bb.aj, %bb.ak, %bb.ag
  %.1143 = phi i8 [ %.0142377, %bb.ag ], [ 1, %bb.ak ], [ %.0142377, %bb.aj ], [ %.0142377, %.thread297 ], [ %.0142377, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.0142377, %bb.af ], [ %.0142377, %.thread461 ] ; 2 uses
  %i.hf = call noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1) #13
  %.not191 = icmp eq i8 %i.hf, 0
  br i1 %.not191, label %bb.al, label %.critedge

bb.al:                                            ; preds = %.thread295
  %i.hg = load ptr, ptr %i.k, align 8
  call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.hg, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.hh = load i32, ptr %1, align 4
  %i.hi = icmp slt i32 %i.hh, 1
  br i1 %i.hi, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.al
  %i.hj = load i32, ptr %i.av, align 8            ; 2 uses
  %.not2526.i = icmp sgt i32 %i.hj, 0
  br i1 %.not2526.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i, label %.critedge

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i: ; preds = %.preheader.i
  %i.hk = load ptr, ptr %i.aw, align 8
  %wide.trip.count.i = zext nneg i32 %i.hj to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

_ZNK6icu_789UVector6410elementAtiEi.exit.i:       ; preds = %bb.an, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.an ] ; 2 uses
  %.01927.i = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %.2.i, %bb.an ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = lshr i64 %i.hm, 32
  %i.ho = trunc nuw i64 %i.hn to i32
  %i.hp = icmp ult i32 %.0150, %i.ho
  br i1 %i.hp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.not24.i = icmp eq i8 %.01927.i, 0
  br i1 %.not24.i, label %bb.an, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit

bb.an:                                            ; preds = %bb.am, %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.2.i = phi i8 [ %.01927.i, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ 1, %bb.am ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i, !llvm.loop !18

_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit: ; preds = %bb.am
  %i.hq = load i16, ptr %i.fp, align 8            ; 3 uses
  %i.hr = icmp slt i16 %i.hq, 0
  %i.hs = ashr i16 %i.hq, 5
  %i.ht = sext i16 %i.hs to i32
  %i.hu = load i32, ptr %i.fu, align 4
  %i.hv = select i1 %i.hr, i32 %i.hu, i32 %i.ht   ; 2 uses
  %.not = icmp eq i32 %i.hv, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit227.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit227

_ZNK6icu_7813UnicodeString6charAtEi.exit227.thread: ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br label %.thread315

_ZNK6icu_7813UnicodeString6charAtEi.exit227:      ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit
  %i.hw = and i16 %i.hq, 2
  %.not.i.i.i226 = icmp eq i16 %i.hw, 0
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = select i1 %.not.i.i.i226, ptr %i.hz, ptr %i.hx
  %i.ib = sext i32 %i.hv to i64
  %i.ic = getelementptr [2 x i8], ptr %i.ia, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 -2
  %i.ie = load i16, ptr %i.id, align 2
  %.not193 = icmp eq i16 %i.ie, -1
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #13, !srcloc !17
  br i1 %.not193, label %.thread315, label %bb.ao

bb.ao:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit227
  %i.if = load i32, ptr %i.at, align 8
  %i.ig = add nsw i32 %i.if, -2                   ; 2 uses
  %i.ih = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.ig) #13 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 136
  %i.ij = load i32, ptr %i.ii, align 8
  %.not194372 = icmp eq i32 %i.ij, 0
  br i1 %.not194372, label %.lr.ph, label %.thread315

.lr.ph:                                           ; preds = %bb.ao, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit240
  %i.ik = phi ptr [ %i.jk, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit240 ], [ %i.ih, %bb.ao ] ; 3 uses
  %.0130373 = phi i32 [ %i.jj, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit240 ], [ %i.ig, %bb.ao ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 144
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.ap, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit240

bb.ap:                                            ; preds = %.lr.ph
  %i.io = load ptr, ptr %i.k, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 72
  call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.io, ptr noundef nonnull align 8 dereferenceable(64) %i.ip, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.iq = load i32, ptr %1, align 4
  %i.ir = icmp slt i32 %i.iq, 1
  br i1 %i.ir, label %.preheader.i229, label %.loopexit362

.preheader.i229:                                  ; preds = %bb.ap
  %i.is = load i32, ptr %i.av, align 8            ; 2 uses
  %.not2526.i230 = icmp sgt i32 %i.is, 0
  br i1 %.not2526.i230, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i231, label %.loopexit362

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i231: ; preds = %.preheader.i229
  %i.it = load ptr, ptr %i.aw, align 8
  %wide.trip.count.i232 = zext nneg i32 %i.is to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i233

_ZNK6icu_789UVector6410elementAtiEi.exit.i233:    ; preds = %bb.ar, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i231
  %indvars.iv.i234 = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i231 ], [ %indvars.iv.next.i237, %bb.ar ] ; 2 uses
  %.01927.i235 = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i231 ], [ %.2.i236, %bb.ar ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i234
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = lshr i64 %i.iv, 32
  %i.ix = trunc nuw i64 %i.iw to i32
  %i.iy = icmp ult i32 %.0150, %i.ix
  br i1 %i.iy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i233
  %.not24.i239 = icmp eq i8 %.01927.i235, 0
  br i1 %.not24.i239, label %bb.ar, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit240

bb.ar:                                            ; preds = %bb.aq, %_ZNK6icu_789UVector6410elementAtiEi.exit.i233
  %.2.i236 = phi i8 [ %.01927.i235, %_ZNK6icu_789UVector6410elementAtiEi.exit.i233 ], [ 1, %bb.aq ]
  %indvars.iv.next.i237 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i238 = icmp eq i64 %indvars.iv.next.i237, %wide.trip.count.i232
  br i1 %exitcond.not.i238, label %.loopexit362, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i233, !llvm.loop !18

.loopexit362:                                     ; preds = %bb.ap, %.preheader.i229, %bb.ar
  %i.iz = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #13 ; 3 uses
  %.not196 = icmp eq ptr %i.iz, null
  br i1 %.not196, label %.critedge213, label %.critedge215

.critedge213:                                     ; preds = %.loopexit362
  %i.ja = load i32, ptr %1, align 4
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %.critedge213
  %i.jc = load ptr, ptr %4, align 8               ; 3 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.je = load ptr, ptr %i.jc, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(168) %i.jc) #13, !inline_history !16
  br label %bb.au

end_hunk_0
begin_hunk_1_@_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode:bb.a

.preheader361.25:                                 ; preds = %bb.cb, %.preheader361.24
  %.8.24 = phi i8 [ 1, %bb.cb ], [ %.8.23, %.preheader361.24 ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.rb = load ptr, ptr %i.ra, align 8            ; 2 uses
  %.not209.25 = icmp eq ptr %i.rb, null
  %spec.select217.25 = select i1 %.not209.25, ptr %spec.select217.24, ptr %i.rb ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.rd = load ptr, ptr %i.rc, align 8            ; 2 uses
  %i.re = icmp ne ptr %i.rd, null
  %i.rf = icmp ne ptr %spec.select217.25, null
  %or.cond8.25 = select i1 %i.re, i1 %i.rf, i1 false
  br i1 %or.cond8.25, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %.preheader361.25
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 144
  store ptr %spec.select217.25, ptr %i.rg, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader361.25, %bb.cc
  %.8.25 = phi i8 [ 1, %bb.cc ], [ %.8.24, %.preheader361.25 ]
  %.pre402 = load i32, ptr %1, align 4
  %i.rh = icmp slt i32 %.pre402, 1
  br i1 %i.rh, label %.loopexit.thread, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.loopexit.thread:                                 ; preds = %bb.bc, %.loopexit
  %.9471 = phi i8 [ %.8.25, %.loopexit ], [ %.0146.lcssa467, %bb.bc ]
  %.not204 = icmp eq i8 %.9471, 0
  br i1 %.not204, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %.loopexit.thread
  %i.ri = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #13 ; 3 uses
  %i.rj = icmp eq ptr %i.ri, null
  br i1 %i.rj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.cf:                                            ; preds = %bb.cd
  call void @_ZN6icu_7810BucketListC2EPNS_7UVectorES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ri, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q)
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.cg:                                            ; preds = %.loopexit.thread
  %i.rk = load i32, ptr %i.jv, align 8            ; 3 uses
  %i.rl = add nsw i32 %i.rk, -1
  %i.rm = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.rl) #13
  %i.rn = icmp sgt i32 %i.rk, 2
  br i1 %i.rn, label %.lr.ph388.preheader, label %._crit_edge

.lr.ph388.preheader:                              ; preds = %bb.cg
  %i.ro = add nsw i32 %i.rk, -2
  br label %.lr.ph388

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %bb.ck
  %i.rp = phi i32 [ %i.ry, %bb.ck ], [ %i.ro, %.lr.ph388.preheader ] ; 3 uses
  %.0123387 = phi ptr [ %.1, %bb.ck ], [ %i.rm, %.lr.ph388.preheader ] ; 4 uses
  %i.rq = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %i.rp) #13 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 144 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8
  %.not207 = icmp eq ptr %i.rs, null
  br i1 %.not207, label %bb.ch, label %bb.ck, !llvm.loop !21

bb.ch:                                            ; preds = %.lr.ph388
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 136
  %i.ru = load i32, ptr %i.rt, align 8
  %i.rv = icmp eq i32 %i.ru, 2
  br i1 %i.rv, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.rw = getelementptr inbounds nuw i8, ptr %.0123387, i64 136
  %i.rx = load i32, ptr %i.rw, align 8
  %.not208 = icmp eq i32 %i.rx, 0
  br i1 %.not208, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr %.0123387, ptr %i.rr, align 8
  br label %bb.ck, !llvm.loop !21

bb.ck:                                            ; preds = %bb.ch, %bb.ci, %.lr.ph388, %bb.cj
  %.1 = phi ptr [ %.0123387, %.lr.ph388 ], [ %.0123387, %bb.cj ], [ %i.rq, %bb.ci ], [ %i.rq, %bb.ch ]
  %i.ry = add nsw i32 %i.rp, -1
  %i.rz = icmp sgt i32 %i.rp, 1
  br i1 %i.rz, label %.lr.ph388, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ck, %bb.cg
  %i.sa = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 6 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.cl, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit243

bb.cl:                                            ; preds = %._crit_edge
  %i.sc = load i32, ptr %1, align 4
  %i.sd = icmp sgt i32 %i.sc, 0
  br i1 %i.sd, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit243: ; preds = %._crit_edge
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.sa, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %.pre403 = load i32, ptr %1, align 4
  %i.se = icmp slt i32 %.pre403, 1
  br i1 %i.se, label %.preheader, label %.thread473.a

.preheader:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit243
  %i.sf = load i32, ptr %i.jv, align 8
  %i.sg = icmp sgt i32 %i.sf, 0
  br i1 %i.sg, label %.lr.ph390, label %._crit_edge391.thread

._crit_edge391:                                   ; preds = %bb.co
  %.pre404 = load i32, ptr %1, align 4
  %i.sh = icmp slt i32 %.pre404, 1
  br i1 %i.sh, label %._crit_edge391.thread, label %.thread473.a

.lr.ph390:                                        ; preds = %.preheader, %bb.co
  %.0389 = phi i32 [ %i.sm, %bb.co ], [ 0, %.preheader ] ; 2 uses
  %i.si = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef %.0389) #13 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 144
  %i.sk = load ptr, ptr %i.sj, align 8
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph390
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.sa, ptr noundef nonnull %i.si, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph390
  %i.sm = add nuw nsw i32 %.0389, 1               ; 2 uses
  %i.sn = load i32, ptr %i.jv, align 8
  %i.so = icmp slt i32 %i.sm, %i.sn
  br i1 %i.so, label %.lr.ph390, label %._crit_edge391, !llvm.loop !22

._crit_edge391.thread:                            ; preds = %.preheader, %._crit_edge391
  %i.sp = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #13 ; 3 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.cp, label %.thread355

bb.cp:                                            ; preds = %._crit_edge391.thread
  store i32 7, ptr %1, align 4
  br label %.thread473.a

.thread355:                                       ; preds = %._crit_edge391.thread
  call void @_ZN6icu_7810BucketListC2EPNS_7UVectorES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, ptr noundef nonnull %i.q, ptr noundef nonnull %i.sa)
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.thread473.a:                                     ; preds = %._crit_edge391, %bb.cp, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit243
  %i.sr = load ptr, ptr %i.sa, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8
  call void %i.st(ptr noundef nonnull align 8 dereferenceable(40) %i.sa) #13, !inline_history !23
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.av, %.critedge215, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221, %bb.cl, %bb.cm, %bb.au, %.critedge213, %.thread473.a, %.thread355, %bb.ce, %bb.cf, %.loopexit, %bb.bb, %bb.ax, %bb.ay, %.thread343
  %.sroa.0253.1 = phi ptr [ %i.q, %bb.cm ], [ %i.q, %bb.ax ], [ null, %bb.ay ], [ %i.q, %bb.ce ], [ null, %bb.cf ], [ %i.q, %.thread473.a ], [ %i.q, %.loopexit ], [ %i.q, %bb.bb ], [ %i.q, %.thread343 ], [ null, %.thread355 ], [ %i.q, %bb.au ], [ %i.q, %bb.cl ], [ %i.q, %.critedge213 ], [ %i.q, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221 ], [ %i.q, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit ], [ %i.q, %.critedge215 ], [ %i.q, %bb.av ]
  %.13 = phi ptr [ null, %bb.cm ], [ null, %bb.ax ], [ %i.jy, %bb.ay ], [ null, %bb.ce ], [ %i.ri, %bb.cf ], [ null, %.thread473.a ], [ null, %.loopexit ], [ null, %bb.bb ], [ null, %.thread343 ], [ %i.sp, %.thread355 ], [ null, %bb.au ], [ null, %bb.cl ], [ null, %.critedge213 ], [ null, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit221 ], [ null, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit ], [ null, %.critedge215 ], [ null, %bb.av ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread

.thread493:                                       ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread485

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread: ; preds = %bb.j, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit
  %.sroa.0253.2.ph.ph = phi ptr [ %i.q, %bb.j ], [ %.sroa.0253.1, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit ] ; 2 uses
  %.14.ph.ph = phi ptr [ null, %bb.j ], [ %.13, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit ] ; 2 uses
  %.pr.pr = load ptr, ptr %4, align 8             ; 2 uses
  %i.su = icmp eq ptr %.pr.pr, null
  br i1 %i.su, label %bb.cq, label %.thread474

.thread474:                                       ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread
  %.14479.a = phi ptr [ %.14.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ null, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit ]
  %.sroa.0253.2477.a = phi ptr [ %.sroa.0253.2.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %i.q, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit ]
  %i.sv = phi ptr [ %.pr.pr, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %i.w, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit ] ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(168) %i.sv) #13, !inline_history !24
  br label %bb.cq

bb.cq:                                            ; preds = %.thread474, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread
  %.14480 = phi ptr [ %.14.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %.14479.a, %.thread474 ] ; 2 uses
  %.sroa.0253.2478 = phi ptr [ %.sroa.0253.2.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %.sroa.0253.2477.a, %.thread474 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.sz = icmp eq ptr %.sroa.0253.2478, null
  br i1 %i.sz, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit244, label %.thread485

.thread485:                                       ; preds = %.thread493, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit, %bb.cq
  %.15489 = phi ptr [ %.14480, %bb.cq ], [ null, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit ], [ null, %.thread493 ]
  %.sroa.0253.3488 = phi ptr [ %.sroa.0253.2478, %bb.cq ], [ %i.q, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit ], [ %i.q, %.thread493 ] ; 2 uses
  %i.ta = load ptr, ptr %.sroa.0253.3488, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0253.3488) #13, !inline_history !23
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit244

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit244: ; preds = %bb.e, %bb.f, %bb.cq, %.thread485
  %.15484 = phi ptr [ %.15489, %.thread485 ], [ %.14480, %bb.cq ], [ null, %bb.f ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @_ZN6icu_789UVector64D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.cr

bb.cr:                                            ; preds = %bb.a, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit244
  %.16 = phi ptr [ %.15484, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit244 ], [ null, %bb.a ]
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %.16
}

declare noundef ptr @_ZNK6icu_7817RuleBasedCollator5cloneEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7815AlphabeticIndex14getBucketCountER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_7815AlphabeticIndex11initBucketsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815AlphabeticIndex11initBucketsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not52 = icmp eq ptr %i.d, null
  br i1 %.not52, label %bb.c, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6icu_787UVector19sortWithUComparatorEPFiPKvS2_S2_ES2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull @_ZN6icu_78L15recordCompareFnEPKvS1_S1_, ptr noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef 0) #13
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i32 noundef 1) #13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.043 = phi i32 [ 2, %bb.g ], [ 1, %bb.f ]
  %.039 = phi ptr [ %i.y, %bb.g ], [ null, %bb.f ]
  %.036 = phi ptr [ %i.z, %bb.g ], [ null, %bb.f ]
  %i.aa = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph84, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62

.lr.ph84:                                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph84, %.critedge61
  %i.af = phi ptr [ %i.aa, %.lr.ph84 ], [ %i.bj, %.critedge61 ]
  %.03583 = phi i32 [ 0, %.lr.ph84 ], [ %i.bi, %.critedge61 ] ; 2 uses
  %.13782 = phi ptr [ %.036, %.lr.ph84 ], [ %.238.lcssa, %.critedge61 ] ; 3 uses
  %.14081 = phi ptr [ %.039, %.lr.ph84 ], [ %.241.lcssa, %.critedge61 ] ; 3 uses
  %.14480 = phi i32 [ %.043, %.lr.ph84 ], [ %.245.lcssa, %.critedge61 ] ; 3 uses
  %.04779 = phi ptr [ %i.r, %.lr.ph84 ], [ %.148.lcssa, %.critedge61 ] ; 2 uses
  %i.ag = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i32 noundef %.03583) #13 ; 2 uses
  %.not5566 = icmp eq ptr %.13782, null
  br i1 %.not5566, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %.13782, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %.lr.ph98, label %.critedge

.lr.ph98:                                         ; preds = %.lr.ph, %bb.j
  %.2456897 = phi i32 [ %i.ar, %bb.j ], [ %.14480, %.lr.ph ] ; 4 uses
  %.2416996 = phi ptr [ %i.as, %bb.j ], [ %.14081, %.lr.ph ] ; 3 uses
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp slt i32 %.2456897, %i.ap
  br i1 %i.aq, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph98
  %i.ar = add nsw i32 %.2456897, 1                ; 2 uses
  %i.as = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i32 noundef %.2456897) #13 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.ae, align 8
  %i.av = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %.lr.ph98, label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %bb.j, %.lr.ph98, %.lr.ph, %bb.i
  %.148.lcssa = phi ptr [ %.04779, %bb.i ], [ %.04779, %.lr.ph ], [ %.2416996, %.lr.ph98 ], [ %.2416996, %bb.j ] ; 3 uses
  %.245.lcssa = phi i32 [ %.14480, %bb.i ], [ %.14480, %.lr.ph ], [ %.2456897, %.lr.ph98 ], [ %i.ar, %bb.j ]
  %.241.lcssa = phi ptr [ %.14081, %bb.i ], [ %.14081, %.lr.ph ], [ %.2416996, %.lr.ph98 ], [ %i.as, %bb.j ]
  %.238.lcssa = phi ptr [ null, %bb.i ], [ %.13782, %.lr.ph ], [ null, %.lr.ph98 ], [ %i.at, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not56 = icmp eq ptr %i.ay, null
  %spec.select = select i1 %.not56, ptr %.148.lcssa, ptr %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 160 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.k, label %.critedge61

bb.k:                                             ; preds = %.critedge
  %i.bc = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 6 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.l, label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %1, align 4
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.k
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %.pre = load i32, ptr %1, align 4
  %i.bg = icmp slt i32 %.pre, 1
  br i1 %i.bg, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.critedge59

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  store ptr %i.bc, ptr %i.az, align 8
  br label %.critedge61

.critedge61:                                      ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, %.critedge
  %i.bh = phi ptr [ %i.bc, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit ], [ %i.ba, %.critedge ]
  tail call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.bi = add nuw nsw i32 %.03583, 1              ; 2 uses
  %i.bj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp slt i32 %i.bi, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62, !llvm.loop !26

.critedge59:                                      ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.bn = load ptr, ptr %i.bc, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #13, !inline_history !23
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit62
end_hunk_1
