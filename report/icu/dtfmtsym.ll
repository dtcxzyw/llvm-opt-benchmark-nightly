Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dtfmtsym?download=true
inline.NumInlined: 665
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkD2Ev:bb.a
  unreachable

_ZN6icu_789HashtableD2Ev.exit2:                   ; preds = %_ZN6icu_789HashtableD2Ev.exit, %bb.l
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %.not.i3 = icmp eq ptr %i.aq, null
  br i1 %.not.i3, label %_ZN6icu_789HashtableD2Ev.exit4, label %bb.n

bb.n:                                             ; preds = %_ZN6icu_789HashtableD2Ev.exit2
  invoke void @uhash_close_78(ptr noundef nonnull %i.aq)
          to label %_ZN6icu_789HashtableD2Ev.exit4 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #20
  unreachable

_ZN6icu_789HashtableD2Ev.exit4:                   ; preds = %_ZN6icu_789HashtableD2Ev.exit2, %bb.n
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void

bb.p:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7817DateFormatSymbols9getLocaleE18ULocDataLocaleTypeR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::Locale") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_7811LocaleBased9getLocaleERKNS_6LocaleES3_18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_7811LocaleBased9getLocaleERKNS_6LocaleES3_18ULocDataLocaleTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext) local_unnamed_addr #4

declare void @uprv_deleteUObject_78(ptr noundef) #4

declare signext i8 @uhash_compareUnicodeString_78(ptr, ptr) #4

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810MemoryPoolINS_9HashtableELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !111
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPNS_9HashtableELi8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109
  invoke void @uprv_free_78(ptr noundef %i.g)
          to label %_ZN6icu_7815MaybeStackArrayIPNS_9HashtableELi8EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZN6icu_7815MaybeStackArrayIPNS_9HashtableELi8EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %i.j = phi i32 [ %i.a, %.lr.ph ], [ %i.r, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !265  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !99   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN6icu_789HashtableD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @uhash_close_78(ptr noundef nonnull %i.o)
          to label %_ZN6icu_789HashtableD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #20
  unreachable

_ZN6icu_789HashtableD2Ev.exit:                    ; preds = %bb.e, %bb.f
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.m) #18
  %.pre = load i32, ptr %0, align 8, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZN6icu_789HashtableD2Ev.exit
  %i.r = phi i32 [ %i.j, %bb.d ], [ %.pre, %_ZN6icu_789HashtableD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.d, label %._crit_edge, !llvm.loop !267
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_789HashtableD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @uhash_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #20
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(600) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_7812_GLOBAL__N_116CalendarDataSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(600) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_116CalendarDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.icu_78::ResourceTable", align 8 ; 7 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %7 = alloca %"class.icu_78::ResourceArray", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::LocalArray", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::LocalArray", align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !258
  %i.b = load i32, ptr %4, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.d = load ptr, ptr %2, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.g = load i32, ptr %4, align 4, !tbaa !10
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.preheader317, label %.thread307

.preheader317:                                    ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader317, %select.unfold
  %.sroa.0272.0 = phi ptr [ %.sroa.0272.2, %select.unfold ], [ null, %.preheader317 ] ; 36 uses
  %.0123 = phi i32 [ %i.en, %select.unfold ], [ 0, %.preheader317 ] ; 2 uses
  %i.p = invoke noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %5, i32 noundef %.0123, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not147 = icmp eq i8 %i.p, 0
  br i1 %.not147, label %.critedge208.preheader, label %bb.f

.critedge208.preheader:                           ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !268  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.critedge208, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body259

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !258
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.u, i32 noundef -1, i32 noundef 0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = invoke fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_116CalendarDataSink21processAliasFromValueERNS_13UnicodeStringERNS_13ResourceValueER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %4, align 4, !tbaa !10
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.k, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.j:                                             ; preds = %bb.ao, %bb.ai, %bb.v, %bb.u, %bb.bl, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223

bb.k:                                             ; preds = %bb.h
  switch i32 %i.v, label %default.unreachable [
    i32 2, label %select.unfold
    i32 1, label %bb.l
    i32 0, label %bb.u
    i32 3, label %bb.ag
  ]

bb.l:                                             ; preds = %bb.k
  %.not313 = icmp eq ptr %.sroa.0272.0, null
  br i1 %.not313, label %bb.m, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread444

bb.m:                                             ; preds = %bb.l
  %i.aa = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #18 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr %4, align 4, !tbaa !10
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread444

.thread:                                          ; preds = %bb.m
  %i.ae = load i32, ptr %4, align 4, !tbaa !10
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, label %bb.p

bb.p:                                             ; preds = %.thread
  store i32 7, ptr %4, align 4, !tbaa !10
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.o
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #18, !inline_history !271
  %.pre = load i32, ptr %4, align 4, !tbaa !10
  %i.aj = icmp slt i32 %.pre, 1
  br i1 %i.aj, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread444, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.q:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.aa) #18
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223

