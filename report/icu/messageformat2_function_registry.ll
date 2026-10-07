Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_function_registry?download=true
inline.NumInlined: 774
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6icu_788message220FormattedPlaceholderD2Ev:bb.a
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.d) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message217StandardFunctions6NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_788message217StandardFunctions6NumberE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.a) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message217StandardFunctions6NumberD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788message217StandardFunctions6NumberD1Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message217StandardFunctions13NumberFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788message217StandardFunctions13NumberFactoryD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZNK6icu_788message217StandardFunctions6Plural10pluralTypeERKNS0_15FunctionOptionsE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::Formattable", align 8 ; 11 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %2, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i16 2, ptr %i.d, align 8, !tbaa !33
  %i.e = invoke noundef signext i8 @_ZNK6icu_788message215FunctionOptions17getFunctionOptionESt17basic_string_viewIDsSt11char_traitsIDsEERNS0_11FormattableE(ptr noundef nonnull align 8 dereferenceable(20) %1, i64 6, ptr nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.m, label %_ZNK6icu_788message211Formattable9getStringER10UErrorCode.exit

_ZNK6icu_788message211Formattable9getStringER10UErrorCode.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.f = load i8, ptr %i.b, align 8, !tbaa !39
  %.not19.not = icmp eq i8 %i.f, 2                ; 2 uses
  %spec.select18 = select i1 %.not19.not, ptr %i.a, ptr %i.c
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %spec.select18)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNK6icu_788message211Formattable9getStringER10UErrorCode.exit
  br i1 %.not19.not, label %bb.d, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !33   ; 5 uses
  %i.i = and i16 %i.h, 1
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = icmp slt i16 %i.h, 0
  %i.k = ashr i16 %i.h, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  %i.p = icmp eq i32 %i.o, 7
  br i1 %i.p, label %bb.f, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.64, i32 noundef 7)
          to label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit unwind label %bb.i

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit: ; preds = %bb.f
  %.not20 = icmp eq i8 %i.q, 0
  br i1 %.not20, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge, label %.sink.split

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge: ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit
  %.pre = load i16, ptr %i.g, align 8, !tbaa !33
  br label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %_ZNK6icu_788message211Formattable9getStringER10UErrorCode.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.k, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #18
  br label %bb.l

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread: ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge, %bb.d, %bb.e
  %i.u = phi i16 [ %.pre, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge ], [ %i.h, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.v = and i16 %i.u, 1
  %.not.i12 = icmp eq i16 %i.v, 0
  br i1 %.not.i12, label %bb.j, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14.thread

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread
  %i.w = icmp slt i16 %i.u, 0
  %i.x = ashr i16 %i.u, 5
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = select i1 %i.w, i32 %i.aa, i32 %i.y
  %i.ac = icmp eq i32 %i.ab, 5
  br i1 %i.ac, label %bb.k, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.65, i32 noundef 5)
          to label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14 unwind label %bb.i

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14: ; preds = %bb.k
  %.not21 = icmp eq i8 %i.ad, 0
  br i1 %.not21, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14.thread, label %.sink.split

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14.thread: ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread, %bb.j, %bb.c, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14
  br label %.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.n

