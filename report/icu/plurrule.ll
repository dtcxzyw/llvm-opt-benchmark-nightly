Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/plurrule?download=true
inline.NumInlined: 584
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_7811PluralRules6selectEPKNS_6number4impl25UFormattedNumberRangeDataER10UErrorCode:bb.a
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i32 16, ptr %3, align 4, !tbaa !50
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !22, !alias.scope !173
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.m, align 8, !tbaa !59, !alias.scope !173
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN6icu_7811ICU_Utility15makeBogusStringEv.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #25
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 304
  call void @_ZNK6icu_7811PluralRules6selectERKNS_13IFixedDecimalE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.p = invoke noundef i32 @_ZN6icu_7814StandardPlural15indexFromStringERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit unwind label %bb.m

_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit: ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 376
  call void @_ZNK6icu_7811PluralRules6selectERKNS_13IFixedDecimalE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.r = invoke noundef i32 @_ZN6icu_7814StandardPlural15indexFromStringERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit19 unwind label %bb.n

_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit19: ; preds = %_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.s = load i32, ptr %3, align 4, !tbaa !50
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit19
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !22, !alias.scope !174
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.u, align 8, !tbaa !59, !alias.scope !174
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN6icu_7811ICU_Utility15makeBogusStringEv.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #25
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

bb.n:                                             ; preds = %_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

bb.o:                                             ; preds = %_ZN6icu_7814StandardPlural10fromStringERKNS_13UnicodeStringER10UErrorCode.exit19
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.z = call noundef i32 @_ZNK6icu_7820StandardPluralRanges7resolveENS_14StandardPlural4FormES2_(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i32 noundef %i.p, i32 noundef %i.r)
  %i.aa = call noundef ptr @_ZN6icu_7814StandardPlural10getKeywordENS0_4FormE(i32 noundef %i.z)
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aa, i32 noundef -1, i32 noundef 0)
  br label %_ZN6icu_7811ICU_Utility15makeBogusStringEv.exit

_ZN6icu_7811ICU_Utility15makeBogusStringEv.exit:  ; preds = %bb.k, %bb.h, %bb.e, %bb.b, %bb.o
  ret void
}

declare noundef ptr @_ZNK6icu_786number20FormattedNumberRange7getDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7820StandardPluralRanges7resolveENS_14StandardPlural4FormES2_(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6icu_7814StandardPlural10getKeywordENS0_4FormE(i32 noundef) local_unnamed_addr #7

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7811PluralRules11getKeywordsER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !50
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !50
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 160) #25 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  invoke void @_ZN6icu_7824PluralKeywordEnumerationC1EPNS_9RuleChainER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %1, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %1, align 4, !tbaa !50
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.e
  %.pre = load i32, ptr %1, align 4, !tbaa !50
  %i.l = icmp slt i32 %.pre, 1
  br i1 %i.l, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #25
  resume { ptr, i32 } %i.m