_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread444: ; preds = %bb.o, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %bb.l
  %.sroa.0272.1 = phi ptr [ %.sroa.0272.0, %bb.l ], [ null, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit ], [ %i.aa, %bb.o ] ; 5 uses
  %i.al = invoke noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.r unwind label %bb.t       ; 2 uses

bb.r:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread444
  %i.am = icmp ne ptr %i.al, null
  %i.an = load i32, ptr %4, align 4
  %i.ao = icmp sgt i32 %i.an, 0
  %or.cond.i = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 7, ptr %4, align 4, !tbaa !10
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.s, %bb.r
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0272.1, ptr noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit214

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.ap = load i32, ptr %4, align 4, !tbaa !10
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %select.unfold, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.t:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread444
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit214: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223

bb.u:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.au = invoke noundef ptr @uhash_get_78(ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit unwind label %bb.j

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit: ; preds = %bb.u
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.v, label %select.unfold

bb.v:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.ax = invoke noundef ptr @uhash_get_78(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit215 unwind label %bb.j

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit215: ; preds = %bb.v
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.w, label %select.unfold

bb.w:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit215
  %i.az = invoke noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.x unwind label %bb.aa      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.ba = icmp ne ptr %i.az, null
  %i.bb = load i32, ptr %4, align 4
  %i.bc = icmp sgt i32 %i.bb, 0
  %or.cond.i216 = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %or.cond.i216, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit217, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 7, ptr %4, align 4, !tbaa !10
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit217

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit217: ; preds = %bb.y, %bb.x
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef %i.az, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit217
  %i.bd = load i32, ptr %4, align 4, !tbaa !10
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.ac, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.aa:                                            ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223

bb.ab:                                            ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit217
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223

bb.ac:                                            ; preds = %bb.z
  %i.bh = invoke noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.ad unwind label %bb.af     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = load i32, ptr %4, align 4
  %i.bk = icmp sgt i32 %i.bj, 0
  %or.cond.i218 = select i1 %i.bi, i1 true, i1 %i.bk
  br i1 %or.cond.i218, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit219, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 7, ptr %4, align 4, !tbaa !10
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit219

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit219: ; preds = %bb.ae, %bb.ad
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef %i.bh, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit221 unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit222

end_hunk_0
begin_hunk_1_@_ZN6icu_7812_GLOBAL__N_116CalendarDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store i16 2, ptr %i.cy, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx ; 2 uses
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 136
  store i16 2, ptr %i.da, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx ; 2 uses
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 200
  store i16 2, ptr %i.dc, align 8, !tbaa !20
  %.add.3 = add nuw nsw i64 %.idx, 256            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread280.loopexit.unr-lcssa, label %.preheader316

.thread280.loopexit.unr-lcssa:                    ; preds = %.preheader316
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread280, label %.preheader316.epil.preheader

.preheader316.epil.preheader:                     ; preds = %.thread280.loopexit.unr-lcssa, %.preheader316.preheader
  %.idx.epil.init = phi i64 [ 8, %.preheader316.preheader ], [ %.add.3, %.thread280.loopexit.unr-lcssa ]
  %lcmp.mod673 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod673)
  br label %.preheader316.epil

.preheader316.epil:                               ; preds = %.preheader316.epil, %.preheader316.epil.preheader
  %.idx.epil = phi i64 [ %.add.epil, %.preheader316.epil ], [ %.idx.epil.init, %.preheader316.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader316.epil ], [ 0, %.preheader316.epil.preheader ]
  %.ptr.ptr.epil = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.epil, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 8
  store i16 2, ptr %i.dd, align 8, !tbaa !20
  %.add.epil = add nuw nsw i64 %.idx.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread280, label %.preheader316.epil, !llvm.loop !276

.thread280:                                       ; preds = %.thread280.loopexit.unr-lcssa, %.preheader316.epil, %bb.ar
  store ptr %.ptr154, ptr %8, align 8, !tbaa !277
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

bb.as:                                            ; preds = %bb.aq
  store ptr null, ptr %8, align 8, !tbaa !277
  %i.de = load i32, ptr %4, align 4
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 7, ptr %4, align 4, !tbaa !10
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.at, %bb.as, %.thread280
  %i.dg = phi ptr [ %.ptr154, %.thread280 ], [ null, %bb.as ], [ null, %bb.at ] ; 2 uses
  %i.dh = load ptr, ptr %2, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.dg, i32 noundef %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.au unwind label %bb.bc     ; 0 uses

bb.au:                                            ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  store ptr null, ptr %8, align 8, !tbaa !277
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.dm = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #18 ; 4 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.do = invoke noundef ptr @uhash_put_78(ptr noundef %i.dl, ptr noundef %i.dm, ptr noundef %i.dg, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit unwind label %bb.bc ; 0 uses

bb.ax:                                            ; preds = %bb.av
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.dm) #18
  br label %.body

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.aw
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.dr = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #18 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %i.dt = invoke noundef i32 @uhash_puti_78(ptr noundef %i.dq, ptr noundef %i.dr, i32 noundef %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit unwind label %bb.bc ; 0 uses

