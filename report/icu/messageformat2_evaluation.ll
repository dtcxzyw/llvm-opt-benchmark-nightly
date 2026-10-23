Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_evaluation?download=true
inline.NumInlined: 416
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6icu_788message213InternalValue11getFallbackEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  %i.h = load i8, ptr %i.g, align 8, !tbaa !57
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %tailrecurse._crit_edge, label %tailrecurse
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_ZNK6icu_788message213InternalValue11getSelectorER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 4, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message213InternalValueC2EONS0_20FormattedPlaceholderE(ptr noundef nonnull align 8 dereferenceable(520) initializes((0, 26), (80, 96), (200, 201), (208, 218), (272, 284), (288, 298), (352, 372), (376, 396), (408, 409), (416, 436), (440, 450)) %0, ptr noundef nonnull align 8 dereferenceable(396) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message213InternalValueE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 0, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr null, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i16 2, ptr %i.g, align 8, !tbaa !14
  store i8 -1, ptr %i.b, align 8, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i16 2, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 0, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i16 2, ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr null, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 27, ptr %i.u, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 0, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr null, ptr %i.x, align 8, !tbaa !40
  %i.y = tail call noundef nonnull align 8 dereferenceable(396) ptr @_ZN6icu_788message220FormattedPlaceholderaSEOS1_(ptr noundef nonnull align 8 dereferenceable(401) %i.a, ptr noundef nonnull align 8 dereferenceable(396) %1) #19 ; 0 uses
  store i8 1, ptr %i.b, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message213InternalValueC2EPS1_ONS0_15FunctionOptionsERKNS_13UnicodeStringEPKNS0_9FormatterEPKNS0_8SelectorE(ptr noundef nonnull align 8 dereferenceable(520) initializes((0, 16), (408, 409), (416, 436), (440, 450)) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7variantIJPN6icu_788message213InternalValueENS1_20FormattedPlaceholderEEEaSIRS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_.exit:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message213InternalValueE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i16 2, ptr %i.g, align 8, !tbaa !14
  store ptr %1, ptr %i.a, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  store i32 %i.i, ptr %i.d, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  store ptr %i.k, ptr %i.e, align 8, !tbaa !40
  store i32 0, ptr %i.h, align 8, !tbaa !38
  store ptr null, ptr %i.j, align 8, !tbaa !40
  %i.l = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.a unwind label %bb.b       ; 0 uses

bb.a:                                             ; preds = %_ZNSt7variantIJPN6icu_788message213InternalValueENS1_20FormattedPlaceholderEEEaSIRS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %5, ptr %i.m, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %4, ptr %i.n, align 8, !tbaa !81
  ret void

bb.b:                                             ; preds = %_ZNSt7variantIJPN6icu_788message213InternalValueENS1_20FormattedPlaceholderEEEaSIRS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #19
  tail call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.c) #19
  %i.p = load i8, ptr %i.b, align 8, !tbaa !57
  %.off.i = add i8 %i.p, -1
  %switch.i = icmp ult i8 %.off.i, -2
  br i1 %switch.i, label %bb.c, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJPN6icu_788message213InternalValueENS3_20FormattedPlaceholderEEED2Ev.exit, !prof !82

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(396) dereferenceable(401) %i.a) #19, !inline_history !2
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJPN6icu_788message213InternalValueENS3_20FormattedPlaceholderEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJPN6icu_788message213InternalValueENS3_20FormattedPlaceholderEEED2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  resume { ptr, i32 } %i.o
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message213InternalValue14forceSelectionERNS0_13DynamicErrorsEPKNS_13UnicodeStringEiPS4_RiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::message2::FunctionOptions", align 8 ; 10 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %10 = alloca %"class.icu_78::message2::FunctionOptions", align 8 ; 7 uses
  %11 = alloca %"class.icu_78::message2::FormattedPlaceholder", align 8 ; 26 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %6, align 4, !tbaa !42
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %7, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.j = load i8, ptr %i.i, align 8, !tbaa !57
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.y
  %i.s = phi ptr [ %i.h, %.lr.ph ], [ %i.bx, %bb.y ]
  %.086 = phi ptr [ %0, %.lr.ph ], [ %i.bw, %bb.y ] ; 6 uses
  %.04585 = phi i1 [ false, %.lr.ph ], [ %12, %bb.y ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.086, i64 440
  %i.u = getelementptr inbounds nuw i8, ptr %.086, i64 448
  %i.v = load i16, ptr %i.u, align 8, !tbaa !14   ; 3 uses
  %i.w = and i16 %i.v, 1
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.x = load i16, ptr %i.l, align 8, !tbaa !14
  %i.y = trunc i16 %i.x to i1
  br i1 %i.y, label %bb.k, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.z = icmp slt i16 %i.v, 0
  %i.aa = ashr i16 %i.v, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.086, i64 452
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = select i1 %i.z, i32 %i.ad, i32 %i.ab    ; 2 uses
  %i.af = load i16, ptr %i.l, align 8, !tbaa !14  ; 4 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i32, ptr %i.m, align 4
  %i.ak = select i1 %i.ag, i32 %i.aj, i32 %i.ai
  %i.al = and i16 %i.af, 1
  %.not9.i.i = icmp eq i16 %i.al, 0
  %i.am = icmp eq i32 %i.ae, %i.ak
  %or.cond.i.i = and i1 %.not9.i.i, %i.am
  br i1 %or.cond.i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.an = and i16 %i.af, 2
  %.not.i.i.i.i = icmp eq i16 %i.an, 0
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.n
  %i.aq = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef %i.ap, i32 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not96 = icmp eq i8 %i.aq, 0
  br i1 %.not96, label %.thread, label %bb.k

.thread:                                          ; preds = %.split, %bb.f, %bb.h
  store i32 1, ptr %6, align 4, !tbaa !42
  br label %.loopexit

bb.i:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.j:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.k:                                             ; preds = %.split, %bb.h
  %.not49.not = icmp eq ptr %.086, %0
  br i1 %.not49.not, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.at = getelementptr inbounds nuw i8, ptr %.086, i64 416
  invoke void @_ZNK6icu_788message215FunctionOptions23getStringFunctionOptionESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(20) %i.at, i64 6, ptr nonnull @.str.4)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.au = load i16, ptr %i.p, align 8, !tbaa !14
  %i.av = icmp ugt i16 %i.au, 31
  br i1 %i.av, label %bb.n, label %.critedge.thread67