bb.i:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #25, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.f, %bb.g, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit, %bb.i, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.i ], [ %i.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZN6icu_7811PluralRules21getUniqueKeywordValueERKNS_13UnicodeStringE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  ret double f0xBF543A270C991E7F
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN6icu_7811PluralRules19getAllKeywordValuesERKNS_13UnicodeStringEPdiR10UErrorCode(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #1 align 2 {
bb.a:
  store i32 16, ptr %4, align 4, !tbaa !50
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7811PluralRules10getSamplesERKNS_13UnicodeStringEPdiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !50
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %4, align 4, !tbaa !50
  br label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.d:                                             ; preds = %bb.b
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp slt i32 %3, 0
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not24 = icmp eq i32 %3, 0
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %4, align 4, !tbaa !50
  br label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.08.i = load ptr, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %.lr.ph.i
  %.010.i = phi ptr [ %.08.i, %.lr.ph.i ], [ %.0.i, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.m = load i16, ptr %i.l, align 8, !tbaa !59   ; 3 uses
  %i.n = and i16 %i.m, 1
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.o = load i16, ptr %5, align 8, !tbaa !59
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.q = icmp slt i16 %i.m, 0
  %i.r = ashr i16 %i.m, 5
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = select i1 %i.q, i32 %i.u, i32 %i.s       ; 2 uses
  %i.w = load i16, ptr %5, align 8, !tbaa !59     ; 4 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32
  %i.aa = load i32, ptr %i.h, align 4
  %i.ab = select i1 %i.x, i32 %i.aa, i32 %i.z
  %i.ac = and i16 %i.w, 1
  %.not9.i.i = icmp eq i16 %i.ac, 0
  %i.ad = icmp eq i32 %i.v, %i.ab
  %or.cond.i.i = and i1 %.not9.i.i, %i.ad
  br i1 %or.cond.i.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i:        ; preds = %bb.j
  %i.ae = and i16 %i.w, 2
  %.not.i.i.i.i = icmp eq i16 %i.ae, 0
  %i.af = load ptr, ptr %i.j, align 8
  %i.ag = select i1 %.not.i.i.i.i, ptr %i.af, ptr %i.i
  %i.ah = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef %i.ag, i32 noundef %i.v)
  %.not7.i = icmp eq i8 %i.ah, 0
  br i1 %.not7.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %bb.j, %.split.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i, i64 72
  %.0.i = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread, label %bb.i, !llvm.loop !8

_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %.split.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 152
  %i.ak = tail call fastcc noundef i32 @_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef %2, ptr noundef null, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.k:                                             ; preds = %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i, i64 88
  %i.an = tail call fastcc noundef i32 @_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef %2, ptr noundef null, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %bb.h, %bb.k, %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, %bb.a, %bb.g, %bb.c
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.g ], [ %i.ak, %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit ], [ %i.an, %bb.k ], [ 0, %bb.h ], [ 0, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.08 = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not9 = icmp eq ptr %.08, null
  br i1 %.not9, label %.split._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread
  %.010 = phi ptr [ %.08, %.lr.ph ], [ %.0, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.g = load i16, ptr %i.f, align 8, !tbaa !59   ; 3 uses
  %i.h = and i16 %i.g, 1
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.i = load i16, ptr %2, align 8, !tbaa !59
  %i.j = trunc i16 %i.i to i1
  br i1 %i.j, label %.split._crit_edge, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i16 %i.g, 0
  %i.l = ashr i16 %i.g, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.010, i64 20
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m       ; 2 uses
  %i.q = load i16, ptr %2, align 8, !tbaa !59     ; 4 uses
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %i.b, align 4
  %i.v = select i1 %i.r, i32 %i.u, i32 %i.t
  %i.w = and i16 %i.q, 1
  %.not9.i = icmp eq i16 %i.w, 0
  %i.x = icmp eq i32 %i.p, %i.v
  %or.cond.i = and i1 %.not9.i, %i.x
  br i1 %or.cond.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.c
  %i.y = and i16 %i.q, 2
  %.not.i.i.i = icmp eq i16 %i.y, 0
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = select i1 %.not.i.i.i, ptr %i.z, ptr %i.c
  %i.ab = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef %i.aa, i32 noundef %i.p)
  %.not7 = icmp eq i8 %i.ab, 0
  br i1 %.not7, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %.split._crit_edge

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.c, %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.010, i64 72
  %.0 = load ptr, ptr %i.ac, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.split._crit_edge, label %bb.b, !llvm.loop !8

.split._crit_edge:                                ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, %.split, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.010, %.split ], [ %.010, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ null, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 9 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %8 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 10 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %10 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 8 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %12 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 9 uses
  %13 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 11 uses
  %14 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 15 uses
  %15 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 24 uses
  %i.a = icmp eq ptr %1, null                     ; 3 uses
  %i.b = icmp eq ptr %2, null
  %or.cond199 = xor i1 %i.a, %i.b
  br i1 %or.cond199, label %.preheader132, label %bb.b

.preheader132:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.h = sext i32 %3 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %4, align 4, !tbaa !50
  br label %.critedge

bb.c:                                             ; preds = %.preheader132, %bb.ce
  %.095 = phi i32 [ %.8103, %bb.ce ], [ 0, %.preheader132 ] ; 14 uses
  %.093 = phi i32 [ %.194, %bb.ce ], [ 0, %.preheader132 ] ; 5 uses
  %i.i = icmp slt i32 %.095, %3
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = load i32, ptr %i.d, align 4
  %i.o = select i1 %i.k, i32 %i.n, i32 %i.m       ; 2 uses
  %i.p = icmp slt i32 %.093, %i.o
  br i1 %i.p, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit, label %.critedge

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %bb.d
  %.0.i = call i32 @llvm.smax.i32(i32 %.093, i32 0) ; 2 uses
  %i.q = sub nsw i32 %i.o, %.0.i
  %i.r = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 44, i32 noundef %.0.i, i32 noundef %i.q) ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %i.t = load i16, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %i.d, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit
  %.092 = phi i32 [ %i.y, %bb.e ], [ %i.r, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.z = sub nsw i32 %.092, %.093
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.093, i32 noundef %i.z)
  %i.aa = load i16, ptr %i.e, align 8, !tbaa !59  ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i32, ptr %i.f, align 4
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad
  %i.ag = invoke noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i16 noundef zeroext 126, i32 noundef 0, i32 noundef %i.af)
          to label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit unwind label %bb.o ; 4 uses