bb.ba:                                            ; preds = %bb.ay
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.dr) #18
  br label %.body

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.az
  %i.dv = load i32, ptr %4, align 4, !tbaa !10
  %i.dw = icmp slt i32 %i.dv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %i.dw, label %select.unfold, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.bb:                                            ; preds = %bb.ap
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az, %bb.aw, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bc, %bb.ba, %bb.ax
  %eh.lpad-body = phi { ptr, i32 } [ %i.dp, %bb.ax ], [ %i.dy, %bb.bc ], [ %i.du, %bb.ba ]
  call void @_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bd

bb.bd:                                            ; preds = %.body, %bb.bb
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dx, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223

bb.be:                                            ; preds = %bb.an
  %i.dz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(5) @_ZN6icu_78L8gErasTagE) #19
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(9) @_ZN6icu_78L12gDayNamesTagE) #19
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ed = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(11) @_ZN6icu_78L14gMonthNamesTagE) #19
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ef = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(9) @_ZN6icu_78L12gQuartersTagE) #19
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(10) @_ZN6icu_78L13gDayPeriodTagE) #19
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ej = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(14) @_ZN6icu_78L17gMonthPatternsTagE) #19
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.el = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(15) @_ZN6icu_78L18gCyclicNameSetsTagE) #19
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bl, label %select.unfold

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  invoke fastcc void @_ZN6icu_7812_GLOBAL__N_116CalendarDataSink15processResourceERNS_13UnicodeStringEPKcRNS_13ResourceValueER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %select.unfold unwind label %bb.j

