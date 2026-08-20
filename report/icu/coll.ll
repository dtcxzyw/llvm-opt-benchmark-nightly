inline.NumInlined: 102
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_788Collator6equalsERKNS_13UnicodeStringES3_
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788Collator6equalsERKNS_13UnicodeStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.f = icmp eq i32 %i.e, 0
  %i.g = zext i1 %i.f to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i8 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788Collator14greaterOrEqualERKNS_13UnicodeStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i8 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788Collator7greaterERKNS_13UnicodeStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.f = icmp eq i32 %i.e, 1
  %i.g = zext i1 %i.f to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i8 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_788Collator19getAvailableLocalesERi(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !10
  store i32 0, ptr %0, align 4, !tbaa !28
  %i.b = call fastcc noundef signext i8 @_ZN6icu_78L32isAvailableLocaleListInitializedER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZL19availableLocaleList, align 8, !tbaa !32
  %i.d = load i32, ptr @_ZL24availableLocaleListCount, align 4, !tbaa !28
  store i32 %i.d, ptr %0, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L32isAvailableLocaleListInitializedER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::StackUResourceBundle", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %"class.icu_78::Locale", align 8    ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr @_ZL28gAvailableLocaleListInitOnce acquire, align 4
  %.not11.i = icmp eq i32 %i.d, 2
  br i1 %.not11.i, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL28gAvailableLocaleListInitOnce)
  %.not12.i = icmp eq i8 %i.e, 0
  br i1 %.not12.i, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN6icu_7820StackUResourceBundleC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.f = invoke ptr @ures_openDirect_78(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.e unwind label %.loopexit.split-lp.i ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = invoke ptr @ures_getByKey_78(ptr noundef %i.f, ptr noundef nonnull @.str.31, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.f unwind label %.loopexit.split-lp.i ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %0, align 4, !tbaa !10
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.loopexit32.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = invoke i32 @ures_getSize_78(ptr noundef nonnull %1)
          to label %bb.h unwind label %.loopexit.split-lp.i ; 3 uses

bb.h:                                             ; preds = %bb.g
  store i32 %i.j, ptr @_ZL24availableLocaleListCount, align 4, !tbaa !28
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 40) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.n, i64 8) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = or i1 %i.m, %i.p
  %i.r = extractvalue { i64, i1 } %i.o, 0
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.s) #16 ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.k, ptr %i.t, align 8
  %.ptr21.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = icmp eq i32 %i.j, 0
  br i1 %i.v, label %.loopexit35.i, label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.j
  %.idx.i = phi i64 [ %.add.i, %bb.j ], [ 8, %bb.i ] ; 5 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  invoke void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.ptr.ptr.i)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %.preheader
  %.add.i = add nuw nsw i64 %.idx.i, 40
  %i.w = add nuw nsw i64 %.idx.i, 32
  %i.x = icmp eq i64 %i.w, %i.n
  br i1 %i.x, label %.loopexit35.i, label %.preheader

bb.k:                                             ; preds = %bb.h
  store ptr null, ptr @_ZL19availableLocaleList, align 8, !tbaa !32
  br label %.loopexit32.i

.loopexit35.i:                                    ; preds = %bb.j, %bb.i
  store ptr %.ptr21.i, ptr @_ZL19availableLocaleList, align 8, !tbaa !32
  invoke void @ures_resetIterator_78(ptr noundef nonnull %1)
          to label %.preheader.i unwind label %.loopexit.split-lp.i

.preheader.i:                                     ; preds = %.loopexit35.i, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %.loopexit35.i ] ; 2 uses
  %i.y = invoke signext i8 @ures_hasNext_78(ptr noundef nonnull %1)
          to label %bb.l unwind label %.loopexit.i

bb.l:                                             ; preds = %.preheader.i
  %.not28.i = icmp eq i8 %i.y, 0
  br i1 %.not28.i, label %.loopexit32.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.z = invoke ptr @ures_getNextString_78(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.n unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !34
  invoke void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.aa, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr @_ZL19availableLocaleList, align 8, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %2) #16 ; 0 uses
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.preheader.i, !llvm.loop !35

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %bb.t, %.loopexit32.i, %.loopexit35.i, %bb.g, %bb.e, %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %.preheader
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = icmp eq i64 %.idx.i, 8
  br i1 %i.af, label %.loopexit34.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.p, %.preheader33.i
  %.idx22.i = phi i64 [ %.add23.i, %.preheader33.i ], [ %.idx.i, %bb.p ]
  %.add23.i = add nuw nsw i64 %.idx22.i, -40      ; 2 uses
  %.ptr25.i = getelementptr inbounds i8, ptr %i.t, i64 %.add23.i
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.ptr25.i) #16
  br label %.preheader33.i