bb.n:                                             ; preds = %bb.m
  %i.aw = load i16, ptr %i.l, align 8, !tbaa !14  ; 5 uses
  %i.ax = and i16 %i.aw, 1
  %.not.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i, label %bb.o, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp slt i16 %i.aw, 0
  %i.az = ashr i16 %i.aw, 5
  %i.ba = sext i16 %i.az to i32
  %i.bb = load i32, ptr %i.m, align 4
  %i.bc = select i1 %i.ay, i32 %i.bb, i32 %i.ba
  %i.bd = icmp eq i32 %i.bc, 6
  br i1 %i.bd, label %bb.p, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.be = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull @.str.5, i32 noundef 6)
          to label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit unwind label %bb.u

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit: ; preds = %bb.p
  %.not71 = icmp eq i8 %i.be, 0
  br i1 %.not71, label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge, label %.critedge.thread69

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge: ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit
  %.pre = load i16, ptr %i.l, align 8, !tbaa !14
  br label %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread

.critedge.thread69:                               ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.s

_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread: ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge, %bb.n, %bb.o
  %i.bf = phi i16 [ %.pre, %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit._ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread_crit_edge ], [ %i.aw, %bb.n ], [ %i.aw, %bb.o ] ; 3 uses
  %i.bg = and i16 %i.bf, 1
  %.not.i58 = icmp eq i16 %i.bg, 0
  br i1 %.not.i58, label %bb.q, label %.critedge.thread67