select.unfold:                                    ; preds = %bb.k, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit, %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit224, %bb.bl, %bb.bk, %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit, %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit215, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit221, %bb.ak
  %.sroa.0272.2 = phi ptr [ %.sroa.0272.0, %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit ], [ %.sroa.0272.0, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit ], [ %.sroa.0272.0, %bb.ak ], [ %.sroa.0272.0, %bb.k ], [ %.sroa.0272.0, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit221 ], [ %.sroa.0272.0, %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit215 ], [ %.sroa.0272.0, %bb.bk ], [ %.sroa.0272.0, %bb.bl ], [ %.sroa.0272.0, %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit224 ], [ %.sroa.0272.1, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.en = add nuw nsw i32 %.0123, 1
  br label %bb.c, !llvm.loop !279

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223: ; preds = %bb.aa, %bb.ab, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit222, %bb.af, %bb.t, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit214, %bb.q, %bb.bd, %bb.j
  %.sroa.0272.3 = phi ptr [ %.sroa.0272.0, %bb.bd ], [ %.sroa.0272.0, %bb.j ], [ %.sroa.0272.1, %bb.t ], [ null, %bb.q ], [ %.sroa.0272.1, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit214 ], [ %.sroa.0272.0, %bb.af ], [ %.sroa.0272.0, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit222 ], [ %.sroa.0272.0, %bb.ab ], [ %.sroa.0272.0, %bb.aa ]
  %.pn171.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bd ], [ %i.z, %bb.j ], [ %i.ar, %bb.t ], [ %i.ak, %bb.q ], [ %i.as, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit214 ], [ %i.bn, %bb.af ], [ %i.bo, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit222 ], [ %i.bg, %bb.ab ], [ %i.bf, %bb.aa ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223, %bb.i
  %.sroa.0272.4 = phi ptr [ %.sroa.0272.3, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223 ], [ %.sroa.0272.0, %bb.i ]
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit223 ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body259

_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread: ; preds = %bb.h, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit221, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %bb.z, %bb.p, %.thread
  %.sroa.0272.2.ph = phi ptr [ null, %.thread ], [ null, %bb.p ], [ %.sroa.0272.0, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit ], [ %.sroa.0272.1, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit ], [ null, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit ], [ %.sroa.0272.0, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit221 ], [ %.sroa.0272.0, %bb.h ], [ %.sroa.0272.0, %bb.z ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread305

.critedge208:                                     ; preds = %.critedge208.preheader, %.thread299.thread455
  %i.eo = phi i32 [ %i.hl, %.thread299.thread455 ], [ %i.r, %.critedge208.preheader ]
  %.not201377 = icmp sgt i32 %i.eo, 0
  br i1 %.not201377, label %.lr.ph.outer, label %.critedge

.lr.ph.outer:                                     ; preds = %.critedge208, %bb.cl
  %.0127379.ph = phi i32 [ %i.hi, %bb.cl ], [ 0, %.critedge208 ] ; 6 uses
  %.0130378.ph = phi i8 [ %.0130378, %bb.cl ], [ 0, %.critedge208 ]
  %10 = or disjoint i32 %.0127379.ph, 1           ; 3 uses
  %11 = or disjoint i32 %.0127379.ph, 1           ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %.thread450
  %.0130378 = phi i8 [ 1, %.thread450 ], [ %.0130378.ph, %.lr.ph.outer ] ; 2 uses
  %i.ep = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %.0127379.ph)
          to label %_ZNK6icu_787UVectorixEi.exit unwind label %.loopexit458 ; 3 uses

_ZNK6icu_787UVectorixEi.exit:                     ; preds = %.lr.ph
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.er = invoke noundef ptr @uhash_get_78(ptr noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(64) %i.ep)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit229 unwind label %.loopexit.split-lp459 ; 2 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit229: ; preds = %_ZNK6icu_787UVectorixEi.exit
  %.not177 = icmp eq ptr %i.er, null
  br i1 %.not177, label %bb.cc, label %bb.bn

bb.bn:                                            ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit229
  %i.es = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %10)
          to label %_ZNK6icu_787UVectorixEi.exit230 unwind label %bb.bs ; 3 uses

_ZNK6icu_787UVectorixEi.exit230:                  ; preds = %bb.bn
  %i.et = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.eu = invoke noundef ptr @uhash_get_78(ptr noundef %i.et, ptr noundef nonnull align 8 dereferenceable(64) %i.es)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit231 unwind label %bb.bs

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit231: ; preds = %_ZNK6icu_787UVectorixEi.exit230
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.bo, label %.thread302

bb.bo:                                            ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit231
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.ex = invoke noundef i32 @uhash_geti_78(ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(64) %i.ep)
          to label %_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit unwind label %bb.bt ; 6 uses

_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit: ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = icmp slt i32 %i.ex, 0
  %i.fa = shl nsw i64 %i.ey, 6                    ; 2 uses
  %i.fb = or disjoint i64 %i.fa, 8
  %i.fc = select i1 %i.ez, i64 -1, i64 %i.fb
  %i.fd = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.fc) #18 ; 11 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit
  store i64 %i.ey, ptr %i.fd, align 8
  %.ptr183.ptr = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.ff = icmp eq i32 %i.ex, 0
  br i1 %i.ff, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.thread446, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bp
  %i.fg = add nsw i64 %i.fa, -64                  ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 6
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %xtraiter674 = and i64 %i.fi, 3                 ; 3 uses
  %i.fj = icmp ult i64 %i.fg, 192
  br i1 %i.fj, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter678 = and i64 %i.fi, 576460752303423484
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.idx180 = phi i64 [ 8, %.preheader.preheader.new ], [ %.add181.3, %.preheader ] ; 5 uses
  %niter679 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter679.next.3, %.preheader ]
  %.ptr.ptr188 = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx180 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr188, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %.ptr.ptr188, i64 8
  store i16 2, ptr %i.fk, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx180 ; 2 uses
  %.ptr.ptr188.1 = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr188.1, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  store i16 2, ptr %i.fm, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx180 ; 2 uses
  %.ptr.ptr188.2 = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr188.2, align 8, !tbaa !8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 136
  store i16 2, ptr %i.fo, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx180 ; 2 uses
  %.ptr.ptr188.3 = getelementptr inbounds nuw i8, ptr %i.fp, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr188.3, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 200
  store i16 2, ptr %i.fq, align 8, !tbaa !20
  %.add181.3 = add nuw nsw i64 %.idx180, 256      ; 2 uses
  %niter679.next.3 = add i64 %niter679, 4         ; 2 uses
  %niter679.ncmp.3 = icmp eq i64 %niter679.next.3, %unroll_iter678
  br i1 %niter679.ncmp.3, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.unr-lcssa, label %.preheader