.sink.split:                                      ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14.thread
  %.18.ph = phi i32 [ 1, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14.thread ], [ 2, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit14 ], [ 0, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.b
  %.18 = phi i32 [ 1, %bb.b ], [ %.18.ph, %.sink.split ]
  call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.18

bb.n:                                             ; preds = %bb.l, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.r, %bb.g ]
  call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_788message217StandardFunctions13PluralFactory14createSelectorERKNS_6LocaleER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !20
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !161, !range !82, !noundef !83
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #18 ; 6 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_788message217StandardFunctions6PluralC1ERKNS_6LocaleEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  br i1 %i.g, label %_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6icu_788message217StandardFunctions6PluralC1ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.c
  %.018 = phi ptr [ %i.f, %bb.g ], [ null, %bb.c ], [ null, %bb.f ], [ %i.f, %bb.d ] ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !20
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit
  %i.l = icmp eq ptr %.018, null
  br i1 %i.l, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %2, align 4, !tbaa !20
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %bb.h ]
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #18
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit, %bb.j, %bb.i, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %_ZN6icu_788message217StandardFunctions6Plural7integerERKNS_6LocaleER10UErrorCode.exit ], [ null, %bb.j ], [ %.018, %bb.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_788message217StandardFunctions6Plural9selectKeyEONS0_20FormattedPlaceholderEONS0_15FunctionOptionsEPKNS_13UnicodeStringEiPS7_RiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(396) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.icu_78::Locale", align 8    ; 7 uses
  %9 = alloca %"class.icu_78::Formattable", align 8 ; 9 uses
  %10 = alloca %"class.icu_78::message2::FormattedPlaceholder", align 8 ; 12 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %13 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = load i32, ptr %7, align 4, !tbaa !20
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.e = load i32, ptr %i.d, align 8, !tbaa !112
  %spec.select.i = icmp ugt i32 %i.e, 1
  br i1 %spec.select.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 65819, ptr %7, align 4, !tbaa !20
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZNK6icu_788message217StandardFunctions6Plural10pluralTypeERKNS0_15FunctionOptionsE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(20) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::FormattedPlaceholder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(336) %i.h, ptr noundef nonnull align 8 dereferenceable(396) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.l = load i32, ptr %7, align 4, !tbaa !20
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.al

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 344 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %7, align 4, !tbaa !20
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 65819, ptr %7, align 4, !tbaa !20
  br label %bb.ak

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %12, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i16 2, ptr %i.u, align 8, !tbaa !33
  %.not66 = icmp ne i32 %i.f, 2                   ; 2 uses
  br i1 %.not66, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.v = icmp eq i32 %i.f, 0
  %i.w = zext i1 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !166, !nonnull !83, !align !85
  %i.z = invoke noundef ptr @_ZN6icu_7811PluralRules9forLocaleERKNS_6LocaleE11UPluralTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i32 noundef %i.w, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.k unwind label %bb.l       ; 8 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %7, align 4, !tbaa !20
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZNK6icu_7811PluralRules6selectERKNS_6number15FormattedNumberER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(28) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %_ZN6icu_7812LocalPointerINS_11PluralRulesEED2Ev.exit unwind label %_ZN6icu_7812LocalPointerINS_11PluralRulesEED2Ev.exit78

_ZN6icu_7812LocalPointerINS_11PluralRulesEED2Ev.exit: ; preds = %bb.m
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %13) #18 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(28) %i.z) #18, !inline_history !162
  br label %bb.n

_ZN6icu_7812LocalPointerINS_11PluralRulesEED2Ev.exit78: ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(28) %i.z) #18, !inline_history !162
  br label %bb.an

bb.n:                                             ; preds = %_ZN6icu_7812LocalPointerINS_11PluralRulesEED2Ev.exit, %bb.i
  store i32 0, ptr %6, align 4, !tbaa !34
  %i.al = icmp sgt i32 %4, 0
  br i1 %i.al, label %.lr.ph, label %_ZN6icu_7812LocalPointerINS_11PluralRulesEED2Ev.exit87

.lr.ph:                                           ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 12
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc unwind label %.loopexit95

.noexc:                                           ; preds = %bb.o
  %i.ap = invoke noundef ptr @_ZN6icu_7812NumberFormat14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q       ; 8 uses

bb.p:                                             ; preds = %.noexc
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !20
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.r, label %bb.v

bb.q:                                             ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 168
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(124) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.t unwind label %.thread18.i

bb.t:                                             ; preds = %bb.s
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !20
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %.thread.i

.thread18.i:                                      ; preds = %bb.u, %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.az = invoke noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.thread.i unwind label %.thread18.i ; 0 uses

.thread.i:                                        ; preds = %bb.u, %bb.t
  call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN6icu_788message2L11strToDoubleERKNS_13UnicodeStringERdR10UErrorCode.exit

bb.v:                                             ; preds = %bb.p
  %i.ba = icmp eq ptr %i.ap, null
  br i1 %i.ba, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %_ZN6icu_788message2L11strToDoubleERKNS_13UnicodeStringERdR10UErrorCode.exit

bb.w:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.bc = icmp eq ptr %i.ap, null
  br i1 %i.bc, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread18.i
  %.pn20.i = phi { ptr, i32 } [ %i.ay, %.thread18.i ], [ %i.bb, %bb.w ]
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
end_hunk_0