bb.q:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread
  %i.bh = icmp slt i16 %i.bf, 0
  %i.bi = ashr i16 %i.bf, 5
  %i.bj = sext i16 %i.bi to i32
  %i.bk = load i32, ptr %i.m, align 4
  %i.bl = select i1 %i.bh, i32 %i.bk, i32 %i.bj
  %i.bm = icmp eq i32 %i.bl, 7
  br i1 %i.bm, label %bb.r, label %.critedge.thread67

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull @.str.6, i32 noundef 7)
          to label %.critedge unwind label %bb.u

.critedge.thread67:                               ; preds = %_ZNK6icu_7813UnicodeStringeqISt17basic_string_viewIDsSt11char_traitsIDsEEvEEbRKT_.exit.thread, %bb.q, %bb.m
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.r
  %.not72 = icmp eq i8 %i.bn, 0
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br i1 %.not72, label %.critedge.thread, label %bb.s

bb.s:                                             ; preds = %.critedge.thread69, %.critedge
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.critedge.thread67, %.critedge, %bb.s
  %12 = phi i1 [ true, %bb.s ], [ %.04585, %.critedge ], [ %.04585, %.critedge.thread67 ], [ %.04585, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bo = getelementptr inbounds nuw i8, ptr %.086, i64 416
  invoke void @_ZN6icu_788message215FunctionOptions12mergeOptionsEOS1_R10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::message2::FunctionOptions") align 8 %10, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(20) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.w unwind label %bb.x

bb.t:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.r, %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.pn51 = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %i.bp, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.aj

bb.w:                                             ; preds = %.critedge.thread
  %i.br = load i32, ptr %i.q, align 8, !tbaa !38
  store i32 %i.br, ptr %i.e, align 8, !tbaa !38
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !40
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !40
  store i32 0, ptr %i.q, align 8, !tbaa !38
  store ptr null, ptr %i.r, align 8, !tbaa !40
  call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.bt = load i32, ptr %6, align 4, !tbaa !42
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %bb.y, label %.loopexit

bb.x:                                             ; preds = %.critedge.thread
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.aj

bb.y:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !70  ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 408
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !57
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.e, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.y, %.preheader
  %.045.lcssa = phi i1 [ false, %.preheader ], [ %12, %bb.y ]
  %.lcssa = phi ptr [ %i.h, %.preheader ], [ %i.bx, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %11, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cb, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i16 2, ptr %i.cc, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.cd, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 80
  store double 0.000000e+00, ptr %i.ce, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 192
  store i8 0, ptr %i.cf, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cg, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 208
  store i16 2, ptr %i.ch, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 264 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.ci, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 272
  store i32 0, ptr %i.cj, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ck, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 288
  store i16 2, ptr %i.cl, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.cm, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 352
  store ptr null, ptr %i.cn, align 8, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 360
  store i32 27, ptr %i.co, align 8, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 368 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.cp, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 384
  store i32 0, ptr %i.cq, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 376
  store ptr null, ptr %i.cr, align 8, !tbaa !40
  %i.cs = call noundef nonnull align 8 dereferenceable(396) ptr @_ZN6icu_788message220FormattedPlaceholderaSEOS1_(ptr noundef nonnull align 8 dereferenceable(396) %11, ptr noundef nonnull align 8 dereferenceable(396) %.lcssa) #19 ; 0 uses
  %i.ct = invoke noundef zeroext i1 @_ZNK6icu_788message213InternalValue17checkSelectOptionEv(ptr noundef nonnull align 8 dereferenceable(520) %0)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %._crit_edge
  %13 = xor i1 %i.ct, true
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !80  ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(396) %11, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cy = load i32, ptr %6, align 4, !tbaa !42
  switch i32 %i.cy, label %bb.ae [
    i32 65819, label %bb.ab
    i32 65824, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %6, align 4, !tbaa !42
  invoke void @_ZN6icu_788message213DynamicErrors16setSelectorErrorERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.ah unwind label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ad, %bb.ab, %bb.z, %._crit_edge
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message220FormattedPlaceholderD2Ev(ptr noundef nonnull align 8 dead_on_return(396) dereferenceable(396) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.aj

bb.ad:                                            ; preds = %bb.aa
  store i32 0, ptr %6, align 4, !tbaa !42
  invoke void @_ZN6icu_788message213DynamicErrors12setBadOptionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.ah unwind label %bb.ac

bb.ae:                                            ; preds = %bb.aa
  %or.cond = or i1 %.045.lcssa, %13
  br i1 %or.cond, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6icu_788message213DynamicErrors23setRecoverableBadOptionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.ag unwind label %bb.ac

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %5, align 4, !tbaa !39
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ae, %bb.ag, %bb.ab
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %11, align 8, !tbaa !13
  call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.cp) #19, !inline_history !83
  call void @_ZN6icu_788message214FormattedValueD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ci) #19, !inline_history !83
  call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.cd) #19, !inline_history !83
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cb) #19, !inline_history !83
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(396) %11) #19, !inline_history !83
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.ah, %.thread
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %.loopexit, %bb.c
  ret void