bb.bq:                                            ; preds = %_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit
  %i.fr = load i32, ptr %4, align 4
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.thread288, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 7, ptr %4, align 4, !tbaa !10
  br label %.thread288

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.unr-lcssa: ; preds = %.preheader
  %lcmp.mod676.not = icmp eq i64 %xtraiter674, 0
  br i1 %lcmp.mod676.not, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.unr-lcssa, %.preheader.preheader
  %.idx180.epil.init = phi i64 [ 8, %.preheader.preheader ], [ %.add181.3, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.unr-lcssa ]
  %lcmp.mod677 = icmp ne i64 %xtraiter674, 0
  call void @llvm.assume(i1 %lcmp.mod677)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.idx180.epil = phi i64 [ %.add181.epil, %.preheader.epil ], [ %.idx180.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter675 = phi i64 [ %epil.iter675.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %.ptr.ptr188.epil = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx180.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr188.epil, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %.ptr.ptr188.epil, i64 8
  store i16 2, ptr %i.ft, align 8, !tbaa !20
  %.add181.epil = add nuw nsw i64 %.idx180.epil, 64
  %epil.iter675.next = add i64 %epil.iter675, 1   ; 2 uses
  %epil.iter675.cmp.not = icmp eq i64 %epil.iter675.next, %xtraiter674
  br i1 %epil.iter675.cmp.not, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233, label %.preheader.epil, !llvm.loop !280

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233: ; preds = %.preheader.epil, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.unr-lcssa
  store ptr %.ptr183.ptr, ptr %9, align 8, !tbaa !277
  %.pre415 = load i32, ptr %4, align 4, !tbaa !10
  %i.fu = icmp slt i32 %.pre415, 1
  br i1 %i.fu, label %bb.bu, label %bb.cb

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.thread446: ; preds = %bb.bp
  %.pre415447 = load i32, ptr %4, align 4, !tbaa !10
  %i.fv = icmp slt i32 %.pre415447, 1
  br i1 %i.fv, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit, label %bb.cb

.loopexit458:                                     ; preds = %.lr.ph
  %lpad.loopexit460 = landingpad { ptr, i32 }
          cleanup
  br label %.body259

.loopexit.split-lp459:                            ; preds = %bb.cc, %_ZNK6icu_787UVectorixEi.exit, %bb.ck, %bb.cj
  %lpad.loopexit.split-lp461 = landingpad { ptr, i32 }
          cleanup
  br label %.body259

bb.bs:                                            ; preds = %_ZNK6icu_787UVectorixEi.exit230, %bb.bn
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body259

bb.bt:                                            ; preds = %bb.bo
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body259

bb.bu:                                            ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233
  %i.fy = icmp sgt i32 %i.ex, 0
  br i1 %i.fy, label %.lr.ph.i, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit

.lr.ph.i:                                         ; preds = %bb.bu, %.noexc
  %.06.i = phi i32 [ %i.gc, %.noexc ], [ %i.ex, %bb.bu ] ; 2 uses
  %.025.i = phi ptr [ %i.ga, %.noexc ], [ %.ptr183.ptr, %bb.bu ] ; 2 uses
  %.034.i = phi ptr [ %i.gb, %.noexc ], [ %i.er, %bb.bu ] ; 2 uses
  %i.fz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %.025.i, ptr noundef nonnull align 8 dereferenceable(64) %.034.i)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.025.i, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %.034.i, i64 64
  %i.gc = add nsw i32 %.06.i, -1
  %i.gd = icmp samesign ugt i32 %.06.i, 1
  br i1 %i.gd, label %.lr.ph.i, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit, !llvm.loop !225

_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit: ; preds = %.noexc, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.thread446, %bb.bu
  store ptr null, ptr %9, align 8, !tbaa !277
  %i.ge = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.gf = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #18 ; 4 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gf, ptr noundef nonnull align 8 dereferenceable(64) %i.es)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv, %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit
  %i.gh = invoke noundef ptr @uhash_put_78(ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef nonnull %.ptr183.ptr, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit237 unwind label %.loopexit.split-lp ; 0 uses

bb.bx:                                            ; preds = %bb.bv
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.gf) #18
  br label %.body235

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit237: ; preds = %bb.bw
  %i.gj = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.gk = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #18 ; 4 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit237
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.gk, ptr noundef nonnull align 8 dereferenceable(64) %i.es)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit237
  %i.gm = invoke noundef i32 @uhash_puti_78(ptr noundef %i.gj, ptr noundef %i.gk, i32 noundef %i.ex, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit241._crit_edge unwind label %.loopexit.split-lp ; 0 uses

bb.ca:                                            ; preds = %bb.by
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.gk) #18
  br label %.body235

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body235