_ZNK6icu_7813UnicodeString7indexOfEDs.exit:       ; preds = %bb.f
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6icu_786number4impl15DecimalQuantity18fromExponentStringENS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::impl::DecimalQuantity") align 8 %6, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  br i1 %i.a, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66) %6)
          to label %bb.k unwind label %bb.s       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.aj = call double @llvm.trunc.f64(double %i.ai)
  %i.ak = fcmp oeq double %i.aj, %i.ai
  br i1 %i.ak, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.al = invoke noundef i32 @_ZNK6icu_786number4impl15DecimalQuantity13fractionCountEv(ptr noundef nonnull align 8 dereferenceable(66) %6)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.an = add nsw i32 %.095, 1
  %i.ao = sext i32 %.095 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao
  store double %i.ai, ptr %i.ap, align 8, !tbaa !176
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.p:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  br label %bb.u

bb.r:                                             ; preds = %bb.i
  %i.at = add nsw i32 %.095, 1
  %i.au = sext i32 %.095 to i64
  %i.av = getelementptr inbounds [72 x i8], ptr %2, i64 %i.au
  %i.aw = invoke noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantityaSERKS2_(ptr noundef nonnull align 8 dereferenceable(66) %i.av, ptr noundef nonnull align 8 dereferenceable(66) %6)
          to label %bb.t unwind label %bb.s       ; 0 uses

end_hunk_0
begin_hunk_1_@_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode:bb.a
          to label %bb.bp unwind label %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %15, i32 noundef %i.bl, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.bq unwind label %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.ct = invoke noundef zeroext i1 @_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi(ptr noundef nonnull align 8 dereferenceable(66) %15, i32 noundef %i.bu)
          to label %bb.br unwind label %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN6icu_786number4impl15DecimalQuantity14adjustExponentEi(ptr noundef nonnull align 8 dereferenceable(66) %15, i32 noundef %i.bm)
          to label %bb.bs unwind label %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  %i.cu = invoke noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66) %15)
          to label %bb.bt unwind label %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.cv = invoke noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantityaSERKS2_(ptr noundef nonnull align 8 dereferenceable(66) %13, ptr noundef nonnull align 8 dereferenceable(66) %15)
          to label %bb.bu unwind label %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.cw = load i8, ptr %i.g, align 4, !tbaa !112
  %.not.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i, label %_ZN6icu_786number4impl6DecNumD2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.cx = load ptr, ptr %14, align 8, !tbaa !113
  invoke void @uprv_free_78(ptr noundef %i.cx)
          to label %_ZN6icu_786number4impl6DecNumD2Ev.exit unwind label %.split149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split149.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bv, %bb.bf
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %lpad.loopexit.split-lp244, 0
  call void @__clang_call_terminate(ptr %i.cy) #26
  unreachable

_ZN6icu_786number4impl6DecNumD2Ev.exit:           ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.cz = fcmp ugt double %i.cu, %i.br
  br i1 %i.cz, label %._crit_edge.loopexit.split.loop.exit197, label %.lr.ph.split, !llvm.loop !175

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bk, %bb.au
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split140.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl, %bb.av
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %.split140

.split143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %bb.aw
  %lpad.loopexit.split-lp238 = landingpad { ptr, i32 }
          cleanup
  br label %.split143

.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd
  %lpad.loopexit.split-lp241 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #25
  br label %.split143

.split143:                                        ; preds = %.split143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp241, %.split146.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp238, %.split143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.split140

.split140:                                        ; preds = %.split140.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split143
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.split143 ], [ %lpad.loopexit.split-lp235, %.split140.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %14) #25
  br label %.split