bb.aj:                                            ; preds = %bb.v, %bb.ac, %bb.x, %bb.j
  %.pn53 = phi { ptr, i32 } [ %i.bv, %bb.x ], [ %.pn51, %bb.v ], [ %i.cz, %bb.ac ], [ %i.as, %bb.j ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.i
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.aj ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN6icu_788message215FunctionOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn53.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788message213InternalValue17checkSelectOptionEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::message2::Formattable", align 8 ; 6 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %4 = alloca %"class.icu_78::message2::Formattable", align 8 ; 11 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull @.str)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = and i16 %i.c, 1
  %.not.i.i = icmp eq i16 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !14
  %i.g = trunc i16 %i.f to i1
  br i1 %i.g, label %.critedge.thread, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i16 %i.c, 0
  %i.i = ashr i16 %i.c, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i16, ptr %i.n, align 8, !tbaa !14   ; 4 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = select i1 %i.p, i32 %i.t, i32 %i.r
  %i.v = and i16 %i.o, 1
  %.not9.i.i = icmp eq i16 %i.v, 0
  %i.w = icmp eq i32 %i.m, %i.u
  %or.cond.i.i = and i1 %.not9.i.i, %i.w
  br i1 %or.cond.i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.x = and i16 %i.o, 2
  %.not.i.i.i.i = icmp eq i16 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %.not.i.i.i.i, ptr %i.aa, ptr %i.y
  %i.ac = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %i.ab, i32 noundef %i.m)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.thread, label %.critedge.thread

.critedge.thread:                                 ; preds = %.split, %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.n

.thread:                                          ; preds = %.split, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %.thread
  %i.ad = load i16, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  %i.ae = and i16 %i.ad, 1
  %.not.i.i25 = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !14
  %i.ah = trunc i16 %i.ag to i1
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp slt i16 %i.ad, 0
  %i.aj = ashr i16 %i.ad, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.ai, i32 %i.am, i32 %i.ak   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !14 ; 4 uses
  %i.aq = icmp slt i16 %i.ap, 0
  %i.ar = ashr i16 %i.ap, 5
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = select i1 %i.aq, i32 %i.au, i32 %i.as
  %i.aw = and i16 %i.ap, 1
  %.not9.i.i27 = icmp eq i16 %i.aw, 0
  %i.ax = icmp eq i32 %i.an, %i.av
  %or.cond.i.i28 = and i1 %.not9.i.i27, %i.ax
  br i1 %or.cond.i.i28, label %bb.h, label %.critedge51

bb.h:                                             ; preds = %bb.g
  %i.ay = and i16 %i.ap, 2
  %.not.i.i.i.i29 = icmp eq i16 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = select i1 %.not.i.i.i.i29, ptr %i.bb, ptr %i.az
  %i.bd = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %i.bc, i32 noundef %i.an)
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.h
  %i.be = icmp ne i8 %i.bd, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.noexc30
  %.0.i.i26 = phi i1 [ %i.ah, %bb.f ], [ %i.be, %.noexc30 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i26, label %bb.n, label %bb.ah

bb.i:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.bf, %bb.i ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ai

bb.n:                                             ; preds = %.critedge.thread, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %4, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i8 0, ptr %i.bj, align 8, !tbaa !19
end_hunk_0