.loopexit.split-lp:                               ; preds = %bb.bw, %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body235

.body235:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ca, %bb.bx
  %eh.lpad-body236 = phi { ptr, i32 } [ %i.gi, %bb.bx ], [ %i.gn, %bb.ca ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body259

bb.cb:                                            ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit233.thread446
  %i.go = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %.loopexit.i250, label %.preheader.preheader.i247

.preheader.preheader.i247:                        ; preds = %bb.cb
  %.idx.i248 = shl nsw i64 %i.go, 6
  %.ptr183.add = or disjoint i64 %.idx.i248, 8
  br label %.preheader.i249

.preheader.i249:                                  ; preds = %.preheader.i249, %.preheader.preheader.i247
  %.idx529 = phi i64 [ %.add530, %.preheader.i249 ], [ %.ptr183.add, %.preheader.preheader.i247 ]
  %.add530 = add nsw i64 %.idx529, -64            ; 3 uses
  %.ptr531 = getelementptr inbounds i8, ptr %i.fd, i64 %.add530
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr531) #18
  %i.gq = icmp eq i64 %.add530, 8
  br i1 %i.gq, label %.loopexit.i250, label %.preheader.i249

.loopexit.i250:                                   ; preds = %.preheader.i249, %bb.cb
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.fd) #18
  br label %.thread288

.thread288:                                       ; preds = %bb.br, %bb.bq, %.loopexit.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.thread305

_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit241._crit_edge: ; preds = %bb.bz
  %.pre416 = load i32, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.gr = icmp slt i32 %.pre416, 1
  br i1 %i.gr, label %bb.cj, label %.thread305

.thread302:                                       ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit231
  %i.gs = load i32, ptr %4, align 4, !tbaa !10
  %i.gt = icmp slt i32 %i.gs, 1
  br i1 %i.gt, label %bb.cj, label %.thread305

bb.cc:                                            ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit229
  %i.gu = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.gv = invoke noundef ptr @uhash_get_78(ptr noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(64) %i.ep)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit253 unwind label %.loopexit.split-lp459 ; 2 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit253: ; preds = %bb.cc
  %.not178 = icmp eq ptr %i.gv, null
  br i1 %.not178, label %bb.cl, label %bb.cd

bb.cd:                                            ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit253
  %i.gw = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %11)
          to label %_ZNK6icu_787UVectorixEi.exit255 unwind label %bb.ci ; 2 uses

_ZNK6icu_787UVectorixEi.exit255:                  ; preds = %bb.cd
  %i.gx = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.gy = invoke noundef ptr @uhash_get_78(ptr noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(64) %i.gw)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit257 unwind label %bb.ci

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit257: ; preds = %_ZNK6icu_787UVectorixEi.exit255
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.ce, label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit261

bb.ce:                                            ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit257
  %i.ha = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.hb = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #18 ; 4 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hb, ptr noundef nonnull align 8 dereferenceable(64) %i.gw)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.hd = invoke noundef ptr @uhash_put_78(ptr noundef %i.ha, ptr noundef %i.hb, ptr noundef nonnull %i.gv, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit261 unwind label %bb.ci ; 0 uses

bb.ch:                                            ; preds = %bb.cf
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.hb) #18
  br label %.body259

bb.ci:                                            ; preds = %bb.cg, %_ZNK6icu_787UVectorixEi.exit255, %bb.cd
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body259

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit261: ; preds = %bb.cg, %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit257
  %i.hg = load i32, ptr %4, align 4, !tbaa !10
  %i.hh = icmp slt i32 %i.hg, 1
  br i1 %i.hh, label %bb.cj, label %.thread305