.loopexit34.i:                                    ; preds = %bb.p
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.t) #16
  br label %bb.u

bb.q:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.ag, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.u

.loopexit32.i:                                    ; preds = %bb.l, %bb.k, %bb.f
  invoke void @ures_close_78(ptr noundef %i.f)
          to label %bb.t unwind label %.loopexit.split-lp.i

bb.t:                                             ; preds = %.loopexit32.i
  invoke void @ucln_i18n_registerCleanup_78(i32 noundef 28, ptr noundef nonnull @_ZL16collator_cleanupv)
          to label %_ZN6icu_78L23initAvailableLocaleListER10UErrorCode.exit unwind label %.loopexit.split-lp.i

bb.u:                                             ; preds = %bb.s, %.loopexit34.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.s ], [ %i.ae, %.loopexit34.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn.pn.i

_ZN6icu_78L23initAvailableLocaleListER10UErrorCode.exit: ; preds = %bb.t
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.ai = load i32, ptr %0, align 4, !tbaa !10
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZL28gAvailableLocaleListInitOnce, i64 4), align 4, !tbaa !36
  call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL28gAvailableLocaleListInitOnce)
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.v:                                             ; preds = %bb.c, %bb.b
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL28gAvailableLocaleListInitOnce, i64 4), align 4, !tbaa !36 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.aj, ptr %0, align 4, !tbaa !10
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %bb.a, %_ZN6icu_78L23initAvailableLocaleListER10UErrorCode.exit, %bb.v, %bb.w
  %i.al = load i32, ptr %0, align 4, !tbaa !10
  %i.am = icmp slt i32 %i.al, 1
  %i.an = zext i1 %i.am to i8
  ret i8 %i.an
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788Collator14getDisplayNameERKNS_6LocaleES3_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.a = load atomic i32, ptr @_ZL16gServiceInitOnce acquire, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN6icu_78L10hasServiceEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr @_ZL16gServiceInitOnce acquire, align 4
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %_ZN6icu_78L10hasServiceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL16gServiceInitOnce)
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN6icu_78L10hasServiceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 224) #16 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6icu_78L11initServiceEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6icu_7818ICUCollatorServiceC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %i.e)
          to label %_ZN6icu_78L11initServiceEv.exit.i.i unwind label %bb.f

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.m, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #16
  br label %common.resume

_ZN6icu_78L11initServiceEv.exit.i.i:              ; preds = %bb.e, %bb.d
  store ptr %i.e, ptr @_ZL8gService, align 8, !tbaa !13
  tail call void @ucln_i18n_registerCleanup_78(i32 noundef 28, ptr noundef nonnull @_ZL16collator_cleanupv)
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL16gServiceInitOnce)
  br label %_ZN6icu_78L10hasServiceEv.exit

_ZN6icu_78L10hasServiceEv.exit:                   ; preds = %bb.b, %bb.c, %_ZN6icu_78L11initServiceEv.exit.i.i
  %i.h = load ptr, ptr @_ZL8gService, align 8, !tbaa !13
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %_ZN6icu_78L10hasServiceEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_78L10hasServiceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 2, ptr %i.i, align 8, !tbaa !12
  %i.j = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813LocaleUtility18initNameFromLocaleERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @_ZL8gService, align 8, !tbaa !13
  %i.l = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810ICUService14getDisplayNameERKNS_13UnicodeStringERS1_RKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume

_ZN6icu_78L10hasServiceEv.exit.thread:            ; preds = %bb.a, %_ZN6icu_78L10hasServiceEv.exit
  %i.n = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_78L10hasServiceEv.exit.thread, %bb.i
  %.0 = phi ptr [ %i.l, %bb.i ], [ %i.n, %_ZN6icu_78L10hasServiceEv.exit.thread ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813LocaleUtility18initNameFromLocaleERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7810ICUService14getDisplayNameERKNS_13UnicodeStringERS1_RKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788Collator14getDisplayNameERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788Collator14getDisplayNameERKNS_6LocaleES3_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_788CollatorC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN6icu_788CollatorE, i64 16), ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_788CollatorC2E18UColAttributeValue18UNormalizationMode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN6icu_788CollatorE, i64 16), ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788CollatorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_788CollatorD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_788CollatorC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN6icu_788CollatorE, i64 16), ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6icu_788CollatoreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 3 uses
end_hunk_0