.split:                                           ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split140
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.split140 ], [ %lpad.loopexit.split-lp232, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.loopexit.split

._crit_edge.loopexit.split.loop.exit197:          ; preds = %_ZN6icu_786number4impl6DecNumD2Ev.exit
  %i.da = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6icu_786number4impl6DecNumD2Ev.exit.us, %bb.at, %bb.bj, %._crit_edge.loopexit.split.loop.exit197, %.preheader
  %.5100 = phi i32 [ %.095, %.preheader ], [ %smax, %bb.bj ], [ %i.da, %._crit_edge.loopexit.split.loop.exit197 ], [ %.499.us, %bb.at ], [ %.499.us, %_ZN6icu_786number4impl6DecNumD2Ev.exit.us ]
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.bw

bb.bw:                                            ; preds = %bb.x, %._crit_edge, %bb.af
  %.6101 = phi i32 [ %.5100, %._crit_edge ], [ %.095, %bb.af ], [ %.095, %bb.x ] ; 2 uses
  %cond = phi i1 [ true, %._crit_edge ], [ false, %bb.af ], [ false, %bb.x ]
  %.071 = phi i32 [ 0, %._crit_edge ], [ 2, %bb.af ], [ 2, %bb.x ]
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %cond, label %bb.cd, label %bb.ce

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.split ], [ %lpad.loopexit.split-lp247, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %13) #25
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split, %bb.bi
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.loopexit.split ], [ %i.cq, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bh
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.bh ], [ %.pn.pn.pn.pn.pn.pn, %bb.bx ]
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #25
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bg
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.by ], [ %i.co, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.ag
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bz ], [ %i.bj, %bb.ag ]
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %10) #25
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.ab, %bb.aa
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %i.bf, %bb.ab ], [ %i.be, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #25
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.z, %bb.y
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cb ], [ %i.bd, %bb.z ], [ %i.bc, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.cf

bb.cd:                                            ; preds = %bb.bw, %bb.t
  %.7102 = phi i32 [ %.297, %bb.t ], [ %.6101, %bb.bw ]
  %i.db = add nsw i32 %.092, 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bw, %bb.cd
  %.8103 = phi i32 [ %.7102, %bb.cd ], [ %.6101, %bb.bw ] ; 2 uses
  %.194 = phi i32 [ %i.db, %bb.cd ], [ %.093, %bb.bw ]
  %.1 = phi i32 [ 0, %bb.cd ], [ %.071, %bb.bw ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dc = icmp eq i32 %.1, 0
  br i1 %i.dc, label %bb.c, label %.critedge

bb.cf:                                            ; preds = %bb.cc, %bb.u, %bb.o
  %.pn127.pn.pn = phi { ptr, i32 } [ %.pn127.pn, %bb.u ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cc ], [ %i.aq, %bb.o ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn127.pn.pn

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.ce, %bb.b
  %.0105 = phi i32 [ 0, %bb.b ], [ %.095, %bb.c ], [ %.095, %bb.d ], [ %.8103, %bb.ce ]
  ret i32 %.0105
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7811PluralRules10getSamplesERKNS_13UnicodeStringEPNS_6number4impl15DecimalQuantityEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !50
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %4, align 4, !tbaa !50
  br label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.d:                                             ; preds = %bb.b
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp slt i32 %3, 0
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not24 = icmp eq i32 %3, 0
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %4, align 4, !tbaa !50
  br label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.08.i = load ptr, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %.lr.ph.i
  %.010.i = phi ptr [ %.08.i, %.lr.ph.i ], [ %.0.i, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.m = load i16, ptr %i.l, align 8, !tbaa !59   ; 3 uses
  %i.n = and i16 %i.m, 1
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.o = load i16, ptr %5, align 8, !tbaa !59
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.q = icmp slt i16 %i.m, 0
  %i.r = ashr i16 %i.m, 5
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = select i1 %i.q, i32 %i.u, i32 %i.s       ; 2 uses
  %i.w = load i16, ptr %5, align 8, !tbaa !59     ; 4 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32
  %i.aa = load i32, ptr %i.h, align 4
  %i.ab = select i1 %i.x, i32 %i.aa, i32 %i.z
  %i.ac = and i16 %i.w, 1
  %.not9.i.i = icmp eq i16 %i.ac, 0
  %i.ad = icmp eq i32 %i.v, %i.ab
  %or.cond.i.i = and i1 %.not9.i.i, %i.ad
  br i1 %or.cond.i.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i:        ; preds = %bb.j
  %i.ae = and i16 %i.w, 2
  %.not.i.i.i.i = icmp eq i16 %i.ae, 0
  %i.af = load ptr, ptr %i.j, align 8
  %i.ag = select i1 %.not.i.i.i.i, ptr %i.af, ptr %i.i
  %i.ah = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef %i.ag, i32 noundef %i.v)
  %.not7.i = icmp eq i8 %i.ah, 0
  br i1 %.not7.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %bb.j, %.split.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i, i64 72
  %.0.i = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread, label %bb.i, !llvm.loop !8

_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %.split.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 152
  %i.ak = tail call fastcc noundef i32 @_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

bb.k:                                             ; preds = %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i, i64 88
  %i.an = tail call fastcc noundef i32 @_ZN6icu_78L20getSamplesFromStringERKNS_13UnicodeStringEPdPNS_6number4impl15DecimalQuantityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %bb.h, %bb.k, %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, %bb.a, %bb.g, %bb.c
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.g ], [ %i.ak, %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit ], [ %i.an, %bb.k ], [ 0, %bb.h ], [ 0, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7811PluralRules9isKeywordERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.h, ptr noundef nonnull @_ZN6icu_78L20PLURAL_KEYWORD_OTHERE, i32 noundef 0, i32 noundef 5)
          to label %_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit unwind label %bb.b

_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit: ; preds = %bb.a
  %i.j = icmp eq i8 %i.i, 0
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L20PLURAL_KEYWORD_OTHERE) #25, !srcloc !87
  br i1 %i.j, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L20PLURAL_KEYWORD_OTHERE) #25, !srcloc !87
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.08.i = load ptr, ptr %i.l, align 8, !tbaa !108 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %.lr.ph.i
  %.010.i = phi ptr [ %.08.i, %.lr.ph.i ], [ %.0.i, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.q = load i16, ptr %i.p, align 8, !tbaa !59   ; 3 uses
  %i.r = and i16 %i.q, 1
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.s = load i16, ptr %i.a, align 8, !tbaa !59
  %i.t = trunc i16 %i.s to i1
  br i1 %i.t, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.u = icmp slt i16 %i.q, 0
  %i.v = ashr i16 %i.q, 5
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = select i1 %i.u, i32 %i.y, i32 %i.w       ; 2 uses
  %i.aa = load i16, ptr %i.a, align 8, !tbaa !59  ; 4 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i32, ptr %i.f, align 4
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad
  %i.ag = and i16 %i.aa, 1
  %.not9.i.i = icmp eq i16 %i.ag, 0
  %i.ah = icmp eq i32 %i.z, %i.af
  %or.cond.i.i = and i1 %.not9.i.i, %i.ah
  br i1 %or.cond.i.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i:        ; preds = %bb.e
  %i.ai = and i16 %i.aa, 2
  %.not.i.i.i.i = icmp eq i16 %i.ai, 0
  %i.aj = load ptr, ptr %i.n, align 8
  %i.ak = select i1 %.not.i.i.i.i, ptr %i.aj, ptr %i.m
  %i.al = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef %i.ak, i32 noundef %i.z)
  %.not7.i = icmp eq i8 %i.al, 0
  br i1 %.not7.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %bb.e, %.split.i
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i, i64 72
  %.0.i = load ptr, ptr %i.am, align 8, !tbaa !108 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit, label %bb.d, !llvm.loop !8

_ZNK6icu_7811PluralRules15rulesForKeywordERKNS_13UnicodeStringE.exit: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %.split.i, %bb.c, %_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit
  %.0 = phi i8 [ 1, %_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit ], [ 0, %bb.c ], [ 0, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ], [ 1, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i ], [ 1, %.split.i ]
  ret i8 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef signext i8 @_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef align 8 %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = load ptr, ptr %1, align 8, !tbaa !90
  %i.j = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.h, ptr noundef %i.i, i32 noundef 0, i32 noundef %2)
  ret i8 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7811PluralRules15getKeywordOtherEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  store ptr @_ZN6icu_78L20PLURAL_KEYWORD_OTHERE, ptr %2, align 8, !tbaa !90
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef 5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !90
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.a) #25, !srcloc !87
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %2, align 8, !tbaa !90
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.c) #25, !srcloc !87
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_7811PluralRuleseqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(28) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
end_hunk_1