bb.cj:                                            ; preds = %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit241._crit_edge, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit261, %.thread302
  %.pre-phi = phi i32 [ %10, %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit241._crit_edge ], [ %11, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit261 ], [ %10, %.thread302 ]
  invoke void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %.pre-phi)
          to label %bb.ck unwind label %.loopexit.split-lp459

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %.0127379.ph)
          to label %.thread450 unwind label %.loopexit.split-lp459

bb.cl:                                            ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit253
  %i.hi = add nuw nsw i32 %.0127379.ph, 2         ; 2 uses
  %i.hj = load i32, ptr %i.q, align 8, !tbaa !268 ; 2 uses
  %.not201 = icmp slt i32 %i.hi, %i.hj
  br i1 %.not201, label %.lr.ph.outer, label %.thread299, !llvm.loop !281

.thread450:                                       ; preds = %bb.ck
  %i.hk = load i32, ptr %i.q, align 8, !tbaa !268 ; 2 uses
  %.not201453 = icmp slt i32 %.0127379.ph, %i.hk
  br i1 %.not201453, label %.lr.ph, label %.thread299.thread455, !llvm.loop !281

.thread299:                                       ; preds = %bb.cl
  %12 = icmp eq i8 %.0130378, 0
  br i1 %12, label %.critedge, label %.thread299.thread455

.thread299.thread455:                             ; preds = %.thread450, %.thread299
  %i.hl = phi i32 [ %i.hj, %.thread299 ], [ %i.hk, %.thread450 ] ; 2 uses
  %.not314 = icmp eq i32 %i.hl, 0
  br i1 %.not314, label %.critedge, label %.critedge208, !llvm.loop !282

.critedge:                                        ; preds = %.critedge208, %.thread299.thread455, %.thread299, %.critedge208.preheader
  %.not315 = icmp eq ptr %.sroa.0272.0, null
  br i1 %.not315, label %.thread305.thread, label %bb.cm

.thread305.thread:                                ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.cm:                                            ; preds = %.critedge
  %i.hm = load ptr, ptr %i.i, align 8, !tbaa !112 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZN6icu_7812LocalPointerINS_7UVectorEEaSEOS2_.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(40) %i.hm) #18, !inline_history !284
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEEaSEOS2_.exit

_ZN6icu_7812LocalPointerINS_7UVectorEEaSEOS2_.exit: ; preds = %bb.cm, %bb.cn
  store ptr %.sroa.0272.0, ptr %i.i, align 8, !tbaa !112
  br label %.thread307

.thread307:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEaSEOS2_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.thread305:                                       ; preds = %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit241._crit_edge, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit261, %.thread302, %.thread288, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread
  %.sroa.0272.6 = phi ptr [ %.sroa.0272.0, %.thread288 ], [ %.sroa.0272.2.ph, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread ], [ %.sroa.0272.0, %.thread302 ], [ %.sroa.0272.0, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit261 ], [ %.sroa.0272.0, %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit241._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.hr = icmp eq ptr %.sroa.0272.6, null
  br i1 %i.hr, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %.thread305
  %i.hs = load ptr, ptr %.sroa.0272.6, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0272.6) #18, !inline_history !264
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %.thread305.thread, %bb.co, %.thread305, %.thread307, %bb.a
  ret void

.body259:                                         ; preds = %bb.ci, %bb.ch, %.loopexit458, %bb.bs, %.body235, %bb.bt, %.loopexit.split-lp459, %bb.e, %bb.bm
  %.sroa.0272.7 = phi ptr [ %.sroa.0272.0, %.loopexit.split-lp459 ], [ %.sroa.0272.0, %bb.ci ], [ %.sroa.0272.0, %.body235 ], [ %.sroa.0272.0, %bb.bt ], [ %.sroa.0272.0, %bb.bs ], [ %.sroa.0272.0, %.loopexit458 ], [ %.sroa.0272.4, %bb.bm ], [ %.sroa.0272.0, %bb.e ], [ %.sroa.0272.0, %bb.ch ] ; 3 uses
  %.pn197.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp461, %.loopexit.split-lp459 ], [ %i.hf, %bb.ci ], [ %eh.lpad-body236, %.body235 ], [ %i.fx, %bb.bt ], [ %i.fw, %bb.bs ], [ %lpad.loopexit460, %.loopexit458 ], [ %.pn171.pn.pn, %bb.bm ], [ %i.t, %bb.e ], [ %i.he, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.hv = icmp eq ptr %.sroa.0272.7, null
  br i1 %i.hv, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit262, label %bb.cp

bb.cp:                                            ; preds = %.body259
  %i.hw = load ptr, ptr %.sroa.0272.7, align 8, !tbaa !8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0272.7) #18, !inline_history !264
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit262

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit262: ; preds = %.body259, %bb.cp
  resume { ptr, i32 } %.pn197.pn.pn
}

