Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/datamap?download=true
inline.NumInlined: 44
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@u_UCharsToChars_78
declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define void @deleteResBund(ptr noundef %0) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9RBDataMapD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV9RBDataMap, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN6icu_789HashtableD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @uhash_close_78(ptr noundef nonnull %i.d)
          to label %_ZN6icu_789HashtableD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #14
  unreachable

_ZN6icu_789HashtableD2Ev.exit:                    ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.b) #15
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_789HashtableD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9RBDataMapD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN9RBDataMapD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN9RBDataMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV9RBDataMap, i64 16), ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.b = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #15 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = invoke ptr @uhash_init_78(ptr noundef nonnull %i.c, ptr noundef nonnull @uhash_hashCaselessUnicodeString_78, ptr noundef nonnull @uhash_compareCaselessUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !25
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %i.b, align 8, !tbaa !23
  %i.g = invoke ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.c, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit unwind label %bb.c ; 0 uses

_ZN6icu_789HashtableC2EaR10UErrorCode.exit:       ; preds = %.noexc, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.h, align 8, !tbaa !17
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.j = call noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.i, ptr noundef nonnull @deleteResBund) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN9RBDataMapC2EP15UResourceBundleR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV9RBDataMap, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #15 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = load i32, ptr %2, align 4, !tbaa !25
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.e = invoke ptr @uhash_init_78(ptr noundef nonnull %i.d, ptr noundef nonnull @uhash_hashCaselessUnicodeString_78, ptr noundef nonnull @uhash_compareCaselessUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.f = load i32, ptr %2, align 4, !tbaa !25
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  store ptr %i.d, ptr %i.a, align 8, !tbaa !23
  %i.h = invoke ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.d, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit unwind label %bb.d ; 0 uses

_ZN6icu_789HashtableC2EaR10UErrorCode.exit:       ; preds = %.noexc, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !17
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.k = tail call noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.j, ptr noundef nonnull @deleteResBund) ; 0 uses
  tail call void @_ZN9RBDataMap4initEP15UResourceBundleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #15
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RBDataMap4initEP15UResourceBundleR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @uhash_removeAll_78(ptr noundef %i.c)
  %i.d = tail call i32 @ures_getSize_78(ptr noundef %1)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %.01729 = phi i32 [ %i.p, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit ], [ 0, %bb.a ] ; 2 uses
  %.01828 = phi ptr [ %i.f, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit ], [ null, %bb.a ]
  %i.f = call ptr @ures_getByIndex_78(ptr noundef %1, i32 noundef %.01729, ptr noundef %.01828, ptr noundef nonnull %2) ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.h = call ptr @ures_getKey_78(ptr noundef %i.f)
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.h, i32 noundef -1, i32 noundef 0)
  %i.i = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #15 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZN6icu_7814ResourceBundleC1EP15UResourceBundleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.l = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #15 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = invoke noundef ptr @uhash_put_78(ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit unwind label %bb.h ; 0 uses

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.l) #15
  br label %.body

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.p = add nuw nsw i32 %.01729, 1               ; 2 uses
  %i.q = call i32 @ures_getSize_78(ptr noundef %1)
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !28

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.i) #15
  br label %.body

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.o, %bb.f ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, %bb.a
  %.018.lcssa = phi ptr [ null, %bb.a ], [ %i.f, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit ]
  call void @ures_close_78(ptr noundef %.018.lcssa)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RBDataMapC2EP15UResourceBundleS1_R10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV9RBDataMap, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #15 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = load i32, ptr %3, align 4, !tbaa !25
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.e = invoke ptr @uhash_init_78(ptr noundef nonnull %i.d, ptr noundef nonnull @uhash_hashCaselessUnicodeString_78, ptr noundef nonnull @uhash_compareCaselessUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.f = load i32, ptr %3, align 4, !tbaa !25
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  store ptr %i.d, ptr %i.a, align 8, !tbaa !23
  %i.h = invoke ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.d, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit unwind label %bb.d ; 0 uses

_ZN6icu_789HashtableC2EaR10UErrorCode.exit:       ; preds = %.noexc, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !17
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.k = tail call noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.j, ptr noundef nonnull @deleteResBund) ; 0 uses
  tail call void @_ZN9RBDataMap4initEP15UResourceBundleS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #15
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RBDataMap4initEP15UResourceBundleS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @uhash_removeAll_78(ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.e = tail call i32 @ures_getSize_78(ptr noundef %1)
  %i.f = tail call i32 @ures_getSize_78(ptr noundef %2)
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.h = tail call i32 @ures_getSize_78(ptr noundef %2)
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %.02335 = phi i32 [ %i.u, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit ], [ 0, %.preheader ] ; 3 uses
  %.02434 = phi ptr [ %i.j, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit ], [ null, %.preheader ]
  %i.j = call ptr @ures_getByIndex_78(ptr noundef %2, i32 noundef %.02335, ptr noundef %.02434, ptr noundef nonnull %3) ; 3 uses
  %i.k = call ptr @ures_getStringByIndex_78(ptr noundef %1, i32 noundef %.02335, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.m = load i32, ptr %i.a, align 4, !tbaa !27
  call void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.k, i32 noundef %i.m)
  %i.n = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #15 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZN6icu_7814ResourceBundleC1EP15UResourceBundleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef %i.j, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.q = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #15 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = invoke noundef ptr @uhash_put_78(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit unwind label %bb.h ; 0 uses

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.q) #15
  br label %.body

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.u = add nuw nsw i32 %.02335, 1               ; 2 uses
  %i.v = call i32 @ures_getSize_78(ptr noundef %2)
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph, label %.loopexit, !llvm.loop !29

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.n) #15
  br label %.body

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.y, %bb.h ], [ %i.t, %bb.f ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a
  store i32 3, ptr %3, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, %.preheader, %bb.i
  %.1 = phi ptr [ null, %bb.i ], [ null, %.preheader ], [ %i.j, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit ]
  call void @ures_close_78(ptr noundef %.1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare i32 @ures_getSize_78(ptr noundef) local_unnamed_addr #6

declare ptr @ures_getByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @ures_getKey_78(ptr noundef) local_unnamed_addr #6

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #6

declare void @_ZN6icu_7814ResourceBundleC1EP15UResourceBundleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #8

declare void @ures_close_78(ptr noundef) local_unnamed_addr #6

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK9RBDataMap7getItemEPKcR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !25
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %1, i32 noundef -1, i32 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = invoke noundef ptr @uhash_get_78(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit unwind label %bb.c ; 2 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  store i32 2, ptr %2, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit, %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi ptr [ %i.f, %bb.e ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9RBDataMap9getStringEPKcR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.e = load i32, ptr %3, align 4, !tbaa !25
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6icu_7814ResourceBundle9getStringER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZNK6icu_7814ResourceBundle9getStringER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK9RBDataMap8getInt28EPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.e = load i32, ptr %2, align 4, !tbaa !25
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK6icu_7814ResourceBundle6getIntER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6icu_7814ResourceBundle6getIntER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK9RBDataMap9getUInt28EPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.e = load i32, ptr %2, align 4, !tbaa !25
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK6icu_7814ResourceBundle7getUIntER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6icu_7814ResourceBundle7getUIntER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK9RBDataMap12getIntVectorERiPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.e = load i32, ptr %3, align 4, !tbaa !25
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK6icu_7814ResourceBundle12getIntVectorERiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_7814ResourceBundle12getIntVectorERiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK9RBDataMap9getBinaryERiPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.e = load i32, ptr %3, align 4, !tbaa !25
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK6icu_7814ResourceBundle9getBinaryERiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_7814ResourceBundle9getBinaryERiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK9RBDataMap6getIntEPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_0