declare i32 @uhash_hashCaselessUnicodeString_78(ptr) #4

declare i32 @uhash_hashUnicodeString_78(ptr) #4

declare signext i8 @uhash_compareCaselessUnicodeString_78(ptr, ptr) #4

declare ptr @uhash_init_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @uhash_setKeyDeleter_78(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @uhash_close_78(ptr noundef) local_unnamed_addr #4

declare noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZN6icu_7812_GLOBAL__N_116CalendarDataSink21processAliasFromValueERNS_13UnicodeStringERNS_13ResourceValueER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.i = load ptr, ptr %2, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.m = load i32, ptr %3, align 4, !tbaa !10
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = load i32, ptr %i.a, align 4, !tbaa !21
  call void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.l, i32 noundef %i.o)
  %i.p = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef 17, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_125kCalendarAliasPrefixUCharE, i32 noundef 0, i32 noundef 17)
          to label %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit unwind label %bb.m

_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit: ; preds = %bb.d
  %.not30 = icmp eq i8 %i.p, 0
  br i1 %.not30, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  %i.t = ashr i16 %i.r, 5
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = select i1 %i.s, i32 %i.w, i32 %i.u
  %i.y = icmp sgt i32 %i.x, 17
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_125kCalendarAliasPrefixUCharE) #18, !srcloc !128
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !20 ; 2 uses
  %i.z = icmp slt i16 %.pre.i, 0
  %i.aa = ashr i16 %.pre.i, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.v, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab    ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.ad, i32 17) ; 2 uses
  %i.ae = sub nsw i32 %i.ad, %spec.select.i
  %i.af = invoke noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %4, i16 noundef zeroext 47, i32 noundef %spec.select.i, i32 noundef %i.ae)
          to label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit unwind label %bb.n ; 3 uses

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %bb.f
  %i.ag = icmp sgt i32 %i.af, 17
  br i1 %i.ag, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ah = add nsw i32 %i.af, -17
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 17, i32 noundef %i.ah)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.aj = load i16, ptr %i.q, align 8, !tbaa !20  ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.v, align 4
  %i.ao = select i1 %i.ak, i32 %i.an, i32 %i.am
  %i.ap = add nuw nsw i32 %i.af, 1
  %i.aq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.ap, i32 noundef %i.ao)
          to label %bb.i unwind label %bb.p       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.as = invoke noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  br i1 %i.as, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.at = invoke noundef zeroext i1 @_ZNK6icu_7813UnicodeStringneERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %i.at, label %.thread41, label %bb.q

bb.m:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_125kCalendarAliasPrefixUCharE) #18, !srcloc !128
  br label %bb.af

bb.n:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.o:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %bb.z, %bb.y, %bb.s, %bb.q, %bb.k, %bb.i, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.q:                                             ; preds = %bb.l, %bb.j
  %i.ay = invoke noundef zeroext i1 @_ZNK6icu_7813UnicodeStringneERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  br i1 %i.ay, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.az = invoke noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
  br i1 %i.az, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  store ptr @_ZN6icu_7812_GLOBAL__N_118kGregorianTagUCharE, ptr %6, align 8, !tbaa !125
  %i.ba = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 %6, i32 noundef 9)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = icmp eq i8 %i.ba, 0
  %i.bc = load ptr, ptr %6, align 8, !tbaa !125
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bc) #18, !srcloc !128
  br i1 %i.bb, label %.thread41, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %6, align 8, !tbaa !125
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.be) #18, !srcloc !128
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !20
  %i.bi = and i16 %i.bh, 1
  %.not31 = icmp eq i16 %i.bi, 0
  br i1 %.not31, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %.thread41 unwind label %bb.p  ; 0 uses

bb.z:                                             ; preds = %bb.x
  %i.bk = invoke noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.aa unwind label %bb.p

end_hunk_1
